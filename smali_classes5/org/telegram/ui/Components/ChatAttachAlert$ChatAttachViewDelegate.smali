.class public interface abstract Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatAttachViewDelegate"
.end annotation


# virtual methods
.method public abstract didPressedButton(IZZIZLjava/lang/String;Z)V
.end method

.method public abstract didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
.end method

.method public abstract doOnIdle(Ljava/lang/Runnable;)V
.end method

.method public abstract needEnterComment()Z
.end method

.method public abstract onCameraOpened()V
.end method

.method public abstract openAvatarsSearch()V
.end method
