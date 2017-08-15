.class Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$2;
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
    .line 108
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$2;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$2;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v0, v0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    invoke-virtual {v0, p1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->registerForContextMenu(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$2;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v0, v0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    invoke-virtual {v0, p1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->openContextMenu(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent$2;->this$0:Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v0, v0, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    invoke-virtual {v0, p1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->unregisterForContextMenu(Landroid/view/View;)V

    .line 115
    return-void
.end method
