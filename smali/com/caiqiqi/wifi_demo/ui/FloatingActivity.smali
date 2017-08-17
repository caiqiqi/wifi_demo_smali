# 哦原来smali文件里是没有import语句的啊
.class public Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;
.super Lcom/caiqiqi/wifi_demo/ui/Floating;
.source "FloatingActivity.java"

# 静态(类)成员
# static fields
.field public static final parce_ScanResult:Ljava/lang/String; = "ScanResult"

# 实例成员
# instance fields
.field private mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content; # 内部类

.field private mScanResult:Landroid/net/wifi/ScanResult;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

# 构造方法(在Java源文件中其实就是这条语句：
# public class FloatingActivity entends Floating{
# )
# direct methods
.method public constructor <init>()V
    .locals 0   # 0个局部变量

    .prologue
    .line 42  # 说明Java源代码在42行(算上注释之后)
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/Floating;-><init>()V

    return-void # 返回值为void
.end method

.method private constructNetworkContent()V
    # str_security, config, 
    .locals 5  # 5个局部变量

    .prologue
    .line 115
    # sget-object: 获取Wifi类的静态成员，它是一个ConfigurationSecurities 类型
    sget-object v2, Lcom/caiqiqi/wifi_demo/collector/Wifi;->sConfigSec:Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;
    # 因为 mScanResult要传给 getScanResultSecurity()， 所以得先用iget-object得到它
    # p0 是this, 而v3 是由全局变量mScanResult传递过来的局部变量
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;
    # 然后用v2(sConfigSec) 以v3(mScanResult)位参数调用 getScanResultSecurity方法
    invoke-virtual {v2, v3}, Lcom/caiqiqi/wifi_demo/collector/ConfigurationSecurities;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    # 然后将上面的结果赋值给v1(str_security)  # 下面会提到
    move-result-object v1

    .line 117
    .local v1, "str_security":Ljava/lang/String;
    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-static {v2, v3, v1}, Lcom/caiqiqi/wifi_demo/collector/Wifi;->getWifiConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    # 将上面的结果赋值给v0(config)  # 下面会提到
    # 为什么总是在得到它的对象了之后再声明它？
    move-result-object v0

    .line 119
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    # 得到config 之后再判断它是不是等于0。如果不等于0，就走吧，cond_0等着你；不然就留下接着往下看
    if-nez v0, :cond_0

    .line 120
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {v2, p0, v3, v4}, Lcom/caiqiqi/wifi_demo/collector/NewNetworkContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->isCurrentNetwork()Ljava/lang/Boolean;
    # v2变量这里被复用了？前面用完之后，把它作为一个bool值供if的条件判断
    move-result-object v2
    # 原来if里面的判断语句也要生成一个bool类型的值啊，而且还需要由Ljava/lang/Boolean来生成
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1
    # 三个参数按顺序分别为：
    # this, str_security, config
    # 这个方法isCurrentConfigurationStatus() 是直接定义在类中的成员方法，直接调用 invoke-direct
    invoke-direct {p0, v1, v0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->isCurrentConfigurationStatus(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    # 然后再把结果给v2 (话说v2真的被复用了好多次哦)
    move-result-object v2
    # 太多，下次再分析吧23333
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    :cond_1
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {v2, p0, v3, v4}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;
    # 其实上面的四行和下面那一段是一样的
    goto :goto_0
    # goto_0 其实就是return-void(129行)

    .line 126
    :cond_2
    new-instance v2, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;

    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {v2, p0, v3, v4}, Lcom/caiqiqi/wifi_demo/collector/ConfiguredNetworkContent;-><init>(Lcom/caiqiqi/wifi_demo/ui/Floating;Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)V

    iput-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    goto :goto_0
.end method

.method private doNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string v0, "ScanResult"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 82
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "No data in Intent!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->constructNetworkContent()V

    .line 90
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mContent:Lcom/caiqiqi/wifi_demo/ui/Floating$Content;

    invoke-virtual {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->setContent(Lcom/caiqiqi/wifi_demo/ui/Floating$Content;)V

    goto :goto_0
.end method

.method private isCurrentConfigurationStatus(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "str_security"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 107
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private isCurrentNetwork()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 98
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    # p0是this, 所以p从p1开始
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    # 先调用父类的onCreate()
    invoke-super {p0, p1}, Lcom/caiqiqi/wifi_demo/ui/Floating;->onCreate(Landroid/os/Bundle;)V

    .line 73
    # Java代码其实写的是WIFI_SERVICE，其实 Context.WIFI_SERVICE 的值就是 "wifi"
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    # 将调用 getSystemService 的结果给 v0(v0又被复写了)
    move-result-object v0
    # 类型转换  (WifiManager) getSystemService(WIFI_SERVICE);
    check-cast v0, Landroid/net/wifi/WifiManager;
    # 然后将然后通过p0(this)得到mWifiManager然后给 v0
    iput-object v0, p0, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    # 然后调用Activity本身就有的 getIntent() 方法
    invoke-virtual {p0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->getIntent()Landroid/content/Intent;
    # 然后把上面方法的返回值给v0，
    move-result-object v0
    # 然后调用自定义的doNewIntent()方法，将上面的结果v0作为参数传递进去
    invoke-direct {p0, v0}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->doNewIntent(Landroid/content/Intent;)V

    .line 76
    # 返回void
    return-void
.end method

# 为什么把private 和 public 弄完了才是protected!
# 哦我知道了，因为这里需要调用前面声明的方法?
# 还是因为这是继承的Activity的protected方法?
.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    ## p0 就是this(本Activity对象)吧, 既然下面每次调用方法都带上p0了的
    .param p1, "intent"    # Landroid/content/Intent;
    ## 上面的注释标明intent是一个 Landroid/content/Intent 类型
    .prologue
    .line 62 # setIntent()是Activity的方法(所谓的invoke-virtual?)
    invoke-virtual {p0, p1}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->setIntent(Landroid/content/Intent;)V

    .line 65 # doNewIntent()是自定义的方法(所谓的invoke-direct?)
    invoke-direct {p0, p1}, Lcom/caiqiqi/wifi_demo/ui/FloatingActivity;->doNewIntent(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
