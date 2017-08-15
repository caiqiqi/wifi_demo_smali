.class public Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8;
.super Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;
.source "ConfigurationSecuritiesV8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;
    }
.end annotation


# static fields
.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ConfigurationSecurity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;-><init>()V

    return-void
.end method

.method private clearBitSet(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 124
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 125
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 126
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 127
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 128
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 129
    return-void
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 137
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 138
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 139
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 140
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;->WPA_WPA2:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;

    .line 147
    :goto_0
    return-object v2

    .line 141
    :cond_0
    if-eqz v1, :cond_1

    .line 142
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;->WPA2:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;

    goto :goto_0

    .line 143
    :cond_1
    if-eqz v0, :cond_2

    .line 144
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;->WPA:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;

    goto :goto_0

    .line 146
    :cond_2
    const-string v2, "ConfigurationSecurity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;->UNKNOWN:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x2

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const/4 v0, 0x3

    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 34
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 31
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 32
    goto :goto_0

    .line 34
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getDisplaySecirityString(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 153
    invoke-static {p1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    .line 154
    .local v0, "security":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 155
    sget-object v1, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$1;->$SwitchMap$com$caiqiqi$wifi_demo$collector$ConfigurationSecuritiesV8$PskType:[I

    invoke-static {p1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 162
    const-string v1, "?"

    .line 175
    :goto_0
    return-object v1

    .line 157
    :pswitch_0
    const-string v1, "WPA"

    goto :goto_0

    .line 160
    :pswitch_1
    const-string v1, "WPA2"

    goto :goto_0

    .line 165
    :cond_0
    packed-switch v0, :pswitch_data_1

    .line 175
    :pswitch_2
    const-string v1, "?"

    goto :goto_0

    .line 167
    :pswitch_3
    const-string v1, "OPEN"

    goto :goto_0

    .line 169
    :pswitch_4
    const-string v1, "WEP"

    goto :goto_0

    .line 171
    :pswitch_5
    const-string v1, "EAP"

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 165
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 1
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOpenNetwork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setupSecurity(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "security"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x22

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecuritiesV8;->clearBitSet(Landroid/net/wifi/WifiConfiguration;)V

    .line 64
    if-nez p2, :cond_1

    move v1, v2

    .line 66
    .local v1, "sec":I
    :goto_0
    if-nez p3, :cond_2

    move v0, v2

    .line 67
    .local v0, "passwordLen":I
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 110
    const-string v2, "ConfigurationSecurity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid security type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_2
    return-void

    .line 64
    .end local v0    # "passwordLen":I
    .end local v1    # "sec":I
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 66
    .restart local v1    # "sec":I
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 71
    .restart local v0    # "passwordLen":I
    :pswitch_0
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 76
    :pswitch_1
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 77
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 78
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 79
    if-eqz v0, :cond_0

    .line 81
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_4

    :cond_3
    const-string v3, "[0-9A-Fa-f]*"

    .line 82
    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v3, v2

    goto :goto_2

    .line 85
    :cond_4
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 92
    :pswitch_2
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 93
    if-eqz v0, :cond_0

    .line 94
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {p3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    iput-object p3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 97
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 104
    :pswitch_3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 105
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_2

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
