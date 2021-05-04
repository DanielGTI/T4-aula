<%@page import="Suporte.Tabelas" %>
<%@page import="Suporte.Paciente" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Exemplo IMC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h2>Calcular IMC</h2>
        <div id="div_imc">
            <p>IMC = Índica de Massa Corporea</p>
            <form action="calculo.jsp" method="get" target="result">
                Peso: <input type="text" name="peso"><br>
                Altura: <input type="text" name="altura"><br>

                <input type="submit" name="enviar" value="Calcular">
            </form>
        </div>
        <br><br>
        
        
        <div id="div_resultado">
            <iframe name="result" width="300" height="200"></iframe>
        </div>

        <br>
        
        <%//=new Tabelas().getImc() %>

        <%
            //  int nivelIMC[] = {10, 12, 13, 14, 15, 17, 18, 25, 30, 31, 42, 51, 60};
            out.print("Primeiro teste");
            out.print(new Tabelas().nivel_Imc(10) );
            out.print("<br><br>Segundo teste");
            out.print(new Tabelas().nivel_Imc(1,5) );
            out.print("<br><br>Terceiro teste");
            out.print(new Tabelas().nivel_Imc() );
        %>
        
        
        
        
        
        

        <%
            
                Paciente p = new Paciente();
                
                p.setNome("Daniel");
                p.setIdade(30);
                p.setCpf("123.456.789-12");
                
                out.println("Nome = " + p.getNome() + "<br>");
                out.println(p.getCpf());
                
        %>
        <br>
    </body>
</html>