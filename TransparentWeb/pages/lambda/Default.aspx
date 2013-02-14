<%@ Page Title="" Language="C#" MasterPageFile="~/include/master/Transparent.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="transparent.pages.lambda.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HTMLTitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Lambda Expressions
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phMainBody" runat="server">
    <p>
        Lambda expressions are a feature of C# 3.0 and the .NET framework 3.5. They allow
        the creation of anonymous methods or functions using a very concise syntax, similar
        to that of lambda calculus.</p>
    <p>b
        Lambda expressions can be categorised as <em>expression lambdas</em> and <em>statement
            lambdas</em>.
    </p>
    <p>
        Expression lambdas include an expression consisting of operands and operators. Statement
        lambdas include a code block containing one or more statements.
    </p>
    <p>
        Lambda expressions take the form:
        <code>(parameters) => expression</code>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phPageSpecificFooter" runat="server">
</asp:Content>
