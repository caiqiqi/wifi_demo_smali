.class public Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;
.super Landroid/widget/EditText;
.source "ChangingAwareEditText.java"


# instance fields
.field private mChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;->mChanged:Z

    .line 11
    return-void
.end method


# virtual methods
.method public getChanged()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;->mChanged:Z

    return v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;->mChanged:Z

    .line 21
    return-void
.end method
