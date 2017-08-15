.class Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;
.super Ljava/lang/Object;
.source "CurrentNetworkContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;


# direct methods
.method constructor <init>(Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    iget-object v3, v3, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    invoke-static {v4}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->access$100(Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;)Landroid/net/wifi/ScanResult;

    move-result-object v4

    iget-object v5, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    iget-object v5, v5, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mScanResultSecurity:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 143
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    .line 144
    .local v1, "result":Z
    if-eqz v0, :cond_0

    .line 145
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    iget-object v3, v3, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    iget-object v3, v3, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 146
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 148
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 149
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    iget-object v3, v3, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v4, 0x7f07001c

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    invoke-virtual {v2}, Lcom/caiqiqi/wifi_demo/ui/Floating;->finish()V

    .line 153
    return-void

    .line 146
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
