<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays,java.util.List"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rpg Card Generator</title>
 <link rel="stylesheet" href="css/styles.css" type="text/css" />
</head>
<body>
<%// variables per fer la connexio:
	String user="ivan"; //crear usuario y contra en el terminal
	String password="contra1234";
	String host="localhost:3306";
	String db = "cartarpg";
	String url = "jdbc:mysql://"+host+"/"+db;
	Connection conn = null;
	Statement statement = null;
	ResultSet rs = null;
	
	
	// recollim valors formulari:
	String id=request.getParameter("id");
	String nom=request.getParameter("nombre");
	String race=request.getParameter("raza");
	String picture=request.getParameter("imagen");
	String fue=request.getParameter("fue");
	int nfue=Integer.parseInt(fue);
	String des=request.getParameter("des");
	int ndes=Integer.parseInt(des);
	String con=request.getParameter("con");
	int ncon=Integer.parseInt(con);
	String intt=request.getParameter("int");
	int nint=Integer.parseInt(intt);
	String sab=request.getParameter("sab");
	int nsab=Integer.parseInt(sab);
	String car=request.getParameter("car");
	int ncar=Integer.parseInt(car);
	String pv=request.getParameter("pv");
	int npv=Integer.parseInt(pv);
	String pm=request.getParameter("pm");
	int npm=Integer.parseInt(pm);

try{

	Class.forName("com.mysql.jdbc.Driver").newInstance ();
		conn = DriverManager.getConnection(url, user, password);
		statement = conn.createStatement();
		//inmediatamente hacemos un insert amb les dades
		//creamos la consulta
int i=statement.executeUpdate("insert into carta(idcarta,nombre_carta,raza,imagen,fue,des,con,intt,sab,car,pv,pm)values(''"+id+"','"+nom+"','"+picture+"','"+race+"',"+nfue+","+ndes+","+ncon+","+nint+","+nsab+","+ncar+","+npv+","+npm+")");
%>
race:<%out.print("RACE_carta"); %><br>
FUE:<%out.print("FUE_carta"); %><br>
DES:<%out.print("DES_carta"); %><br>
CON:<%out.print("CON_carta"); %><br>
INT:<%out.print("INT_carta"); %><br>
SAB:<%out.print("SAB_carta"); %><br>
CAR:<%out.print("CAR_carta"); %><br>
PV:<%out.print("PV_carta"); %><br>
<table width="<%out.print("PV_carta"); %>" bgcolor="red"><tr><td></td></tr></table>
PM:<%out.print("PM_carta"); %><br>
<table width="<%out.print("PM_carta"); %>" bgcolor="blue"><tr><td></td></tr></table>
<br>
<img src="img/<%out.print(rs.getString("PIC_carta")); %>.png" height="100" width="80">

<%
}catch(SQLException error) {
out.print("Error de Conexión : "+error.toString());
} %>
