<%@ page import="java.util.Arrays, java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CartaRPG</title>
</head>
<body>



<%! 

	public int getValue(){
	
	int valor=0;
	int dados[]={0,0,0,0};
	for (int i=0; i<4;i++){
		
	dados [i]=(int)(Math.random()* 6+1);
	
	}
	;
	
	
	Arrays.sort(dados);
	
	for (int i=1;i<dados.length;i++){
		
		valor=dados[i]+valor;
		
		
	}
	return valor;
	
};
	
%>

<%!

public int FUE(int mod){
	
	int suma=0;
	
	switch(mod){
	case 0:break;
	case 1:break;
	case 2: suma=suma-2;break;
	case 3: suma=suma-2;break;
	case 4: suma=suma+2;break;
	case 5:break;
	
	}
	
	return suma;
}

public int DES(int mod){
	
	int suma=0;
	
	switch(mod){
	case 0: suma=suma+2;break;
	case 1:break;
	case 2: break;
	case 3: suma=suma+2;break;
	case 4: break;
	case 5:break;
	
	}
	
	return suma;

}
public int CON(int mod){
	
	int suma=0;
	
	switch(mod){
	case 0: suma=suma-2;break;
	case 1: suma=suma+2;break;
	case 2: suma=suma+2;break;
	case 3: break;
	case 4: break;
	case 5:break;
	
	}
	return suma;

}
public int INT(int mod){
	
	int suma=0;
	
	switch(mod){
	case 0: suma=suma+2;break;
	case 1:break;
	case 2: break;
	case 3: break;
	case 4: suma=suma-2;break;
	case 5:break;
	
	}
	return suma;

}

public int SAB(int mod){
	
	int suma=0;
	
	switch(mod){
	case 0:break;
	case 1: suma=suma+2;break;
	case 2: break;
	case 3: break;
	case 4: break;
	case 5:break;
		
	
	}
	return suma;

}
public int CAR(int mod){
	
	int suma=0;
	
	switch(mod){
	case 0:break;
	case 1: suma=suma-2;break;
	case 2: suma=suma+2;break;
	case 3: break;
	case 4: suma=suma-2;break;
	case 5:break;
	
	}
	return suma;

}


	
%>

<%
	


	String[] razas={"Elfs","Nans","Gnom","Mitjans","SemiOrc","Humans"};
	String[] img={"0","1","2","3","4","5"};
	int random =  (int) (Math.random() * razas.length);

	

	
	
%>

<div class="table" >
    <table border="1">
        <caption>
            <b>  
            <%
            
            out.print(razas[random]);
           
            %>
            </b>
        </caption>
        <tbody><tr>
            <th rowspan="9"><img src="img/<% out.print(img[random]);%>.png"  alt="1.png" title="Nans" width="100" height="200"></th>
            <th>Carac.</th>
            <th>Valor Base</th>
            <th>Mod.</th>
            <th>Valor Final</th>
        </tr>
        <tr>
            <td><i>FUE:</i></td>
            <td>
                <%
                    int fue=getValue();
                    out.print(fue);
                %>
            </td>
            <td>
            <% 
               int modFUE = FUE(random);
               out.print(modFUE); %>
            
            </td>
            <td>
            
            
            <%out.print(fue+modFUE);%>
            
            
            </td>
        </tr>
        <tr>
            <td><i>DES:</i></td>
            <td>
                <%
                    int des=getValue();
                    out.print(des);
                %>
            </td>
            <td>
            
                <% 
               int modDES = DES(random);
               out.print(modDES); %>
            
            
            </td>
            <td>
            
              <%out.print(des+modDES);%>
            
            
            </td>
        </tr>
        <tr>
            <td><i>CON:</i></td>
            <td>
                  <%
                    int con=getValue();
                    out.print(con);
                %>
            </td>
            <td>
              <% 
               int modCON = CON(random);
               out.print(modCON); %>
            
            
            
            </td>
            <td>
            
             <%out.print(con+modCON);%>
            
            </td>
        </tr>
        <tr>
            <td><i>INT:</i></td>
            <td>
                  <%
                    int int1=getValue();
                    out.print(int1);
                %>
            </td>
            <td>
            
               <% 
               int modINT = INT(random);
               out.print(modINT); %>
            
            
            
            
            </td>
            <td>
            
             <%out.print(int1+modINT);%>
            
            
            </td>
        </tr>
        <tr>
            <td><i>SAB:</i></td>
            <td>
                  <%
                    int sab=getValue();
                    out.print(sab);
                %>
            </td>
            <td>
            
              <% 
               int modSAB = SAB(random);
               out.print(modSAB); %>
            
            </td>
            <td>
            
             <%out.print(sab+modSAB);%>
            
            </td>
        </tr>
        <tr>
            <td><i>CAR:</i></td>
            <td>
                  <%
                    int car=getValue();
                    out.print(car);
                %>
            </td>
            <td>
                  <% 
               int modCAR = CAR(random);
               out.print(modCAR); %>
            
            </td>
            <td>
            
                  <%out.print(car+modCAR);%>
            
            
            </td>
        </tr>
        <tr>
            <td><i>P.V <%int vida= (con+modCON) * (int)(Math.random() * 8+1);%>
            </i></td>
            <td colspan="3"><table width="<%out.print(vida); %>%" bgcolor="red">
                    <tbody><tr>
                        <td></td>
                    </tr>
                </tbody></table></td>
        </tr>
        <tr>
            <td>P.M <%int mana= (((int1+modINT)+(sab+modSAB))/2)*(int)(Math.random() * 4+1); %>
            </td>
            <td colspan="3"><table width="<%out.print(mana); %>" bgcolor="blue">
                    <tbody><tr>
                        <td></td>
                    </tr>
                </tbody></table></td>
        </tr>
    </tbody></table>
    <progress max="160" value="98"></progress>
    </div>

<h1>
    <% out.print(razas[random]); %>
</h1>



<form action="bd_carta.jsp" method="post">

<label>Nombre: </label>
<input type="text" name="nombre"/>
<input type="hidden" name="raza" value="<%out.print(razas[random]); %>">
<input type="hidden" name="imagen" value="<%out.print(img[random]); %>"> 
<input type="hidden" name="fue" value="<%out.print(fue+modFUE); %>"> 
<input type="hidden" name="des" value="<%out.print(des+modDES); %>"> 
<input type="hidden" name="con" value="<%out.print(con+modCON); %>"> 
<input type="hidden" name="int" value="<% out.print(int1+modINT);%>"> 
<input type="hidden" name="sab" value="<%out.print(sab+modSAB); %>">      
<input type="hidden" name="car" value="<%out.print(car+modCAR);%>"> 
<input type="hidden" name="pv" value="<%out.print(vida);%>"> 
<input type="hidden" name="pm" value="<%out.print(mana);%>"> 
<input type="submit" name="Enviar"/>

</form>







</body>
</html>





