.class public Lcom/caiqiqi/wifi_demo/ui/Floating;
.super Landroid/app/Activity;
.source "Floating.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caiqiqi/wifi_demo/ui/Floating$Content;
    }
.end annotation


# static fields
.field private static final BUTTONS:[I


# instance fields
.field private mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

.field private mContentViewContainer:Landroid/view/ViewGroup;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/caiqiqi/wifi_demo/ui/Floating;->BUTTONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a001f
        0x7f0a0020
        0x7f0a0021
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setDialogContentView(Landroid/view/View;)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mContentViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 54
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mContentViewContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mView:Landroid/view/View;

    .line 38
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 39
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mView:Landroid/view/View;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 41
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->setContentView(Landroid/view/View;)V

    .line 45
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mView:Landroid/view/View;

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mContentViewContainer:Landroid/view/ViewGroup;

    .line 46
    return-void
.end method

.method public refreshContent()V
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 70
    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    invoke-interface {v4}, Lcom/caiqiqi/wifi_demo/ui/Floating$Content;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/caiqiqi/wifi_demo/ui/Floating;->setDialogContentView(Landroid/view/View;)V

    .line 71
    const v4, 0x7f0a001c

    invoke-virtual {p0, v4}, Lcom/caiqiqi/wifi_demo/ui/Floating;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    invoke-interface {v7}, Lcom/caiqiqi/wifi_demo/ui/Floating$Content;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    invoke-interface {v4}, Lcom/caiqiqi/wifi_demo/ui/Floating$Content;->getButtonCount()I

    move-result v1

    .line 75
    .local v1, "btnCount":I
    sget-object v4, Lcom/caiqiqi/wifi_demo/ui/Floating;->BUTTONS:[I

    array-length v4, v4

    if-le v1, v4, :cond_0

    .line 76
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "%d exceeds maximum button count: %d!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x1

    sget-object v8, Lcom/caiqiqi/wifi_demo/ui/Floating;->BUTTONS:[I

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_0
    const v4, 0x7f0a001e

    invoke-virtual {p0, v4}, Lcom/caiqiqi/wifi_demo/ui/Floating;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-lez v1, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    sget-object v7, Lcom/caiqiqi/wifi_demo/ui/Floating;->BUTTONS:[I

    array-length v8, v7

    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_2

    aget v3, v7, v4

    .line 82
    .local v3, "buttonId":I
    invoke-virtual {p0, v3}, Lcom/caiqiqi/wifi_demo/ui/Floating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    .local v0, "btn":Landroid/widget/Button;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "btn":Landroid/widget/Button;
    .end local v3    # "buttonId":I
    :cond_1
    move v4, v6

    .line 79
    goto :goto_0

    .line 87
    :cond_2
    const/4 v2, 0x0

    .local v2, "btnIndex":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 88
    sget-object v4, Lcom/caiqiqi/wifi_demo/ui/Floating;->BUTTONS:[I

    aget v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/caiqiqi/wifi_demo/ui/Floating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    .restart local v0    # "btn":Landroid/widget/Button;
    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    invoke-interface {v4, v2}, Lcom/caiqiqi/wifi_demo/ui/Floating$Content;->getButtonText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    invoke-interface {v4, v2}, Lcom/caiqiqi/wifi_demo/ui/Floating$Content;->getButtonOnClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 93
    .end local v0    # "btn":Landroid/widget/Button;
    :cond_3
    return-void
.end method

.method public setContent(Lcom/caiqiqi/wifi_demo/ui/Floating$Content;)V
    .locals 0
    .param p1, "content"    # Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/ui/Floating;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    .line 62
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/ui/Floating;->refreshContent()V

    .line 63
    return-void
.end method
