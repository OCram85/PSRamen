Describe "Module meta tests" {
    Context "Module manifest tests"{
        It "Testing correct syntax" {
<%
"            {{Test-ModuleManifest -Path .\src\{0}.psd1}} | Should not throw" -f $PLASTER_PARAM_ModuleName
%>
        }
    }
}
