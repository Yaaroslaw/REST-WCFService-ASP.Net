<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="REST_WCF_Service_ASP.Net._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <button onclick ="doWork1(); return false;"> DoWork</button><%--false, cause no need to reload a page--%>
    </div>
<script type =" text/javascript">
    function doWork1(){
    console.info("This actually works, WOW!");
   
     $.ajax({
    url: "Service/Service1.svc/DoWork",
    type: "GET",
    dataType: "json",
    success: function(result){
        console.info(result);
        } 
    });
    }
</script>
</asp:Content>
