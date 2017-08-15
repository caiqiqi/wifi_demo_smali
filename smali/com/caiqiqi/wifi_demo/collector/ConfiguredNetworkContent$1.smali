.class Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;
.super Ljava/lang/Object;
.source "ConfiguredNetworkContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;


# direct methods
.method constructor <init>(Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v3, v3, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v4, v4, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mScanResultSecurity:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 96
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    .line 97
    .local v1, "connResult":Z
    if-eqz v0, :cond_0

    .line 98
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v3, v3, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->connectToConfiguredNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v1

    .line 100
    :cond_0
    if-nez v1, :cond_1

    .line 101
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v3, 0x7f07001c

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    invoke-virtual {v2}, Lcom/caiqiqi/wifi_demo/ui/Floating;->finish()V

    .line 105
    return-void
.end method
