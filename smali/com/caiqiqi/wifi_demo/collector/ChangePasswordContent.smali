.class public Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;
.super Lcom/caiqiqi/wifi_demo/collector/BaseContent;
.source "ChangePasswordContent.java"


# instance fields
.field mOnClickListeners:[Landroid/view/View$OnClickListener;

.field private mPasswordEditText:Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;

.field private mSaveOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V
    .locals 5
    .param p1, "floating"    # Lcom/caiqiqi/wifi_demo/ui/Floating;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const v4, 0x7f0a001a

    const/16 v3, 0x8

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/caiqiqi/wifi_demo/collector/BaseContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    .line 61
    new-instance v0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;

    invoke-direct {v0, p0}, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent$1;-><init>(Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;)V

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mSaveOnClick:Landroid/view/View$OnClickListener;

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mSaveOnClick:Landroid/view/View$OnClickListener;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mCancelOnClick:Landroid/view/View$OnClickListener;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mOnClickListeners:[Landroid/view/View$OnClickListener;

    .line 23
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mView:Landroid/view/View;

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mView:Landroid/view/View;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mPasswordEditText:Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;

    .line 29
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;)Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;
    .locals 1
    .param p0, "x0"    # Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mPasswordEditText:Lcom/caiqiqi/wifi_demo/collector/ChangingAwareEditText;

    return-object v0
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    return v0
.end method

.method public getButtonOnClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mOnClickListeners:[Landroid/view/View$OnClickListener;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getButtonText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 46
    packed-switch p1, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mFloating:Lcom/caiqiqi/wifi_demo/ui/Floating;

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->getCancelString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/ChangePasswordContent;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    return-object v0
.end method
