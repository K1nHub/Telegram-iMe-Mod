.class public final Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletTransactionDetailsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTransactionDetailsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTransactionDetailsPresenter.kt\ncom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,501:1\n1#2:502\n1549#3:503\n1620#3,3:504\n1549#3:507\n1620#3,3:508\n63#4,12:511\n63#4,12:523\n*S KotlinDebug\n*F\n+ 1 WalletTransactionDetailsPresenter.kt\ncom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter\n*L\n152#1:503\n152#1:504,3\n153#1:507\n153#1:508,3\n220#1:511,12\n235#1:523,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final boostInteractor:Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;

.field private final cancelInteractor:Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boostInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramGateway"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 41
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cancelInteractor:Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;

    .line 42
    iput-object p3, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->boostInteractor:Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;

    .line 43
    iput-object p4, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 44
    iput-object p5, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 45
    iput-object p6, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 46
    iput-object p7, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-void
.end method

.method public static final synthetic access$boostTransaction(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->boostTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$cancelTransaction(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cancelTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$copyAddress(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->copyAddress()V

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$startAskSupport(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startAskSupport()V

    return-void
.end method

.method public static final synthetic access$startBoostTransaction(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startBoostTransaction()V

    return-void
.end method

.method public static final synthetic access$startBrowserWithUrl(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startBrowserWithUrl()V

    return-void
.end method

.method public static final synthetic access$startCancelTransaction(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startCancelTransaction()V

    return-void
.end method

.method public static final synthetic access$startProfileScreen(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startProfileScreen()V

    return-void
.end method

.method private final boostTransaction(Ljava/lang/String;)V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->boostInteractor:Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;

    .line 232
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->boostEthTransaction(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "boostInteractor\n        \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$boostTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 242
    invoke-static {p0, p1, v4, v0, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final canAskSupport()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    .line 278
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final canCancelOrBoost()Z
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 282
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 283
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getItem()Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getStatus()Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v1

    sget-object v4, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    if-ne v1, v4, :cond_1

    .line 285
    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingOperationType;->DEPOSIT:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    move v2, v3

    goto/16 :goto_3

    .line 289
    :cond_2
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    if-eqz v1, :cond_4

    .line 290
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    move-result-object v1

    sget-object v4, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_3

    .line 294
    :cond_4
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_7

    .line 295
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v1

    sget-object v4, Lcom/iMe/storage/data/network/model/response/base/Status;->PENDING:Lcom/iMe/storage/data/network/model/response/base/Status;

    if-ne v1, v4, :cond_1

    .line 297
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;

    if-eqz v1, :cond_1

    .line 298
    move-object v1, v0

    check-cast v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network;->isEVM()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    sget-object v4, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    if-eq v1, v4, :cond_6

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->SELF:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    if-ne v0, v1, :cond_1

    :cond_6
    :goto_3
    return v2

    .line 295
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final canCopy()Z
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 310
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-nez v0, :cond_3

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getCopyValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    return v2
.end method

.method private final canOpenProfile()Z
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    .line 306
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientId(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->hasUser(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final canOpenScanSite()Z
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 315
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 316
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getItem()Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    .line 318
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    if-eqz v1, :cond_2

    .line 319
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 321
    :cond_2
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_6

    .line 322
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 324
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_3
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 326
    :cond_4
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 327
    :cond_5
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v2

    .line 322
    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final cancelTransaction(Ljava/lang/String;)V
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-nez v1, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cancelInteractor:Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;

    .line 217
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/cancel/CancelInteractor;->cancelEthTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cancelInteractor\n       \u2026(schedulersProvider.ui())"

    .line 217
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 227
    invoke-static {p0, p1, v4, v0, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final copyAddress()V
    .locals 2

    .line 396
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getCopyValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->actionCopyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method private final getConfirmBoostDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 5

    .line 495
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_boost_transaction_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_boost_transaction_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_confirm:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 498
    iget-object v3, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 494
    new-instance v4, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private final getConfirmCancelDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 5

    .line 487
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_cancel_transaction_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_cancel_transaction_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_confirm:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 490
    iget-object v3, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 486
    new-instance v4, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private final getCopyTitle()I
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 401
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 402
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    :goto_0
    if-eqz v1, :cond_1

    .line 403
    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_hash:I

    goto :goto_2

    .line 405
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_5

    .line 406
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 407
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v1, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->wallet_token_details_action_copy_order_id:I

    goto :goto_2

    .line 408
    :cond_2
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    instance-of v2, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    :goto_1
    if-eqz v2, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_hash:I

    goto :goto_2

    .line 409
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_copy_address:I

    :goto_2
    return v0

    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getCopyValue()Ljava/lang/String;
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 415
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    if-eqz v1, :cond_0

    .line 416
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getItem()Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 418
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    if-eqz v1, :cond_1

    .line 419
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 421
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_8

    .line 422
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 423
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 424
    :cond_2
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientId(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 426
    :cond_3
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 427
    :cond_4
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getTxHash()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 428
    :cond_5
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;->getTxHash()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 429
    :cond_6
    instance-of v0, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v0, ""

    :goto_1
    return-object v0

    .line 430
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getCryptoTransactionNetwork(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 385
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    goto :goto_0

    .line 386
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getFee()Ljava/lang/String;
    .locals 6

    .line 438
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 439
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 440
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getItem()Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getFee()Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 442
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->getValue()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v1

    .line 443
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    .line 444
    iget-object v4, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v4, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v4}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getItem()Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getStatus()Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v4

    sget-object v5, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_1

    .line 447
    :cond_2
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    if-eqz v1, :cond_3

    .line 448
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v1

    .line 449
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getFeeToken()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    .line 450
    iget-object v4, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v4, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v4}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    move-result-object v4

    sget-object v5, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 453
    :cond_3
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_7

    .line 454
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v1

    .line 456
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 457
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v0

    sget-object v5, Lcom/iMe/storage/data/network/model/response/base/Status;->PENDING:Lcom/iMe/storage/data/network/model/response/base/Status;

    if-ne v0, v5, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    move-object v0, v4

    .line 462
    :goto_1
    invoke-virtual {v1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v3

    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 463
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->fee_nothing:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 465
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_6

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_2
    return-object v0

    .line 454
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getOperationNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 247
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    if-eqz v1, :cond_1

    .line 252
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_2

    .line 256
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getCryptoTransactionNetwork(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getRecipientId(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;
    .locals 1

    .line 475
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;->getRecipientUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 476
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;->getInvitedUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private final getRecipientOrSenderOrElseTitle(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;
    .locals 2

    .line 117
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_simplex_order_id_title:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_transaction_hash_title:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object p1

    sget-object v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 122
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 123
    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_recipient_title:I

    .line 122
    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 121
    :cond_5
    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_sender_title:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private final getRecipientOrSenderOrElseValue(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;
    .locals 4

    .line 131
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 132
    sget v2, Lorg/telegram/messenger/R$string;->wallet_transaction_details_sender_referral:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 133
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;->getInvitedUserId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 131
    invoke-interface {v0, v2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 136
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_sender_bonus:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 137
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;->getRecipientUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 138
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getTxHash()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 139
    :cond_4
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;->getTxHash()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 140
    :cond_5
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 141
    :cond_6
    instance-of v0, p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v0, :cond_a

    .line 142
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sget-object v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    goto :goto_1

    .line 144
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_8
    :goto_1
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getRecipientAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 143
    :cond_9
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getSenderAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 148
    :cond_a
    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_transaction_details_sender:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private final getScanUrl()Ljava/lang/String;
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 358
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 359
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getItem()Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_5

    .line 360
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getItem()Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getTxUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 365
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    if-eqz v1, :cond_3

    .line 366
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_5

    .line 367
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getTxUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 372
    :cond_3
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_6

    .line 373
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 374
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    if-eqz v3, :cond_5

    .line 375
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->getTxHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getTxUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_3
    return-object v2

    .line 373
    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final hasUser(Ljava/lang/Long;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->hasUser(J)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private final isFeeEnabled()Z
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 262
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getItem()Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getFee()Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 265
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    move v2, v3

    goto :goto_1

    .line 268
    :cond_2
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_4

    .line 269
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    sget-object v4, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    if-eq v1, v4, :cond_1

    .line 271
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    sget-object v4, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->SELF:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    if-eq v1, v4, :cond_1

    .line 272
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;->SWAP_CRYPTO:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    .line 269
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final resolveTransactionAction()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/iMe/model/wallet/transaction/TransactionActionItem;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;>;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canAskSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    sget-object v1, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Support;->INSTANCE:Lcom/iMe/model/wallet/transaction/TransactionActionItem$Support;

    new-instance v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$1;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canOpenProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    sget-object v1, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Profile;->INSTANCE:Lcom/iMe/model/wallet/transaction/TransactionActionItem$Profile;

    new-instance v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$2;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$2;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canOpenScanSite()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getOperationNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v1

    .line 168
    new-instance v2, Lcom/iMe/model/wallet/transaction/TransactionActionItem$OpenScan;

    .line 169
    iget-object v3, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 170
    sget v4, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_open_etherscan:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 171
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 169
    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-direct {v2, v3, v1}, Lcom/iMe/model/wallet/transaction/TransactionActionItem$OpenScan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$3$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$3$1;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    new-instance v1, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Copy;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getCopyTitle()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Copy;-><init>(I)V

    new-instance v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$4;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$4;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canCancelOrBoost()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    sget-object v1, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Cancel;->INSTANCE:Lcom/iMe/model/wallet/transaction/TransactionActionItem$Cancel;

    new-instance v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$5;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$5;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_4
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->canCancelOrBoost()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    sget-object v1, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Boost;->INSTANCE:Lcom/iMe/model/wallet/transaction/TransactionActionItem$Boost;

    new-instance v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$6;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$resolveTransactionAction$1$6;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private final setupTransactionActions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/iMe/model/wallet/transaction/TransactionActionItem;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lkotlin/Pair;

    .line 152
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/model/wallet/transaction/TransactionActionItem;

    .line 1621
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lkotlin/Pair;

    .line 153
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 1621
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupTransactionActions(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final startAskSupport()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    .line 346
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    const-string v1, "https://support.simplex.com/hc/en-gb/categories/360002483279-I-am-buying-with-a-credit-debit-card"

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final startBoostTransaction()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/data/network/model/response/base/Status;->PENDING:Lcom/iMe/storage/data/network/model/response/base/Status;

    if-ne v1, v2, :cond_2

    .line 207
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getConfirmBoostDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v2

    new-instance v3, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startBoostTransaction$1$1;

    invoke-direct {v3, p0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startBoostTransaction$1$1;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)V

    invoke-interface {v1, v2, v3}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->showConfirmBoostDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final startBrowserWithUrl()V
    .locals 2

    .line 353
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method private final startCancelTransaction()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/data/network/model/response/base/Status;->PENDING:Lcom/iMe/storage/data/network/model/response/base/Status;

    if-ne v1, v2, :cond_2

    .line 194
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getConfirmCancelDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v2

    new-instance v3, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;

    invoke-direct {v3, p0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)V

    invoke-interface {v1, v2, v3}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->showConfirmCancelDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final startProfileScreen()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-nez v1, :cond_0

    return-void

    .line 391
    :cond_0
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientId(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-interface {v2, v0, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->openProfileScreen(J)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 20

    move-object/from16 v0, p0

    .line 54
    iget-object v1, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    .line 55
    instance-of v2, v1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    const-string v3, "-"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 56
    check-cast v1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getItem()Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v1

    .line 57
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 58
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getIcon()I

    move-result v7

    .line 59
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v2, v8}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v14

    .line 60
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTransactionTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v8

    .line 61
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getAmount(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v9

    .line 62
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v10, Lorg/telegram/messenger/R$string;->wallet_transaction_details_transaction_hash_title:I

    invoke-interface {v2, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 63
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTxHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_0

    move v11, v4

    goto :goto_0

    :cond_0
    move v11, v5

    :goto_0
    if-eqz v11, :cond_1

    move-object v11, v3

    goto :goto_1

    :cond_1
    move-object v11, v2

    .line 65
    :goto_1
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v2, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getFullName()Ljava/lang/String;

    move-result-object v15

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->isFeeEnabled()Z

    move-result v17

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getFee()Ljava/lang/String;

    move-result-object v16

    .line 68
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getStatusText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v13

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    move/from16 v18, v4

    goto :goto_2

    :cond_2
    move/from16 v18, v5

    .line 70
    :goto_2
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getToken()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v19

    const/4 v12, 0x0

    .line 57
    invoke-interface/range {v6 .. v19}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    goto/16 :goto_8

    .line 74
    :cond_3
    instance-of v2, v1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    if-eqz v2, :cond_7

    .line 75
    check-cast v1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v1

    .line 76
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 77
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getIcon()I

    move-result v7

    .line 78
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v2, v8}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v14

    .line 79
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getTransactionTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getAmount()Ljava/lang/String;

    move-result-object v9

    .line 81
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v10, Lorg/telegram/messenger/R$string;->wallet_transaction_details_transaction_hash_title:I

    invoke-interface {v2, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 82
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getTxHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_4

    move v11, v4

    goto :goto_3

    :cond_4
    move v11, v5

    :goto_3
    if-eqz v11, :cond_5

    move-object v11, v3

    goto :goto_4

    :cond_5
    move-object v11, v2

    .line 84
    :goto_4
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v2, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getFullName()Ljava/lang/String;

    move-result-object v15

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->isFeeEnabled()Z

    move-result v17

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getFee()Ljava/lang/String;

    move-result-object v16

    .line 87
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getStatusText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v13

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_6

    move/from16 v18, v4

    goto :goto_5

    :cond_6
    move/from16 v18, v5

    .line 89
    :goto_5
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getToken()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v19

    const/4 v12, 0x0

    .line 76
    invoke-interface/range {v6 .. v19}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    goto/16 :goto_8

    .line 93
    :cond_7
    instance-of v2, v1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    if-eqz v2, :cond_b

    check-cast v1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v1

    .line 94
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 95
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransactionIcon()I

    move-result v7

    .line 96
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v14

    .line 97
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransactionTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v8

    .line 98
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1, v2}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getAmount(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v9

    .line 99
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientOrSenderOrElseTitle(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getRecipientOrSenderOrElseValue(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v11

    .line 101
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;

    check-cast v2, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;->getItem()Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    instance-of v3, v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    const/4 v12, 0x0

    if-eqz v3, :cond_8

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    goto :goto_6

    :cond_8
    move-object v2, v12

    :goto_6
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getPayloadMessage()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .line 102
    :cond_9
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getProcessingType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->getTitle()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->isFeeEnabled()Z

    move-result v17

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getFee()Ljava/lang/String;

    move-result-object v16

    .line 105
    iget-object v2, v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/base/Status;->getTitle()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_a

    move/from16 v18, v4

    goto :goto_7

    :cond_a
    move/from16 v18, v5

    :goto_7
    const/16 v19, 0x0

    .line 94
    invoke-interface/range {v6 .. v19}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 112
    :cond_b
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->resolveTransactionAction()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->setupTransactionActions(Ljava/util/List;)V

    return-void
.end method

.method public final shareTransaction()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->getScanUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->shareTransactionInfo(Ljava/lang/String;)V

    return-void
.end method
