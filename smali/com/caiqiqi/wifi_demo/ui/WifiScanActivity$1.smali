.class Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;


# direct methods
.method constructor <init>(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$1;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$1;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$1;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v2}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$100(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$002(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Ljava/util/List;)Ljava/util/List;

    .line 87
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$1;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$200(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->notifyDataSetChanged()V

    .line 89
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$1;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$100(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 92
    :cond_0
    return-void
.end method
