.class public Lcom/caiqiqi/wifi_demo/utils/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field public static final DEFAULT_IP_PORT:Ljava/lang/String; = "192.168.23.2:30000"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAlertWithTextDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 21
    .local v1, "edit_ip_port":Landroid/widget/EditText;
    const-string v2, "192.168.23.2:30000"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    const/4 v0, 0x0

    .local v0, "alertDialog":Landroid/app/AlertDialog;
    move-object v2, p0

    .line 26
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    if-nez v0, :cond_0

    .line 28
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    const v2, 0x108009b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 32
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 37
    const/4 v2, -0x1

    const-string v3, "OK"

    new-instance v4, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;

    invoke-direct {v4, v1, p0}, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$1;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 67
    const/4 v2, -0x2

    const-string v3, "CANCEL"

    new-instance v4, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$2;

    invoke-direct {v4}, Lcom/caiqiqi/wifi_demo/utils/DialogUtil$2;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 78
    :cond_1
    return-void
.end method
