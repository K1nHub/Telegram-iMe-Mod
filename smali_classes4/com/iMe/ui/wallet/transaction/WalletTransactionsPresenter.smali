.class public final Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletTransactionsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTransactionsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTransactionsPresenter.kt\ncom/iMe/ui/wallet/transaction/WalletTransactionsPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 7 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,392:1\n1#2:393\n63#3,12:394\n63#3,12:409\n16#4,3:406\n766#5:421\n857#5,2:422\n1477#5:424\n1502#5,3:425\n1505#5,3:435\n1855#5,2:439\n1477#5:442\n1502#5,3:443\n1505#5,3:453\n1855#5,2:457\n1477#5:460\n1502#5,3:461\n1505#5,3:471\n1855#5,2:475\n361#6,7:428\n361#6,7:446\n361#6,7:464\n215#7:438\n216#7:441\n215#7:456\n216#7:459\n215#7:474\n216#7:477\n*S KotlinDebug\n*F\n+ 1 WalletTransactionsPresenter.kt\ncom/iMe/ui/wallet/transaction/WalletTransactionsPresenter\n*L\n284#1:394,12\n317#1:409,12\n316#1:406,3\n337#1:421\n337#1:422,2\n348#1:424\n348#1:425,3\n348#1:435,3\n351#1:439,2\n366#1:442\n366#1:443,3\n366#1:453,3\n369#1:457,2\n383#1:460\n383#1:461,3\n383#1:471,3\n386#1:475,2\n348#1:428,7\n366#1:446,7\n383#1:464,7\n349#1:438\n349#1:441\n367#1:456\n367#1:459\n384#1:474\n384#1:477\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoBoxActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

.field private selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

.field private final stakingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private stakingOperationsCursor:Ljava/lang/String;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/Token;

.field private final transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$u59ehphfLoqrVvOVb0IdBPlyefk(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadInternal$lambda$2(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/Token;Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string/jumbo v0, "screenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoBoxInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hintsPreferenceHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stakingInteractor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 45
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    .line 46
    iput-object p3, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 47
    iput-object p4, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 48
    iput-object p5, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    .line 49
    iput-object p6, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 50
    iput-object p7, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 51
    iput-object p8, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 52
    iput-object p9, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 53
    iput-object p10, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->transactions:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoBoxActions:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperations:Ljava/util/List;

    .line 60
    sget-object p1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getLoggedInNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->availableNetworks:Ljava/util/List;

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->getInitialSelectedNetwork()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    return-void
.end method

.method public static final synthetic access$filterTransactionsByTypeIfNeeded(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->filterTransactionsByTypeIfNeeded(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$mapCryptoBoxActionsToGroups(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->mapCryptoBoxActionsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$mapStakingOperationsToGroups(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->mapStakingOperationsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$mapTransactionsToGroups(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->mapTransactionsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onError(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/iMe/storage/data/network/model/error/ErrorModel;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->onError(Lcom/iMe/storage/data/network/model/error/ErrorModel;Z)V

    return-void
.end method

.method public static final synthetic access$onLoading(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->onLoading(Z)V

    return-void
.end method

.method public static final synthetic access$renderGlobalState(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/iMe/model/state/GlobalState;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setSelectedNetworkItem$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    return-void
.end method

.method public static final synthetic access$setStakingOperationsCursor$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    return-void
.end method

.method private final filterTransactionsByTypeIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;

    if-eqz v0, :cond_2

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 337
    iget-object v3, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    check-cast v3, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;

    invoke-virtual {v3}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->getTransactionsGroup()Lcom/iMe/model/wallet/details/TransactionsGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iMe/model/wallet/details/TransactionsGroup;->checkTransaction(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method private final getInitialSelectedNetwork()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    .line 145
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto/16 :goto_0

    .line 149
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 150
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getLoggedInNetworks()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    :cond_2
    check-cast v2, Lcom/iMe/storage/domain/model/crypto/Network;

    if-nez v2, :cond_3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 155
    :cond_4
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    if-eqz v1, :cond_5

    .line 156
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_5
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingOperationsTab;

    if-eqz v1, :cond_7

    .line 160
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->isEVM()Z

    move-result v0

    if-nez v0, :cond_6

    .line 161
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEVMNetworks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    goto :goto_0

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_7
    instance-of v0, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;

    if-eqz v0, :cond_9

    .line 168
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/Token;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/Token;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-static {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    .line 170
    :goto_0
    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    return-object v0

    .line 168
    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final listenEvents()V
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

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

    const-string/jumbo v1, "publisher\n            .o\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 332
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 74
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load(ZZLjava/lang/String;)V

    return-void
.end method

.method private final loadCryptoBoxActions(Z)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    check-cast v2, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->getCryptoBoxActions(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 210
    new-instance v2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Z)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadInternal(ZZLio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final loadInternal(ZZLio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "TT;>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 281
    invoke-virtual {p3}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p3

    .line 282
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 283
    new-instance v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p3

    const-string/jumbo v0, "observable\n            .\u2026e.showRefreshing(false) }"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p4, p2, p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance p4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p4, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p3, p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 292
    invoke-static {p0, p1, p2, p3, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadInternal$lambda$2(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method private final loadStakingOperations(ZZ)V
    .locals 9

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 231
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    .line 239
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    if-eqz v1, :cond_2

    .line 240
    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 241
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 242
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->getOperationsType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v4

    const/4 v5, 0x0

    .line 243
    iget-object v6, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 240
    invoke-static/range {v2 .. v8}, Lcom/iMe/i_staking/StakingInteractor;->getStakingOperations$default(Lcom/iMe/i_staking/StakingInteractor;Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_1

    .line 246
    :cond_2
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingOperationsTab;

    if-eqz v1, :cond_3

    .line 247
    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    const/4 v3, 0x0

    .line 248
    check-cast v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingOperationsTab;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingOperationsTab;->getOperationsType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v4

    .line 249
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    .line 250
    iget-object v6, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 247
    invoke-static/range {v2 .. v8}, Lcom/iMe/i_staking/StakingInteractor;->getStakingOperations$default(Lcom/iMe/i_staking/StakingInteractor;Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 235
    :goto_1
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZ)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadInternal(ZZLio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)V

    :cond_3
    return-void
.end method

.method private final loadTransactions(ZLjava/lang/String;)V
    .locals 9

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 180
    iget-object v4, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/Token;

    const/4 v5, 0x0

    .line 181
    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    move v2, p1

    move-object v3, p2

    .line 177
    invoke-static/range {v1 .. v8}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletTransactions$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    .line 174
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZ)V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadInternal(ZZLio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final mapCryptoBoxActionsToGroups(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoBoxActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoBoxActions:Ljava/util/List;

    .line 382
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1477
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1502
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1503
    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;

    .line 383
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getIssuedAt()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate$default(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1504
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 1505
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 385
    new-instance v3, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-direct {v3, v2}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;

    .line 386
    invoke-static {v2}, Lcom/iMe/mapper/cryptobox/CryptoBoxActionUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;)Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private final mapStakingOperationsToGroups(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingOperationsTab;

    .line 364
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperations:Ljava/util/List;

    .line 365
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 1477
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1502
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1503
    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/staking/StakingOperation;

    .line 366
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getCreatedAt()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate$default(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1504
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 1505
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 367
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 368
    new-instance v4, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-direct {v4, v3}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/staking/StakingOperation;

    .line 370
    invoke-static {v3, v0}, Lcom/iMe/mapper/staking/StackingOperationUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/staking/StakingOperation;Z)Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private final mapTransactionsToGroups(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->transactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->transactions:Ljava/util/List;

    .line 347
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1477
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1502
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1503
    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 348
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate$default(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1504
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 1505
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 349
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 350
    new-instance v3, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-direct {v3, v2}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 352
    invoke-static {v2}, Lcom/iMe/mapper/transaction/TransactionUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private final onError(Lcom/iMe/storage/data/network/model/error/ErrorModel;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 302
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {p2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_1

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object p2

    .line 306
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    goto :goto_0

    .line 307
    :cond_1
    sget-object p2, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    .line 304
    :goto_0
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    .line 311
    :goto_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private final onLoading(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_0

    .line 297
    :cond_0
    sget-object p1, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    :goto_0
    return-void
.end method

.method private final renderGlobalState(Lcom/iMe/model/state/GlobalState;)V
    .locals 3

    .line 202
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->renderItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final load(ZZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoBoxActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    .line 83
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 84
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;

    :goto_0
    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 85
    :cond_3
    :goto_1
    invoke-direct {p0, v2, p3}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadTransactions(ZLjava/lang/String;)V

    goto :goto_3

    .line 88
    :cond_4
    instance-of p3, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    if-eqz p3, :cond_5

    goto :goto_2

    .line 89
    :cond_5
    instance-of v2, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingOperationsTab;

    :goto_2
    if-eqz v2, :cond_6

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadStakingOperations(ZZ)V

    goto :goto_3

    .line 93
    :cond_6
    instance-of p2, v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;

    if-eqz p2, :cond_7

    .line 94
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadCryptoBoxActions(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final onCryptoBoxActionClick(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;)V
    .locals 3

    const-string/jumbo v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    .line 127
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    .line 128
    instance-of v2, v1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;

    if-eqz v2, :cond_0

    .line 129
    check-cast v1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getRewardToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    .line 126
    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->openCryptoBoxActionDetails(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)V

    :cond_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 8

    .line 138
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v2, p0

    .line 139
    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    .line 140
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->listenEvents()V

    return-void
.end method

.method public final onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 70
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    .line 71
    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onStakingOperationClick(Lcom/iMe/model/wallet/transaction/StakingOperationItem;)V
    .locals 3

    const-string/jumbo v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    .line 111
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    .line 112
    instance-of v2, v1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    if-eqz v2, :cond_0

    .line 113
    check-cast v1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    goto :goto_0

    .line 116
    :cond_0
    instance-of v1, v1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingOperationsTab;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    .line 110
    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->openStakingOperationDetails(Lcom/iMe/model/wallet/transaction/StakingOperationItem;Lcom/iMe/storage/domain/model/crypto/Network;)V

    :cond_1
    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    sget-object v1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;->INSTANCE:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/iMe/storage/domain/model/wallet/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->showChangeNetworkHint()V

    .line 105
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/iMe/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 3

    .line 65
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->availableNetworks:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-void
.end method
