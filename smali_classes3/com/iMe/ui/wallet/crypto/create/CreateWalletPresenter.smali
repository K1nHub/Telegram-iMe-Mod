.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CreateWalletPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletPresenter.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,239:1\n63#2,12:240\n63#2,12:252\n63#2,12:271\n63#2,12:283\n16#3,7:264\n1549#4:295\n1620#4,3:296\n*S KotlinDebug\n*F\n+ 1 CreateWalletPresenter.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletPresenter\n*L\n82#1:240,12\n101#1:252,12\n154#1:271,12\n191#1:283,12\n140#1:264,7\n224#1:295\n224#1:296,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private lastSearchQuery:Ljava/lang/String;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventsBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

.field private final searchQuerySubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedWordsCount:I

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final wordsCountItems$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$V54cbOOTnPmhHk9nb9kXSExyAF4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->subscribeToQueryChanges$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventsBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    .line 35
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 36
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 37
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 38
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 39
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->rxEventsBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 40
    iput-object p7, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 41
    iput-object p8, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 44
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->searchQuerySubject:Lio/reactivex/subjects/PublishSubject;

    .line 45
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$wordsCountItems$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$wordsCountItems$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->wordsCountItems$delegate:Lkotlin/Lazy;

    const-string p1, ""

    .line 49
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->lastSearchQuery:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getInitialWordsCount()I

    move-result p1

    iput p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->selectedWordsCount:I

    return-void
.end method

.method public static final synthetic access$confirmBackUpCreated(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->confirmBackUpCreated()V

    return-void
.end method

.method public static final synthetic access$getBlockchainType(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCryptoWalletInteractor$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    return-object p0
.end method

.method public static final synthetic access$getLastSearchQuery$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->lastSearchQuery:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    return-object p0
.end method

.method public static final synthetic access$initWordsCountItems(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Ljava/util/List;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->initWordsCountItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLastSearchQuery$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->lastSearchQuery:Ljava/lang/String;

    return-void
.end method

.method private final confirmBackUpCreated()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->rxEventsBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 205
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->onSuccessConfirmBackUp()V

    return-void
.end method

.method private final getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    return-object v0
.end method

.method private final getInitialWordsCount()I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    .line 210
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 211
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;->getSecretWords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isTON()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    :goto_0
    return v0
.end method

.method private final getSelectWordsCountDialogModel()Lcom/iMe/model/dialog/RadioCellsListDialogModel;
    .locals 10

    .line 223
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_import_change_words_count_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getWordsCountItems()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 225
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 226
    sget v4, Lorg/telegram/messenger/R$string;->wallet_import_words_count:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 225
    invoke-interface {v2, v4, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 228
    iget v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->selectedWordsCount:I

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    move v6, v9

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 225
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1621
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 222
    new-instance v0, Lcom/iMe/model/dialog/RadioCellsListDialogModel;

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/iMe/model/dialog/RadioCellsListDialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getWordsCountItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->wordsCountItems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final initWordsCountItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0xc

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final subscribeToQueryChanges()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->searchQuerySubject:Lio/reactivex/subjects/PublishSubject;

    .line 183
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "private fun subscribeToQ\u2026     .autoDispose()\n    }"

    .line 186
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 200
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToQueryChanges$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final onCreateNewEmptyWalletClick()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->createLocalWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    invoke-static {v1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingUpdate(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/Observable;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, v0, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1;-><init>(Ljava/lang/String;Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 115
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 2

    .line 177
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->subscribeToQueryChanges()V

    .line 178
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    iget v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->selectedWordsCount:I

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->onWordsCountSelected(I)V

    return-void
.end method

.method public final onSavePdfClick()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v2, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->generateAndOpenPdf(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onSecretWordsCheckCompleted()V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    if-nez v1, :cond_0

    return-void

    .line 71
    :cond_0
    check-cast v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 74
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v2, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;->getSecretWords()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v3, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v4}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_1

    .line 77
    :cond_2
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v4, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    invoke-virtual {v4}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;->getPin()Ljava/lang/String;

    move-result-object v4

    .line 78
    :goto_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v5

    .line 73
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v2, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    .line 77
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    invoke-static {v0, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingUpdate(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/Observable;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v4, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 89
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_2

    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->confirmBackUpCreated()V

    :goto_2
    return-void
.end method

.method public final onSelectWordsCountClick()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getSelectWordsCountDialogModel()Lcom/iMe/model/dialog/RadioCellsListDialogModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->showSelectWordsCountDialog(Lcom/iMe/model/dialog/RadioCellsListDialogModel;)V

    return-void
.end method

.method public final onWordsCountSelected(I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getWordsCountItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getInitialWordsCount()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->selectedWordsCount:I

    .line 58
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    iget v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->selectedWordsCount:I

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->onWordsCountSelected(I)V

    return-void
.end method

.method public final onWordsPaste(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pasteText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 121
    iget v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->selectedWordsCount:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isTON()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getWordsCountItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->onWordsCountSelected(I)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->fillEditTexts(Ljava/util/List;)V

    return-void
.end method

.method public final searchMnemonicWordsSuggestions(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->lastSearchQuery:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->searchQuerySubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final validateSeed(Ljava/lang/String;)V
    .locals 5

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 139
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidSeed(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v2

    .line 16
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;

    invoke-direct {v3, v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;-><init>(ZLcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v4, v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v3, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v3, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    invoke-static {v2, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingUpdate(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/Observable;

    move-result-object v2

    .line 154
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;ZLjava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v2, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 173
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
