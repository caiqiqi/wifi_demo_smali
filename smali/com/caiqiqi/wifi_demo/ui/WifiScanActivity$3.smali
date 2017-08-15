.class Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$3;
.super Landroid/os/Handler;
.source "WifiScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->initHandler()V
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
    .line 197
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$3;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/caiqiqi/wifi_demo/utils/Constants;->MESSAGE_RECEIVED_FROM_SERVER:I

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$3;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$400(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Synchronized!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    const-string v0, "WifiScanActivity"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method
