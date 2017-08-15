.class public Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;
.super Ljava/lang/Object;
.source "SharedPrefsUtil.java"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "server-ip-port"

.field private static prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntPrefrences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "PREFS_FILE_NAME"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    .line 63
    sget-object v1, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    :cond_0
    return v0
.end method

.method public static getStringPrefrences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "PREFS_FILE_NAME"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    .line 47
    sget-object v0, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static setIntPrefrences(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "Value"    # I
    .param p3, "PREFS_FILE_NAME"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    .line 56
    sget-object v1, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method

.method public static setStringPrefrences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/String;
    .param p3, "PREFS_FILE_NAME"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    .line 33
    sget-object v1, Lcom/caiqiqi/wifi_demo/utils/SharedPrefsUtil;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method
