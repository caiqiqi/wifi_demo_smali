.class Lcom/caiqiqi/wifi_demo/collector/BaseContent$2;
.super Ljava/lang/Object;
.source "BaseContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/collector/BaseContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/collector/BaseContent;


# direct methods
.method constructor <init>(Lcom/caiqiqi/wifi_demo/collector/BaseContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/collector/BaseContent;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent$2;->this$0:Lcom/caiqiqi/wifi_demo/collector/BaseContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/BaseContent$2;->this$0:Lcom/caiqiqi/wifi_demo/collector/BaseContent;

    invoke-virtual {v0}, Lcom/caiqiqi/wifi_demo/collector/BaseContent;->changePassword()V

    .line 90
    return-void
.end method
