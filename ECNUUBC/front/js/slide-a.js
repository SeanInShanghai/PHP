﻿	//Download by http://www.jb51.net
	//判断鼠标的来源和去向
	function relatedTarget( e ){
		if( e && e.relatedTarget ) return e.relatedTarget;
		else if(window.event) return window.event.type == 'mouseover' ? window.event.fromElement : (window.event.type == 'mouseout' ? window.event.toElement : null);
	}  
	
	/*
	 * @author: 	亚丁Samir <samirtohope@gmail.com>
 	 * @name: 		slidePic
 	 * @link:		http://www.2008sc.cn/blog
 	 * @since:		2010-08-30
 	*/
	
	/*  slidePic基于jquery1.2.4
	 * 
	 *  基本效果是幻灯片的轮播渐显，循环播放幻灯片，支持自动，和手动两种方式，
	 *  鼠标移上大图，显示描述文字，鼠标移出去，隐藏描述文字
	 *  
	 *  slidePic.o关联一个幻灯片dom,该dom子节点中，又以rel属性来关联
	 *  标题、描述、缩略图、页码等dom元素，用jquery获取到的这些对象，
	 *  都是基于slidePic.o对象
	 *  
	 *  slidePic中 数据的获取是交给slidePic.getData()方法来完成的
	 *  getData()首先会创建一个slidePic.o.data二维数组来存储:
	 *  标题、链接、描述、 图片路径
	 *  格式：[['标题','链接','描述','图片路径'],['标题','链接','描述','图片路径'],['标题','链接','描述','图片路径']] 
	 *  数据源是由rel=slide-data来提供的，
	 *  
	 *  调用方式：slidePic.init('#slide-box',2000),
	 *  其中#slide-box是唯一关联的幻灯片包裹元素,
	 *      2000幻灯片自动播放的间隔时间，为可选参数，无该参数情况下默认是6000即6秒.
	 *  
	 */
 	var slidePic = {
			
			o: null,
			
			
			//需要关联的DOM对象
			getRelDom: function( o, t ){
					var f = slidePic.o = $(o);
					f.thumb = f.find('[rel=thumb]');					
					f.shadow = f.find('[rel=shadow]');					
					f.des = f.find('[rel=description]');					
					f.title = f.find('[rel=title]');					
					f.ctrl = f.find('[rel=ctrl]');					
					f.num = f.find('[rel=num]');
					f.n = f.num.find('strong');					
					f.tl =  f.find('[rel=tl]');					
					f.tr =  f.find('[rel=tr]');
					
					f.t = t || 6000;
					
			},
			
			
			
			//o-包裹元素id，btnL: 左控制按钮, btnR: 右控制按钮
			init: function( o, t ){
					
					//组织dom
					slidePic.getRelDom( o,t );
					
					//组织数据
					slidePic.getData();

					
					//整理阴影部分
					slidePic.setShadow();
					
					//鼠标移上大图，显示描述
// 					slidePic.showDes();
					
					//自动播放
					slidePic.auto();
					
					//手动控制
					slidePic.slideLR();
			},
			
			
			
			
			getData: function(){

					var  o = slidePic.o,
					//定义储存变量
					d = o.data = [];
						 
					//获取数据以二维数组形式保存在slidePic.o.data中
					o.find('[rel=slide-data]').find('li').each(function( i ){
							d[i] = [];
							$(this).find('p').each(function(){
								d[i].push($(this).html());
							});
					});
					
					//获得数据总条数
					o.size = slidePic.o.data.length;
					//当前数组中的位置
					o.now = 0;
					//显示出来的数目，总是比数组中位置多1
					o.index = slidePic.o.now + 1;
					//默认值总数的设置
					o.num.find('em').html(o.size);
					//默认显示设置
					slidePic.updateDomData(o.index,d[o.now][0],d[o.now][1],d[o.now][2],d[o.now][3]);
					
			},
			
			
			//处理阴影效果，采用绝对定位
			setShadow: function(){
				
						var o = slidePic.o,
						 	h = o.des.innerHeight(),
							w = o.des.parent().innerWidth();
							
						
							//保存阴影和描述的bottom值
							o.shadow.bottom = -h - 10;
// 							o.des.bottom = -h;
// 							o.shadow.bottom = 0;
							o.des.bottom = 0;
					
							o.shadow.css({'display':'block',
											'opacity': 0.5,
											'position': 'absolute',
// 											'bottom': 0,
// 											'height': 0, 
 											'bottom': 0,
 											'height': 50,
											'width': w,
											'zIndex': 20});
											
							o.shadow.parent().css({'position':'relative', 'overflow':'hidden'});	
																		
							o.des.css({'position': 'absolute','bottom': 0, 'zIndex': 30});
									 
			},
			
			
			//设置当前项数据,不包括图片，因为图片有显示效果
			updateDomData: function(n,title,href,des,thumb){
					
					var o = slidePic.o;
						//设置当前项码数
						o.n.html( n );
						//设置标题和链接
						o.title.html( title ).attr('href',href);
						//设置描述
						o.des.html(des);
						//设置图片链接
						o.thumb.parent().attr('href',href);
						//如果不需要图片效果，则调用此方法
						if(thumb != undefined) o.thumb.attr('src', thumb );
						
			},
			
			
			//阴影和描述控制
			showDes: function(){
				
						var o = slidePic.o,
							pic = o.thumb;
							
							
						pic.parent().parent().hover(function(){
															 
								o.shadow.animate({bottom: 0},'normal');
								o.des.animate({bottom: 0},'normal');
								
								//描述的dom添加hover事件
								o.des.hover(function(){
									window.clearTimeout( o.timeDes );
									
									
								},function( e ){	
									//判断鼠标是否移到了shadow上
									if(relatedTarget(e) == o.shadow[0]) return;
									o.shadow.animate({bottom: o.shadow.bottom},'normal');
									o.des.animate({bottom: o.des.bottom},'normal');
								});	
								
								
								
								
								
								
						},function(){
								//鼠标移出大图1/5秒，阴影和描述设置隐藏
								o.timeDes = window.setTimeout(function(){
									o.shadow.animate({bottom: o.shadow.bottom},'normal');
									o.des.animate({bottom: o.des.bottom},'normal');
								},200);
						})
			},
			
			// 自动播放
			auto: function(){
					var o = slidePic.o,
						d = o.data;
						o.timerPic = window.setInterval(function(){
								o.now = o.now + 1;
								if (o.now == o.size) {
										o.now = 0;
										window.clearInterval( o.timerPic );
										slidePic.auto();
								}
								o.index = o.now + 1;
								slidePic.updateDomData(o.index,d[o.now][0],d[o.now][1],d[o.now][2],d[o.now][3]);
								slidePic.slider();
						}, o.t);
			},
			
			
			//渐显效果
			slider: function(){
					var o = slidePic.o;
						o.thumb.hide();
						o.thumb.fadeIn('slow');
			},
			
			slideLR: function(){
				
							var o = slidePic.o,
								d = o.data;
					
					
							o.tl.click(function(){
									window.clearInterval( o.timerPic );
									o.now = o.now - 1;
									if (o.now == -1) o.now = o.size - 1;
									o.index = o.now + 1;
									slidePic.updateDomData(o.index,d[o.now][0],d[o.now][1],d[o.now][2],d[o.now][3]);
									slidePic.slider();
									
									slidePic.auto()
							});
							
							
							o.tr.click(function(){
									window.clearInterval( o.timerPic );
									o.now = o.now + 1;
									if (o.now == o.size) o.now = 0;
									o.index = o.now + 1;
									slidePic.updateDomData(o.index,d[o.now][0],d[o.now][1],d[o.now][2],d[o.now][3]);
									slidePic.slider();
									
									slidePic.auto();
							});
			}
			
 	};
	//调用方式
	slidePic.init('#slide-box');
	

 


