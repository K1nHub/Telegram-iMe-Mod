.class public final Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CryptoBoxConditionsPresenter.kt"

# interfaces
.implements Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;",
        ">;",
        "Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxConditionsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxConditionsPresenter.kt\ncom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,247:1\n1#2:248\n63#3,12:249\n63#3,12:261\n*S KotlinDebug\n*F\n+ 1 CryptoBoxConditionsPresenter.kt\ncom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter\n*L\n178#1:249,12\n196#1:261,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

.field private final cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

.field private currentButtonType:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;

.field private final network:Lcom/iMe/storage/domain/model/crypto/Network;

.field private participationStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationStatus;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private sourceChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;


# direct methods
.method public static synthetic $r8$lambda$8dHqHuv5s4wvulEcHfbvEAieiiA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->subscribeToRequiredChat$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CTT0uzNFucxJdYFeNkJ2D8msV_c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->subscribeToRequiredChat$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dWJmdbeyR1SYj-AFzaqExJYLRIw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->subscribeToRequiredChat$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;Lcom/iMe/manager/wallet/create/WalletCreateManager;)V
    .locals 1

    const-string v0, "cryptoBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoBoxInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramApi"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletCreateManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    .line 36
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 37
    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 38
    iput-object p5, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 39
    iput-object p6, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 40
    iput-object p7, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 41
    iput-object p8, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    .line 44
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 46
    sget-object p2, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Loading;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Loading;

    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->currentButtonType:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;

    .line 47
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->sourceChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$setParticipationStatus$p(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationStatus;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->participationStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationStatus;

    return-void
.end method

.method public static final synthetic access$setSourceChat$p(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->sourceChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method public static final synthetic access$updateActionButtonType(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->updateActionButtonType()V

    return-void
.end method

.method private final getCryptoBoxChatId()Ljava/lang/Long;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-100"

    .line 244
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private final isSourceChatCryptoBox()Z
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->sourceChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/telegram/ChatExtKt;->getBotApiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final loadParticipationData()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 176
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->getParticipationData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$loadParticipationData$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$loadParticipationData$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$loadParticipationData$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$loadParticipationData$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 189
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final participate()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 194
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->participate(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$participate$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$participate$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$participate$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$participate$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 203
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final subscribeToRequiredChat()V
    .locals 4

    .line 207
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->getCryptoBoxChatId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/iMe/manager/TelegramApi;->getChatInfoById(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)V

    .line 218
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 217
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$3;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)V

    .line 224
    new-instance v3, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 217
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "private fun subscribeToR\u2026     .autoDispose()\n    }"

    .line 224
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToRequiredChat$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final subscribeToRequiredChat$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeToRequiredChat$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final updateActionButtonType()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->participationStatus:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationStatus;

    .line 124
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->sourceChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_0

    .line 125
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Ok;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Ok;

    goto/16 :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->FINISHED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    if-ne v1, v2, :cond_1

    .line 129
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Finished;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Finished;

    goto/16 :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->STOPPED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    if-ne v1, v2, :cond_2

    .line 133
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Stopped;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Stopped;

    goto/16 :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->isSourceChatCryptoBox()Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->sourceChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    new-instance v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;

    .line 142
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getName()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->getCryptoBoxChatId()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Long;)J

    move-result-wide v2

    .line 141
    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    .line 147
    :cond_4
    invoke-static {}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isAuthorized()Z

    move-result v1

    if-nez v1, :cond_5

    .line 148
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;

    goto :goto_0

    .line 151
    :cond_5
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 152
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    .line 156
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->loadParticipationData()V

    .line 157
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Loading;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Loading;

    goto :goto_0

    .line 161
    :cond_7
    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 168
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Taken;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Taken;

    goto :goto_0

    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 166
    :cond_9
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$InProgress;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$InProgress;

    goto :goto_0

    .line 163
    :cond_a
    sget-object v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Get;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Get;

    .line 171
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    invoke-interface {v1, v0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;->renderButton(Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;)V

    .line 123
    iput-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->currentButtonType:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;

    return-void
.end method


# virtual methods
.method public final onActionClick()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->currentButtonType:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;

    .line 51
    instance-of v1, v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Ok;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Forwarded;

    :goto_0
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    invoke-interface {v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_1

    .line 56
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;

    if-eqz v1, :cond_2

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->subscribeToRequiredChat()V

    goto :goto_1

    .line 60
    :cond_2
    instance-of v1, v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$ActivateWallet;

    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;->startActivationFlow()V

    goto :goto_1

    .line 64
    :cond_3
    instance-of v1, v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$CreateWallet;

    if-eqz v1, :cond_4

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    goto :goto_1

    .line 68
    :cond_4
    instance-of v1, v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Taken;

    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_taken_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_5
    instance-of v0, v0, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Get;

    if-eqz v0, :cond_6

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->participate()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final onAuthSuccess()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->updateActionButtonType()V

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->loadParticipationData()V

    return-void
.end method

.method public final onCopyNameClick()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    .line 86
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;->copyNameToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->onDetachViewState()V

    .line 115
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 12

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    invoke-virtual {v0, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V

    .line 97
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    .line 98
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    .line 99
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getRewardToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getFullName()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 103
    sget-object v1, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getRewardValue()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getRewardToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getMembersText()Ljava/lang/String;

    move-result-object v8

    .line 105
    new-instance v9, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$onFirstViewAttach$1$1;

    invoke-direct {v9, v1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$onFirstViewAttach$1$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getBalanceText(Lkotlin/jvm/functions/Function2;)Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    sget-object v10, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v1, v10}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v10

    .line 107
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v11

    .line 98
    invoke-interface/range {v2 .. v11}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;->renderScreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->updateActionButtonType()V

    return-void
.end method

.method public final onViewOnScanClick()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getContractUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;->openAddressScan(Ljava/lang/String;)V

    return-void
.end method

.method public startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string/jumbo v0, "walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method
