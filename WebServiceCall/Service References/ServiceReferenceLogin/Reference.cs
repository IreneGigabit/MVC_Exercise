﻿//------------------------------------------------------------------------------
// <auto-generated>
//     這段程式碼是由工具產生的。
//     執行階段版本:4.0.30319.42000
//
//     對這個檔案所做的變更可能會造成錯誤的行為，而且如果重新產生程式碼，
//     變更將會遺失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebServiceCall.ServiceReferenceLogin {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReferenceLogin.WebService6UserSoap")]
    public interface WebService6UserSoap {
        
        // CODEGEN: 命名空間 http://tempuri.org/ 的元素名稱  Login_Id 未標示為 nillable，正在產生訊息合約
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/User_Login", ReplyAction="*")]
        WebServiceCall.ServiceReferenceLogin.User_LoginResponse User_Login(WebServiceCall.ServiceReferenceLogin.User_LoginRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/User_Login", ReplyAction="*")]
        System.Threading.Tasks.Task<WebServiceCall.ServiceReferenceLogin.User_LoginResponse> User_LoginAsync(WebServiceCall.ServiceReferenceLogin.User_LoginRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class User_LoginRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="User_Login", Namespace="http://tempuri.org/", Order=0)]
        public WebServiceCall.ServiceReferenceLogin.User_LoginRequestBody Body;
        
        public User_LoginRequest() {
        }
        
        public User_LoginRequest(WebServiceCall.ServiceReferenceLogin.User_LoginRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class User_LoginRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string Login_Id;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string Login_Pass;
        
        public User_LoginRequestBody() {
        }
        
        public User_LoginRequestBody(string Login_Id, string Login_Pass) {
            this.Login_Id = Login_Id;
            this.Login_Pass = Login_Pass;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class User_LoginResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="User_LoginResponse", Namespace="http://tempuri.org/", Order=0)]
        public WebServiceCall.ServiceReferenceLogin.User_LoginResponseBody Body;
        
        public User_LoginResponse() {
        }
        
        public User_LoginResponse(WebServiceCall.ServiceReferenceLogin.User_LoginResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class User_LoginResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string User_LoginResult;
        
        public User_LoginResponseBody() {
        }
        
        public User_LoginResponseBody(string User_LoginResult) {
            this.User_LoginResult = User_LoginResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface WebService6UserSoapChannel : WebServiceCall.ServiceReferenceLogin.WebService6UserSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class WebService6UserSoapClient : System.ServiceModel.ClientBase<WebServiceCall.ServiceReferenceLogin.WebService6UserSoap>, WebServiceCall.ServiceReferenceLogin.WebService6UserSoap {
        
        public WebService6UserSoapClient() {
        }
        
        public WebService6UserSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public WebService6UserSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebService6UserSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebService6UserSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebServiceCall.ServiceReferenceLogin.User_LoginResponse WebServiceCall.ServiceReferenceLogin.WebService6UserSoap.User_Login(WebServiceCall.ServiceReferenceLogin.User_LoginRequest request) {
            return base.Channel.User_Login(request);
        }
        
        public string User_Login(string Login_Id, string Login_Pass) {
            WebServiceCall.ServiceReferenceLogin.User_LoginRequest inValue = new WebServiceCall.ServiceReferenceLogin.User_LoginRequest();
            inValue.Body = new WebServiceCall.ServiceReferenceLogin.User_LoginRequestBody();
            inValue.Body.Login_Id = Login_Id;
            inValue.Body.Login_Pass = Login_Pass;
            WebServiceCall.ServiceReferenceLogin.User_LoginResponse retVal = ((WebServiceCall.ServiceReferenceLogin.WebService6UserSoap)(this)).User_Login(inValue);
            return retVal.Body.User_LoginResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<WebServiceCall.ServiceReferenceLogin.User_LoginResponse> WebServiceCall.ServiceReferenceLogin.WebService6UserSoap.User_LoginAsync(WebServiceCall.ServiceReferenceLogin.User_LoginRequest request) {
            return base.Channel.User_LoginAsync(request);
        }
        
        public System.Threading.Tasks.Task<WebServiceCall.ServiceReferenceLogin.User_LoginResponse> User_LoginAsync(string Login_Id, string Login_Pass) {
            WebServiceCall.ServiceReferenceLogin.User_LoginRequest inValue = new WebServiceCall.ServiceReferenceLogin.User_LoginRequest();
            inValue.Body = new WebServiceCall.ServiceReferenceLogin.User_LoginRequestBody();
            inValue.Body.Login_Id = Login_Id;
            inValue.Body.Login_Pass = Login_Pass;
            return ((WebServiceCall.ServiceReferenceLogin.WebService6UserSoap)(this)).User_LoginAsync(inValue);
        }
    }
}
