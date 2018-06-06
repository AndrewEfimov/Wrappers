{ *********************************************************************
  *
  * Autor: Efimov A.A.
  * E-mail: infocean@gmail.com
  * GitHub: https://github.com/AndrewEfimov
  * Platform: Android (package android.net.wifi)
  * IDE: Delphi 10.1 Berlin +
  * Change: 06.06.2018 (All API + Include API 28)
  *
  ******************************************************************** }

unit Androidapi.JNI.net.wifi;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.Java.Security,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Os,
  Androidapi.JNI.net,
  Androidapi.JNI.Java.Net;

type
  // ===== Forward declarations =====

  {PACKAGE android.net}
  JNetworkInfo_DetailedState = interface;                // API 1  - android.net.NetworkInfo$DetailedState
  JDhcpInfo = interface;                                 // API 1  - android.net.DhcpInfo

  {PACKAGE android.net.wifi.hotspot2}
  JPasspointConfiguration = interface;                   // API 26 - android.net.wifi.hotspot2.PasspointConfiguration  
  
  {PACKAGE android.net.wifi}
  JScanResult = interface;                               // API 1  - android.net.wifi.ScanResult
  JSupplicantState = interface;                          // API 1  - android.net.wifi.SupplicantState
  JWifiConfiguration = interface;                        // API 1  - android.net.wifi.WifiConfiguration
  JWifiConfiguration_AuthAlgorithm = interface;          // API 1  - android.net.wifi.WifiConfiguration$AuthAlgorithm
  JWifiConfiguration_GroupCipher = interface;            // API 1  - android.net.wifi.WifiConfiguration$GroupCipher
  JWifiConfiguration_KeyMgmt = interface;                // API 1  - android.net.wifi.WifiConfiguration$KeyMgmt
  JWifiConfiguration_PairwiseCipher = interface;         // API 1  - android.net.wifi.WifiConfiguration$PairwiseCipher
  JWifiConfiguration_Protocol = interface;               // API 1  - android.net.wifi.WifiConfiguration$Protocol
  JWifiConfiguration_Status = interface;                 // API 1  - android.net.wifi.WifiConfiguration$Status
  JWifiEnterpriseConfig = interface;                     // API 18 - android.net.wifi.WifiEnterpriseConfig
  JWifiEnterpriseConfig_Eap = interface;                 // API 18 - android.net.wifi.WifiEnterpriseConfig$Eap
  JWifiEnterpriseConfig_Phase2 = interface;              // API 18 - android.net.wifi.WifiEnterpriseConfig$Phase2
  JWifiInfo = interface;                                 // API 1  - android.net.wifi.WifiInfo
  JWifiManager = interface;                              // API 1  - android.net.wifi.WifiManager
  JWifiManager_LocalOnlyHotspotCallback = interface;     // API 26 - android.net.wifi.WifiManager.LocalOnlyHotspotCallback 
  JWifiManager_LocalOnlyHotspotReservation = interface;  // API 26 - android.net.wifi.WifiManager.LocalOnlyHotspotReservation 
  JWifiManager_MulticastLock = interface;                // API 4  - android.net.wifi.WifiManager$MulticastLock
  JWifiManager_WifiLock = interface;                     // API 1  - android.net.wifi.WifiManager$WifiLock
  JWifiManager_WpsCallback = interface;                  // API 21 - Deprecated API 28 - android.net.wifi.WifiManager$WpsCallback
  JWpsInfo = interface;                                  // API 14 - Deprecated API 28 - android.net.wifi.WpsInfo

  {PACKAGE android.net.wifi.hotspot2.pps}
  JCredential = interface;                               // API 26 - android.net.wifi.hotspot2.pps.Credential
  JCredential_CertificateCredential = interface;         // API 26 - android.net.wifi.hotspot2.pps.Credential.CertificateCredential
  JCredential_SimCredential = interface;                 // API 26 - android.net.wifi.hotspot2.pps.Credential.SimCredential
  JCredential_UserCredential = interface;                // API 26 - android.net.wifi.hotspot2.pps.Credential.UserCredential
  JHomeSp = interface;                                   // API 26 - android.net.wifi.hotspot2.pps.HomeSp

  // ===== Interface declarations =====

  JNetworkInfo_DetailedStateClass = interface(JEnumClass)
    ['{23C018BA-81E4-4B2E-B369-9CF46B9A5DAF}']
    function _GetAUTHENTICATING: JNetworkInfo_DetailedState; cdecl;
    function _GetBLOCKED: JNetworkInfo_DetailedState; cdecl;
    function _GetCAPTIVE_PORTAL_CHECK: JNetworkInfo_DetailedState; cdecl;
    function _GetCONNECTED: JNetworkInfo_DetailedState; cdecl;
    function _GetCONNECTING: JNetworkInfo_DetailedState; cdecl;
    function _GetDISCONNECTED: JNetworkInfo_DetailedState; cdecl;
    function _GetDISCONNECTING: JNetworkInfo_DetailedState; cdecl;
    function _GetFAILED: JNetworkInfo_DetailedState; cdecl;
    function _GetIDLE: JNetworkInfo_DetailedState; cdecl;
    function _GetOBTAINING_IPADDR: JNetworkInfo_DetailedState; cdecl;
    function _GetSCANNING: JNetworkInfo_DetailedState; cdecl;
    function _GetSUSPENDED: JNetworkInfo_DetailedState; cdecl;
    function _GetVERIFYING_POOR_LINK: JNetworkInfo_DetailedState; cdecl;
    function valueOf(name: JString): JNetworkInfo_DetailedState; cdecl;
    function values: TJavaObjectArray<JNetworkInfo_DetailedState>; cdecl;
    property AUTHENTICATING: JNetworkInfo_DetailedState read _GetAUTHENTICATING;
    property BLOCKED: JNetworkInfo_DetailedState read _GetBLOCKED; // API 14
    property CAPTIVE_PORTAL_CHECK: JNetworkInfo_DetailedState read _GetCAPTIVE_PORTAL_CHECK; // API 17
    property CONNECTED: JNetworkInfo_DetailedState read _GetCONNECTED;
    property CONNECTING: JNetworkInfo_DetailedState read _GetCONNECTING;
    property DISCONNECTED: JNetworkInfo_DetailedState read _GetDISCONNECTED;
    property DISCONNECTING: JNetworkInfo_DetailedState read _GetDISCONNECTING;
    property FAILED: JNetworkInfo_DetailedState read _GetFAILED;
    property IDLE: JNetworkInfo_DetailedState read _GetIDLE;
    property OBTAINING_IPADDR: JNetworkInfo_DetailedState read _GetOBTAINING_IPADDR;
    property SCANNING: JNetworkInfo_DetailedState read _GetSCANNING;
    property SUSPENDED: JNetworkInfo_DetailedState read _GetSUSPENDED;
    property VERIFYING_POOR_LINK: JNetworkInfo_DetailedState read _GetVERIFYING_POOR_LINK; // API 16
  end;

  [JavaSignature('android/net/NetworkInfo$DetailedState')]
  JNetworkInfo_DetailedState = interface(JEnum)
    ['{E755D6D6-0DB0-4231-A31B-5AA4E74A4F9F}']
  end;

  TJNetworkInfo_DetailedState = class(TJavaGenericImport<JNetworkInfo_DetailedStateClass, JNetworkInfo_DetailedState>)
  end;
 
  JDhcpInfoClass = interface(JObjectClass)
    ['{D9CB198A-3E3F-40F8-8F10-B46CF06EE695}']
    function init: JDhcpInfo; cdecl;
  end;

  [JavaSignature('android/net/DhcpInfo')]
  JDhcpInfo = interface(JObject)
    ['{15AE9247-20B6-412F-8A84-1A6EE8290F09}']
    function _Getdns1: Integer; cdecl;
    procedure _Setdns1(Value: Integer); cdecl;
    function _Getdns2: Integer; cdecl;
    procedure _Setdns2(Value: Integer); cdecl;
    function _Getgateway: Integer; cdecl;
    procedure _Setgateway(Value: Integer); cdecl;
    function _GetipAddress: Integer; cdecl;
    procedure _SetipAddress(Value: Integer); cdecl;
    function _GetleaseDuration: Integer; cdecl;
    procedure _SetleaseDuration(Value: Integer); cdecl;
    function _Getnetmask: Integer; cdecl;
    procedure _Setnetmask(Value: Integer); cdecl;
    function _GetserverAddress: Integer; cdecl;
    procedure _SetserverAddress(Value: Integer); cdecl;
    function toString: JString; cdecl;
    property dns1: Integer read _Getdns1 write _Setdns1;
    property dns2: Integer read _Getdns2 write _Setdns2;
    property gateway: Integer read _Getgateway write _Setgateway;
    property ipAddress: Integer read _GetipAddress write _SetipAddress;
    property leaseDuration: Integer read _GetleaseDuration write _SetleaseDuration;
    property netmask: Integer read _Getnetmask write _Setnetmask;
    property serverAddress: Integer read _GetserverAddress write _SetserverAddress;
  end;

  TJDhcpInfo = class(TJavaGenericImport<JDhcpInfoClass, JDhcpInfo>)
  end;
  
  JPasspointConfigurationClass = interface(JObjectClass)
    ['{50518AEF-3DAA-4873-9C66-2D57D38028FF}']
    function _GetCREATOR: JParcelable_Creator; cdecl;
    function init: JPasspointConfiguration; cdecl; overload;
    function init(source: JPasspointConfiguration): JPasspointConfiguration; cdecl; overload;
    property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/net/wifi/hotspot2/PasspointConfiguration')]
  JPasspointConfiguration = interface(JObject)
    ['{666A4F77-BEC1-478C-8936-F03B60368907}']
    function describeContents: Integer; cdecl;
    function equals(thatObject: JObject): Boolean; cdecl;
    function getCredential: JCredential; cdecl;
    function getHomeSp: JHomeSp; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
    procedure setCredential(credential: JCredential); cdecl;
    procedure setHomeSp(homeSp: JHomeSp); cdecl;
    procedure writeToParcel(dest: JParcel; flags: Integer); cdecl;
  end;

  TJPasspointConfiguration = class(TJavaGenericImport<JPasspointConfigurationClass, JPasspointConfiguration>)
  end; 

  JScanResultClass = interface(JObjectClass)
    ['{6C743694-E698-4C31-805F-13546BC872D7}']
    function _GetCHANNEL_WIDTH_160MHZ: Integer; cdecl;
    function _GetCHANNEL_WIDTH_20MHZ: Integer; cdecl;
    function _GetCHANNEL_WIDTH_40MHZ: Integer; cdecl;
    function _GetCHANNEL_WIDTH_80MHZ: Integer; cdecl;
    function _GetCHANNEL_WIDTH_80MHZ_PLUS_MHZ: Integer; cdecl;
    property CHANNEL_WIDTH_160MHZ: Integer read _GetCHANNEL_WIDTH_160MHZ; // API 23
    property CHANNEL_WIDTH_20MHZ: Integer read _GetCHANNEL_WIDTH_20MHZ; // API 23
    property CHANNEL_WIDTH_40MHZ: Integer read _GetCHANNEL_WIDTH_40MHZ; // API 23
    property CHANNEL_WIDTH_80MHZ: Integer read _GetCHANNEL_WIDTH_80MHZ; // API 23
    property CHANNEL_WIDTH_80MHZ_PLUS_MHZ: Integer read _GetCHANNEL_WIDTH_80MHZ_PLUS_MHZ; // API 23
  end;

  [JavaSignature('android/net/wifi/ScanResult')]
  JScanResult = interface(JObject)
    ['{A50FF87A-D68A-4CCC-B186-D06D51E76145}']
    function _GetBSSID: JString; cdecl;
    procedure _SetBSSID(Value: JString); cdecl;
    function _GetSSID: JString; cdecl;
    procedure _SetSSID(Value: JString); cdecl;
    function _Getcapabilities: JString; cdecl;
    procedure _Setcapabilities(Value: JString); cdecl;
    function _GetcenterFreq0: Integer; cdecl;
    procedure _SetcenterFreq0(Value: Integer); cdecl;
    function _GetcenterFreq1: Integer; cdecl;
    procedure _SetcenterFreq1(Value: Integer); cdecl;
    function _GetchannelWidth: Integer; cdecl;
    procedure _SetchannelWidth(Value: Integer); cdecl;
    function _Getfrequency: Integer; cdecl;
    procedure _Setfrequency(Value: Integer); cdecl;
    function _Getlevel: Integer; cdecl;
    procedure _Setlevel(Value: Integer); cdecl;
    function _GetoperatorFriendlyName: JCharSequence; cdecl;
    procedure _SetoperatorFriendlyName(Value: JCharSequence); cdecl;
    function _Gettimestamp: Int64; cdecl;
    procedure _Settimestamp(Value: Int64); cdecl;
    function _GetvenueName: JCharSequence; cdecl;
    procedure _SetvenueName(Value: JCharSequence); cdecl;
    function is80211mcResponder: Boolean; cdecl; // API 23
    function isPasspointNetwork: Boolean; cdecl; // API 23
    function toString: JString; cdecl;
    property BSSID: JString read _GetBSSID write _SetBSSID;
    property SSID: JString read _GetSSID write _SetSSID;
    property capabilities: JString read _Getcapabilities write _Setcapabilities;
    property centerFreq0: Integer read _GetcenterFreq0 write _SetcenterFreq0; // API 23
    property centerFreq1: Integer read _GetcenterFreq1 write _SetcenterFreq1; // API 23
    property channelWidth: Integer read _GetchannelWidth write _SetchannelWidth; // API 23
    property frequency: Integer read _Getfrequency write _Setfrequency;
    property level: Integer read _Getlevel write _Setlevel;
    property operatorFriendlyName: JCharSequence read _GetoperatorFriendlyName write _SetoperatorFriendlyName; // API 23
    property timestamp: Int64 read _Gettimestamp write _Settimestamp; // API 17
    property venueName: JCharSequence read _GetvenueName write _SetvenueName; // API 23
  end;

  TJScanResult = class(TJavaGenericImport<JScanResultClass, JScanResult>)
  end;

  JSupplicantStateClass = interface(JEnumClass)
    ['{11D5113E-AE84-4F4C-832D-5F9E78A93530}']
    function _GetASSOCIATED: JSupplicantState; cdecl;
    function _GetASSOCIATING: JSupplicantState; cdecl;
    function _GetAUTHENTICATING: JSupplicantState; cdecl;
    function _GetCOMPLETED: JSupplicantState; cdecl;
    function _GetDISCONNECTED: JSupplicantState; cdecl;
    function _GetDORMANT: JSupplicantState; cdecl;
    function _GetFOUR_WAY_HANDSHAKE: JSupplicantState; cdecl;
    function _GetGROUP_HANDSHAKE: JSupplicantState; cdecl;
    function _GetINACTIVE: JSupplicantState; cdecl;
    function _GetINTERFACE_DISABLED: JSupplicantState; cdecl;
    function _GetINVALID: JSupplicantState; cdecl;
    function _GetSCANNING: JSupplicantState; cdecl;
    function _GetUNINITIALIZED: JSupplicantState; cdecl;
    function isValidState(state: JSupplicantState): Boolean; cdecl;
    function valueOf(name: JString): JSupplicantState; cdecl;
    function values: TJavaObjectArray<JSupplicantState>; cdecl;
    property ASSOCIATED: JSupplicantState read _GetASSOCIATED;
    property ASSOCIATING: JSupplicantState read _GetASSOCIATING;
    property AUTHENTICATING: JSupplicantState read _GetAUTHENTICATING;
    property COMPLETED: JSupplicantState read _GetCOMPLETED;
    property DISCONNECTED: JSupplicantState read _GetDISCONNECTED;
    property DORMANT: JSupplicantState read _GetDORMANT;
    property FOUR_WAY_HANDSHAKE: JSupplicantState read _GetFOUR_WAY_HANDSHAKE;
    property GROUP_HANDSHAKE: JSupplicantState read _GetGROUP_HANDSHAKE;
    property INACTIVE: JSupplicantState read _GetINACTIVE;
    property INTERFACE_DISABLED: JSupplicantState read _GetINTERFACE_DISABLED;
    property INVALID: JSupplicantState read _GetINVALID;
    property SCANNING: JSupplicantState read _GetSCANNING;
    property UNINITIALIZED: JSupplicantState read _GetUNINITIALIZED;
  end;

  [JavaSignature('android/net/wifi/SupplicantState')]
  JSupplicantState = interface(JEnum)
    ['{1733F9B5-2434-461F-8DF6-F23617BFA5D8}']
  end;

  TJSupplicantState = class(TJavaGenericImport<JSupplicantStateClass, JSupplicantState>)
  end;

  JWifiConfigurationClass = interface(JObjectClass)
    ['{C8BFCCBF-51DC-4210-9559-EFF599859A26}']
    function init: JWifiConfiguration; cdecl;
  end;

  [JavaSignature('android/net/wifi/WifiConfiguration')]
  JWifiConfiguration = interface(JObject)
    ['{ED67818C-4A3D-441D-987A-9E8826085924}']
    function _GetBSSID: JString; cdecl;
    procedure _SetBSSID(Value: JString); cdecl;
    function _GetFQDN: JString; cdecl;
    procedure _SetFQDN(Value: JString); cdecl;
    function _GetSSID: JString; cdecl;
    procedure _SetSSID(Value: JString); cdecl;
    function _GetallowedAuthAlgorithms: JBitSet; cdecl;
    procedure _SetallowedAuthAlgorithms(Value: JBitSet); cdecl;
    function _GetallowedGroupCiphers: JBitSet; cdecl;
    procedure _SetallowedGroupCiphers(Value: JBitSet); cdecl;
    function _GetallowedKeyManagement: JBitSet; cdecl;
    procedure _SetallowedKeyManagement(Value: JBitSet); cdecl;
    function _GetallowedPairwiseCiphers: JBitSet; cdecl;
    procedure _SetallowedPairwiseCiphers(Value: JBitSet); cdecl;
    function _GetallowedProtocols: JBitSet; cdecl;
    procedure _SetallowedProtocols(Value: JBitSet); cdecl;
    function _GetenterpriseConfig: JWifiEnterpriseConfig; cdecl;
    procedure _SetenterpriseConfig(Value: JWifiEnterpriseConfig); cdecl;
    function _GethiddenSSID: Boolean; cdecl;
    procedure _SethiddenSSID(Value: Boolean); cdecl;
    function _GetisHomeProviderNetwork: Boolean; cdecl;
    procedure _SetisHomeProviderNetwork(Value: Boolean); cdecl;
    function _GetnetworkId: Integer; cdecl;
    procedure _SetnetworkId(Value: Integer); cdecl;
    function _GetpreSharedKey: JString; cdecl;
    procedure _SetpreSharedKey(Value: JString); cdecl;
    function _Getpriority: Integer; cdecl;
    procedure _Setpriority(Value: Integer); cdecl;
    function _GetproviderFriendlyName: JString; cdecl;
    procedure _SetproviderFriendlyName(Value: JString); cdecl;
    function _GetroamingConsortiumIds: TJavaArray<Int64>; cdecl;
    procedure _SetroamingConsortiumIds(Value: TJavaArray<Int64>); cdecl;
    function _Getstatus: Integer; cdecl;
    procedure _Setstatus(Value: Integer); cdecl;
    function _GetwepKeys: TJavaObjectArray<JString>; cdecl;
    procedure _SetwepKeys(Value: TJavaObjectArray<JString>); cdecl;
    function _GetwepTxKeyIndex: Integer; cdecl;
    procedure _SetwepTxKeyIndex(Value: Integer); cdecl;
    function getHttpProxy: JProxyInfo; cdecl; // API 26
    function isPasspoint: Boolean; cdecl; // API 23
    procedure setHttpProxy(httpProxy: JProxyInfo); cdecl; // API 26
    function toString: JString; cdecl;
    property BSSID: JString read _GetBSSID write _SetBSSID;
    property FQDN: JString read _GetFQDN write _SetFQDN; // API 21
    property SSID: JString read _GetSSID write _SetSSID;
    property allowedAuthAlgorithms: JBitSet read _GetallowedAuthAlgorithms write _SetallowedAuthAlgorithms;
    property allowedGroupCiphers: JBitSet read _GetallowedGroupCiphers write _SetallowedGroupCiphers;
    property allowedKeyManagement: JBitSet read _GetallowedKeyManagement write _SetallowedKeyManagement;
    property allowedPairwiseCiphers: JBitSet read _GetallowedPairwiseCiphers write _SetallowedPairwiseCiphers;
    property allowedProtocols: JBitSet read _GetallowedProtocols write _SetallowedProtocols;
    property enterpriseConfig: JWifiEnterpriseConfig read _GetenterpriseConfig write _SetenterpriseConfig; // API 18
    property hiddenSSID: Boolean read _GethiddenSSID write _SethiddenSSID;
    property isHomeProviderNetwork: Boolean read _GetisHomeProviderNetwork write _SetisHomeProviderNetwork; // API 26
    property networkId: Integer read _GetnetworkId write _SetnetworkId;
    property preSharedKey: JString read _GetpreSharedKey write _SetpreSharedKey;
    property priority: Integer read _Getpriority write _Setpriority; // Deprecated API O (26)
    property providerFriendlyName: JString read _GetproviderFriendlyName write _SetproviderFriendlyName; // API 23
    property roamingConsortiumIds: TJavaArray<Int64> read _GetroamingConsortiumIds write _SetroamingConsortiumIds; // API 23
    property status: Integer read _Getstatus write _Setstatus;
    property wepKeys: TJavaObjectArray<JString> read _GetwepKeys write _SetwepKeys; // Deprecated API level P (28)
    property wepTxKeyIndex: Integer read _GetwepTxKeyIndex write _SetwepTxKeyIndex; // Deprecated API level P (28)
  end;

  TJWifiConfiguration = class(TJavaGenericImport<JWifiConfigurationClass, JWifiConfiguration>)
  end;

  JWifiConfiguration_AuthAlgorithmClass = interface(JObjectClass)
    ['{047D5EC9-9464-4C1F-972A-F1BE5E10672E}']
    function _GetLEAP: Integer; cdecl;
    function _GetOPEN: Integer; cdecl;
    function _GetSHARED: Integer; cdecl;
    function _Getstrings: TJavaObjectArray<JString>; cdecl;
    function _GetvarName: JString; cdecl;
    property LEAP: Integer read _GetLEAP;
    property OPEN: Integer read _GetOPEN;
    property SHARED: Integer read _GetSHARED; // Deprecated API level P (28)
    property strings: TJavaObjectArray<JString> read _Getstrings;
    property varName: JString read _GetvarName;
  end;

  [JavaSignature('android/net/wifi/WifiConfiguration$AuthAlgorithm')]
  JWifiConfiguration_AuthAlgorithm = interface(JObject)
    ['{2258AEE7-6025-42A4-9812-F8340FDC38EE}']
  end;

  TJWifiConfiguration_AuthAlgorithm = class(TJavaGenericImport<JWifiConfiguration_AuthAlgorithmClass,
    JWifiConfiguration_AuthAlgorithm>)
  end;

  JWifiConfiguration_GroupCipherClass = interface(JObjectClass)
    ['{001FFC70-CA9D-415E-BB87-15BB196C6671}']
    function _GetCCMP: Integer; cdecl;
    function _GetTKIP: Integer; cdecl;
    function _GetWEP104: Integer; cdecl;
    function _GetWEP40: Integer; cdecl;
    function _Getstrings: TJavaObjectArray<JString>; cdecl;
    function _GetvarName: JString; cdecl;
    property CCMP: Integer read _GetCCMP;
    property TKIP: Integer read _GetTKIP;
    property WEP104: Integer read _GetWEP104; // Deprecated API level P (28)
    property WEP40: Integer read _GetWEP40; // Deprecated API level P (28)
    property strings: TJavaObjectArray<JString> read _Getstrings;
    property varName: JString read _GetvarName;
  end;

  [JavaSignature('android/net/wifi/WifiConfiguration$GroupCipher')]
  JWifiConfiguration_GroupCipher = interface(JObject)
    ['{B1180E11-3616-45A4-A088-FB7D2964AA75}']
  end;

  TJWifiConfiguration_GroupCipher = class(TJavaGenericImport<JWifiConfiguration_GroupCipherClass,
    JWifiConfiguration_GroupCipher>)
  end;

  JWifiConfiguration_KeyMgmtClass = interface(JObjectClass)
    ['{EC2914FD-30CD-463D-A620-178C20486690}']
    function _GetIEEE8021X: Integer; cdecl;
    function _GetNONE: Integer; cdecl;
    function _GetWPA_EAP: Integer; cdecl;
    function _GetWPA_PSK: Integer; cdecl;
    function _Getstrings: TJavaObjectArray<JString>; cdecl;
    function _GetvarName: JString; cdecl;
    property IEEE8021X: Integer read _GetIEEE8021X;
    property NONE: Integer read _GetNONE;
    property WPA_EAP: Integer read _GetWPA_EAP;
    property WPA_PSK: Integer read _GetWPA_PSK;
    property strings: TJavaObjectArray<JString> read _Getstrings;
    property varName: JString read _GetvarName;
  end;

  [JavaSignature('android/net/wifi/WifiConfiguration$KeyMgmt')]
  JWifiConfiguration_KeyMgmt = interface(JObject)
    ['{75054BB4-74D2-4C59-95FE-F1B32C1DAAAE}']
  end;

  TJWifiConfiguration_KeyMgmt = class(TJavaGenericImport<JWifiConfiguration_KeyMgmtClass, JWifiConfiguration_KeyMgmt>)
  end;

  JWifiConfiguration_PairwiseCipherClass = interface(JObjectClass)
    ['{186CC97E-C88C-49C5-AC1C-40679A9E0827}']
    function _GetCCMP: Integer; cdecl;
    function _GetNONE: Integer; cdecl;
    function _GetTKIP: Integer; cdecl;
    function _Getstrings: TJavaObjectArray<JString>; cdecl;
    function _GetvarName: JString; cdecl;
    property CCMP: Integer read _GetCCMP;
    property NONE: Integer read _GetNONE;
    property TKIP: Integer read _GetTKIP; // Deprecated API level P (28)
    property strings: TJavaObjectArray<JString> read _Getstrings;
    property varName: JString read _GetvarName;
  end;

  [JavaSignature('android/net/wifi/WifiConfiguration$PairwiseCipher')]
  JWifiConfiguration_PairwiseCipher = interface(JObject)
    ['{10CF8A7C-307F-45DD-87AD-AAE724FD9486}']
  end;

  TJWifiConfiguration_PairwiseCipher = class(TJavaGenericImport<JWifiConfiguration_PairwiseCipherClass,
    JWifiConfiguration_PairwiseCipher>)
  end;

  JWifiConfiguration_ProtocolClass = interface(JObjectClass)
    ['{1FD6FF63-356B-41B1-BD8D-B6C8666BAD18}']
    function _GetRSN: Integer; cdecl;
    function _GetWPA: Integer; cdecl;
    function _Getstrings: TJavaObjectArray<JString>; cdecl;
    function _GetvarName: JString; cdecl;
    property RSN: Integer read _GetRSN;
    property WPA: Integer read _GetWPA; // Deprecated API level P (28)
    property strings: TJavaObjectArray<JString> read _Getstrings;
    property varName: JString read _GetvarName;
  end;

  [JavaSignature('android/net/wifi/WifiConfiguration$Protocol')]
  JWifiConfiguration_Protocol = interface(JObject)
    ['{E6C85E59-1C0B-4562-933A-63DDC77383CC}']
  end;

  TJWifiConfiguration_Protocol = class(TJavaGenericImport<JWifiConfiguration_ProtocolClass,
    JWifiConfiguration_Protocol>)
  end;

  JWifiConfiguration_StatusClass = interface(JObjectClass)
    ['{20D5CCD8-896F-47DD-A0F3-7D00B5CE8A10}']
    function _GetCURRENT: Integer; cdecl;
    function _GetDISABLED: Integer; cdecl;
    function _GetENABLED: Integer; cdecl;
    function _Getstrings: TJavaObjectArray<JString>; cdecl;
    property CURRENT: Integer read _GetCURRENT;
    property DISABLED: Integer read _GetDISABLED;
    property ENABLED: Integer read _GetENABLED;
    property strings: TJavaObjectArray<JString> read _Getstrings;
  end;

  [JavaSignature('android/net/wifi/WifiConfiguration$Status')]
  JWifiConfiguration_Status = interface(JObject)
    ['{F808D628-9382-4509-BD14-BF697EB5A088}']
  end;

  TJWifiConfiguration_Status = class(TJavaGenericImport<JWifiConfiguration_StatusClass, JWifiConfiguration_Status>)
  end;

  JWifiEnterpriseConfigClass = interface(JObjectClass)
    ['{8583C57E-0204-4BC8-B0D5-8B25DA81985B}']
    function _GetCREATOR: JParcelable_Creator; cdecl;
    function init: JWifiEnterpriseConfig; cdecl; overload; // API 18
    function init(source: JWifiEnterpriseConfig): JWifiEnterpriseConfig; cdecl; overload; // API 18
    property CREATOR: JParcelable_Creator read _GetCREATOR; // API 18
  end;

  [JavaSignature('android/net/wifi/WifiEnterpriseConfig')]
  JWifiEnterpriseConfig = interface(JObject)
    ['{B822B902-C591-48D1-BEFF-56FC393A03A7}']
    function describeContents: Integer; cdecl; // API 18
    function getAltSubjectMatch: JString; cdecl; // API 23
    function getAnonymousIdentity: JString; cdecl; // API 18
    function getCaCertificate: JX509Certificate; cdecl; // API 18
    function getCaCertificates: TJavaObjectArray<JX509Certificate>; cdecl; // API 24
    function getClientCertificate: JX509Certificate; cdecl; // API 18
    function getClientCertificateChain: TJavaObjectArray<JX509Certificate>; cdecl; // API 26
    function getDomainSuffixMatch: JString; cdecl; // API 23
    function getEapMethod: Integer; cdecl; // API 18
    function getIdentity: JString; cdecl; // API 18
    function getPassword: JString; cdecl; // API 18
    function getPhase2Method: Integer; cdecl; // API 18
    function getPlmn: JString; cdecl; // API 23
    function getRealm: JString; cdecl; // API 23
    function getSubjectMatch: JString; cdecl; // (API 18) Deprecated  API 23 - altSubjectMatch
    procedure setAltSubjectMatch(altSubjectMatch: JString); cdecl; // API 23
    procedure setAnonymousIdentity(anonymousIdentity: JString); cdecl; // API 18
    procedure setCaCertificate(cert: JX509Certificate); cdecl; // API 18
    procedure setCaCertificates(certs: TJavaObjectArray<JX509Certificate>); cdecl; // API 24
    procedure setClientKeyEntry(privateKey: JPrivateKey; clientCertificate: JX509Certificate); cdecl; // API 18
    procedure setClientKeyEntryWithCertificateChain(privateKey: JPrivateKey;
      clientCertificateChain: TJavaObjectArray<JX509Certificate>); cdecl; // API 26
    procedure setDomainSuffixMatch(domain: JString); cdecl; // API 23
    procedure setEapMethod(eapMethod: Integer); cdecl; // API 18
    procedure setIdentity(identity: JString); cdecl; // API 18
    procedure setPassword(password: JString); cdecl; // API 18
    procedure setPhase2Method(phase2Method: Integer); cdecl; // API 18
    procedure setPlmn(plmn: JString); cdecl; // API 23
    procedure setRealm(realm: JString); cdecl; // API 23
    procedure setSubjectMatch(subjectMatch: JString); cdecl; // (API 18) Deprecated API 23 - altSubjectMatch
    function toString: JString; cdecl; // API 18
    procedure writeToParcel(dest: JParcel; flags: Integer); cdecl; // API 18
  end;

  TJWifiEnterpriseConfig = class(TJavaGenericImport<JWifiEnterpriseConfigClass, JWifiEnterpriseConfig>)
  end;

  JWifiEnterpriseConfig_EapClass = interface(JObjectClass)
    ['{CFCC6A75-76D5-4094-902D-8B73B1E3888E}']
    function _GetAKA: Integer; cdecl;
    function _GetAKA_PRIME: Integer; cdecl;
    function _GetNONE: Integer; cdecl;
    function _GetPEAP: Integer; cdecl;
    function _GetPWD: Integer; cdecl;
    function _GetSIM: Integer; cdecl;
    function _GetTLS: Integer; cdecl;
    function _GetTTLS: Integer; cdecl;
    function _GetUNAUTH_TLS: Integer; cdecl;
    property AKA: Integer read _GetAKA; // API 21
    property AKA_PRIME: Integer read _GetAKA_PRIME; // API 23
    property NONE: Integer read _GetNONE; // API 18
    property PEAP: Integer read _GetPEAP; // API 18
    property PWD: Integer read _GetPWD; // API 18
    property SIM: Integer read _GetSIM; // API 21
    property TLS: Integer read _GetTLS; // API 18
    property TTLS: Integer read _GetTTLS; // API 18
    property UNAUTH_TLS: Integer read _GetUNAUTH_TLS; // API 24
  end;

  [JavaSignature('android/net/wifi/WifiEnterpriseConfig$Eap')]
  JWifiEnterpriseConfig_Eap = interface(JObject)
    ['{4880D3DC-10FE-4740-A2DE-BB9EC21EED0B}']
  end;

  TJWifiEnterpriseConfig_Eap = class(TJavaGenericImport<JWifiEnterpriseConfig_EapClass, JWifiEnterpriseConfig_Eap>)
  end;

  JWifiEnterpriseConfig_Phase2Class = interface(JObjectClass)
    ['{D9150CF8-D11C-4D58-94DF-56BA5805D44E}']
    function _GetAKA: Integer; cdecl;
    function _GetAKA_PRIME: Integer; cdecl;
    function _GetGTC: Integer; cdecl;
    function _GetMSCHAP: Integer; cdecl;
    function _GetMSCHAPV2: Integer; cdecl;
    function _GetNONE: Integer; cdecl;
    function _GetPAP: Integer; cdecl;
    function _GetSIM: Integer; cdecl;
    property AKA: Integer read _GetAKA; // API 26
    property AKA_PRIME: Integer read _GetAKA_PRIME; // API 26
    property GTC: Integer read _GetGTC; // API 18
    property MSCHAP: Integer read _GetMSCHAP; // API 18
    property MSCHAPV2: Integer read _GetMSCHAPV2; // API 18
    property NONE: Integer read _GetNONE; // API 18
    property PAP: Integer read _GetPAP; // API 18
    property SIM: Integer read _GetSIM; // API 26
  end;

  [JavaSignature('android/net/wifi/WifiEnterpriseConfig$Phase2')]
  JWifiEnterpriseConfig_Phase2 = interface(JObject)
    ['{47DF010A-28A3-4F03-B88E-FD4F1BCD32EC}']
  end;

  TJWifiEnterpriseConfig_Phase2 = class(TJavaGenericImport<JWifiEnterpriseConfig_Phase2Class,
    JWifiEnterpriseConfig_Phase2>)
  end;

  JWifiInfoClass = interface(JObjectClass)
    ['{8CC8F57E-4945-400E-9F19-626BDDCB496A}']
    function _GetFREQUENCY_UNITS: JString; cdecl;
    function _GetLINK_SPEED_UNITS: JString; cdecl;
    function getDetailedStateOf(suppState: JSupplicantState): JNetworkInfo_DetailedState; cdecl;
    property FREQUENCY_UNITS: JString read _GetFREQUENCY_UNITS; // API 21
    property LINK_SPEED_UNITS: JString read _GetLINK_SPEED_UNITS;
  end;

  [JavaSignature('android/net/wifi/WifiInfo')]
  JWifiInfo = interface(JObject)
    ['{D1AC40A2-AD68-4A81-ABD0-A0476CA41C22}']
    function getBSSID: JString; cdecl;
    function getFrequency: Integer; cdecl; // API 21
    function getHiddenSSID: Boolean; cdecl;
    function getIpAddress: Integer; cdecl;
    function getLinkSpeed: Integer; cdecl;
    function getMacAddress: JString; cdecl;
    function getNetworkId: Integer; cdecl;
    function getRssi: Integer; cdecl;
    function getSSID: JString; cdecl;
    function getSupplicantState: JSupplicantState; cdecl;
    function toString: JString; cdecl;
  end;

  TJWifiInfo = class(TJavaGenericImport<JWifiInfoClass, JWifiInfo>)
  end;

  JWifiManagerClass = interface(JObjectClass)
    ['{A3559F69-A273-4480-972E-48D2381B1F93}']
    function _GetACTION_PICK_WIFI_NETWORK: JString; cdecl;
    function _GetACTION_REQUEST_SCAN_ALWAYS_AVAILABLE: JString; cdecl;
    function _GetERROR_AUTHENTICATING: Integer; cdecl;
    function _GetEXTRA_BSSID: JString; cdecl;
    function _GetEXTRA_NETWORK_INFO: JString; cdecl;
    function _GetEXTRA_NEW_RSSI: JString; cdecl;
    function _GetEXTRA_NEW_STATE: JString; cdecl;
    function _GetEXTRA_PREVIOUS_WIFI_STATE: JString; cdecl;
    function _GetEXTRA_RESULTS_UPDATED: JString; cdecl;
    function _GetEXTRA_SUPPLICANT_CONNECTED: JString; cdecl;
    function _GetEXTRA_SUPPLICANT_ERROR: JString; cdecl;
    function _GetEXTRA_WIFI_INFO: JString; cdecl;
    function _GetEXTRA_WIFI_STATE: JString; cdecl;
    function _GetNETWORK_IDS_CHANGED_ACTION: JString; cdecl;
    function _GetNETWORK_STATE_CHANGED_ACTION: JString; cdecl;
    function _GetRSSI_CHANGED_ACTION: JString; cdecl;
    function _GetSCAN_RESULTS_AVAILABLE_ACTION: JString; cdecl;
    function _GetSUPPLICANT_CONNECTION_CHANGE_ACTION: JString; cdecl;
    function _GetSUPPLICANT_STATE_CHANGED_ACTION: JString; cdecl;
    function _GetWIFI_MODE_FULL: Integer; cdecl;
    function _GetWIFI_MODE_FULL_HIGH_PERF: Integer; cdecl;
    function _GetWIFI_MODE_SCAN_ONLY: Integer; cdecl;
    function _GetWIFI_STATE_CHANGED_ACTION: JString; cdecl;
    function _GetWIFI_STATE_DISABLED: Integer; cdecl;
    function _GetWIFI_STATE_DISABLING: Integer; cdecl;
    function _GetWIFI_STATE_ENABLED: Integer; cdecl;
    function _GetWIFI_STATE_ENABLING: Integer; cdecl;
    function _GetWIFI_STATE_UNKNOWN: Integer; cdecl;
    function _GetWPS_AUTH_FAILURE: Integer; cdecl;
    function _GetWPS_OVERLAP_ERROR: Integer; cdecl;
    function _GetWPS_TIMED_OUT: Integer; cdecl;
    function _GetWPS_TKIP_ONLY_PROHIBITED: Integer; cdecl;
    function _GetWPS_WEP_PROHIBITED: Integer; cdecl;
    function calculateSignalLevel(rssi: Integer; numLevels: Integer): Integer; cdecl;
    function compareSignalLevel(rssiA: Integer; rssiB: Integer): Integer; cdecl;
    property ACTION_PICK_WIFI_NETWORK: JString read _GetACTION_PICK_WIFI_NETWORK;
    property ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE: JString read _GetACTION_REQUEST_SCAN_ALWAYS_AVAILABLE; // API 18
    property ERROR_AUTHENTICATING: Integer read _GetERROR_AUTHENTICATING; // Deprecated API level P (28)
    property EXTRA_BSSID: JString read _GetEXTRA_BSSID;
    property EXTRA_NETWORK_INFO: JString read _GetEXTRA_NETWORK_INFO;
    property EXTRA_NEW_RSSI: JString read _GetEXTRA_NEW_RSSI;
    property EXTRA_NEW_STATE: JString read _GetEXTRA_NEW_STATE; // Deprecated API level P (28)
    property EXTRA_PREVIOUS_WIFI_STATE: JString read _GetEXTRA_PREVIOUS_WIFI_STATE;
    property EXTRA_RESULTS_UPDATED: JString read _GetEXTRA_RESULTS_UPDATED; // API 23
    property EXTRA_SUPPLICANT_CONNECTED: JString read _GetEXTRA_SUPPLICANT_CONNECTED; // Deprecated API level P (28)
    property EXTRA_SUPPLICANT_ERROR: JString read _GetEXTRA_SUPPLICANT_ERROR; // Deprecated API level P (28)
    property EXTRA_WIFI_INFO: JString read _GetEXTRA_WIFI_INFO; // API 14
    property EXTRA_WIFI_STATE: JString read _GetEXTRA_WIFI_STATE;
    property NETWORK_IDS_CHANGED_ACTION: JString read _GetNETWORK_IDS_CHANGED_ACTION;
    property NETWORK_STATE_CHANGED_ACTION: JString read _GetNETWORK_STATE_CHANGED_ACTION;
    property RSSI_CHANGED_ACTION: JString read _GetRSSI_CHANGED_ACTION;
    property SCAN_RESULTS_AVAILABLE_ACTION: JString read _GetSCAN_RESULTS_AVAILABLE_ACTION;
    property SUPPLICANT_CONNECTION_CHANGE_ACTION: JString read _GetSUPPLICANT_CONNECTION_CHANGE_ACTION; // Deprecated API level P (28)
    property SUPPLICANT_STATE_CHANGED_ACTION: JString read _GetSUPPLICANT_STATE_CHANGED_ACTION; // Deprecated API level P (28)
    property WIFI_MODE_FULL: Integer read _GetWIFI_MODE_FULL;
    property WIFI_MODE_FULL_HIGH_PERF: Integer read _GetWIFI_MODE_FULL_HIGH_PERF; // API 12
    property WIFI_MODE_SCAN_ONLY: Integer read _GetWIFI_MODE_SCAN_ONLY;
    property WIFI_STATE_CHANGED_ACTION: JString read _GetWIFI_STATE_CHANGED_ACTION;
    property WIFI_STATE_DISABLED: Integer read _GetWIFI_STATE_DISABLED;
    property WIFI_STATE_DISABLING: Integer read _GetWIFI_STATE_DISABLING;
    property WIFI_STATE_ENABLED: Integer read _GetWIFI_STATE_ENABLED;
    property WIFI_STATE_ENABLING: Integer read _GetWIFI_STATE_ENABLING;
    property WIFI_STATE_UNKNOWN: Integer read _GetWIFI_STATE_UNKNOWN;
    property WPS_AUTH_FAILURE: Integer read _GetWPS_AUTH_FAILURE; // (API 21) Deprecated API level P (28)
    property WPS_OVERLAP_ERROR: Integer read _GetWPS_OVERLAP_ERROR; // (API 21) Deprecated API level P (28)
    property WPS_TIMED_OUT: Integer read _GetWPS_TIMED_OUT; // (API 21) Deprecated API level P (28)
    property WPS_TKIP_ONLY_PROHIBITED: Integer read _GetWPS_TKIP_ONLY_PROHIBITED; // (API 21) Deprecated API level P (28)
    property WPS_WEP_PROHIBITED: Integer read _GetWPS_WEP_PROHIBITED; // (API 21) Deprecated API level P (28)
  end;

  [JavaSignature('android/net/wifi/WifiManager')]
  JWifiManager = interface(JObject)
    ['{7411ED93-E0EC-4DBC-979A-5B895346DA34}']
    function addNetwork(config: JWifiConfiguration): Integer; cdecl;
	procedure addOrUpdatePasspointConfiguration(config: JPasspointConfiguration); cdecl; // API 26
    procedure cancelWps(listener: JWifiManager_WpsCallback); cdecl; // (API 21) Deprecated API level P (28)
    function createMulticastLock(tag: JString): JWifiManager_MulticastLock; cdecl;
    function createWifiLock(lockType: Integer; tag: JString): JWifiManager_WifiLock; cdecl; overload; // API 3
    function createWifiLock(tag: JString): JWifiManager_WifiLock; cdecl; overload;
    function disableNetwork(netId: Integer): Boolean; cdecl;
    function disconnect: Boolean; cdecl;
    function enableNetwork(netId: Integer; disableOthers: Boolean): Boolean; cdecl;
    function getConfiguredNetworks: JList; cdecl;
    function getConnectionInfo: JWifiInfo; cdecl;
    function getDhcpInfo: JDhcpInfo; cdecl;
	function getPasspointConfigurations: JList; cdecl; // API 26
    function getScanResults: JList; cdecl;
    function getWifiState: Integer; cdecl;
    function is5GHzBandSupported: Boolean; cdecl; // API 21
    function isDeviceToApRttSupported: Boolean; cdecl; // API 21
    function isEnhancedPowerReportingSupported: Boolean; cdecl; // API 21
    function isP2pSupported: Boolean; cdecl; // API 21
    function isPreferredNetworkOffloadSupported: Boolean; cdecl; // API 21
    function isScanAlwaysAvailable: Boolean; cdecl; // API 18
    function isTdlsSupported: Boolean; cdecl; // API 21
    function isWifiEnabled: Boolean; cdecl;
    function pingSupplicant: Boolean; cdecl; // (API 1) Deprecated API 26
    function reassociate: Boolean; cdecl;
    function reconnect: Boolean; cdecl;
    function removeNetwork(netId: Integer): Boolean; cdecl;
	procedure removePasspointConfiguration(fqdn: JString); cdecl; // API 26
    function saveConfiguration: Boolean; cdecl; // (API 1) Deprecated API 26
    procedure setTdlsEnabled(remoteIPAddress: JInetAddress; enable: Boolean); cdecl; // API 19
    procedure setTdlsEnabledWithMacAddress(remoteMacAddress: JString; enable: Boolean); cdecl; // API 19
    function setWifiEnabled(ENABLED: Boolean): Boolean; cdecl;
	procedure startLocalOnlyHotspot(callback: JWifiManager_LocalOnlyHotspotCallback; handler: JHandler); cdecl; // API 26
    function startScan: Boolean; cdecl; // (API 1) Deprecated API level P (28)
    procedure startWps(config: JWpsInfo; listener: JWifiManager_WpsCallback); cdecl; // (API 21) Deprecated API level P (28)
    function updateNetwork(config: JWifiConfiguration): Integer; cdecl;
  end;

  TJWifiManager = class(TJavaGenericImport<JWifiManagerClass, JWifiManager>)
  end;

  JWifiManager_LocalOnlyHotspotCallbackClass = interface(JObjectClass)
    ['{4CAD526C-3B3C-4405-99AF-CCD8E9BD506B}']
    function _GetERROR_GENERIC: Integer; cdecl;
    function _GetERROR_INCOMPATIBLE_MODE: Integer; cdecl;
    function _GetERROR_NO_CHANNEL: Integer; cdecl;
    function _GetERROR_TETHERING_DISALLOWED: Integer; cdecl;
    function init: JWifiManager_LocalOnlyHotspotCallback; cdecl;
    property ERROR_GENERIC: Integer read _GetERROR_GENERIC;
    property ERROR_INCOMPATIBLE_MODE: Integer read _GetERROR_INCOMPATIBLE_MODE;
    property ERROR_NO_CHANNEL: Integer read _GetERROR_NO_CHANNEL;
    property ERROR_TETHERING_DISALLOWED: Integer read _GetERROR_TETHERING_DISALLOWED;
  end;

  [JavaSignature('android/net/wifi/WifiManager_LocalOnlyHotspotCallback')]
  JWifiManager_LocalOnlyHotspotCallback = interface(JObject)
    ['{B264D017-EBE9-443D-91D9-BBE6C46CFFB4}']
    procedure onFailed(reason: Integer); cdecl;
    procedure onStarted(reservation: JWifiManager_LocalOnlyHotspotReservation); cdecl;
    procedure onStopped; cdecl;
  end;

  TJWifiManager_LocalOnlyHotspotCallback = class(TJavaGenericImport<JWifiManager_LocalOnlyHotspotCallbackClass, JWifiManager_LocalOnlyHotspotCallback>)
  end;

  JWifiManager_LocalOnlyHotspotReservationClass = interface(JObjectClass)
    ['{E1452F64-55F7-4F0A-9A81-FC6BCD0DD782}']
  end;

  [JavaSignature('android/net/wifi/WifiManager_LocalOnlyHotspotReservation')]
  JWifiManager_LocalOnlyHotspotReservation = interface(JObject)
    ['{86C50466-5271-4375-80AB-9F451CB693D2}']
    function getWifiConfiguration: JWifiConfiguration; cdecl;
    procedure close; cdecl;
  end;

  TJWifiManager_LocalOnlyHotspotReservation = class(TJavaGenericImport<JWifiManager_LocalOnlyHotspotReservationClass, JWifiManager_LocalOnlyHotspotReservation>)
  end;
  
  JWifiManager_MulticastLockClass = interface(JObjectClass)
    ['{5A3A1B1D-84FB-4E49-8D92-47A2881314CC}']
  end;

  [JavaSignature('android/net/wifi/WifiManager$MulticastLock')]
  JWifiManager_MulticastLock = interface(JObject)
    ['{682F61D0-82D8-484F-8EA8-72BDF4DD7FA9}']
    procedure acquire; cdecl;
    function isHeld: Boolean; cdecl;
    procedure release; cdecl;
    procedure setReferenceCounted(refCounted: Boolean); cdecl;
    function toString: JString; cdecl;
  end;

  TJWifiManager_MulticastLock = class(TJavaGenericImport<JWifiManager_MulticastLockClass, JWifiManager_MulticastLock>)
  end;

  JWifiManager_WifiLockClass = interface(JObjectClass)
    ['{AE9D4E26-7200-4F0B-A2B7-C0DFA79A4340}']
  end;

  [JavaSignature('android/net/wifi/WifiManager$WifiLock')]
  JWifiManager_WifiLock = interface(JObject)
    ['{43789DF1-6903-4338-A5A6-A6C101944654}']
    procedure acquire; cdecl;
    function isHeld: Boolean; cdecl;
    procedure release; cdecl;
    procedure setReferenceCounted(refCounted: Boolean); cdecl;
    procedure setWorkSource(ws: JWorkSource); cdecl;
    function toString: JString; cdecl;
  end;

  TJWifiManager_WifiLock = class(TJavaGenericImport<JWifiManager_WifiLockClass, JWifiManager_WifiLock>)
  end;

  JWifiManager_WpsCallbackClass = interface(JObjectClass)
    ['{716B5FDE-D3A4-424E-BDC4-D94C40950BEA}']
    function init: JWifiManager_WpsCallback; cdecl; // (API 21) Deprecated API level P (28)
  end;

  [JavaSignature('android/net/wifi/WifiManager$WpsCallback')]
  JWifiManager_WpsCallback = interface(JObject)
    ['{977FA6F7-2F9D-4BAF-90C3-38784542235B}']
    procedure onFailed(reason: Integer); cdecl; // (API 21) Deprecated API level P (28)
    procedure onStarted(pin: JString); cdecl; // (API 21) Deprecated API level P (28)
    procedure onSucceeded; cdecl; // (API 21) Deprecated API level P (28)
  end;

  TJWifiManager_WpsCallback = class(TJavaGenericImport<JWifiManager_WpsCallbackClass, JWifiManager_WpsCallback>)
  end;

  JWpsInfoClass = interface(JObjectClass)
    ['{994C4858-2798-441A-9D35-B111C5EC0932}']
    function _GetCREATOR: JParcelable_Creator; cdecl;
    function _GetDISPLAY: Integer; cdecl;
    function _GetINVALID: Integer; cdecl;
    function _GetKEYPAD: Integer; cdecl;
    function _GetLABEL: Integer; cdecl;
    function _GetPBC: Integer; cdecl;
    function init: JWpsInfo; cdecl; overload; // (API 14) Deprecated API level P (28)
    function init(source: JWpsInfo): JWpsInfo; cdecl; overload; // (API 14)
    property CREATOR: JParcelable_Creator read _GetCREATOR; // (API 14) Deprecated API level P (28)
    property DISPLAY: Integer read _GetDISPLAY; // (API 14) Deprecated API level P (28)
    property INVALID: Integer read _GetINVALID; // (API 14) Deprecated API level P (28)
    property KEYPAD: Integer read _GetKEYPAD; // (API 14) Deprecated API level P (28)
    property &LABEL: Integer read _GetLABEL; // (API 14) Deprecated API level P (28)
    property PBC: Integer read _GetPBC; // (API 14) Deprecated API level P (28)
  end;

  [JavaSignature('android/net/wifi/WpsInfo')]
  JWpsInfo = interface(JObject)
    ['{41B1A223-EFB9-4FA6-8C56-8153780CBC4B}']
    function _GetBSSID: JString; cdecl;
    procedure _SetBSSID(Value: JString); cdecl;
    function _Getpin: JString; cdecl;
    procedure _Setpin(Value: JString); cdecl;
    function _Getsetup: Integer; cdecl;
    procedure _Setsetup(Value: Integer); cdecl;
    function describeContents: Integer; cdecl; // (API 14) Deprecated API level P (28)
    function toString: JString; cdecl; // (API 14) Deprecated API level P (28)
    procedure writeToParcel(dest: JParcel; flags: Integer); cdecl; // (API 14) Deprecated API level P (28)
    property BSSID: JString read _GetBSSID write _SetBSSID; // (API 21) Deprecated API level P (28)
    property pin: JString read _Getpin write _Setpin; // (API 14) Deprecated API level P (28)
    property setup: Integer read _Getsetup write _Setsetup; // (API 14) Deprecated API level P (28)
  end;

  TJWpsInfo = class(TJavaGenericImport<JWpsInfoClass, JWpsInfo>)
  end;

  JCredentialClass = interface(JObjectClass)
    ['{F832FCFC-C698-4716-A292-8072195AC427}']
    function _GetCREATOR: JParcelable_Creator; cdecl;
    function init: JCredential; cdecl; overload;
    function init(source: JCredential): JCredential; cdecl; overload;
    property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/net/wifi/hotspot2/pps/Credential$SimCredential')]
  JCredential = interface(JObject)
    ['{92E421A7-001C-458B-A793-AF82E3B97EEC}']
    function describeContents: Integer; cdecl;
    function equals(thatObject: JObject): boolean; cdecl;
    function getCaCertificate: JX509Certificate; cdecl;
    function getCertCredential: JCredential_CertificateCredential; cdecl;
    function getClientCertificateChain: TJavaArray<JX509Certificate>; cdecl;
    function getClientPrivateKey: JPrivateKey; cdecl;
    function getRealm: JString; cdecl;
    function getSimCredential: JCredential_SimCredential; cdecl;
    function getUserCredential: JCredential_UserCredential; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
    procedure setCaCertificate(caCertificate: JX509Certificate); cdecl;
    procedure setCertCredential(certCredential: JCredential_CertificateCredential); cdecl;
    procedure setClientCertificateChain(certificateChain: TJavaArray<JX509Certificate>); cdecl;
    procedure setClientPrivateKey(clientPrivateKey: JPrivateKey); cdecl;
    procedure setRealm(realm: JString); cdecl;
    procedure setSimCredential(simCredential: JCredential_SimCredential); cdecl;
    procedure setUserCredential(userCredential: JCredential_UserCredential); cdecl;
    procedure writeToParcel(dest: JParcel; flags: Integer); cdecl;
  end;

  TJCredential = class(TJavaGenericImport<JCredentialClass, JCredential>)
  end;

  JCredential_CertificateCredentialClass = interface(JObjectClass)
    ['{F87DC0ED-DA4D-47E8-94B4-B0C37ACFBF4D}']
    function _GetCREATOR: JParcelable_Creator; cdecl;
    function init: JCredential_CertificateCredential; cdecl; overload;
    function init(source: JCredential_CertificateCredential): JCredential_CertificateCredential; cdecl; overload;
    property CREATOR: JParcelable_Creator read _GetCREATOR; 
  end;

  [JavaSignature('android/net/wifi/hotspot2/pps/Credential_CertificateCredential')]
  JCredential_CertificateCredential = interface(JObject)
    ['{14E3D731-A498-4B5A-85B2-957E81D399CB}']
    function describeContents: Integer; cdecl;
    function equals(thatObject: JObject): boolean; cdecl;
    function getCertSha256Fingerprint: TJavaArray<Byte>; cdecl;
    function getCertType: JString; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
    procedure setCertSha256Fingerprint(certSha256Fingerprint: TJavaArray<Byte>); cdecl;
    procedure setCertType(certType: JString); cdecl;
    procedure writeToParcel(dest: JParcel; flags: Integer); cdecl;
  end;

  TJCredential_CertificateCredential = class(TJavaGenericImport<JCredential_CertificateCredentialClass, JCredential_CertificateCredential>)
  end;

  JCredential_SimCredentialClass = interface(JObjectClass)
    ['{6BBF61E6-84FE-4E5C-B8CB-BE51052E7AD2}']
    function _GetCREATOR: JParcelable_Creator; cdecl;
    function init: JCredential_SimCredential; cdecl; overload;
    function init(source: JCredential_SimCredential): JCredential_SimCredential; cdecl; overload;
    property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/net/wifi/hotspot2/pps/Credential_SimCredential')]
  JCredential_SimCredential = interface(JObject)
    ['{E2C5AB9A-F1B0-42E2-AC04-F269DE04F663}']
    function describeContents: Integer; cdecl;
    function equals(thatObject: JObject): boolean; cdecl;
    function getEapType: Integer; cdecl;
    function getImsi: JString; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
    procedure setEapType(eapType: Integer); cdecl;
    procedure setImsi(imsi: JString); cdecl;
    procedure writeToParcel(dest: JParcel; flags: Integer); cdecl;
  end;

  TJCredential_SimCredential = class(TJavaGenericImport<JCredential_SimCredentialClass, JCredential_SimCredential>)
  end;

  JCredential_UserCredentialClass = interface(JObjectClass)
    ['{1C13FEC4-4908-4E26-8422-B2EC22535219}']
    function _GetCREATOR: JParcelable_Creator; cdecl;
    function init: JCredential_UserCredential; cdecl; overload;
    function init(source: JCredential_UserCredential): JCredential_UserCredential; cdecl; overload;
    property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/net/wifi/hotspot2/pps/Credential_UserCredential')]
  JCredential_UserCredential = interface(JObject)
    ['{8500D06D-1DB8-4584-A14B-514F490159AE}']
    function describeContents: Integer; cdecl;
    function equals(thatObject: JObject): boolean; cdecl;
    function getEapType: Integer; cdecl;
    function getNonEapInnerMethod: JString; cdecl;
    function getPassword: JString; cdecl;
    function getUsername: JString; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
    procedure setEapType(eapType: Integer); cdecl;
    procedure setNonEapInnerMethod(nonEapInnerMethod: JString); cdecl;
    procedure setPassword(password: JString); cdecl;
    procedure setUsername(username: JString); cdecl;
    procedure writeToParcel(dest: JParcel; flags: Integer); cdecl;
  end;

  TJCredential_UserCredential = class(TJavaGenericImport<JCredential_UserCredentialClass, JCredential_UserCredential>)
  end;

  JHomeSpClass = interface(JObjectClass)
    ['{7DF7A590-F2DD-42E3-A662-7E8E69CE71B6}']
    function _GetCREATOR: JParcelable_Creator; cdecl;
    function init: JHomeSp; cdecl; overload;
    function init(source: JHomeSp): JHomeSp; cdecl; overload;
    property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/net/wifi/hotspot2/pps/HomeSp')]
  JHomeSp = interface(JObject)
    ['{0239D32F-85B0-4340-A757-3431E0BC61F1}']
    function describeContents: Integer; cdecl;
    function equals(thatObject: JObject): boolean; cdecl;
    function getFqdn: JString; cdecl;
    function getFriendlyName: JString; cdecl;
    function getRoamingConsortiumOis: TJavaArray<Int64>; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
    procedure setFqdn(fqdn: JString); cdecl;
    procedure setFriendlyName(friendlyName: JString); cdecl;
    procedure setRoamingConsortiumOis(roamingConsortiumOis: TJavaArray<Int64>); cdecl;
    procedure writeToParcel(dest: JParcel; flags: Integer); cdecl;
  end;

  TJHomeSp = class(TJavaGenericImport<JHomeSpClass, JHomeSp>)
  end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JNetworkInfo_DetailedState', TypeInfo(Androidapi.JNI.net.wifi.JNetworkInfo_DetailedState));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JDhcpInfo', TypeInfo(Androidapi.JNI.net.wifi.JDhcpInfo));
  
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JPasspointConfiguration', TypeInfo(Androidapi.JNI.net.wifi.JPasspointConfiguration));
  
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JScanResult', TypeInfo(Androidapi.JNI.net.wifi.JScanResult));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JSupplicantState', TypeInfo(Androidapi.JNI.net.wifi.JSupplicantState));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiConfiguration', TypeInfo(Androidapi.JNI.net.wifi.JWifiConfiguration));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiConfiguration_AuthAlgorithm', TypeInfo(Androidapi.JNI.net.wifi.JWifiConfiguration_AuthAlgorithm));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiConfiguration_GroupCipher', TypeInfo(Androidapi.JNI.net.wifi.JWifiConfiguration_GroupCipher));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiConfiguration_KeyMgmt', TypeInfo(Androidapi.JNI.net.wifi.JWifiConfiguration_KeyMgmt));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiConfiguration_PairwiseCipher', TypeInfo(Androidapi.JNI.net.wifi.JWifiConfiguration_PairwiseCipher));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiConfiguration_Protocol', TypeInfo(Androidapi.JNI.net.wifi.JWifiConfiguration_Protocol));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiConfiguration_Status', TypeInfo(Androidapi.JNI.net.wifi.JWifiConfiguration_Status));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiEnterpriseConfig', TypeInfo(Androidapi.JNI.net.wifi.JWifiEnterpriseConfig));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiEnterpriseConfig_Eap', TypeInfo(Androidapi.JNI.net.wifi.JWifiEnterpriseConfig_Eap));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiEnterpriseConfig_Phase2', TypeInfo(Androidapi.JNI.net.wifi.JWifiEnterpriseConfig_Phase2));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiInfo', TypeInfo(Androidapi.JNI.net.wifi.JWifiInfo));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiManager', TypeInfo(Androidapi.JNI.net.wifi.JWifiManager));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiManager_LocalOnlyHotspotCallback', TypeInfo(Androidapi.JNI.net.wifi.JWifiManager_LocalOnlyHotspotCallback));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiManager_LocalOnlyHotspotReservation', TypeInfo(Androidapi.JNI.net.wifi.JWifiManager_LocalOnlyHotspotReservation));  
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiManager_MulticastLock', TypeInfo(Androidapi.JNI.net.wifi.JWifiManager_MulticastLock));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiManager_WifiLock', TypeInfo(Androidapi.JNI.net.wifi.JWifiManager_WifiLock));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWifiManager_WpsCallback', TypeInfo(Androidapi.JNI.net.wifi.JWifiManager_WpsCallback));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JWpsInfo', TypeInfo(Androidapi.JNI.net.wifi.JWpsInfo));

  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JCredential', TypeInfo(Androidapi.JNI.net.wifi.JCredential));  
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JCredential_CertificateCredential', TypeInfo(Androidapi.JNI.net.wifi.JCredential_CertificateCredential));  
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JCredential_SimCredential', TypeInfo(Androidapi.JNI.net.wifi.JCredential_SimCredential));  
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JCredential_UserCredential', TypeInfo(Androidapi.JNI.net.wifi.JCredential_UserCredential));
  TRegTypes.RegisterType('Androidapi.JNI.net.wifi.JHomeSp', TypeInfo(Androidapi.JNI.net.wifi.JHomeSp));  
end;

initialization

RegisterTypes;

end.
