.class public final Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletNetworksSettingsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletNetworksSettingsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletNetworksSettingsPresenter.kt\ncom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,120:1\n1774#2,4:121\n1549#2:125\n1620#2,3:126\n766#2:129\n857#2,2:130\n1549#2:132\n1620#2,3:133\n63#3,12:136\n*S KotlinDebug\n*F\n+ 1 WalletNetworksSettingsPresenter.kt\ncom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter\n*L\n35#1:121,4\n58#1:125\n58#1:126,3\n71#1:129\n71#1:130,2\n72#1:132\n72#1:133,3\n106#1:136,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final networksItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private final querySubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final searchResultsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KR8UHRcpUFA1S8uoieG-5x37xUY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->subscribeToQueryChanges$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q19xFZDKVTS2O8JwDDIgKEtK1Z0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->subscribeToQueryChanges$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z1doLtIZzhaQeQHd0Y5taCUGDNE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->subscribeToQueryChanges$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 22
    iput-object p2, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 23
    iput-object p3, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->networksItems:Ljava/util/List;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->searchResultsItems:Ljava/util/List;

    .line 28
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    const-string p1, ""

    .line 29
    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->query:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getNetworksItems$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->networksItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getQuery$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->query:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSearchResultsItems$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->searchResultsItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setQuery$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->query:Ljava/lang/String;

    return-void
.end method

.method private final subscribeToQueryChanges()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    .line 83
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$1;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$2;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$3;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun subscribeToQ\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)Lio/reactivex/Observable;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 117
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToQueryChanges$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeToQueryChanges$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final subscribeToQueryChanges$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 70
    iget-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->networksItems:Ljava/util/List;

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    .line 71
    invoke-virtual {v4}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    .line 72
    invoke-virtual {v3}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_2
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setEnabledNetworksIds(Ljava/util/List;)V

    .line 73
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isAllNetworksSelected()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->isNetworkEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 74
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAllNetworksSelected(Z)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworksSettingsChanged;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworksSettingsChanged;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 78
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 7

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->subscribeToQueryChanges()V

    .line 57
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->networksItems:Ljava/util/List;

    .line 58
    sget-object v1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 59
    new-instance v4, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    .line 60
    invoke-static {v3}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v5

    .line 61
    sget-object v6, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v6}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEnabledNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 59
    invoke-direct {v4, v5, v3}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;-><init>(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;Z)V

    .line 1621
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->networksItems:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method public final onItemClick(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->networksItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->networksItems:Ljava/util/List;

    .line 1774
    instance-of v3, v2, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    .line 1776
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v4

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    .line 35
    invoke-virtual {v5}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    if-gez v3, :cond_2

    .line 1776
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    if-ne v3, v2, :cond_4

    .line 35
    invoke-virtual {p1}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 36
    :cond_4
    iget-object v3, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->networksItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result v5

    xor-int/2addr v5, v2

    const/4 v6, 0x0

    invoke-static {p1, v6, v5, v2, v6}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->copy$default(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;ZILjava/lang/Object;)Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;

    .line 39
    iget-object v3, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->query:Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    move v4, v2

    :cond_5
    if-eqz v4, :cond_7

    .line 40
    iget-object v3, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->searchResultsItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v1, :cond_6

    return-void

    .line 42
    :cond_6
    iget-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->searchResultsItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-static {p1, v6, v4, v2, v6}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->copy$default(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;ZILjava/lang/Object;)Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->searchResultsItems:Ljava/util/List;

    goto :goto_2

    .line 46
    :cond_7
    iget-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->networksItems:Ljava/util/List;

    .line 47
    :goto_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 38
    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method public final onQueryUpdate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "newQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
