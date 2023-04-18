.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"


# direct methods
.method public static $default$didSelectBot(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    return-void
.end method

.method public static $default$doOnIdle(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "_this"    # Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    .line 621
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static $default$needEnterComment(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$openAvatarsSearch(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V
    .locals 0

    return-void
.end method
