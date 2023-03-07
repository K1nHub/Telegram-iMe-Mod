.class public final Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletSwapFeePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapFeePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapFeePresenter.kt\ncom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,142:1\n39#2,6:143\n11328#3:149\n11663#3,3:150\n11328#3:157\n11663#3,3:158\n11328#3:165\n11663#3,3:166\n37#4:153\n36#4,3:154\n37#4:161\n36#4,3:162\n37#4:169\n36#4,3:170\n*S KotlinDebug\n*F\n+ 1 WalletSwapFeePresenter.kt\ncom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter\n*L\n111#1:143,6\n126#1:149\n126#1:150,3\n128#1:157\n128#1:158,3\n132#1:165\n132#1:166,3\n126#1:153\n126#1:154,3\n130#1:161\n130#1:162,3\n134#1:169\n134#1:170,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

.field private final deadlineOptions$delegate:Lkotlin/Lazy;

.field private final deadlineOptionsTitles$delegate:Lkotlin/Lazy;

.field private final feesOptions$delegate:Lkotlin/Lazy;

.field private final feesOptionsTitles$delegate:Lkotlin/Lazy;

.field private metadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

.field private selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

.field private selectedSlip:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

.field private final slipChangeEvent:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;",
            ">;"
        }
    .end annotation
.end field

.field private final slipOptions$delegate:Lkotlin/Lazy;

.field private final slipOptionsTitles$delegate:Lkotlin/Lazy;

.field private final swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;


# direct methods
.method public static synthetic $r8$lambda$o1NP4Wz1R4R7lcgmaSmfvDwJtB0(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->subscribeToChangeEvents$lambda-0(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    .line 27
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 28
    iput-object p3, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 29
    iput-object p4, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 33
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 34
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedFee()Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 35
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedDeadline()Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 36
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedSlippage()Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedSlip:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 38
    sget-object p1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$feesOptions$2;->INSTANCE:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$feesOptions$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->feesOptions$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$feesOptionsTitles$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$feesOptionsTitles$2;-><init>(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->feesOptionsTitles$delegate:Lkotlin/Lazy;

    .line 41
    sget-object p1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;->INSTANCE:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptions$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->deadlineOptions$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$deadlineOptionsTitles$2;-><init>(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->deadlineOptionsTitles$delegate:Lkotlin/Lazy;

    .line 44
    sget-object p1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;->INSTANCE:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptions$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipOptions$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptionsTitles$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$slipOptionsTitles$2;-><init>(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipOptionsTitles$delegate:Lkotlin/Lazy;

    .line 48
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipChangeEvent:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$initDeadlineTitles(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)[Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->initDeadlineTitles()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initFeesTitles(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)[Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->initFeesTitles()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSlipTitles(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)[Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->initSlipTitles()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final initDeadlineTitles()[Ljava/lang/String;
    .locals 9

    .line 128
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->getDeadlineOptions()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    .line 11328
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 129
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_deadline:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->getMinutes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-interface {v6, v7, v8}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final initFeesTitles()[Ljava/lang/String;
    .locals 7

    .line 126
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->getFeesOptions()[Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;

    move-result-object v0

    .line 11328
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 126
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;->getTitle()I

    move-result v5

    invoke-interface {v6, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final initSlipTitles()[Ljava/lang/String;
    .locals 11

    .line 132
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSlipOptions()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v0

    .line 11328
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 133
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->wallet_swap_transaction_options_slip:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v5, v3, v8, v10}, Lcom/smedialink/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    invoke-interface {v6, v7, v9}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final subscribeToChangeEvents()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipChangeEvent:Lio/reactivex/subjects/PublishSubject;

    .line 92
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "slipChangeEvent\n        \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)V

    new-instance v2, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 123
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToChangeEvents$lambda-0(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;)Lio/reactivex/ObservableSource;
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "slippage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->setSelectedSlip(Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;)V

    .line 96
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 98
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 99
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    .line 100
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "args.metadata.amountIn.toString()"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;->EXACT_INPUT:Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;

    .line 102
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result v6

    .line 103
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    .line 104
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getOutputNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v8

    .line 105
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v9

    .line 97
    invoke-virtual/range {v1 .. v9}, Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;->getQuoteToSwap(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;FLcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    const-string v0, "viewState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDeadlineOptions()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->deadlineOptions$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    return-object v0
.end method

.method public final getDeadlineOptionsTitles()[Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->deadlineOptionsTitles$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getFeeArgs()Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 9

    .line 67
    new-instance v8, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    .line 68
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 69
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 70
    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedSlip:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 71
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 72
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v5

    .line 73
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getOutputNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    .line 74
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->args:Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v7

    move-object v0, v8

    .line 67
    invoke-direct/range {v0 .. v7}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;-><init>(Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V

    return-object v8
.end method

.method public final getFeesOptions()[Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->feesOptions$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;

    return-object v0
.end method

.method public final getFeesOptionsTitles()[Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->feesOptionsTitles$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata()Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-object v0
.end method

.method public final getSelectedDeadline()Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    return-object v0
.end method

.method public final getSelectedFee()Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    return-object v0
.end method

.method public final getSelectedSlip()Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedSlip:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    return-object v0
.end method

.method public final getSlipOptions()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipOptions$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    return-object v0
.end method

.method public final getSlipOptionsTitles()[Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipOptionsTitles$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->subscribeToChangeEvents()V

    return-void
.end method

.method public final selectDeadline(I)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->getDeadlineOptions()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    return-void
.end method

.method public final selectFee(I)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->getFeesOptions()[Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;

    move-result-object v0

    aget-object p1, v0, p1

    .line 54
    new-instance v0, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getFeeByLevel(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;)V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 55
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeView;->onFeeReselected()V

    return-void
.end method

.method public final selectSlip(I)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->slipChangeEvent:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSlipOptions()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMetadata(Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->metadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-void
.end method

.method public final setSelectedFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method public final setSelectedSlip(Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->selectedSlip:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    return-void
.end method
