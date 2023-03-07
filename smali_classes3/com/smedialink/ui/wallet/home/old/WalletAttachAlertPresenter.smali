.class public final Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletAttachAlertPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAttachAlertPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAttachAlertPresenter.kt\ncom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 7 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,186:1\n764#2:187\n855#2,2:188\n1192#2,2:190\n1220#2,4:192\n764#2:196\n855#2,2:197\n1601#2,9:199\n1849#2:208\n1850#2:210\n1610#2:211\n764#2:212\n855#2,2:213\n1475#2:215\n1500#2,3:216\n1503#2,3:226\n1849#2,2:230\n1#3:209\n357#4,7:219\n211#5:229\n212#5:232\n8#6:233\n18#7:234\n*S KotlinDebug\n*F\n+ 1 WalletAttachAlertPresenter.kt\ncom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter\n*L\n123#1:187\n123#1:188,2\n124#1:190,2\n124#1:192,4\n126#1:196\n126#1:197,2\n127#1:199,9\n127#1:208\n127#1:210\n127#1:211\n169#1:212\n169#1:213,2\n170#1:215\n170#1:216,3\n170#1:226,3\n176#1:230,2\n127#1:209\n170#1:219,7\n174#1:229\n174#1:232\n134#1:233\n134#1:234\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cachedTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoRecipientManager:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private selectedTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$1dJ7cIuGkXcA2dTX2M9DgwZTp94(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletTransactions$lambda-8(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6dZMUpXcxo-IvuVZ4OPOfcKFLgY(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletTransactions$lambda-6(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M-okIBkC3KNX3_AzVLVUuaxrDKc(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletBalance$lambda-1(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QLviS3BqJvVycCPHfgOLVnarkTo(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletTransactions$lambda-7(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZP4ay87O_kNue6Bg8vC8-1HzJI(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/Result;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletBalance$lambda-0(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)V
    .locals 1

    const-string v0, "walletInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoRecipientManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 29
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 30
    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 31
    iput-object p4, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 32
    iput-object p5, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 33
    iput-object p6, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoRecipientManager:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cachedTransactions:Ljava/util/HashMap;

    .line 38
    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->selectedTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$resetCache(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->resetCache()V

    return-void
.end method

.method private final configureTokens(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 123
    iget-object v4, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getOnlyPositiveTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/16 p1, 0xa

    .line 1192
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 1193
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1220
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1221
    move-object v3, v1

    check-cast v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 124
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 125
    :cond_4
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object p1

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 126
    invoke-virtual {v3}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1601
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1609
    check-cast v1, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 127
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v1}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v1, :cond_7

    .line 1609
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    return-object p1
.end method

.method private final getWalletBalance(Z)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 100
    invoke-static {v0, p1, v1, v2, v1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)V

    new-instance v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)V

    invoke-virtual {p1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "walletInteractor\n       \u2026pty())\n                })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 117
    invoke-static {p0, p1, v1, v0, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getWalletBalance$lambda-0(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/Result;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->configureTokens(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;->showBalances(Ljava/util/List;)V

    .line 108
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 109
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->selectBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V

    goto :goto_0

    .line 112
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, p0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final getWalletBalance$lambda-1(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getWalletData$default(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletData(Z)V

    return-void
.end method

.method private final getWalletTransactions(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 2

    .line 132
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    new-instance p1, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "just(true)\n             \u2026pty())\n                })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 163
    invoke-static {p0, p1, v0, v1, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getWalletTransactions$lambda-6(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$selectedTokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cachedTransactions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v1, p2}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p2, "just(this)"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_2

    .line 135
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1b

    const/4 v8, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getWalletTransactions$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static final getWalletTransactions$lambda-7(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/Result;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$selectedTokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    instance-of v0, p2, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cachedTransactions:Ljava/util/HashMap;

    check-cast p2, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->mapTransactionsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 145
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {p0}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onEmptyState()V

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;->showTransactions(Ljava/util/List;)V

    goto :goto_1

    .line 148
    :cond_1
    instance-of p1, p2, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz p1, :cond_3

    .line 149
    check-cast p2, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object p1

    .line 150
    sget-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {p1}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onNoInternetErrorState()V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {p1}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    .line 153
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p2

    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2, p0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_3
    instance-of p1, p2, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz p1, :cond_4

    .line 156
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {p0}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onLoadingState()V

    :cond_4
    :goto_1
    return-void
.end method

.method private static final getWalletTransactions$lambda-8(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {v0}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    .line 161
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private final mapTransactionsToGroups(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    .line 169
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    iget-object v4, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->selectedTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1475
    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1500
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1501
    move-object v3, v1

    check-cast v3, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    .line 170
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate$default(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1502
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 1503
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 172
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
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

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 175
    new-instance v3, Lcom/smedialink/model/wallet/home/HeaderItem;

    invoke-direct {v3, v2}, Lcom/smedialink/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1849
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    .line 177
    invoke-static {v2}, Lcom/smedialink/mapper/transaction/TransactionUiMappingKt;->mapToUI(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method private final resetCache()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cachedTransactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public final getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public final getWalletData(Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletBalance(Z)V

    return-void
.end method

.method public loadAddressInfoById(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoRecipientManager:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->loadAddressInfoById(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoRecipientManager:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {v0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->onDetachViewState()V

    .line 87
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 80
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 81
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoRecipientManager:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    invoke-virtual {v0, v1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->attachViewState(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-static {p0, v0, v1, v2}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletData$default(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final resolveTokenAction(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->loadAddressInfoById(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    :cond_0
    return-void
.end method

.method public final selectBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->selectedTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 62
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletTransactions(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    .line 45
    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getCreatedWalletsBlockchains()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 44
    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 49
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getCreatedWalletsBlockchains()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 48
    new-instance v3, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$startChooseNetworkDialog$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$startChooseNetworkDialog$1;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;->showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
