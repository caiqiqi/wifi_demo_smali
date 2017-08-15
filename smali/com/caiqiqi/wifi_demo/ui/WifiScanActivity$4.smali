.class Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$4;
.super Ljava/lang/Object;
.source "WifiScanActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 399
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$4;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$4;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$500(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$4;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$000(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 410
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$4;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$4;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v2}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$400(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$700(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 415
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$4;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$400(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
