.class public interface abstract Lcom/smedialink/manager/TelegramApi;
.super Ljava/lang/Object;
.source "TelegramApi.kt"


# virtual methods
.method public abstract acceptUrlAuth(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract deleteUsers(Ljava/util/ArrayList;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation
.end method

.method public abstract getChatInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInlineBot(Ljava/lang/String;JJ)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageLinkPattern(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribeToChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unblockPeer(J)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unsubscribeFromChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end method
