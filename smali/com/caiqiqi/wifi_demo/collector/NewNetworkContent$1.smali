.class Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;
.super Ljava/lang/Object;
.source "NewNetworkContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;


# direct methods
.method constructor <init>(Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->access$000(Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v1, v1, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v3, v3, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget v5, v5, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mNumOpenNetworksKept:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->connectToNewNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;I)Z

    move-result v0

    .line 66
    .local v0, "connResult":Z
    :goto_0
    if-nez v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v1, v1, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v2, 0x7f07001c

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v1, v1, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    invoke-virtual {v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->finish()V

    .line 71
    return-void

    .line 61
    .end local v0    # "connResult":Z
    :cond_1
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v2, v1, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v3, v1, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v4, v1, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v1, v1, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mView:Landroid/view/View;

    const v5, 0x7f0a001a

    .line 62
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget v5, v5, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;->mNumOpenNetworksKept:I

    .line 61
    invoke-static {v2, v3, v4, v1, v5}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->connectToNewNetwork(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;I)Z

    move-result v0

    .restart local v0    # "connResult":Z
    goto :goto_0
.end method
