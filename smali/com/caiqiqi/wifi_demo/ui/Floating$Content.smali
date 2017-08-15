.class public interface abstract Lcom/caiqiqi/wifi_demo/ui/Floating$Content;
.super Ljava/lang/Object;
.source "Floating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caiqiqi/wifi_demo/ui/Floating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Content"
.end annotation


# virtual methods
.method public abstract getButtonCount()I
.end method

.method public abstract getButtonOnClickListener(I)Landroid/view/View$OnClickListener;
.end method

.method public abstract getButtonText(I)Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getView()Landroid/view/View;
.end method
