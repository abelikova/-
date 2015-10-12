﻿<%--flexberryautogenerated="true"--%>
<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="ObrashhenieE.aspx.cs" Inherits="IIS.Горводоканал.ОбращениеE" %>
<%@ Import namespace="NewPlatform.Flexberry.Web.Page" %>
<%-- Autogenerated section start [Register] --%>
<%-- Autogenerated section end [Register] --%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="<%= Constants.FormCssClass %> <%= Constants.EditFormCssClass %>">
        <h2 class="<%= Constants.FormHeaderCssClass %> <%= Constants.EditFormHeaderCssClass %>">Обращение</h2>
        <div class="<%= Constants.FormToolbarCssClass %> <%= Constants.EditFormToolbarCssClass %> <%= Constants.StickyCssClass %>">
            <asp:ImageButton ID="SaveBtn" runat="server" SkinID="SaveBtn" OnClick="SaveBtn_Click" AlternateText="<%$ Resources: Resource, Save %>" ValidationGroup="savedoc" />
            <asp:ImageButton ID="SaveAndCloseBtn" runat="server" SkinID="SaveAndCloseBtn" OnClick="SaveAndCloseBtn_Click" AlternateText="<%$ Resources: Resource, Save_Close %>" ValidationGroup="savedoc" />
            <asp:ImageButton ID="CancelBtn" runat="server" SkinID="CancelBtn" OnClick="CancelBtn_Click" AlternateText="<%$ Resources: Resource, Cancel %>" />
        </div>
        <div class="<%= Constants.FormControlsCssClass %> <%= Constants.EditFormControlsCssClass %>">
            <asp:ValidationSummary runat="server" ValidationGroup="savedoc"/> 
            <%-- Autogenerated section start [Controls] --%>
<!-- autogenerated start -->
<div>
	<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlНомерLabel" runat="server" Text="Номер" EnableViewState="False">
</asp:Label>
<ac:AlphaNumericTextBox CssClass="descTxt" ID="ctrlНомер" Type="Numeric" runat="server">
</ac:AlphaNumericTextBox>

<asp:RequiredFieldValidator ID="ctrlНомерValidator" runat="server" ControlToValidate="ctrlНомер"
ErrorMessage="Не указано: Номер" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlСтатусLabel" runat="server" Text="Статус" EnableViewState="False">
</asp:Label>
<asp:DropDownList ID="ctrlСтатус" CssClass="descTxt" runat="server">
	<asp:ListItem>Открыто</asp:ListItem>
<asp:ListItem>НаКонтроле</asp:ListItem>
<asp:ListItem>ПрисоединеноКЗаявке</asp:ListItem>
<asp:ListItem>Закрыто</asp:ListItem>

</asp:DropDownList>
</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlДатаПоступленияLabel" runat="server" Text="Дата поступления" EnableViewState="False">
</asp:Label>
<div class="descTxt">
    <ac:DatePicker ID="ctrlДатаПоступления" runat="server"/>
</div>
</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlДатаЗакрытияLabel" runat="server" Text="Дата закрытия" EnableViewState="False">
</asp:Label>
<div class="descTxt">
    <ac:DatePicker ID="ctrlДатаЗакрытия" runat="server"/>
</div>
</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlТипLabel" runat="server" Text="Тип" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlТип" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlПервичноеLabel" runat="server" Text="Первичное" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlПервичное" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlОтветственныйСотрудникLabel" runat="server" Text="Ответственный сотрудник" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlОтветственныйСотрудник" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlВидLabel" runat="server" Text="Вид" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlВид" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlПричинаLabel" runat="server" Text="Причина" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlПричина" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlПринявшийОператорLabel" runat="server" Text="Принявший оператор" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlПринявшийОператор" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

</div>
<br/>
<fieldset ID="ctrl_fsОбратившийся" style="clear: left">
	<legend>Обратившийся</legend>
	<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlФИООбрвтившегосяLabel" runat="server" Text="ФИО обрвтившегося" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlФИООбрвтившегося" runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator ID="ctrlФИООбрвтившегосяValidator" runat="server" ControlToValidate="ctrlФИООбрвтившегося"
ErrorMessage="Не указано: ФИООбрвтившегося" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlАдресОбрвтившегосяLabel" runat="server" Text="Адрес обрвтившегося" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlАдресОбрвтившегося" runat="server">
</asp:TextBox>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlТелефонОбрвтившегосяLabel" runat="server" Text="Телефон обрвтившегося" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlТелефонОбрвтившегося" runat="server">
</asp:TextBox>

</div>

</fieldset>
</div>
<!-- autogenerated end -->
            <%-- Autogenerated section end [Controls] --%>
        </div>
    </div>
</asp:Content>
