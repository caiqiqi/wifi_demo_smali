.class Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;
.super Ljava/lang/Object;
.source "ChangePasswordContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;


# direct methods
.method constructor <init>(Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    invoke-static {v2}, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->access$000(Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;)Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;->getChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    iget-object v3, v3, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    iget-object v4, v4, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mScanResultSecurity:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 67
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    .line 68
    .local v1, "saveResult":Z
    if-eqz v0, :cond_0

    .line 69
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    iget-object v3, v3, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    .line 70
    invoke-static {v4}, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->access$000(Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;)Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    iget v5, v5, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mNumOpenNetworksKept:I

    .line 69
    invoke-static {v2, v3, v0, v4, v5}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->changePasswordAndConnect(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)Z

    move-result v1

    .line 74
    :cond_0
    if-nez v1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v3, 0x7f07001c

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 79
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "saveResult":Z
    :cond_1
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;->this$0:Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    iget-object v2, v2, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    invoke-virtual {v2}, Lcom/caiqiqi/wifi_demo/ui/Floating;->finish()V

    .line 80
    return-void
.end method
