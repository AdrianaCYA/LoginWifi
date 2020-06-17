<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctrlLoginCliente.ascx.cs" Inherits="AccesoClientesWifi.Controls.ctrlLoginCliente" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<form accept-charset="UTF-8" class="simple_form form-horizontal" name="myform" role="form" runat="server" onsubmit="fValida(); return true" id="myform" method=post>
    <input name="utf8" type="hidden" value="&#x2713;" />   
    <div class = "form-group">
    <label for = "correo" class = "col-sm-2 control-label">Correo*</label>
          <div class = "col-sm-10">
             <input type="text" class="form-control" id="correo" placeholder="Ingresa tu correo electrónico" required="required" oninvalid="InvalidMsgEmail(this);" oninput="InvalidMsgEmail(this);" runat="server">
          </div>
    </div>
    <div class = "form-group">
    <label for = "nombre" class="col-sm-2 control-label">Nombre*</label>
          <div class = "col-sm-10">
             <input type="text" class="form-control" id="nombre" placeholder="Ingresa tu nombre" required="required" oninvalid="InvalidMsgText(this);" runat="server">
          </div>
    </div>
    <div class = "form-group">
      <label for = "apellido" class = "col-sm-2 control-label">Primer Apellido*</label>
      <div class = "col-sm-10">
         <input type = "text" class = "form-control" id="apellido" placeholder = "Ingresa primer apellido" required="required"  oninvalid="InvalidMsgText(this);"  runat="server" >
      </div>
    </div>
    <div class="form-group" id="groupCombos">
    <label for = "cmbday" class = "col-sm-2 control-label">Fecha de nacimiento*</label>
        <div class = "col-sm-10" style="width:120px;">
            <select runat="server" class="form-control"  name="cmbday" id = "cmbday" required="required" data-error="This is a mandatory field" style="width:120px;" oninvalid="InvalidMsgText(this);">
                <option value="" selected disabled>-- Día --</option>    
                    <option>01</option>
                    <option>02</option>
                    <option>03</option>
                    <option>04</option>
                    <option>05</option>
                    <option>06</option>
                    <option>07</option>
                    <option>08</option>
                    <option>09</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                    <option>13</option>
                    <option>14</option>
                    <option>15</option>
                    <option>16</option>
                    <option>17</option>
                    <option>18</option>
                    <option>19</option>
                    <option>20</option>
                    <option>21</option>
                    <option>22</option>
                    <option>23</option>
                    <option>24</option>
                    <option>25</option>
                    <option>26</option>
                    <option>27</option>
                    <option>28</option>
                    <option>29</option>
                    <option>30</option>
                    <option>31</option>
            </select>           
        </div>
        <div class = "col-sm-10" style="width:120px;">
            <select runat="server" class="form-control" name="cmbmonth" id="cmbmonth" style="width:120px;" oninvalid="InvalidMsgText(this);" required="required">
                <option value="" selected disabled>-- Mes --</option>
                    <option>01</option>
                    <option>02</option>
                    <option>03</option>
                    <option>04</option>
                    <option>05</option>
                    <option>06</option>
                    <option>07</option>
                    <option>08</option>
                    <option>09</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>                     
            </select>
        </div>
        <div class = "col-sm-10" style="width:120px;">
            <select runat="server" class="form-control" name="cmbyear" id="cmbyear" style="width:120px;" oninvalid="InvalidMsgText(this);" required="required">
                    <option value="" selected disabled>-- Año --</option>
                        <option>1950</option>
                        <option>1951</option>
                        <option>1952</option>
                        <option>1953</option>
                        <option>1954</option>
                        <option>1955</option>
                        <option>1956</option>
                        <option>1957</option>
                        <option>1958</option>
                        <option>1959</option>
                        <option>1960</option>
                        <option>1961</option>
                        <option>1962</option>
                        <option>1963</option>
                        <option>1964</option>
                        <option>1965</option>
                        <option>1966</option>
                        <option>1967</option>
                        <option>1968</option>
                        <option>1969</option>
                        <option>1970</option>
                        <option>1971</option>
                        <option>1972</option>
                        <option>1973</option>
                        <option>1974</option>
                        <option>1975</option>
                        <option>1976</option>
                        <option>1977</option>
                        <option>1978</option>
                        <option>1979</option>
                        <option>1980</option>
                        <option>1981</option>
                        <option>1982</option>
                        <option>1983</option>
                        <option>1984</option>
                        <option>1985</option>
                        <option>1986</option>
                        <option>1987</option>
                        <option>1988</option>
                        <option>1989</option>
                        <option>1990</option>
                        <option>1991</option>
                        <option>1992</option>
                        <option>1993</option>
                        <option>1994</option>
                        <option>1995</option>
                        <option>1996</option>
                        <option>1997</option>
                        <option>1998</option>
                        <option>1999</option>
                        <option>2000</option>
                        <option>2001</option>
                        <option>2002</option>
                        <option>2003</option>
                        <option>2004</option>
                        <option>2005</option>
                        <option>2006</option>
                        <option>2007</option>
                        <option>2008</option>
                        <option>2009</option>
                        <option>2010</option>
            </select>
        </div>
        
    </div>
    <div class="form-group" id="DivErrorFecha" style="display:none;">
        <div class = "col-sm-offset-2 col-sm-4">
            <div class="alert alert-danger alert-dismissable fade in">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>¡La fecha de nacimiento es invalida!</strong>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for = "cmbgenero" class = "col-sm-2 control-label">Género*</label>
         <div class = "col-sm-10" style="width:120px;">
            <select runat="server" class="form-control" name="cmbgenero" id="cmbgenero" style="width:120px;" oninvalid="InvalidMsgText(this);" required="required">
                <option value="" selected disabled>-- Género --</option>
                    <option>Masculino</option>
                    <option>Femenino</option>                   
            </select>
        </div>
    </div>
    <div class="form-group">
        <div class = "col-sm-offset-2 col-sm-10" >
            <div class="checkbox">
            <label>
                <input type="checkbox" required="required" runat="server" id="tos" oninvalid="InvalidMsgCheckPrivacity(this)"> 
                He leído y acepto los <a id="TerminosCondiciones" >términos y condiciones,</a> así como el  <a id="AvisoPrivacidad">aviso de privacidad</a> publicado por C&A México.
            </label>
            </div>
        </div>
    </div>
    <div class = "form-group">
        <div class = "col-sm-offset-2 col-sm-10">
            <div class="loading" style="border-color:cornflowerblue;">
                <img src="loader.gif" alt="" />
            </div>
            <asp:Button ID="cmdRegistrar" runat="server" Text="Registrar" CssClass="button" OnClick="cmdRegistrar_Click" />
        </div>
       
    </div>
    <div class="form-group">
        <input id="HiddenProcDate" type="hidden" runat="server" />
        <input id="hbrowser" name="hbrowser" type="hidden" runat="server" />
        <input id="hos" name="hos" type="hidden" runat="server" />
    </div>
</form>

<script type='text/javascript'>

    window.onload = load();

    function load() {
        $("#DivAvisoPrivacidad").slideUp("fast", "swing", function () {
        });
        $("a#TerminosCondiciones").click(function () {           
            window.open("https://www.cyamoda.com/content/terminos-condiciones-compra-en-linea","_blank");
        });
        $("a#AvisoPrivacidad").click(function () {           
            window.open("https://www.cyamoda.com/content/privacidad","_blank");
        });
    }    

    function InvalidMsgEmail(textbox) {
        if (textbox.value == '') {
            textbox.setCustomValidity('El correo es requerido');
        }
        else if (textbox.validity.typeMismatch) {
            textbox.setCustomValidity('Ingrese un correo válido');
        }
        else {
            textbox.setCustomValidity('');
        }
        return true;
    }

    function InvalidMsgText(textbox) {
        if (textbox.value == '') {
            textbox.setCustomValidity('El campo es requerido');
        }
        else {
            textbox.setCustomValidity('');
        }
        return true;
    }

    function InvalidMsgCheckPrivacity(checkbox) {
        if (checkbox.checked == false) {
            checkbox.setCustomValidity('Es necesario aceptar la política de privacidad');
        }
        else {
            checkbox.setCustomValidity('');
        }
        return true;
    }

    function InvalidMsg(select) {
        if (document.getElementById('cmbday').value == "-- Día --") {
            select.setCustomValidity('Elija un día')
        }
        return true;
    }

    function FnMuestraFormPrivacidad() {
        $("#DivAvisoPrivacidad").slideDown("slow", function () {
        });
    }

    function fValida() {
        var campo = document.getElementById('<%= correo.ClientID %>').value;
        if (campo.length == 0) {
            $("[id$=correo]").focus();
            return false;
        }

        var campo = document.getElementById('<%= nombre.ClientID %>').value;
        if (campo.length == 0) {
            $("[id$=nombre]").focus();
            return false;
        }

        var campo = document.getElementById('<%= apellido.ClientID %>').value;
        if (campo.length == 0) {
            $("[id$=apellido]").focus();
            return false;
        }

        var campo = document.getElementById('<%= cmbday.ClientID %>').value;
        if (campo.length == 0) {
            $("[id$=cmbday]").focus();
            return false;
        }

        var campo = document.getElementById('<%= cmbmonth.ClientID %>').value;
        if (campo.length == 0) {
            $("[id$=cmbmonth]").focus();
            return false;
        }

        var campo = document.getElementById('<%= cmbyear.ClientID %>').value;
        if (campo.length == 0) {
            $("[id$=cmbyear]").focus();
            return false;
        }

        var campo = document.getElementById('<%= cmbgenero.ClientID %>').value;
        if (campo.length == 0) {
            $("[id$=cmbgenero]").focus();
            return false;
        }

        var campo = document.getElementById('<%= tos.ClientID %>').value;
        if (campo.length == 0) {
            $("[id$=tos]").focus();
            return false;
        }
        document.getElementById('<%= cmdRegistrar.ClientID %>').hidden;
        fshowProgress();
        fgetOS();
    }

    function fshowProgress() {
        var loading = $(".loading");
        loading.show();
        return true;
    }

    function fgetOS() {
        (function (window) {
            {
                var unknown = '-';

                // screen
                var screenSize = '';
                if (screen.width) {
                    width = (screen.width) ? screen.width : '';
                    height = (screen.height) ? screen.height : '';
                    screenSize += '' + width + " x " + height;
                }

                // browser
                var nVer = navigator.appVersion;
                var nAgt = navigator.userAgent;
                var browser = navigator.appName;
                var version = '' + parseFloat(navigator.appVersion);
                var majorVersion = parseInt(navigator.appVersion, 10);
                var nameOffset, verOffset, ix;

                // Opera
                if ((verOffset = nAgt.indexOf('Opera')) != -1) {
                    browser = 'Opera';
                    version = nAgt.substring(verOffset + 6);
                    if ((verOffset = nAgt.indexOf('Version')) != -1) {
                        version = nAgt.substring(verOffset + 8);
                    }
                }
                // Opera Next
                if ((verOffset = nAgt.indexOf('OPR')) != -1) {
                    browser = 'Opera';
                    version = nAgt.substring(verOffset + 4);
                }
                    // Edge
                else if ((verOffset = nAgt.indexOf('Edge')) != -1) {
                    browser = 'Microsoft Edge';
                    version = nAgt.substring(verOffset + 5);
                }
                    // MSIE
                else if ((verOffset = nAgt.indexOf('MSIE')) != -1) {
                    browser = 'Microsoft Internet Explorer';
                    version = nAgt.substring(verOffset + 5);
                }
                    // Chrome
                else if ((verOffset = nAgt.indexOf('Chrome')) != -1) {
                    browser = 'Chrome';
                    version = nAgt.substring(verOffset + 7);
                }
                    // Safari
                else if ((verOffset = nAgt.indexOf('Safari')) != -1) {
                    browser = 'Safari';
                    version = nAgt.substring(verOffset + 7);
                    if ((verOffset = nAgt.indexOf('Version')) != -1) {
                        version = nAgt.substring(verOffset + 8);
                    }
                }
                    // Firefox
                else if ((verOffset = nAgt.indexOf('Firefox')) != -1) {
                    browser = 'Firefox';
                    version = nAgt.substring(verOffset + 8);
                }
                    // MSIE 11+
                else if (nAgt.indexOf('Trident/') != -1) {
                    browser = 'Microsoft Internet Explorer';
                    version = nAgt.substring(nAgt.indexOf('rv:') + 3);
                }
                    // Other browsers
                else if ((nameOffset = nAgt.lastIndexOf(' ') + 1) < (verOffset = nAgt.lastIndexOf('/'))) {
                    browser = nAgt.substring(nameOffset, verOffset);
                    version = nAgt.substring(verOffset + 1);
                    if (browser.toLowerCase() == browser.toUpperCase()) {
                        browser = navigator.appName;
                    }
                }
                // trim the version string
                if ((ix = version.indexOf(';')) != -1) version = version.substring(0, ix);
                if ((ix = version.indexOf(' ')) != -1) version = version.substring(0, ix);
                if ((ix = version.indexOf(')')) != -1) version = version.substring(0, ix);

                majorVersion = parseInt('' + version, 10);
                if (isNaN(majorVersion)) {
                    version = '' + parseFloat(navigator.appVersion);
                    majorVersion = parseInt(navigator.appVersion, 10);
                }

                // mobile version
                var mobile = /Mobile|mini|Fennec|Android|iP(ad|od|hone)/.test(nVer);

                // cookie
                var cookieEnabled = (navigator.cookieEnabled) ? true : false;

                if (typeof navigator.cookieEnabled == 'undefined' && !cookieEnabled) {
                    document.cookie = 'testcookie';
                    cookieEnabled = (document.cookie.indexOf('testcookie') != -1) ? true : false;
                }

                // system
                var os = unknown;
                var clientStrings = [
                    { s: 'Windows 10', r: /(Windows 10.0|Windows NT 10.0)/ },
                    { s: 'Windows 8.1', r: /(Windows 8.1|Windows NT 6.3)/ },
                    { s: 'Windows 8', r: /(Windows 8|Windows NT 6.2)/ },
                    { s: 'Windows 7', r: /(Windows 7|Windows NT 6.1)/ },
                    { s: 'Windows Vista', r: /Windows NT 6.0/ },
                    { s: 'Windows Server 2003', r: /Windows NT 5.2/ },
                    { s: 'Windows XP', r: /(Windows NT 5.1|Windows XP)/ },
                    { s: 'Windows 2000', r: /(Windows NT 5.0|Windows 2000)/ },
                    { s: 'Windows ME', r: /(Win 9x 4.90|Windows ME)/ },
                    { s: 'Windows 98', r: /(Windows 98|Win98)/ },
                    { s: 'Windows 95', r: /(Windows 95|Win95|Windows_95)/ },
                    { s: 'Windows NT 4.0', r: /(Windows NT 4.0|WinNT4.0|WinNT|Windows NT)/ },
                    { s: 'Windows CE', r: /Windows CE/ },
                    { s: 'Windows 3.11', r: /Win16/ },
                    { s: 'Android', r: /Android/ },
                    { s: 'Open BSD', r: /OpenBSD/ },
                    { s: 'Sun OS', r: /SunOS/ },
                    { s: 'Linux', r: /(Linux|X11)/ },
                    { s: 'iOS', r: /(iPhone|iPad|iPod)/ },
                    { s: 'Mac OS X', r: /Mac OS X/ },
                    { s: 'Mac OS', r: /(MacPPC|MacIntel|Mac_PowerPC|Macintosh)/ },
                    { s: 'QNX', r: /QNX/ },
                    { s: 'UNIX', r: /UNIX/ },
                    { s: 'BeOS', r: /BeOS/ },
                    { s: 'OS/2', r: /OS\/2/ },
                    { s: 'Search Bot', r: /(nuhk|Googlebot|Yammybot|Openbot|Slurp|MSNBot|Ask Jeeves\/Teoma|ia_archiver)/ }
                ];
                for (var id in clientStrings) {
                    var cs = clientStrings[id];
                    if (cs.r.test(nAgt)) {
                        os = cs.s;
                        break;
                    }
                }

                var osVersion = unknown;

                if (/Windows/.test(os)) {
                    osVersion = /Windows (.*)/.exec(os)[1];
                    os = 'Windows';
                }

                switch (os) {
                    case 'Mac OS X':
                        osVersion = /Mac OS X (10[\.\_\d]+)/.exec(nAgt)[1];
                        break;

                    case 'Android':
                        osVersion = /Android ([\.\_\d]+)/.exec(nAgt)[1];
                        break;

                    case 'iOS':
                        osVersion = /OS (\d+)_(\d+)_?(\d+)?/.exec(nVer);
                        osVersion = osVersion[1] + '.' + osVersion[2] + '.' + (osVersion[3] | 0);
                        break;
                }

                // flash (you'll need to include swfobject)
                /* script src="//ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js" */
                var flashVersion = 'no check';
                if (typeof swfobject != 'undefined') {
                    var fv = swfobject.getFlashPlayerVersion();
                    if (fv.major > 0) {
                        flashVersion = fv.major + '.' + fv.minor + ' r' + fv.release;
                    }
                    else {
                        flashVersion = unknown;
                    }
                }
            }

            window.jscd = {
                screen: screenSize,
                browser: browser,
                browserVersion: version,
                browserMajorVersion: majorVersion,
                mobile: mobile,
                os: os,
                osVersion: osVersion,
                cookies: cookieEnabled,
                flashVersion: flashVersion
            };
        }(this));

        document.getElementById('<%= hos.ClientID %>').value = jscd.os + ' ' + jscd.osVersion;
        document.getElementById('<%= hbrowser.ClientID %>').value = jscd.browser + ' ' + jscd.browserMajorVersion;

    }

</script>

<style type="text/css">
    .modal
    {
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
    }
    .loading
    {
        display: none;
    }
    a{
        cursor:pointer;
    }
</style>