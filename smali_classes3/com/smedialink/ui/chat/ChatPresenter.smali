.class public final Lcom/smedialink/ui/chat/ChatPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "ChatPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/chat/ChatView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatPresenter.kt\ncom/smedialink/ui/chat/ChatPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n*L\n1#1,264:1\n83#2,8:265\n39#2,8:273\n39#2,8:281\n39#2,8:289\n39#2,8:297\n39#2,8:305\n39#2,8:316\n16#3,3:313\n*S KotlinDebug\n*F\n+ 1 ChatPresenter.kt\ncom/smedialink/ui/chat/ChatPresenter\n*L\n73#1:265,8\n89#1:273,8\n120#1:281,8\n142#1:289,8\n163#1:297,8\n220#1:305,8\n232#1:316,8\n231#1:313,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final binancePayProcessManager:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

.field private final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final donationsInteractor:Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;

.field private final googleServicesInteractor:Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;

.field private messagesReaction:Ljava/lang/String;

.field private final multiReplyInteractor:Lcom/smedialink/manager/multireply/MultiReplyInteractor;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramApi:Lcom/smedialink/manager/TelegramApi;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

.field private final translationInteractor:Lcom/smedialink/storage/domain/interactor/translate/TranslationInteractor;

.field private uuidReaction:Ljava/lang/String;

.field private final walletSessionInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;


# direct methods
.method public static synthetic $r8$lambda$ReVD5NPYLuDy7YcHRrS1uHadaBw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/chat/ChatPresenter;->acceptTelegramAuthUrlAndGetTokens$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/manager/TelegramApi;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/smedialink/manager/multireply/MultiReplyInteractor;Lcom/smedialink/storage/domain/interactor/translate/TranslationInteractor;)V
    .locals 1

    const-string v0, "telegramApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletSessionInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "donationsInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleServicesInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binancePayProcessManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiReplyInteractor"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translationInteractor"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 43
    iput-object p2, p0, Lcom/smedialink/ui/chat/ChatPresenter;->telegramApi:Lcom/smedialink/manager/TelegramApi;

    .line 44
    iput-object p3, p0, Lcom/smedialink/ui/chat/ChatPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 45
    iput-object p4, p0, Lcom/smedialink/ui/chat/ChatPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 46
    iput-object p5, p0, Lcom/smedialink/ui/chat/ChatPresenter;->walletSessionInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    .line 47
    iput-object p6, p0, Lcom/smedialink/ui/chat/ChatPresenter;->donationsInteractor:Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 48
    iput-object p7, p0, Lcom/smedialink/ui/chat/ChatPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 49
    iput-object p8, p0, Lcom/smedialink/ui/chat/ChatPresenter;->googleServicesInteractor:Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;

    .line 50
    iput-object p9, p0, Lcom/smedialink/ui/chat/ChatPresenter;->binancePayProcessManager:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    .line 51
    iput-object p10, p0, Lcom/smedialink/ui/chat/ChatPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 52
    iput-object p11, p0, Lcom/smedialink/ui/chat/ChatPresenter;->multiReplyInteractor:Lcom/smedialink/manager/multireply/MultiReplyInteractor;

    .line 53
    iput-object p12, p0, Lcom/smedialink/ui/chat/ChatPresenter;->translationInteractor:Lcom/smedialink/storage/domain/interactor/translate/TranslationInteractor;

    const-string p1, ""

    .line 57
    iput-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter;->uuidReaction:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/smedialink/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

    return-void
.end method

.method private static final acceptTelegramAuthUrlAndGetTokens$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method public static final synthetic access$checkIsDonationEnabled(Lcom/smedialink/ui/chat/ChatPresenter;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/chat/ChatPresenter;->checkIsDonationEnabled(J)V

    return-void
.end method

.method public static final synthetic access$getChat$p(Lcom/smedialink/ui/chat/ChatPresenter;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/chat/ChatPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/smedialink/ui/chat/ChatPresenter;)Lcom/smedialink/manager/TelegramApi;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->telegramApi:Lcom/smedialink/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$getWalletSessionInteractor$p(Lcom/smedialink/ui/chat/ChatPresenter;)Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->walletSessionInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    return-object p0
.end method

.method public static final synthetic access$sendReactionMessage(Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/chat/ChatPresenter;->sendReactionMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private final checkIsDonationEnabled(J)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->donationsInteractor:Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 218
    invoke-virtual {v0, p1, p2}, Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;->isDonationsEnabled(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lcom/smedialink/ui/chat/ChatPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v0, Lcom/smedialink/ui/chat/ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/chat/ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/chat/ChatPresenter;)V

    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/smedialink/ui/chat/ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/chat/ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 226
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final isValidChatForDonations()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$Chat;->isGroup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

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

    .line 230
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/chat/ChatPresenter;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/smedialink/ui/chat/ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 237
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final sendReactionMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "null cannot be cast to non-null type java.util.ArrayList<*>"

    .line 241
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-static {}, Lcom/smedialink/storage/common/AppConfiguration$Reaction;->getBotId()J

    move-result-wide v8

    .line 245
    instance-of v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 246
    check-cast v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const-string v2, ""

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    const-string v3, "data.caption"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iput-object v2, v0, Lcom/smedialink/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

    move-object/from16 v6, p3

    .line 247
    iput-object v6, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 248
    iget-object v2, v0, Lcom/smedialink/ui/chat/ChatPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

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

    invoke-static/range {v2 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Landroidx/core/view/inputmethod/InputContentInfoCompat;ZZLorg/telegram/messenger/MessageObject;ZIZLjava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v6, p3

    .line 251
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 252
    iput-object v2, v0, Lcom/smedialink/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

    .line 253
    iget-object v2, v0, Lcom/smedialink/ui/chat/ChatPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

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

    const/16 v17, 0x1

    move-object/from16 v6, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Landroidx/core/view/inputmethod/InputContentInfoCompat;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;Z)V

    goto :goto_3

    .line 256
    :cond_5
    instance-of v3, v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_6

    .line 257
    iput-object v2, v0, Lcom/smedialink/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

    .line 258
    iget-object v2, v0, Lcom/smedialink/ui/chat/ChatPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

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

    const/4 v14, 0x1

    move-object/from16 v4, p3

    move-wide v5, v8

    move-object/from16 v7, p4

    move-object v8, v1

    move-object v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move v13, v14

    invoke-static/range {v2 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingAudioDocuments(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Ljava/lang/CharSequence;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;Z)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public final acceptTelegramAuthUrlAndGetTokens(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$1;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/smedialink/ui/chat/ChatPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 140
    iget-object p2, p0, Lcom/smedialink/ui/chat/ChatPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "fun acceptTelegramAuthUr\u2026     .autoDispose()\n    }"

    .line 131
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/chat/ChatPresenter;)V

    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/chat/ChatPresenter$acceptTelegramAuthUrlAndGetTokens$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 153
    invoke-static {p0, p1, v2, p2, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final checkAndSendReaction(Ljava/lang/Object;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    .line 109
    invoke-static {v0}, Lcom/smedialink/utils/helper/reaction/ReactionHelper;->checkReactionWork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/chat/ChatView;

    invoke-interface {p1}, Lcom/smedialink/ui/chat/ChatView;->showReactionActivationAlert()V

    return-void

    .line 114
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "randomUUID().toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smedialink/ui/chat/ChatPresenter;->uuidReaction:Ljava/lang/String;

    .line 115
    sget-object v2, Lcom/smedialink/utils/helper/reaction/ReactionHelper;->INSTANCE:Lcom/smedialink/utils/helper/reaction/ReactionHelper;

    invoke-virtual {v2, v1}, Lcom/smedialink/utils/helper/reaction/ReactionHelper;->formatUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    invoke-static {v0}, Lcom/smedialink/utils/helper/reaction/ReactionHelper;->checkBlacklistReaction(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->telegramApi:Lcom/smedialink/manager/TelegramApi;

    .line 119
    invoke-static {}, Lcom/smedialink/storage/common/AppConfiguration$Reaction;->getBotId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/smedialink/manager/TelegramApi;->unblockPeer(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/smedialink/ui/chat/ChatPresenter$checkAndSendReaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 123
    invoke-static {p0, p1, p3, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .line 125
    :cond_2
    invoke-direct {p0, p1, p2, v7, p3}, Lcom/smedialink/ui/chat/ChatPresenter;->sendReactionMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    :goto_0
    return-void
.end method

.method public final getDownloadMediaFirstDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 8

    .line 187
    new-instance v7, Lcom/smedialink/model/dialog/DialogModel;

    .line 188
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v1, "AppName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 189
    sget v0, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    const-string v2, "PleaseDownload"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 190
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v3, "OK"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    .line 187
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final getMessagesReaction()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->messagesReaction:Ljava/lang/String;

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

    .line 67
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->multiReplyInteractor:Lcom/smedialink/manager/multireply/MultiReplyInteractor;

    .line 69
    invoke-virtual {v0, p1}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->prepareSelectedMessages([Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/smedialink/manager/multireply/MultiReplyInteractor;->buildMultiReplyMessage(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Single;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/smedialink/ui/chat/ChatPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "multiReplyInteractor\n   \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 88
    new-instance v0, Lcom/smedialink/ui/chat/ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/chat/ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/chat/ChatPresenter;)V

    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/smedialink/ui/chat/ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/chat/ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 90
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 88
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 90
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 81
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getOldAuthButtonDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 6

    .line 180
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 181
    iget-object v1, p0, Lcom/smedialink/ui/chat/ChatPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_button_old_auth_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/smedialink/ui/chat/ChatPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_button_old_auth_dialog_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/smedialink/ui/chat/ChatPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    iget-object v4, p0, Lcom/smedialink/ui/chat/ChatPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_button_old_auth_dialog_action_btn:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUuidReaction()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->uuidReaction:Ljava/lang/String;

    return-object v0
.end method

.method public final loadTextTranslateLanguages()V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getCurrentLocaleInformation()Lcom/smedialink/storage/domain/model/telegram/TelegramLocaleInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/telegram/TelegramLocaleInformation;->getSupportedLanguage()Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/smedialink/ui/chat/ChatPresenter;->translationInteractor:Lcom/smedialink/storage/domain/interactor/translate/TranslationInteractor;

    .line 160
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/interactor/translate/TranslationInteractor;->languages()Lio/reactivex/Observable;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/smedialink/ui/chat/ChatPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "translationInteractor\n  \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
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

    .line 163
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/smedialink/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, v0}, Lcom/smedialink/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/chat/ChatPresenter;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/smedialink/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/smedialink/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 177
    invoke-static {p0, v0, v5, v1, v5}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->binancePayProcessManager:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {v0}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;->onDetachViewState()V

    .line 207
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->binancePayProcessManager:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;

    invoke-virtual {v0, v1}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;->attachViewState(Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;)V

    .line 199
    invoke-direct {p0}, Lcom/smedialink/ui/chat/ChatPresenter;->isValidChatForDonations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/smedialink/common/TelegramConstants;->INSTANCE:Lcom/smedialink/common/TelegramConstants;

    iget-object v1, p0, Lcom/smedialink/ui/chat/ChatPresenter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/smedialink/ui/chat/ChatPresenter;->checkIsDonationEnabled(J)V

    .line 201
    invoke-direct {p0}, Lcom/smedialink/ui/chat/ChatPresenter;->listenEvents()V

    :cond_0
    return-void
.end method

.method public final processVoiceToText(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V
    .locals 3

    const-string v0, "messageObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->googleServicesInteractor:Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;

    .line 86
    sget-object v1, Lorg/fork/controller/DialogTranslationController;->Companion:Lorg/fork/controller/DialogTranslationController$Companion;

    invoke-virtual {v1}, Lorg/fork/controller/DialogTranslationController$Companion;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;->getVoiceText(Ljava/io/File;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p2, v1, v2, v0}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "googleServicesInteractor\u2026(schedulersProvider.ui())"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/chat/ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/chat/ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/chat/ChatPresenter;Lorg/telegram/messenger/MessageObject;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/chat/ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/chat/ChatPresenter$processVoiceToText$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 104
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final startBinancePayFlow(Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatPresenter;->binancePayProcessManager:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;->loadAndPay(Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V

    return-void
.end method
