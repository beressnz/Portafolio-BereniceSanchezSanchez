<?php
	require "servidor.php";
	class Conexion
	{
		public $db;
		public function __construct()
		{
			@$this->db = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
			if ($this->db->connect_error)
			{
				echo "conexion erronea";
				exit();
				return;
			}


				$this->db->set_charset(DB_CHARSET);
			}
	}
?>