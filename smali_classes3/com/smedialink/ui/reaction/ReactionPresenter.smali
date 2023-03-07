.class public final Lcom/smedialink/ui/reaction/ReactionPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "ReactionPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/reaction/ReactionView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactionPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactionPresenter.kt\ncom/smedialink/ui/reaction/ReactionPresenter\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,109:1\n15#2:110\n39#3,6:111\n*S KotlinDebug\n*F\n+ 1 ReactionPresenter.kt\ncom/smedialink/ui/reaction/ReactionPresenter\n*L\n55#1:110\n63#1:111,6\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private buttonsRowType:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

.field private final dialogId:J

.field private final interactor:Lcom/smedialink/storage/domain/interactor/socialEmotion/ReactionInteractor;

.field private messageId:Ljava/lang/String;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramApi:Lcom/smedialink/manager/TelegramApi;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/socialEmotion/ReactionInteractor;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/manager/TelegramApi;Lcom/smedialink/storage/domain/gateway/TelegramGateway;J)V
    .locals 1

    const-string v0, "interactor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->interactor:Lcom/smedialink/storage/domain/interactor/socialEmotion/ReactionInteractor;

    .line 31
    iput-object p2, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 32
    iput-object p3, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 33
    iput-object p4, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->telegramApi:Lcom/smedialink/manager/TelegramApi;

    .line 34
    iput-object p5, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 35
    iput-wide p6, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->dialogId:J

    .line 39
    sget-object p1, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->SINGLE:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    iput-object p1, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->buttonsRowType:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->messageId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$formatBotRequestParams(Lcom/smedialink/ui/reaction/ReactionPresenter;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)Ljava/util/HashMap;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/smedialink/ui/reaction/ReactionPresenter;->formatBotRequestParams(Lorg/telegram/tgnet/TLRPC$messages_BotResults;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDialogId$p(Lcom/smedialink/ui/reaction/ReactionPresenter;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->dialogId:J

    return-wide v0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/reaction/ReactionPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/smedialink/ui/reaction/ReactionPresenter;)Lcom/smedialink/manager/TelegramApi;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->telegramApi:Lcom/smedialink/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/smedialink/ui/reaction/ReactionPresenter;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$setMessageId$p(Lcom/smedialink/ui/reaction/ReactionPresenter;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->messageId:Ljava/lang/String;

    return-void
.end method

.method private final formatBotRequestParams(Lorg/telegram/tgnet/TLRPC$messages_BotResults;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    .line 101
    iget-object v1, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->messageId:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 102
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "query_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 103
    invoke-static {}, Lcom/smedialink/storage/common/AppConfiguration$Reaction;->getBotId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bot"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 104
    invoke-static {}, Lcom/smedialink/storage/common/AppConfiguration$Reaction;->getBotName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bot_name"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 100
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    return-void
.end method

.method public final getButtonLines()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/reaction/ReactionView;

    iget-object v1, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->buttonsRowType:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    invoke-interface {v0, v1}, Lcom/smedialink/ui/reaction/ReactionView;->showButtonPositionDialog(Lcom/smedialink/model/reaction/ReactionButtonsRowsType;)V

    return-void
.end method

.method public final getButtonsRowType()Lcom/smedialink/model/reaction/ReactionButtonsRowsType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->buttonsRowType:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    return-object v0
.end method

.method public final prepareTextMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v4, p3

    move-object v1, p5

    const-string v2, "emojiList"

    move-object v7, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "buttonList"

    move-object v8, p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "messageText"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 48
    new-instance v5, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageFile;

    invoke-direct {v5, p5, p3}, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;

    sget-object v4, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageTypes;->FILE:Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageTypes;

    const/4 v6, 0x0

    move-object v3, v1

    move-object v7, p1

    move-object v8, p2

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;-><init>(Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageTypes;Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageFile;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance v9, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;

    sget-object v2, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageTypes;->TEXT:Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageTypes;

    const/4 v3, 0x0

    move-object v1, v9

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;-><init>(Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageTypes;Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageFile;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 53
    :goto_0
    iget-object v2, v0, Lcom/smedialink/ui/reaction/ReactionPresenter;->interactor:Lcom/smedialink/storage/domain/interactor/socialEmotion/ReactionInteractor;

    .line 54
    invoke-virtual {v2, v1}, Lcom/smedialink/storage/domain/interactor/socialEmotion/ReactionInteractor;->prepareLikeMessage(Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/ui/reaction/ReactionPresenter;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v2, v0, Lcom/smedialink/ui/reaction/ReactionPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "interactor\n             \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    const-string v3, "viewState"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;

    move-object/from16 v4, p6

    invoke-direct {v3, p0, v4}, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/reaction/ReactionPresenter;Lorg/telegram/messenger/MessageObject;)V

    new-instance v4, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v4, v2}, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v1, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 74
    invoke-static {p0, v1, v5, v2, v5}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final setButtonsRowType(Lcom/smedialink/model/reaction/ReactionButtonsRowsType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->buttonsRowType:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    return-void
.end method

.method public final validateUrl(ILjava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/reaction/ReactionView;

    invoke-interface {v0, p1, p2}, Lcom/smedialink/ui/reaction/ReactionView;->onUrlValid(ILjava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/reaction/ReactionView;

    iget-object p2, p0, Lcom/smedialink/ui/reaction/ReactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->chat_reaction_url_validation_error:I

    invoke-interface {p2, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
