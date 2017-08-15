.class public Lcom/caiqiqi/wifi_demo/collector/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final SDK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/caiqiqi/wifi_demo/collector/Version;->get()I

    move-result v0

    sput v0, Lcom/caiqiqi/wifi_demo/collector/Version;->SDK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get()I
    .locals 4

    .prologue
    .line 19
    const-class v2, Landroid/os/Build$VERSION;

    .line 22
    .local v2, "versionClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Build$VERSION;>;"
    :try_start_0
    const-string v3, "SDK_INT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 23
    .local v1, "sdkIntField":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 26
    .end local v1    # "sdkIntField":Ljava/lang/reflect/Field;
    :goto_0
    return v3

    .line 24
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 27
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
