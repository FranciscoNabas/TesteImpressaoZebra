﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teste Impressão EPL direto do navegador</title>
</head>
<body>
    <h1>Teste Impressão EPL direto do navegador</h1>

    <script type="text/javascript">
        function ImprimeEpl(epl)
        {
            var JanelaImpressao = window.open();
            JanelaImpressao.document.open('text/plain')
            JanelaImpressao.document.write(epl);
            JanelaImpressao.document.close();
            JanelaImpressao.focus();
            JanelaImpressao.print();
            JanelaImpressao.close();
        }
    </script>
</body>

    <input type="button" value="Imprimir EPL" onclick="ImprimeEpl(document.getElementById('codigoepl').value)" /><br/>
    <textarea id="codigoepl" cols="40" rows="20">A500,100,0,2,1,1,N,"TESTE"
P1,1
N

    </textarea>
</html>
