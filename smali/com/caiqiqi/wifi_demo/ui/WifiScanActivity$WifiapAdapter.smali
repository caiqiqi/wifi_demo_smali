.class public Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiapAdapter"
.end annotation


# instance fields
.field private isWifiConnected:Z

.field private mmContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;


# direct methods
.method public constructor <init>(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    .line 271
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 272
    iput-object p2, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->mmContext:Landroid/content/Context;

    .line 273
    invoke-static {p1, p3}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$002(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;Ljava/util/List;)Ljava/util/List;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->isWifiConnected:Z

    .line 276
    return-void
.end method

.method private getDescription(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p1, "ap"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 379
    const-string v0, ""

    .line 381
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 382
    .local v1, "descOri":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    :cond_0
    const-string v0, "Secured"

    .line 390
    :goto_0
    iget-boolean v2, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->isWifiConnected:Z

    if-eqz v2, :cond_1

    .line 391
    const-string v0, "Connected"

    .line 393
    :cond_1
    return-object v0

    .line 386
    :cond_2
    const-string v0, "Open"

    goto :goto_0
.end method

.method private getRecommendLevel(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 1
    .param p1, "ap"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSignalLevelImgId(Landroid/net/wifi/ScanResult;)I
    .locals 3
    .param p1, "ap"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 345
    iget-boolean v2, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->isWifiConnected:Z

    if-eqz v2, :cond_0

    .line 346
    const v0, 0x7f020001

    .line 362
    .local v0, "imgId":I
    :goto_0
    return v0

    .line 349
    .end local v0    # "imgId":I
    :cond_0
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 350
    .local v1, "rssi":I
    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 351
    const v0, 0x7f020004

    .restart local v0    # "imgId":I
    goto :goto_0

    .line 352
    .end local v0    # "imgId":I
    :cond_1
    const/16 v2, 0x50

    if-le v1, v2, :cond_2

    .line 353
    const v0, 0x7f020005

    .restart local v0    # "imgId":I
    goto :goto_0

    .line 354
    .end local v0    # "imgId":I
    :cond_2
    const/16 v2, 0x46

    if-le v1, v2, :cond_3

    .line 355
    const v0, 0x7f020006

    .restart local v0    # "imgId":I
    goto :goto_0

    .line 356
    .end local v0    # "imgId":I
    :cond_3
    const/16 v2, 0x3c

    if-le v1, v2, :cond_4

    .line 357
    const v0, 0x7f020007

    .restart local v0    # "imgId":I
    goto :goto_0

    .line 359
    .end local v0    # "imgId":I
    :cond_4
    const v0, 0x7f020008

    .restart local v0    # "imgId":I
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$000(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$000(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$000(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 293
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 305
    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v5}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$000(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v4

    .line 309
    :cond_1
    iget-object v5, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v5}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$000(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 315
    .local v0, "ap":Landroid/net/wifi/ScanResult;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->isWifiConnected:Z

    .line 317
    if-nez p2, :cond_2

    .line 318
    iget-object v5, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->mmContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040003

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 321
    :cond_2
    const v4, 0x7f0a0022

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 322
    .local v1, "iv_rssi":Landroid/widget/ImageView;
    const v4, 0x7f0a0023

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 323
    .local v3, "tv_ssid":Landroid/widget/TextView;
    const v4, 0x7f0a0024

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 325
    .local v2, "tv_desc":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v4}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$500(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->this$0:Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;

    invoke-static {v5}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;->access$600(Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 326
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->isWifiConnected:Z

    .line 330
    :cond_3
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-direct {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->getDescription(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->mmContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/WifiScanActivity$WifiapAdapter;->getSignalLevelImgId(Landroid/net/wifi/ScanResult;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    move-object v4, p2

    .line 336
    goto :goto_0
.end method
