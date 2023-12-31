.class public final Lcom/iMe/manager/multireply/data/MultiReplyRepository;
.super Ljava/lang/Object;
.source "MultiReplyRepository.kt"


# instance fields
.field private final messageLinkCache:Lcom/iMe/manager/multireply/message/MessageLinkCache;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;


# direct methods
.method public static synthetic $r8$lambda$LMmNko3OAAXnyxUYfWb-Y0MF8ls(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/manager/multireply/message/MessageLinkPattern;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->getLinkPatternFromApi$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/manager/multireply/message/MessageLinkPattern;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/manager/TelegramApi;Lcom/iMe/manager/multireply/message/MessageLinkCache;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "telegramApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLinkCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 14
    iput-object p2, p0, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->messageLinkCache:Lcom/iMe/manager/multireply/message/MessageLinkCache;

    .line 15
    iput-object p3, p0, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getMessageLinkCache$p(Lcom/iMe/manager/multireply/data/MultiReplyRepository;)Lcom/iMe/manager/multireply/message/MessageLinkCache;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->messageLinkCache:Lcom/iMe/manager/multireply/message/MessageLinkCache;

    return-object p0
.end method

.method private final getLinkPatternFromApi(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/manager/multireply/message/MessageLinkPattern;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->telegramApi:Lcom/iMe/manager/TelegramApi;

    invoke-interface {v0, p1, p2}, Lcom/iMe/manager/TelegramApi;->getMessageLinkPattern(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/iMe/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/iMe/manager/multireply/data/MultiReplyRepository$getLinkPatternFromApi$1;-><init>(Lcom/iMe/manager/multireply/data/MultiReplyRepository;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    new-instance p1, Lcom/iMe/manager/multireply/data/MultiReplyRepository$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/iMe/manager/multireply/data/MultiReplyRepository$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "private fun getLinkPatte\u2026ulersProvider.io())\n    }"

    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getLinkPatternFromApi$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/manager/multireply/message/MessageLinkPattern;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/manager/multireply/message/MessageLinkPattern;

    return-object p0
.end method


# virtual methods
.method public final requestPattern(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/iMe/manager/multireply/message/MessageLinkPattern;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentChat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->messageLinkCache:Lcom/iMe/manager/multireply/message/MessageLinkCache;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/manager/multireply/message/MessageLinkCache;->getLinkPatternFromCache(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->getLinkPatternFromApi(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/iMe/manager/multireply/data/MultiReplyRepository;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "concat(\n            mess\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
