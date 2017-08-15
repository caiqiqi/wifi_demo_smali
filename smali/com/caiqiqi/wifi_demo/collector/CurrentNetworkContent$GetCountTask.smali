.class Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;
.super Landroid/os/AsyncTask;
.source "CurrentNetworkContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;


# direct methods
.method private constructor <init>(Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;
    .param p2, "x1"    # Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;-><init>(Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/net/arp"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 173
    const-string v5, " +"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "splitted":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 177
    iget v5, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;->count:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 180
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "splitted":[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 181
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 189
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    iget v5, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 184
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 187
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 185
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 188
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 185
    .end local v3    # "line":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 183
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 184
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 187
    :goto_4
    throw v5

    .line 185
    :catch_3
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 183
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 180
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "connectionCount"    # Ljava/lang/Integer;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;->this$0:Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;

    iget-object v0, v0, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent;->mView:Landroid/view/View;

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/caiqiqi/wifi_demo/collector/CurrentNetworkContent$GetCountTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
