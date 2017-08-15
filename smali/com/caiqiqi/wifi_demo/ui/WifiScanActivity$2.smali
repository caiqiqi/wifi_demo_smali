.class Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$2;
.super Ljava/lang/Object;
.source "WifiScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->sendUsingThreadPool(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

.field final synthetic val$scanResults:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$2;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    iput-object p2, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$2;->val$scanResults:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$2;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$2;->val$scanResults:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$300(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Ljava/util/List;)V

    .line 150
    return-void
.end method
