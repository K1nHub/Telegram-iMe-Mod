.class public final Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletDonationsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/donations/WalletDonationsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletDonationsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletDonationsPresenter.kt\ncom/iMe/ui/wallet/donations/WalletDonationsPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,298:1\n39#2,8:299\n39#2,8:307\n39#2,8:315\n39#2,8:323\n39#2,8:331\n39#2,8:339\n39#2,8:347\n*S KotlinDebug\n*F\n+ 1 WalletDonationsPresenter.kt\ncom/iMe/ui/wallet/donations/WalletDonationsPresenter\n*L\n97#1:299,8\n137#1:307,8\n158#1:315,8\n185#1:323,8\n208#1:331,8\n236#1:339,8\n260#1:347,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private addressInfoResultState:Lcom/iMe/storage/domain/model/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private apiChatId:J

.field private balanceResultState:Lcom/iMe/storage/domain/model/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;"
        }
    .end annotation
.end field

.field private final chatId:J

.field private connectionState:I

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private currentDonationsAddress:Ljava/lang/String;

.field private final donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:I

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/transaction/TransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private transactionsResultState:Lcom/iMe/storage/domain/model/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;"
        }
    .end annotation
.end field

.field private walletBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;


# direct methods
.method public static synthetic $r8$lambda$ZniJbISTfhxNylGgwicIuHBf_Es(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->unlinkWalletAddress$lambda$0(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qEmbYcOWpMeMhGKnbNL1BrvPXxg(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->linkCryptoWalletAddress$lambda$1(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JILcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V
    .locals 1

    const-string v0, "donationsInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->chatId:J

    .line 34
    iput p3, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->screenType:I

    .line 35
    iput-object p4, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 36
    iput-object p5, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 37
    iput-object p6, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 38
    iput-object p7, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 39
    iput-object p8, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 40
    iput-object p9, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    const-string p1, ""

    .line 44
    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->currentDonationsAddress:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->transactions:Ljava/util/List;

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->connectionState:I

    const-wide/16 p1, -0x1

    .line 51
    iput-wide p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->apiChatId:J

    return-void
.end method

.method public static final synthetic access$getCurrentDonationsAddress$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->currentDonationsAddress:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLinkAddressDialogModel(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;Z)Lcom/iMe/model/dialog/DialogModel;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getLinkAddressDialogModel(Ljava/lang/String;Z)Lcom/iMe/model/dialog/DialogModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTransactions$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->transactions:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$loadDonationAddress(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->loadDonationAddress()V

    return-void
.end method

.method public static final synthetic access$loadWalletInformation(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->loadWalletInformation()V

    return-void
.end method

.method public static final synthetic access$saveDonationAddress(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->saveDonationAddress(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setAddressInfoResultState$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->addressInfoResultState:Lcom/iMe/storage/domain/model/Result;

    return-void
.end method

.method public static final synthetic access$setBalanceResultState$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->balanceResultState:Lcom/iMe/storage/domain/model/Result;

    return-void
.end method

.method public static final synthetic access$setCurrentDonationsAddress$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->currentDonationsAddress:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setTransactions$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/util/List;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->transactions:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTransactionsResultState$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->transactionsResultState:Lcom/iMe/storage/domain/model/Result;

    return-void
.end method

.method public static final synthetic access$setWalletBalance$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->walletBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$updateChatDonateAvailable(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->updateChatDonateAvailable()V

    return-void
.end method

.method private final disableDonation()V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 205
    iget-wide v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->apiChatId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->disableDonation(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$disableDonation$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$disableDonation$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$disableDonation$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$disableDonation$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 222
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final extractAddressForLink(Ljava/lang/String;)V
    .locals 3

    .line 133
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 134
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 131
    invoke-static {p1, v0, v1}, Lcom/iMe/utils/helper/wallet/CryptoHelper;->extractAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "extractAddress(\n        \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$extractAddressForLink$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$extractAddressForLink$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$extractAddressForLink$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$extractAddressForLink$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final getLinkAddressDialogModel(Ljava/lang/String;Z)Lcom/iMe/model/dialog/DialogModel;
    .locals 5

    if-eqz p2, :cond_0

    .line 285
    sget p2, Lorg/telegram/messenger/R$string;->channel_donations_link_non_castodial_wallet_address_dialog_title:I

    goto :goto_0

    .line 286
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->channel_donations_link_address_dialog_title:I

    .line 288
    :goto_0
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 289
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v1, p2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 290
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->channel_donations_link_address_dialog_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 291
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->channel_donations_link_address_dialog_positive_button:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-direct {v0, p2, p1, v1, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getUnlinkWalletAddressDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 276
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 277
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->channel_donations_unlink_address_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->channel_donations_unlink_address_dialog_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 279
    iget-object v2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    iget-object v3, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->channel_donations_unlink_address_dialog_positive_button:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final isDonationEnabled()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->currentDonationsAddress:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final linkCryptoWalletAddress$lambda$1(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->saveDonationAddress(Ljava/lang/String;)V

    return-void
.end method

.method private final loadDonationAddress()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 156
    iget-wide v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->apiChatId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->getDonationAddress(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 178
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadDonationTransactions()V
    .locals 8

    .line 182
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 183
    iget-wide v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->apiChatId:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->getDonationTransactionHistory$default(Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;JLjava/lang/String;ILcom/iMe/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 200
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadDonationWalletBalance()V
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 258
    iget-wide v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->apiChatId:J

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->getDonationWalletBalance$default(Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;JLcom/iMe/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationWalletBalance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationWalletBalance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationWalletBalance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationWalletBalance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 269
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadWalletInformation()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->isDonationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->loadDonationTransactions()V

    .line 150
    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->loadDonationWalletBalance()V

    :cond_0
    return-void
.end method

.method private final saveDonationAddress(Ljava/lang/String;)V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 228
    iget-object v2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 230
    iget-wide v3, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->apiChatId:J

    .line 229
    invoke-virtual {v2, v3, v4, p1, v0}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->enableDonationFor(JLjava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 234
    iget-object v2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v2, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    const-string v3, "viewState"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 253
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final unlinkWalletAddress$lambda$0(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->disableDonation()V

    return-void
.end method

.method private final updateChatDonateAvailable()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    new-instance v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;

    iget-wide v2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->chatId:J

    invoke-direct {v1, v2, v3}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method


# virtual methods
.method public final checkLoadedDataOnConnectionChanged(I)V
    .locals 1

    .line 56
    iget v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->connectionState:I

    if-eq v0, p1, :cond_2

    .line 57
    iput p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->connectionState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 60
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->addressInfoResultState:Lcom/iMe/storage/domain/model/Result;

    instance-of p1, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->loadDonationAddress()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->balanceResultState:Lcom/iMe/storage/domain/model/Result;

    instance-of p1, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->transactionsResultState:Lcom/iMe/storage/domain/model/Result;

    instance-of p1, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->loadWalletInformation()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getCurrentDonationsAddress()Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->addressInfoResultState:Lcom/iMe/storage/domain/model/Result;

    instance-of v1, v0, Lcom/iMe/storage/domain/model/Result$Loading;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->currentDonationsAddress:Ljava/lang/String;

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final getDonationBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->walletBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public final isCryptoAddressCreated()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    return v0
.end method

.method public final isLoadingDonationInformation()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->transactionsResultState:Lcom/iMe/storage/domain/model/Result;

    instance-of v0, v0, Lcom/iMe/storage/domain/model/Result$Loading;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->balanceResultState:Lcom/iMe/storage/domain/model/Result;

    instance-of v0, v0, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final linkAddress(Ljava/lang/String;)V
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->currentDonationsAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->channel_donations_the_same_address_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-static {p1}, Lcom/iMe/utils/helper/wallet/CryptoHelper;->isWithEthereumPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->extractAddressForLink(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 95
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0, p1, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final linkCryptoWalletAddress()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 85
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getLinkAddressDialogModel(Ljava/lang/String;Z)Lcom/iMe/model/dialog/DialogModel;

    move-result-object v2

    new-instance v3, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/iMe/ui/wallet/donations/WalletDonationsView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 120
    iget v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->CHANNEL_ADMIN_DONATIONS:I

    if-ne v0, v1, :cond_0

    .line 121
    sget-object v0, Lcom/iMe/common/TelegramConstants;->INSTANCE:Lcom/iMe/common/TelegramConstants;

    iget-wide v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->chatId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->apiChatId:J

    .line 122
    invoke-direct {p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->loadDonationAddress()V

    :cond_0
    return-void
.end method

.method public final unlinkWalletAddress()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->currentDonationsAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getUnlinkWalletAddressDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method
