.class public Lcom/caiqiqi/wifi_demo/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static MESSAGE_RECEIVED_FROM_SERVER:I

.field public static MESSAGE_TO_BE_SENT:I

.field public static SERVER_IP:Ljava/lang/String;

.field public static SERVER_PORT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "192.168.23.4"

    sput-object v0, Lcom/caiqiqi/wifi_demo/utils/Constants;->SERVER_IP:Ljava/lang/String;

    .line 6
    const/16 v0, 0x7530

    sput v0, Lcom/caiqiqi/wifi_demo/utils/Constants;->SERVER_PORT:I

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/caiqiqi/wifi_demo/utils/Constants;->MESSAGE_TO_BE_SENT:I

    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/caiqiqi/wifi_demo/utils/Constants;->MESSAGE_RECEIVED_FROM_SERVER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
