<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PaymentMethod.ascx.cs" Inherits="Consid.SantanderCommerce.Santander.PaymentMethod" %>


<%--<input type="hidden" id="GEPaymentSelected" name="GEPaymentSelected" value="GE"/>
<br />
<h4>
    Credit information
</h4>
<br />

<asp:ScriptManager runat="server" ></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanelDemo" runat="server" ChildrenAsTriggers="True" UpdateMode="Conditional"> 
    <ContentTemplate>
        <asp:LinkButton runat="server" ID="StartProcess" Text="Check availability" OnClick="StartProcess_Click" CssClass="btn btn-primary"/>        
        <br/>
        <div id="BankIframeDiv" >
            <iframe id="BankIframe" runat="server" width="400" height="400"  style="visibility: hidden;"
                src="<%# IFrameSource %>"></iframe>       
        </div>
        <div id="BankResultDiv">
        </div>
    </ContentTemplate>    
</asp:UpdatePanel>



<asp:Label runat="server" ID="Message" />
    
<script type="text/javascript">

    function CallGetResult(token) {
        parent.document.getElementById('BankIframeDiv').style.display = 'none';

        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "/WebMethods.aspx/GetResult",
            data: JSON.stringify({ tokenId: token }),
            dataType: "json",
            success: function (data) {          
                parent.document.getElementById('BankResultDiv').innerHTML = data.d;
            },
            error: function (result) {
                alert("Error");
            }
        });
    }

    function BindGetTokenEvent() {
        $("form").find('[name="ChoosePayment"]').each(function () {
            //if ($(this).closest("div").children('#GEPaymentSelected').val() == "GE") {
                //$(this).change(alert("Click"));
                //$(this).live('change', GetTokenAndRefreshIFrame($(this)));
                //$(this).attr("test", "test");
            //}
        });
    }

    function GetTokenAndRefreshIFrame(obj) {
        // OBS: Here we can eventually get the token when clicked the radio button!!!
        if (obj.closest("div").children('#GEPaymentSelected').val() == "GE") {
            
        }
    }

    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }

    $(document).ready(function () {
        
        BindGetTokenEvent();

        var iframe = document.getElementById("<%# BankIframe.ClientID %>");
        if (iframe != null) {
            // Load event for the IFrame
            iframe.addEventListener("load", function () {
                if (document.URL.indexOf("?Token=") >= 0) {
                    var token = getParameterByName("Token");
                    CallGetResult(token);
                }
            });
        }
    });

</script>--%>
