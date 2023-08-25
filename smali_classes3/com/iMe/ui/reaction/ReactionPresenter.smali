.class public final Lcom/iMe/ui/reaction/ReactionPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "ReactionPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/reaction/ReactionView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactionPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactionPresenter.kt\ncom/iMe/ui/reaction/ReactionPresenter\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,110:1\n14#2:111\n42#3,12:112\n*S KotlinDebug\n*F\n+ 1 ReactionPresenter.kt\ncom/iMe/ui/reaction/ReactionPresenter\n*L\n55#1:111\n63#1:112,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private buttonsRowType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

.field private final dialogId:J

.field private final interactor:Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;

.field private messageId:Ljava/lang/String;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;Lcom/iMe/storage/domain/gateway/TelegramGateway;J)V
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
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->interactor:Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;

    .line 31
    iput-object p2, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 32
    iput-object p3, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 33
    iput-object p4, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 34
    iput-object p5, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 35
    iput-wide p6, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->dialogId:J

    .line 39
    sget-object p1, Lcom/iMe/model/reaction/ReactionButtonsRowsType;->SINGLE:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    iput-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->buttonsRowType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->messageId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$formatBotRequestParams(Lcom/iMe/ui/reaction/ReactionPresenter;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)Ljava/util/HashMap;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/iMe/ui/reaction/ReactionPresenter;->formatBotRequestParams(Lorg/telegram/tgnet/TLRPC$messages_BotResults;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDialogId$p(Lcom/iMe/ui/reaction/ReactionPresenter;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->dialogId:J

    return-wide v0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$setMessageId$p(Lcom/iMe/ui/reaction/ReactionPresenter;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->messageId:Ljava/lang/String;

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

    .line 102
    iget-object v1, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->messageId:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 103
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "query_id"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 104
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Reaction;->getBotId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bot"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 105
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Reaction;->getBotName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bot_name"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 101
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    return-void
.end method

.method public final getButtonLines()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/reaction/ReactionView;

    iget-object v1, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->buttonsRowType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    invoke-interface {v0, v1}, Lcom/iMe/ui/reaction/ReactionView;->showButtonPositionDialog(Lcom/iMe/model/reaction/ReactionButtonsRowsType;)V

    return-void
.end method

.method public final getButtonsRowType()Lcom/iMe/model/reaction/ReactionButtonsRowsType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->buttonsRowType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

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
            "Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;",
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
    new-instance v5, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

    invoke-direct {v5, p5, p3}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;

    sget-object v4, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;->FILE:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    const/4 v6, 0x0

    move-object v3, v1

    move-object v7, p1

    move-object v8, p2

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;-><init>(Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance v9, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;

    sget-object v2, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;->TEXT:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    const/4 v3, 0x0

    move-object v1, v9

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;-><init>(Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 53
    :goto_0
    iget-object v2, v0, Lcom/iMe/ui/reaction/ReactionPresenter;->interactor:Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;

    .line 54
    invoke-virtual {v2, v1}, Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;->prepareLikeMessage(Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/reaction/ReactionPresenter;)V

    new-instance v3, Lcom/iMe/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v3, v2}, Lcom/iMe/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v2, v0, Lcom/iMe/ui/reaction/ReactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

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

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v3, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;

    move-object/from16 v4, p6

    invoke-direct {v3, p0, v4}, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/reaction/ReactionPresenter;Lorg/telegram/messenger/MessageObject;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v1, v4, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 75
    invoke-static {p0, v1, v5, v2, v5}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final setButtonsRowType(Lcom/iMe/model/reaction/ReactionButtonsRowsType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->buttonsRowType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    return-void
.end method

.method public final validateUrl(ILjava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/reaction/ReactionView;

    invoke-interface {v0, p1, p2}, Lcom/iMe/ui/reaction/ReactionView;->onUrlValid(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/reaction/ReactionView;

    iget-object p2, p0, Lcom/iMe/ui/reaction/ReactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->chat_reaction_url_validation_error:I

    invoke-interface {p2, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
