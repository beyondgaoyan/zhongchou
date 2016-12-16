<?php
// by: deblue


require APP_ROOT_PATH.'Application/Lib/app_init.php';


class App{		
	private $module_obj;
	//网站项目构造
	public function __construct(){		
		$module_name = $GLOBALS['module']."Module";
		$this->module_obj = new $module_name;
		$this->module_obj->$GLOBALS['action']();
	}
	
	public function __destruct()
	{
		unset($this);
	}
}
?>