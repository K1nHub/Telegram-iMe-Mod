.class public final Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletSwapFeePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapFeePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapFeePresenter.kt\ncom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,144:1\n42#2,12:145\n11335#3:157\n11670#3,3:158\n11335#3:163\n11670#3,3:164\n11335#3:169\n11670#3,3:170\n37#4,2:161\n37#4,2:167\n37#4,2:173\n*S KotlinDebug\n*F\n+ 1 WalletSwapFeePresenter.kt\ncom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter\n*L\n106#1:145,12\n128#1:157\n128#1:158,3\n130#1:163\n130#1:164,3\n134#1:169\n134#1:170,3\n128#1:161,2\n132#1:167,2\n136#1:173,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final args:Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

.field private final deadlineOptions$delegate:Lkotlin/Lazy;

.field private final deadlineOptionsTitles$delegate:Lkotlin/Lazy;

.field private final feesOptions$delegate:Lkotlin/Lazy;

.field private final feesOptionsTitles$delegate:Lkotlin/Lazy;

.field private metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

.field private selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

.field private selectedSlip:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

.field private final slipChangeEvent:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;",
            ">;"
        }
    .end annotation
.end field

.field private final slipOptions$delegate:Lkotlin/Lazy;

.field private final slipOptionsTitles$delegate:Lkotlin/Lazy;

.field private final swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;


# direct methods
.method public static synthetic $r8$lambda$JxaN0kYhevIopg7dcWexKPjpv4I(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->subscribeToChangeEvents$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "swapInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    .line 27
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 28
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 29
    iput-object p4, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 33
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 34
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 35
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedDeadline()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 36
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedSlippage()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedSlip:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 38
    sget-object p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$feesOptions$2;->INSTANCE:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$feesOptions$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->feesOptions$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$feesOptionsTitles$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$feesOptionsTitles$2;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->feesOptionsTitles$delegate:Lkotlin/Lazy;

    .line 41
    sget-object p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;->INSTANCE:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->deadlineOptions$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->deadlineOptionsTitles$delegate:Lkotlin/Lazy;

    .line 44
    sget-object p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;->INSTANCE:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipOptions$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptionsTitles$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptionsTitles$2;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipOptionsTitles$delegate:Lkotlin/Lazy;

    .line 48
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipChangeEvent:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSwapInteractor$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    return-object p0
.end method

.method public static final synthetic access$initDeadlineTitles(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)[Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->initDeadlineTitles()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initFeesTitles(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)[Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->initFeesTitles()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSlipTitles(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)[Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->initSlipTitles()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final initDeadlineTitles()[Ljava/lang/String;
    .locals 9

    .line 130
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getDeadlineOptions()[Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 131
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_deadline:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->getMinutes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-interface {v6, v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final initFeesTitles()[Ljava/lang/String;
    .locals 7

    .line 128
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getFeesOptions()[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 128
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->getTitle()I

    move-result v5

    invoke-interface {v6, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final initSlipTitles()[Ljava/lang/String;
    .locals 11

    .line 134
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSlipOptions()[Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 135
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_slip:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v5, v3, v8, v10}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    invoke-interface {v6, v7, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final subscribeToChangeEvents()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipChangeEvent:Lio/reactivex/subjects/PublishSubject;

    .line 89
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun subscribeToC\u2026     .autoDispose()\n    }"

    .line 91
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 125
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToChangeEvents$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final getDeadlineOptions()[Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->deadlineOptions$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    return-object v0
.end method

.method public final getDeadlineOptionsTitles()[Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->deadlineOptionsTitles$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getFeeArgs()Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 7

    .line 67
    new-instance v6, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    .line 68
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 69
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 70
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedSlip:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 71
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 72
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v5

    move-object v0, v6

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;-><init>(Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    return-object v6
.end method

.method public final getFeesOptions()[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->feesOptions$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    return-object v0
.end method

.method public final getFeesOptionsTitles()[Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->feesOptionsTitles$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-object v0
.end method

.method public final getSelectedDeadline()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    return-object v0
.end method

.method public final getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-object v0
.end method

.method public final getSelectedSlip()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedSlip:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    return-object v0
.end method

.method public final getSlipOptions()[Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipOptions$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    return-object v0
.end method

.method public final getSlipOptionsTitles()[Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipOptionsTitles$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->subscribeToChangeEvents()V

    return-void
.end method

.method public final selectDeadline(I)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getDeadlineOptions()[Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    return-void
.end method

.method public final selectFee(I)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getFeesOptions()[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    move-result-object v0

    aget-object p1, v0, p1

    .line 54
    new-instance v0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getFeeByLevel(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 55
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;->onFeeReselected()V

    return-void
.end method

.method public final selectSlip(I)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipChangeEvent:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSlipOptions()[Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMetadata(Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-void
.end method

.method public final setSelectedFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method public final setSelectedSlip(Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedSlip:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    return-void
.end method
