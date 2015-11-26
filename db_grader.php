<?
class grader_db extends basic_db {

        var $m_priv;
        var $m_sponsor = -1;
        var $m_email="";

	function grader_db (&$p_db, $pStore_id = -1) {
		parent::basic_db ($p_db, $pStore_id, "grader", "grader_id");
	}

        function set_priv ($pPriv) {$this->m_priv = $pPriv;}
        function get_priv () {return $this->m_priv;}
        function set_sponsor ($pSponsor) {$this->m_sponsor = $pSponsor;}
        function get_sponsor () {return $this->m_sponsor;}
        function set_email ($pEmail) {$this->m_email = $pEmail;}

        function find_entry ($p_sponsor, $p_type, $p_location, $p_email) { 

                $l_and = "";

                if ($p_sponsor != "") {
                        $l_query = $l_query . $l_and . "b.sponsor like '" . $p_sponsor . "'";
                        $l_and = " AND ";
                }

                if ($p_type != "") {
                        $l_query = $l_query . $l_and . "a.type like '" . $p_type . "'";
                        $l_and = " AND ";
                }

                if ($p_location != "") {
                        $l_query = $l_query . $l_and . "a.location like '" . $p_location . "'";
                        $l_and = " AND ";
                }

                if ($p_email != "") {
                        $l_query = $l_query . $l_and . "a.email like '" . $p_email . "'";
                        $l_and = " AND ";
                }

		$this->first();
		$this->set_filter($l_query);
                return $this->data_list(""); 
        }

	 function data_list ($p_order_by) {
		$strSQL = "SELECT a.*, b.sponsor " .
			  "FROM grader a, sponsor b " .
			  "WHERE a.sponsor_id = b.sponsor_id";

		if ($this->m_priv=="SPONSOR") {
			$strSQL .= ' AND a.sponsor_id = ' .  $this->m_sponsor . ' ';
		}
		if ($this->m_filter != "") {
                        $strSQL .= " AND " . $this->m_filter;
                }

               if ($p_order_by != "") {
                        $strSQL .= " ORDER BY $p_order_by";
                }

                if ($this->m_limit_flg) {
                        if (!is_numeric ($this->m_limit_current)) $this->m_limit_current = 0;
                        $strSQL .= " LIMIT " . $this->m_limit_current . "," . $this->m_limit_step;
                }

                return $this->load_matrix($strSQL);
        }

	function get_label($pKey)  {
                $lRow = $this->data_detail("grader_id=$pKey","email");
                return $lRow['email'];

        }


        function row_count() {
                $strSQL = "SELECT count(*) as rows " .
                          "FROM grader a, sponsor b " .
                          "WHERE a.sponsor_id = b.sponsor_id";


                if ($this->m_filter != "") {
                        $strSQL .= $strWHERE . " AND " . $this->m_filter;
                } else {
                         $strSQL .= $strWHERE;
                }

                $l_data = $this->load_array($strSQL);
                $this->debug('Row_count: ' . $l_data['rows'] . '<br>');
                return $l_data['rows'];
        }

	function data_update ($p_data) {
                $this->call_stack("data_update",$p_data);
		if (isset($_POST['sponsor_id'])) {
			$p_data['sponsor_id'] = $_POST['sponsor_id'];
		}
                return $this->update($this->m_table,$p_data, $this->m_identity_column);
        }

        function data_add ($p_data, &$p_id_column) {
                $this->call_stack("data_add",$p_data,$p_id_column);
		if (isset($_POST['sponsor_id'])) {
			$p_data['sponsor_id'] = $_POST['sponsor_id'];
		}

                $lret = $this->add($this->m_table,$p_data, $p_id_column);
                return $lret;
        }

}
?>
