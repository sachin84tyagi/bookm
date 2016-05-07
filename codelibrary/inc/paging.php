<?php

class paging
{

   function admin_paging($total_recs,$paging,$page)
{
#################### paging starts ##################
$paging_table="";
if($total_recs>0){
	
	$startPage=((int)(($page)/5))*5;
	$endPage=$startPage+5;
	
	$previousPage = ($page-1);
	$nextPage = ($page+1);

	$no_of_page=ceil($total_recs/$paging);

	if($endPage > $no_of_page)
		$endPage=$no_of_page;
//			print "<p align=center class=content>Page ".($page+1)." of $no_of_page ";
	$paging_table="<table width=400 border=0 align=right cellpadding=2 cellspacing=0>
		<tr> 
		<td class=\"pagingtxt\" align=\"right\"> <br>Paging: ";
		if($page != 0)
			$paging_table .=' <a href="javascript:showData(\'\','.$previousPage.');" >Prev</a>';
	for($i=$startPage;$i<$endPage;$i++){
		$j=$i+1;
		if($i!=$page) $paging_table.=" <a href=\"javascript:showData('','$i');\" class=\"paginglink\">$j</a> ";
		else $paging_table.=' '.$j;
		$paging_table.= " | ";
	}
	$paging_table= substr($paging_table,0,-2);
	if($nextPage != $no_of_page)
		$paging_table .=' <a href="javascript:showData(\'\','.$nextPage.');">Next</a>';
		//$paging_table.= "[<font class=content>".$j."</font>]";
	$paging_table.= " </p> </td> </tr>";
	  $paging_table.="</table>";
}
if(isset($no_of_page) && ($no_of_page<=1))
{
	$paging_table="";
}
		return $paging_table;
#################### paging Ends ##################

}

function property_paging($total_recs,$paging,$page)
{
#################### paging starts ##################
$paging_table="";
if($total_recs>0){
	
	$startPage=((int)(($page)/5))*5;
	$endPage=$startPage+5;
	
	$previousPage = ($page-1);
	$nextPage = ($page+1);

	$no_of_page=ceil($total_recs/$paging);

	if($endPage > $no_of_page)
		$endPage=$no_of_page;
//			print "<p align=center class=content>Page ".($page+1)." of $no_of_page ";
	$paging_table="<table width=400 border=0 align=right cellpadding=2 cellspacing=0>
		<tr> 
		<td class=\"pagingtxt\" align=\"right\"> <br>Paging: ";
		if($page != 0)
			$paging_table .=' <a href="javascript:showData(\'search\','.$previousPage.');" >Prev</a>';
	for($i=$startPage;$i<$endPage;$i++){
		$j=$i+1;
		if($i!=$page) $paging_table.=" <a href=\"javascript:showData('search','$i');\" class=\"paginglink\">$j</a> ";
		else $paging_table.=' '.$j;
		$paging_table.= " | ";
	}
	$paging_table= substr($paging_table,0,-2);
	if($nextPage != $no_of_page)
		$paging_table .=' <a href="javascript:showData(\'search\','.$nextPage.');">Next</a>';
		//$paging_table.= "[<font class=content>".$j."</font>]";
	$paging_table.= " </p> </td> </tr>";
	  $paging_table.="</table>";
}
if(isset($no_of_page) && ($no_of_page<=1))
{
	$paging_table="";
}
		return $paging_table;
#################### paging Ends ##################

}

}