**How to set up this system?**
==============================
  *1.* Run sql script named 'jeesiteTest.sql' in databases (RECOMMAND: Mysql)
  
  *2.* Open the IDEA **(RECOMMAND: IntelliJ)** and import the project by 'pom.xml' *[NOTICE: If there are some issues in this period, you can clean the pom file and restart this pom. And if it still does not work, you can download some packages manually]*
  
  ![image](http://github.com/MickeyZeng/SecureProgramming/raw/master/Image/pomscreenshot.png)
  
  *3.* Edit configuration and put this project in Server **(RECOMMAND: Tomcat)**
  
  ![image](http://github.com/MickeyZeng/SecureProgramming/raw/master/Image/configurationscreentshot.png)
  
  *4.* Change the databases parameter in a docuemnt named **'jeesite.properties' (line 13-17)** *[RECOMMAND: Before editing configuration of databases, you can do a test by IntelliJ]*
  
  ![image](http://github.com/MickeyZeng/SecureProgramming/raw/master/Image/JDBCscreenshot.png)
  
  *5.* Now,You can run this Program and see the login page. 
  
  ![image](http://github.com/MickeyZeng/SecureProgramming/raw/master/Image/loginscreenshot.png)
  
  *6.* you can login in by two acoounts
  
	a. Account: sd_admin Password: sd_admin (ROLE: System admin)
	
	![image](http://github.com/MickeyZeng/SecureProgramming/raw/master/Image/adminScreentshot.png)
	
	b. Account: jn_jsb Password: jn_jsb (ROLE: Normal voter)
	
	![image](http://github.com/MickeyZeng/SecureProgramming/raw/master/Image/voteScreentshot.png)
  
  *[Notice: So far, some main functions does not finish yet, such as function of regrstration, function of vote.]*
