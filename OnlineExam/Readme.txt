小组成员：乔至威、阎华、李再林、李小磊

开发工具、运行环境：MyEclipse10，Mysql5.0，Tomcat7.0，JDK1.7

本系统使用说明：
1、在MyEclipse中导入本工程文件
2、在MySQL中创建数据库，执行database目录下的exam.sql数据库脚本文件创建数据库和表及数据
3、设置数据库连接配置，修改doc目录下的exam.xml文件，将其中的数据库用户名和密码设置为实际的用户名和密码(我的电脑默认设置为root/root)
4、将doc目录下的exam.xml文件拷贝到Tomcat的安装目录下的conf\Catali\localhost文件夹下，并修改exam.xml文件中的docBase，将该值指向该工程目录，如我的电脑的"F:\Java\程序\OnlineExam\WebRoot"
5、确保Tomcat安装目录的common\lib下mysql-connector-java-3.0.16-ga-bin.jar类包文件，如果没有拷贝WebRoot\WEB-INF\lib目录下的mysql-connector-java-3.0.16-ga-bin.jar类包文件到Tomcat安装目录的common\lib下
6、启动Tomcat，在浏览器输入http://localhost:8080/exam，运行本系统，也可直接在MyEclipse中运行本系统
7、学生登陆使用账号：aaaa0001，密码：aaaa0001
8、管理员登陆使用账号：admin，密码：admin

