.class public interface abstract Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;
.super Ljava/lang/Object;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatActivityDelegate"
.end annotation


# virtual methods
.method public abstract onForwardingMessagesChanged(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReport()V
.end method

.method public abstract onUnpin(ZZZZLorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Lorg/telegram/ui/ChatActivity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract openReplyMessage(I)V
.end method

.method public abstract openSearch(Ljava/lang/String;)V
.end method

.method public abstract setFieldText(Ljava/lang/CharSequence;)V
.end method
