<?php
/**
 * 数据操作基类
 *
 * @package Z-BlogPHP
 * @subpackage ClassLib 类库
 */
class Base {

	/**
	* @var string 数据表
	*/
	protected $table='';
	/**
	* @var array 表结构信息
	*/
	protected $datainfo = array();
	/**
	* @var array 数据
	*/
	protected $data = array();

	/**
	* @var Metas|null 扩展元数据
	*/
	public $Metas = null;

	/**
	* @param string $table 数据表
	* @param array $datainfo 数据表结构信息
	*/
	function __construct(&$table,&$datainfo){
			global $zbp;

			$this->table=&$table;
			$this->datainfo=&$datainfo;

		$this->Metas=new Metas;

		foreach ($this->datainfo as $key => $value) {
			$this->data[$key]=$value[3];
		}
	}

	/**
	* @param $name
	* @param $value
	*/
	public function __set($name, $value){
		$this->data[$name]  =  $value;
	}

	/**
	* @param $name
	* @return mixed
	*/
	public function __get($name){
		return $this->data[$name];
	}

	/**
	* @param $name
	* @return bool
	*/
	public function __isset($name){
		return isset($this->data[$name]);
	}

	/**
	* @param $name
	*/
	public function  __unset($name){
		unset($this->data[$name]);
	}

	/**
	* 获取数据库数据
	* @return array
	*/
	function GetData(){
		return $this->data;
	}

	/**
	* 获取数据表
	* @return string
	*/
	function GetTable(){
		return $this->table;
	}

	/**
	* 获取表结构
	* @return array
	*/
	function GetDataInfo(){
		return $this->datainfo;
	}

	/**
	* 从数据库加载实例数据
	* @param int $id 实例ID
	* @return bool
	*/
	function LoadInfoByID($id){
		global $zbp;

		$id=(int)$id;
		$id_field=reset($this->datainfo);
		$id_field=$id_field[0];
		$s = $zbp->db->sql->Select($this->table,array('*'),array(array('=',$id_field,$id)),null,null,null);

		$array = $zbp->db->Query($s);
		if (count($array)>0) {
			$this->LoadInfoByAssoc($array[0]);
			return true;
		}else{
			return false;
		}
	}

	/**
	* 从关联数组中加载实例数据
	* @param array $array 关联数组
	* @return bool
	*/
	function LoadInfoByAssoc($array){
		global $zbp;

		foreach ($this->datainfo as $key => $value) {
			if(!isset($array[$value[0]]))continue;
			if($value[1] == 'boolean'){
				$this->data[$key]=(boolean)$array[$value[0]];
			}elseif($value[1] == 'string'){
				if($key=='Meta'){
					$this->data[$key]=$array[$value[0]];
				}else{
					$this->data[$key]=str_replace('{#ZC_BLOG_HOST#}',$zbp->host,$array[$value[0]]);
				}
			}else{
				$this->data[$key]=$array[$value[0]];
			}
		}
		if(isset($this->data['Meta']))$this->Metas->Unserialize($this->data['Meta']);
		return true;
	}

	/**
	* 从数组中加载实例数据
	* @param $array
	* @return bool
	*/
	function LoadInfoByArray($array){
		global $zbp;

		$i = 0;
		foreach ($this->datainfo as $key => $value) {
			if(count($array)==$i)continue;
			if($value[1] == 'boolean'){
				$this->data[$key]=(boolean)$array[$i];
			}elseif($value[1] == 'string'){
				if($key=='Meta'){
					$this->data[$key]=$array[$i];
				}else{
					$this->data[$key]=str_replace('{#ZC_BLOG_HOST#}',$zbp->host,$array[$i]);
				}
			}else{
				$this->data[$key]=$array[$i];
			}
			$i += 1;
		}
		if(isset($this->data['Meta']))$this->Metas->Unserialize($this->data['Meta']);
		return true;
	}

	/**
	* 保存数据
	*
	* 保存实例数据到$zbp及数据库中
	* @return bool
	*/
	function Save(){
		global $zbp;
		
		if(isset($this->data['Meta']))$this->data['Meta'] = $this->Metas->Serialize();

		$keys=array();
		foreach ($this->datainfo as $key => $value) {
			if(!is_array($value) || count($value)!=4)continue;
			$keys[]=$value[0];
		}
		/*
		echo "<br>";
		echo "Keys:".count($keys)." 9:".$keys[9];
		echo "<br>";
		echo "DataInfo:".count($this->datainfo);
		echo "<br>";
		echo "Data:".(double)$this->data[$key];
		*/
		
		$keyvalue=array_fill_keys($keys, '');

		foreach ($this->datainfo as $key => $value) {
			if(!is_array($value)|| count($value)!=4)continue;
			if($value[1]=='boolean'){
				$keyvalue[$value[0]]=(integer)$this->data[$key];
			}elseif($value[1] == 'integer'){
				$keyvalue[$value[0]]=(integer)$this->data[$key];
			}elseif($value[1] == 'float'){
				$keyvalue[$value[0]]=(float)$this->data[$key];
			}elseif($value[1] == 'double'){
				$keyvalue[$value[0]]=(double)$this->data[$key];
			}elseif($value[1] == 'string'){
				if($key=='Meta'){
					$keyvalue[$value[0]]=$this->data[$key];
				}else{
					$keyvalue[$value[0]]=str_replace($zbp->host,'{#ZC_BLOG_HOST#}',$this->data[$key]);
				}
			}else{
				$keyvalue[$value[0]]=$this->data[$key];
			}
		}
		/*
		echo "<br>KeyValues:".count($keyvalue)." ".$keyvalue[0][0];
		
		foreach ($keyvalue as $key => $value)
		{
			echo "<br>".$key.$value;
		}
		*/
		array_shift($keyvalue);
		/*
		foreach ($keyvalue as $key => $value)
		{
			echo "<br>".$key.$value;
		}
		echo "<br>KeyValues:".count($keyvalue);
		*/
		$id_field=reset($this->datainfo);
		$id_name=key($this->datainfo);
		$id_field=$id_field[0];
		
		//echo "Keyvalue:".count($keyvalue)." Title:".$keyvalue['Meta']."<--";
				
		if ($this->$id_name  ==  0) {
			$sql = $zbp->db->sql->Insert($this->table,$keyvalue);
			//echo $sql;
			$this->$id_name = $zbp->db->Insert($sql);
		} else {

			$sql = $zbp->db->sql->Update($this->table,$keyvalue,array(array('=',$id_field,$this->$id_name)));
			return $zbp->db->Update($sql);
		}

		$mysql = "SELECT * FROM zbp_post WHERE log_ID = (SELECT MAX(log_ID) FROM zbp_post)";
		$dates = $zbp->db->Query($mysql);
		$log_ID = $dates[0];
		
		
		return $log_ID;
	}

	/**
	* 删除数据
	*
	* 从$zbp及数据库中删除该实例数据
	* @return bool
	*/
	function Del(){
		global $zbp;
		$id_field=reset($this->datainfo);
		$id_name=key($this->datainfo);
		$id_field=$id_field[0];
		$sql = $zbp->db->sql->Delete($this->table,array(array('=',$id_field,$this->$id_name)));
		$zbp->db->Delete($sql);
		return true;
	}

}