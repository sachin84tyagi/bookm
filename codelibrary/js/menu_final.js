function mmLoadMenus() {
  if (window.mm_menu_0708172171_1) return;
			
	/*--Masters start-----------------------------------------------------------------------*/
		/*--Category Master star --*/
	

			window.mm_menu_0708172171_1 = new Menu("root",150,25,"arial, Helvetica, verdana",13,"#ffffff","#022652","#1e7dc1","#b1e1fe","left","middle",3,0,1000,-5,7,true,true,true,0,true,true);
			mm_menu_0708172171_1.addMenuItem("Add&nbsp;Category","window.open('category-add.php', '_self');");
			mm_menu_0708172171_1.addMenuItem("Add&nbsp;Sub&nbsp;Category","window.open('category-add.php?Sub=1', '_self');");
			mm_menu_0708172171_1.addMenuItem("Manage&nbsp;Categories","window.open('category-manage.php', '_self');");
			mm_menu_0708172171_1.hideOnMouseOut=true;
			mm_menu_0708172171_1.menuBorder=1;
			mm_menu_0708172171_1.menuLiteBgColor="#ffffff";
			mm_menu_0708172171_1.menuBorderBgColor="#ffffff";
			mm_menu_0708172171_1.bgColor="#ffffff";
		/*--Category Master end --*/
	
	/*--Masters end-----------------------------------------------------------------------*/

		mm_menu_0708172171_1.writeMenus();
		
} // mmLoadMenus()



