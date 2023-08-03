.class public final Lcom/iMe/ui/chat/ChatPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "ChatPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/chat/ChatView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatPresenter.kt\ncom/iMe/ui/chat/ChatPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n*L\n1#1,222:1\n85#2,12:223\n42#2,12:235\n42#2,12:247\n42#2,12:259\n42#2,12:271\n42#2,12:286\n16#3,3:283\n*S KotlinDebug\n*F\n+ 1 ChatPresenter.kt\ncom/iMe/ui/chat/ChatPresenter\n*L\n71#1:223,12\n87#1:235,12\n118#1:247,12\n134#1:259,12\n178#1:271,12\n190#1:286,12\n189#1:283,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

.field private final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

.field private final googleServicesInteractor:Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;

.field private messagesReaction:Ljava/lang/String;

.field private final multiReplyInteractor:Lcom/iMe/manager/multireply/MultiReplyInteractor;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private final translationInteractor:Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;

.field private uuidReaction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApi;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/manager/multireply/MultiReplyInteractor;Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;)V
    .locals 1

    const-string v0, "telegramApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletSessionInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "donationsInteractor"

    invoke-static {p6, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "schedulersProvider"

    invoke-static {p7, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "googleServicesInteractor"

    invoke-static {p8, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "binancePayProcessManager"

    invoke-static {p9, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "telegramGateway"

    invoke-static {p10, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "multiReplyInteractor"

    invoke-static {p11, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "translationInteractor"

    invoke-static {p12, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/iMe/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 41
    iput-object p2, p0, Lcom/iMe/ui/chat/ChatPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 42
    iput-object p3, p0, Lcom/iMe/ui/chat/ChatPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 43
    iput-object p4, p0, Lcom/iMe/ui/chat/ChatPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 45
    iput-object p6, p0, Lcom/iMe/ui/chat/ChatPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 46
    iput-object p7, p0, Lcom/iMe/ui/chat/ChatPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 47
    iput-object p8, p0, Lcom/iMe/ui/chat/ChatPresenter;->googleServicesInteractor:Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;

    .line 48
    iput-object p9, p0, Lcom/iMe/ui/chat/ChatPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    .line 49
    iput-object p10, p0, Lcom/iMe/ui/chat/ChatPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 50
    iput-object p11, p0, Lcom/iMe/ui/chat/ChatPresenter;->multiReplyInteractor:Lcom/iMe/manager/multireply/MultiReplyInteractor;

    .line 51
    iput-object p12, p0, Lcom/iMe/ui/chat/ChatPresenter;->translationInteractor:Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;

    const-string p1, ""

    .line 55
    iput-object p1, p0, Lcom/iMe/ui/chat/ChatPresenter;->uuidReaction:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/iMe/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$checkIsDonationEnabled(Lcom/iMe/ui/chat/ChatPresenter;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/chat/ChatPresenter;->checkIsDonationEnabled(J)V

    return-void
.end method

.method public static final synthetic access$getChat$p(Lcom/iMe/ui/chat/ChatPresenter;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/iMe/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/chat/ChatPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/iMe/ui/chat/ChatPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$sendReactionMessage(Lcom/iMe/ui/chat/ChatPresenter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/ui/chat/ChatPresenter;->sendReactionMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private final checkIsDonationEnabled(J)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 176
    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->isDonationsEnabled(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 177
    iget-object p2, p0, Lcom/iMe/ui/chat/ChatPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v0, Lcom/iMe/ui/chat/ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/chat/ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/chat/ChatPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/chat/ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/chat/ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 184
    invoke-static {p0, p1, p2, v0, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final isValidChatForDonations()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$Chat;->isGroup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$Chat;->isChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final listenEvents()V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/chat/ChatPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 195
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final sendReactionMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "null cannot be cast to non-null type java.util.ArrayList<*>"

    .line 199
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Reaction;->getBotId()J

    move-result-wide v8

    .line 203
    instance-of v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 204
    check-cast v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    :goto_1
    if-eqz v2, :cond_3

    const-string v2, ""

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    const-string v3, "data.caption"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iput-object v2, v0, Lcom/iMe/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

    move-object/from16 v6, p3

    .line 205
    iput-object v6, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 206
    iget-object v2, v0, Lcom/iMe/ui/chat/ChatPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    new-array v3, v5, [Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    aput-object v1, v3, v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v4, v8

    move-object/from16 v6, p4

    move-object v8, v1

    move v9, v10

    move v10, v11

    move-object v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;ZZLorg/telegram/messenger/MessageObject;ZIZLandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    move-object/from16 v6, p3

    .line 209
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 210
    iput-object v2, v0, Lcom/iMe/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

    .line 211
    iget-object v2, v0, Lcom/iMe/ui/chat/ChatPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v4

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v6, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;Z)V

    goto :goto_3

    .line 214
    :cond_5
    instance-of v3, v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_6

    .line 215
    iput-object v2, v0, Lcom/iMe/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

    .line 216
    iget-object v2, v0, Lcom/iMe/ui/chat/ChatPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    new-array v3, v5, [Lorg/telegram/messenger/MessageObject;

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    aput-object v1, v3, v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v4, p3

    move-wide v5, v8

    move-object/from16 v7, p4

    move-object v8, v1

    move-object v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    invoke-static/range {v2 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingAudioDocuments(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Ljava/lang/CharSequence;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;ZILorg/telegram/messenger/MessageObject;Ljava/lang/String;Z)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public final checkAndSendReaction(Ljava/lang/Object;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    .line 107
    invoke-static {v0}, Lcom/iMe/utils/helper/reaction/ReactionHelper;->checkReactionWork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/chat/ChatView;

    invoke-interface {p1}, Lcom/iMe/ui/chat/ChatView;->showReactionActivationAlert()V

    return-void

    .line 112
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "randomUUID().toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iMe/ui/chat/ChatPresenter;->uuidReaction:Ljava/lang/String;

    .line 113
    sget-object v2, Lcom/iMe/utils/helper/reaction/ReactionHelper;->INSTANCE:Lcom/iMe/utils/helper/reaction/ReactionHelper;

    invoke-virtual {v2, v1}, Lcom/iMe/utils/helper/reaction/ReactionHelper;->formatUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-static {v0}, Lcom/iMe/utils/helper/reaction/ReactionHelper;->checkBlacklistReaction(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 117
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Reaction;->getBotId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/iMe/manager/TelegramApi;->unblockPeer(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/chat/ChatPresenter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/iMe/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 121
    invoke-static {p0, p1, p3, p2, p3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .line 123
    :cond_2
    invoke-direct {p0, p1, p2, v7, p3}, Lcom/iMe/ui/chat/ChatPresenter;->sendReactionMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    :goto_0
    return-void
.end method

.method public final getMessagesReaction()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

    return-object v0
.end method

.method public final getMultiReplyMessage([Landroid/util/SparseArray;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")V"
        }
    .end annotation

    const-string v0, "selectedMessages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->multiReplyInteractor:Lcom/iMe/manager/multireply/MultiReplyInteractor;

    .line 67
    invoke-virtual {v0, p1}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->prepareSelectedMessages([Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/multireply/MultiReplyInteractor;->buildMultiReplyMessage(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Single;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/iMe/ui/chat/ChatPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "multiReplyInteractor\n   \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 90
    new-instance v0, Lcom/iMe/ui/chat/ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/chat/ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/chat/ChatPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/chat/ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/chat/ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 92
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 90
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 92
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 79
    invoke-static {p0, p1, p2, v0, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getUuidReaction()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->uuidReaction:Ljava/lang/String;

    return-object v0
.end method

.method public final loadTextTranslateLanguages()V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/iMe/ui/chat/ChatPresenter;->translationInteractor:Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;

    .line 131
    invoke-virtual {v1}, Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;->languages()Lio/reactivex/Observable;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/iMe/ui/chat/ChatPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "translationInteractor\n  \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
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

    .line 134
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v3, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, v0}, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/chat/ChatPresenter;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 148
    invoke-static {p0, v0, v5, v1, v5}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {v0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->onDetachViewState()V

    .line 165
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    invoke-virtual {v0, v1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->attachViewState(Lcom/iMe/manager/crypto/pay/BinancePayProcessView;)V

    .line 157
    invoke-direct {p0}, Lcom/iMe/ui/chat/ChatPresenter;->isValidChatForDonations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/iMe/common/TelegramConstants;->INSTANCE:Lcom/iMe/common/TelegramConstants;

    iget-object v1, p0, Lcom/iMe/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/chat/ChatPresenter;->checkIsDonationEnabled(J)V

    .line 159
    invoke-direct {p0}, Lcom/iMe/ui/chat/ChatPresenter;->listenEvents()V

    :cond_0
    return-void
.end method

.method public final processVoiceToText(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V
    .locals 3

    const-string v0, "messageObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->googleServicesInteractor:Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;

    .line 84
    sget-object v1, Lcom/iMe/fork/controller/DialogTranslationController;->Companion:Lcom/iMe/fork/controller/DialogTranslationController$Companion;

    invoke-virtual {v1}, Lcom/iMe/fork/controller/DialogTranslationController$Companion;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;->getVoiceText(Ljava/io/File;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p2, v1, v2, v0}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    .line 86
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "googleServicesInteractor\u2026(schedulersProvider.ui())"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/ui/chat/ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/chat/ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/chat/ChatPresenter;Lorg/telegram/messenger/MessageObject;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/chat/ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/chat/ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 102
    invoke-static {p0, p1, p2, v0, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final startBinancePayFlow(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->loadAndPay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V

    return-void
.end method
