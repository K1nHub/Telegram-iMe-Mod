.class public final synthetic Lcom/iMe/manager/TelegramApi$-CC;
.super Ljava/lang/Object;
.source "TelegramApi.kt"


# direct methods
.method public static synthetic getFullChatInfoById$default(Lcom/iMe/manager/TelegramApi;JLorg/telegram/tgnet/TLRPC$Chat;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 13
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/iMe/manager/TelegramApi;->getFullChatInfoById(JLorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getFullChatInfoById"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
