.class public final Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletAttachAlertPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAttachAlertPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAttachAlertPresenter.kt\ncom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,195:1\n766#2:196\n857#2,2:197\n1194#2,2:199\n1222#2,4:201\n766#2:205\n857#2,2:206\n1603#2,9:208\n1855#2:217\n1856#2:219\n1612#2:220\n766#2:222\n857#2,2:223\n1477#2:225\n1502#2,3:226\n1505#2,3:236\n1855#2,2:240\n1#3:218\n1#3:221\n361#4,7:229\n215#5:239\n216#5:242\n*S KotlinDebug\n*F\n+ 1 WalletAttachAlertPresenter.kt\ncom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter\n*L\n125#1:196\n125#1:197,2\n126#1:199,2\n126#1:201,4\n128#1:205\n128#1:206,2\n129#1:208,9\n129#1:217\n129#1:219\n129#1:220\n180#1:222\n180#1:223,2\n181#1:225\n181#1:226,3\n181#1:236,3\n187#1:240,2\n129#1:218\n181#1:229,7\n185#1:239\n185#1:242\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cachedTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$4f5v6isElJO9HteJ6XmU7n84WTA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletBalance$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6MTw81yBAIOtkYW0xjPYfwoAlr0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletBalance$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RwZrdDrS5_Qq0lQmCM9kSsWCLkg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletTransactions$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VfpCsOhwZasIUUHqvQSNva82TEE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletTransactions$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aghDWoR1DUqI2NjHgKQBvYPWJM4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletTransactions$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)V
    .locals 1

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoRecipientManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 34
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 35
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 36
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 37
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 38
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cachedTransactions:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$configureTokens(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->configureTokens(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCachedTransactions$p(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cachedTransactions:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getWalletInteractor$p(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    return-object p0
.end method

.method public static final synthetic access$mapTransactionsToGroups(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->mapTransactionsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final configureTokens(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 125
    iget-object v5, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getOnlyPositiveTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/16 v2, 0xa

    .line 1194
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1195
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1223
    move-object v4, v2

    check-cast v4, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 126
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1223
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 766
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    .line 128
    invoke-virtual {v4}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1603
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1611
    check-cast v2, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    .line 129
    invoke-virtual {v2}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getTokenAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v2, :cond_7

    .line 1611
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 130
    :cond_8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    move-object p1, v0

    :goto_6
    return-object p1
.end method

.method private final getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    return-object v0
.end method

.method private final getWalletBalance(Z)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 100
    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletBalance$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletBalance$1;-><init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletBalance$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletBalance$2;-><init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)V

    .line 116
    new-instance v3, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 103
    invoke-virtual {p1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "private fun getWalletBal\u2026     .autoDispose()\n    }"

    .line 116
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 119
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getWalletBalance$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getWalletBalance$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic getWalletData$default(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletData(Z)V

    return-void
.end method

.method private final getWalletTransactions(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 3

    .line 134
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;-><init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$2;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$2;-><init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    new-instance p1, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$3;-><init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)V

    .line 170
    new-instance v2, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 146
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "private fun getWalletTra\u2026     .autoDispose()\n    }"

    .line 170
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 174
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getWalletTransactions$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getWalletTransactions$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final getWalletTransactions$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final mapTransactionsToGroups(Ljava/util/List;)Ljava/util/List;
    .locals 5
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

    .line 179
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

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

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 180
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1477
    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1502
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1503
    move-object v3, v1

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 181
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4, v2}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate$default(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1504
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 1505
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 186
    new-instance v3, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-direct {v3, v2}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 188
    invoke-static {v2}, Lcom/iMe/mapper/transaction/TransactionUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private final resetCache()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cachedTransactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public final getCurrentNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    return-object v0
.end method

.method public final getWalletData(Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletBalance(Z)V

    return-void
.end method

.method public final loadAddressInfoById(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string/jumbo v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->onDetachViewState()V

    .line 91
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 84
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 85
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    invoke-virtual {v0, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->attachViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-static {p0, v0, v1, v2}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletData$default(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->resetCache()V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletData(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final selectBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletTransactions(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getCreatedWalletsBlockchains()Ljava/util/List;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    sget-object v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    .line 52
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 53
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 51
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;

    .line 56
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    .line 57
    sget-object v3, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v3, v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v1, v2, v0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-void
.end method
