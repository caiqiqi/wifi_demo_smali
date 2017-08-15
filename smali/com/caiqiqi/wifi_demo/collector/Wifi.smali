.class public Lcom/caiqiqi/wifi_demo/collector/Wifi;
.super Ljava/lang/Object;
.source "Wifi.java"


# static fields
.field private static final BSSID_ANY:Ljava/lang/String; = "any"

.field public static final ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

.field private static final MAX_PRIORITY:I = 0x1869f

.field private static final TAG:Ljava/lang/String; = "Wifi Connecter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->newInstance()Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    move-result-object v0

    sput-object v0, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePasswordAndConnect(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiMgr"    # Landroid/net/wifi/WifiManager;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "numOpenNetworksKept"    # I

    .prologue
    .line 26
    sget-object v1, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v2, p2}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, p3}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->setupSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 28
    .local v0, "networkId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 34
    :goto_0
    return v1

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 34
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->connectToConfiguredNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private static checkForExcessOpenNetworkAndSave(Landroid/net/wifi/WifiManager;I)Z
    .locals 7
    .param p0, "wifiMgr"    # Landroid/net/wifi/WifiManager;
    .param p1, "numOpenNetworksKept"    # I

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->sortByPriority(Ljava/util/List;)V

    .line 169
    const/4 v3, 0x0

    .line 170
    .local v3, "modified":Z
    const/4 v4, 0x0

    .line 171
    .local v4, "tempCount":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 173
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-object v5, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    sget-object v6, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v6, v0}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    add-int/lit8 v4, v4, 0x1

    .line 175
    if-lt v4, p1, :cond_0

    .line 176
    const/4 v3, 0x1

    .line 177
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 171
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 181
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    if-eqz v3, :cond_2

    .line 182
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v5

    .line 185
    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static connectToConfiguredNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiMgr"    # Landroid/net/wifi/WifiManager;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "reassociate"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    sget-object v7, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v7, p2}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "security":Ljava/lang/String;
    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 84
    .local v3, "oldPri":I
    invoke-static {p1}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getMaxPriority(Landroid/net/wifi/WifiManager;)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 85
    .local v2, "newPri":I
    const v7, 0x1869f

    if-le v2, v7, :cond_1

    .line 86
    invoke-static {p1}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->shiftPriorityAndSave(Landroid/net/wifi/WifiManager;)I

    move-result v2

    .line 87
    invoke-static {p1, p2, v4}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 88
    if-nez p2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v5

    .line 94
    :cond_1
    iput v2, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 95
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 96
    .local v1, "networkId":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 101
    invoke-virtual {p1, v1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 102
    iput v3, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v7

    if-nez v7, :cond_3

    .line 107
    iput v3, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 112
    :cond_3
    invoke-static {p1, p2, v4}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 113
    if-eqz p2, :cond_0

    .line 117
    invoke-static {p0}, Lcom/caiqiqi/wifi_demo/collector/ReenableAllApsWhenNetworkStateChanged;->schedule(Landroid/content/Context;)V

    .line 121
    iget v7, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v7, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reassociate()Z

    move-result v0

    .line 126
    .local v0, "connect":Z
    :goto_1
    if-eqz v0, :cond_0

    move v5, v6

    .line 130
    goto :goto_0

    .line 125
    .end local v0    # "connect":Z
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v0

    goto :goto_1
.end method

.method public static connectToNewNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiMgr"    # Landroid/net/wifi/WifiManager;
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "numOpenNetworksKept"    # I

    .prologue
    const/4 v4, 0x0

    .line 41
    sget-object v5, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v5, p2}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "security":Ljava/lang/String;
    sget-object v5, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v5, v3}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    invoke-static {p1, p4}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->checkForExcessOpenNetworkAndSave(Landroid/net/wifi/WifiManager;I)Z

    .line 47
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 48
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 49
    iget-object v5, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 50
    sget-object v5, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v5, v0, v3, p3}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->setupSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v2, -0x1

    .line 54
    .local v2, "id":I
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 60
    :goto_0
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 73
    :cond_1
    :goto_1
    return v4

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "Wifi Connecter"

    const-string v6, "Weird!! Really!! What\'s wrong??"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    invoke-static {p1, v0, v3}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 73
    const/4 v4, 0x1

    invoke-static {p0, p1, v0, v4}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->connectToConfiguredNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    goto :goto_1
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    const-string p0, ""

    .line 282
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "lastPos":I
    :cond_0
    :goto_0
    return-object p0

    .line 277
    .end local v0    # "lastPos":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 278
    .restart local v0    # "lastPos":I
    if-lez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 282
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getMaxPriority(Landroid/net/wifi/WifiManager;)I
    .locals 5
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    .line 206
    .local v2, "pri":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 207
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v4, v2, :cond_0

    .line 208
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 211
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return v2
.end method

.method public static getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p0, "wifiMgr"    # Landroid/net/wifi/WifiManager;
    .param p1, "hotsopt"    # Landroid/net/wifi/ScanResult;
    .param p2, "hotspotSecurity"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 218
    iget-object v6, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "ssid":Ljava/lang/String;
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 220
    .local v0, "bssid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 221
    .local v3, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v5

    .line 240
    :goto_0
    return-object v1

    .line 225
    :cond_1
    if-nez p2, :cond_2

    .line 226
    sget-object v6, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v6, p1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p2

    .line 229
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 230
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 233
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v7, :cond_4

    const-string v7, "any"

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 234
    :cond_4
    sget-object v7, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v7, v1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "configSecurity":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configSecurity":Ljava/lang/String;
    :cond_5
    move-object v1, v5

    .line 240
    goto :goto_0
.end method

.method public static getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p0, "wifiMgr"    # Landroid/net/wifi/WifiManager;
    .param p1, "wifiConfigToFind"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "security"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 244
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 245
    .local v4, "ssid":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    move-object v1, v5

    .line 269
    :goto_0
    return-object v1

    .line 249
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 252
    .local v0, "bssid":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 253
    sget-object v6, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v6, p1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p2

    .line 256
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 258
    .local v3, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 259
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 262
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v7, :cond_3

    const-string v7, "any"

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v0, :cond_3

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 263
    :cond_3
    sget-object v7, Lcom/caiqiqi/wifi_demo/collector/Wifi;->ConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;

    invoke-virtual {v7, v1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "configSecurity":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configSecurity":Ljava/lang/String;
    :cond_4
    move-object v1, v5

    .line 269
    goto :goto_0
.end method

.method private static shiftPriorityAndSave(Landroid/net/wifi/WifiManager;)I
    .locals 4
    .param p0, "wifiMgr"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->sortByPriority(Ljava/util/List;)V

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 194
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 195
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 196
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 197
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 200
    return v3
.end method

.method private static sortByLevel(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v0, Lcom/caiqiqi/wifi_demo/collector/Wifi$2;

    invoke-direct {v0}, Lcom/caiqiqi/wifi_demo/collector/Wifi$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    return-void
.end method

.method private static sortByPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v0, Lcom/caiqiqi/wifi_demo/collector/Wifi$1;

    invoke-direct {v0}, Lcom/caiqiqi/wifi_demo/collector/Wifi$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    return-void
.end method
