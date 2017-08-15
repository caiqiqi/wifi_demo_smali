.class final Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caiqiqi/wifi_demo/utils/DialogUtil;->showAlertWithTextDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$edit_ip_port:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;->val$edit_ip_port:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    .line 40
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;->val$edit_ip_port:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "ip_port":Ljava/lang/String;
    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/utils/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 43
    const/4 v2, 0x0

    .line 46
    .local v2, "strsContent":[Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/caiqiqi/wifi_demo/utils/StringUtil;->splitStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;->val$context:Landroid/content/Context;

    const-string v4, "IP"

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string v6, "server-ip-port"

    invoke-static {v3, v4, v5, v6}, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->setStringPrefrences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;->val$context:Landroid/content/Context;

    const-string v4, "PORT"

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "server-ip-port"

    invoke-static {v3, v4, v5, v6}, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->setIntPrefrences(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2    # "strsContent":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v2    # "strsContent":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;->val$context:Landroid/content/Context;

    const-string v4, "Format wrong"

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 56
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "strsContent":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;->val$context:Landroid/content/Context;

    const-string v4, "Input null !"

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
