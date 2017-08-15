.class public abstract Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;
.super Ljava/lang/Object;
.source "ConfigurationSecurities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;
    .locals 2

    .prologue
    .line 27
    sget v0, Lcom/caiqiqi/wifi_demo/collector/Version;->SDK:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8;

    invoke-direct {v0}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public abstract getDisplaySecirityString(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
.end method

.method public abstract getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
.end method

.method public abstract getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
.end method

.method public abstract isOpenNetwork(Ljava/lang/String;)Z
.end method

.method public abstract setupSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
.end method
