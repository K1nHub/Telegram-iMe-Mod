.class public final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "StakingTransactionPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingTransactionPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingTransactionPresenter.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n+ 4 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,571:1\n1#2:572\n6#3,6:573\n42#4,12:579\n42#4,12:591\n42#4,12:603\n42#4,12:615\n42#4,12:627\n42#4,12:639\n*S KotlinDebug\n*F\n+ 1 StakingTransactionPresenter.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter\n*L\n167#1:573,6\n212#1:579,12\n254#1:591,12\n286#1:603,12\n327#1:615,12\n393#1:627,12\n469#1:639,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private currentAmount:Ljava/math/BigDecimal;

.field private currentStep:Lcom/iMe/model/staking/TransactionStep;

.field private feeTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

.field private forcedAmountText:Ljava/lang/String;

.field private isSafeWithdrawalSelected:Z

.field private final isSafeWithdrawalVisible:Z

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final safeWithdrawalReceiveTimeText$delegate:Lkotlin/Lazy;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:I

.field private final stakingAnnualPercentageData:Lcom/iMe/model/staking/StakingAnnualPercentageData;

.field private final stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

.field private stakingTransactionAction:Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

.field private wrappedAction:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-3LW5Zzq5nQKTpn-8HzfMN4IWKc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8imYHaK50jsMVe1Pex200yg-hII(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->executeAction()V

    return-void
.end method

.method public static synthetic $r8$lambda$vbUtbA-NgIQijP92pVP3wH-2Xm0(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->executeTokenApproval()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;ILcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string/jumbo v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stakingInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 49
    iput p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 50
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 51
    iput-object p4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 52
    iput-object p5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 53
    iput-object p6, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 54
    iput-object p7, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 55
    iput-object p8, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p2

    :goto_0
    iput-object p4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p3, :cond_1

    .line 61
    new-instance p5, Lcom/iMe/model/staking/StakingAnnualPercentageData;

    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object p8

    invoke-virtual {p8}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p8

    const-string v0, "compoundAccrualThreshold.toString()"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p5, p6, p7, p8}, Lcom/iMe/model/staking/StakingAnnualPercentageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p5, p2

    .line 60
    :goto_1
    iput-object p5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingAnnualPercentageData:Lcom/iMe/model/staking/StakingAnnualPercentageData;

    const/4 p5, 0x0

    if-eqz p3, :cond_2

    .line 64
    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getCanWithdrawSafely()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getCanWithdrawImmediately()Z

    move-result p6

    if-eqz p6, :cond_2

    const/4 p6, 0x1

    goto :goto_2

    :cond_2
    move p6, p5

    .line 63
    :goto_2
    iput-boolean p6, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalVisible:Z

    if-eqz p3, :cond_3

    .line 68
    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getCanWithdrawSafely()Z

    move-result p5

    :cond_3
    iput-boolean p5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz p4, :cond_4

    .line 71
    sget-object p5, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {p5, p4}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p4

    goto :goto_3

    :cond_4
    move-object p4, p2

    .line 70
    :goto_3
    iput-object p4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 74
    sget-object p4, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    iput-object p4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    if-eqz p3, :cond_5

    .line 78
    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getFeeTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {p3}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 79
    sget-object p4, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {p4, p3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p3

    goto :goto_4

    :cond_5
    move-object p3, p2

    .line 78
    :goto_4
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 83
    new-instance p3, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;

    invoke-direct {p3, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->safeWithdrawalReceiveTimeText$delegate:Lkotlin/Lazy;

    if-eqz p1, :cond_6

    .line 84
    new-instance p3, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    sget-object p3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string p1, "ZERO"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    const-string p1, ""

    .line 85
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 87
    invoke-static {p3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    move-object p3, p2

    :goto_6
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p2

    :cond_8
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->forcedAmountText:Ljava/lang/String;

    .line 88
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "disposed()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic access$getFeeDialogModel(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/model/dialog/DialogModel;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSafeWithdrawalDurationText(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSafeWithdrawalDurationText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    return p0
.end method

.method public static final synthetic access$getStakingInteractor$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/i_staking/StakingInteractor;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    return-object p0
.end method

.method public static final synthetic access$getSuccessMessage(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;D)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSuccessMessage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSuccessTitle(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSuccessTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTokensApprovalStatusUpdateDisposable$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static final synthetic access$onActionSuccess(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onActionSuccess(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$prepareTokenApproval(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareTokenApproval(Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)V

    return-void
.end method

.method public static final synthetic access$runNoEnoughMoneyFlow(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->runNoEnoughMoneyFlow()V

    return-void
.end method

.method public static final synthetic access$setCurrentStep$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/TransactionStep;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    return-void
.end method

.method public static final synthetic access$setStakingTransactionAction$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingTransactionAction:Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method private final checkTokensApproval(Z)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 207
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xf

    .line 208
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 210
    :goto_0
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$1;

    invoke-direct {v2, p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/StakingDetailsItem;)V

    new-instance v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun checkTokensA\u2026y { autoDispose() }\n    }"

    .line 210
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p1, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(ZLcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    .line 209
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic checkTokensApproval$default(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval(Z)V

    return-void
.end method

.method private static final checkTokensApproval$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final confirmExecution()V
    .locals 3

    .line 386
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSendConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private final confirmTokenApprovalExecution(Ljava/lang/String;)V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getApproveConfirmationDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object p1

    new-instance v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private final executeAction()V
    .locals 5

    .line 390
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingTransactionAction:Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getExecuteActionObservableByScreenType(Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "getExecuteActionObservab\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
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

    .line 393
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 408
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final executeTokenApproval()V
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 281
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 282
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingTransactionAction:Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/iMe/i_staking/StakingInteractor;->sendApprovalExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
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

    .line 286
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 297
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final getApproveConfirmationDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 493
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 494
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 495
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 496
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 495
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 499
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 500
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_action:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getConfirmMessage()Ljava/lang/String;
    .locals 7

    .line 529
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 530
    iget v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 531
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_confirm_description:I

    goto :goto_0

    .line 532
    :cond_0
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_confirm_description:I

    goto :goto_0

    .line 533
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_confirm_description:I

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 535
    iget-object v4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    invoke-static {v5}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 536
    iget-object v4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-nez v6, :cond_4

    const-string v6, ""

    :cond_4
    aput-object v6, v2, v3

    .line 529
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getConfirmTitle()Ljava/lang/String;
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 522
    iget v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 523
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_confirm_title:I

    goto :goto_0

    .line 524
    :cond_0
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_confirm_title:I

    goto :goto_0

    .line 525
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_confirm_title:I

    .line 521
    :goto_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getExecuteActionObservableByScreenType(Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    .line 412
    iget v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 413
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 414
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 413
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendDepositExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 418
    :cond_0
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 419
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 418
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendClaimExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 424
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 423
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendWithdrawExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 8

    .line 503
    new-instance v7, Lcom/iMe/model/dialog/DialogModel;

    .line 504
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 503
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getPrepareActionObservableByScreenType(J)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    .line 368
    iget v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 369
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 371
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    .line 369
    invoke-virtual {v0, p1, p2, v1}, Lcom/iMe/i_staking/StakingInteractor;->sendDepositPrepare(JLjava/math/BigDecimal;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 374
    :cond_0
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/i_staking/StakingInteractor;->sendClaimPrepare(J)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 380
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    .line 381
    iget-boolean v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    .line 378
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/iMe/i_staking/StakingInteractor;->sendWithdrawPrepare(JLjava/math/BigDecimal;Z)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getSafeWithdrawalDurationText()Ljava/lang/String;
    .locals 6

    .line 484
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getSafeWithdrawalDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Long;)J

    move-result-wide v0

    .line 485
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    long-to-int v0, v2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DaysSchedule"

    .line 487
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{\n            LocaleCont\u2026onDays.toInt())\n        }"

    .line 486
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    long-to-int v0, v0

    .line 489
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{\n            LocaleCont\u2026econds.toInt())\n        }"

    .line 488
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private final getSafeWithdrawalReceiveTimeText()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->safeWithdrawalReceiveTimeText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getSendConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 7

    .line 508
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 509
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getConfirmTitle()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getConfirmMessage()Ljava/lang/String;

    move-result-object v2

    .line 511
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 512
    iget-object v4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 513
    iget v5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 514
    sget v6, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v5, v6, :cond_0

    sget v5, Lorg/telegram/messenger/R$string;->wallet_operation_deposit:I

    goto :goto_0

    .line 515
    :cond_0
    sget v6, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v5, v6, :cond_1

    sget v5, Lorg/telegram/messenger/R$string;->staking_profit_claim:I

    goto :goto_0

    .line 516
    :cond_1
    sget v5, Lorg/telegram/messenger/R$string;->staking_details_withdraw:I

    .line 512
    :goto_0
    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 508
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSuccessMessage(D)Ljava/lang/String;
    .locals 5

    .line 551
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 552
    iget v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 553
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_success_description:I

    goto :goto_0

    .line 554
    :cond_0
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_success_description:I

    goto :goto_0

    .line 555
    :cond_1
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v1, :cond_2

    .line 556
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_success_description:I

    goto :goto_0

    .line 558
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_immediate_success_description:I

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 561
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v4

    :goto_1
    invoke-static {p2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 562
    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    aput-object v4, v2, p1

    .line 551
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getSuccessTitle()Ljava/lang/String;
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 540
    iget v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 541
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_success_title:I

    goto :goto_0

    .line 542
    :cond_0
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_success_title:I

    goto :goto_0

    .line 543
    :cond_1
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v1, :cond_2

    .line 544
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_success_title:I

    goto :goto_0

    .line 546
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_immediate_success_title:I

    .line 539
    :goto_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final loadBalance()V
    .locals 6

    .line 463
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 465
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 466
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 464
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 480
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadInitialData()V
    .locals 1

    .line 197
    sget-object v0, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    .line 198
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    .line 199
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->updateAvailableBalance(Lcom/iMe/model/staking/StakingDetailsItem;)V

    const/4 v0, 0x1

    .line 201
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval(Z)V

    :cond_0
    return-void
.end method

.method private final onActionSuccess(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Ljava/lang/String;)V
    .locals 0

    .line 434
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 435
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    .line 436
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    .line 437
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    return-void
.end method

.method static synthetic onActionSuccess$default(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 429
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onActionSuccess(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Ljava/lang/String;)V

    return-void
.end method

.method private final prepareAction()V
    .locals 5

    .line 323
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getPrepareActionObservableByScreenType(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "getPrepareActionObservab\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
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

    .line 327
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 364
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final prepareTokenApproval(Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 247
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 250
    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v2

    .line 249
    invoke-virtual {v1, v2, v3, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendApprovalPrepare(JLcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)Lio/reactivex/Observable;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string/jumbo v2, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v3, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;Lcom/iMe/model/staking/StakingDetailsItem;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v1, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final runNoEnoughMoneyFlow()V
    .locals 5

    .line 441
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    new-instance v2, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    .line 443
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 444
    sget-object v4, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    invoke-virtual {v4, v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v4

    .line 442
    invoke-direct {v2, v3, v4, v0}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateAvailableBalance(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 13

    .line 450
    iget v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 451
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->loadBalance()V

    goto :goto_0

    .line 452
    :cond_0
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 453
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getAvailableForClaim()D

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 454
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->setMaxAmount()V

    goto :goto_0

    .line 457
    :cond_2
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_WITHDRAW_SCREEN_TYPE:I

    if-ne v0, v1, :cond_4

    .line 458
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getDebt()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    :cond_3
    iput-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    :cond_4
    :goto_0
    return-void
.end method

.method private final validatePrepareAmount()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    .line 304
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 305
    iget v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    sget v3, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v2, v3, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->staking_profit_no_tokens_to_claim:I

    goto :goto_0

    .line 306
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_validation_zero_amount_error:I

    .line 304
    :goto_0
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v0

    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_4

    .line 311
    iget v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_3

    .line 312
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->runNoEnoughMoneyFlow()V

    goto :goto_2

    .line 314
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->staking_not_enough_money:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 318
    :cond_4
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareAction()V

    :goto_2
    return-void
.end method


# virtual methods
.method public final getApproveTokenDescriptionModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 8

    .line 178
    new-instance v7, Lcom/iMe/model/dialog/DialogModel;

    .line 179
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve_dialog_description:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    .line 178
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final getCompoundThresholdProgress()F
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getImpact()Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string/jumbo v2, "this.add(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->minOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public final getCurrentStep()Lcom/iMe/model/staking/TransactionStep;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    return-object v0
.end method

.method public final getFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    return-object v0
.end method

.method public final getForcedAmountText()Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->forcedAmountText:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    iput-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->forcedAmountText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final getSafeWithdrawalHelpAlertText()Ljava/lang/String;
    .locals 10

    .line 126
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 127
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_withdrawal_help_alert_description:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalTimeText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 129
    sget-object v4, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    iget-object v6, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/iMe/model/staking/StakingDetailsItem;->getSafeWithdrawalFeePercentage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    invoke-static {v6}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v6, v5, v2, v7}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 126
    invoke-interface {v0, v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStakingAnnualPercentageData()Lcom/iMe/model/staking/StakingAnnualPercentageData;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingAnnualPercentageData:Lcom/iMe/model/staking/StakingAnnualPercentageData;

    return-object v0
.end method

.method public final getStakingContractUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getContractUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getTokenBalanceShortText()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getWithdrawalFeeText()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 100
    iget-object v1, v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 101
    iget-boolean v4, v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getSafeWithdrawalFeePercentage()D

    move-result-wide v4

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getImmediateWithdrawalFeePercentage()D

    move-result-wide v4

    .line 106
    :goto_0
    iget-object v1, v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 107
    sget v6, Lorg/telegram/messenger/R$string;->staking_withdraw_fee_value:I

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 108
    sget-object v9, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, v7, v3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v11

    const/4 v7, 0x1

    .line 109
    iget-object v9, v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v9, :cond_1

    .line 110
    iget-object v10, v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    new-instance v11, Ljava/math/BigDecimal;

    const/16 v12, 0x64

    int-to-double v12, v12

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const-string/jumbo v5, "this.multiply(other)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1e

    const/16 v18, 0x0

    .line 109
    invoke-static/range {v9 .. v18}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 111
    invoke-static {v4}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    move-object v3, v2

    :cond_2
    aput-object v3, v8, v7

    .line 106
    invoke-interface {v1, v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    return-object v2
.end method

.method public final getWithdrawalHelpAlertText()Ljava/lang/String;
    .locals 10

    .line 119
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 120
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_help_alert:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalTimeText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 122
    sget-object v3, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    iget-object v5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/iMe/model/staking/StakingDetailsItem;->getSafeWithdrawalFeePercentage()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-static {v5}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v7, 0x2

    invoke-static {v3, v5, v4, v7, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v2, v8

    .line 123
    iget-object v5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/iMe/model/staking/StakingDetailsItem;->getImmediateWithdrawalFeePercentage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-static {v5}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3, v5, v4, v7, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 119
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWithdrawalTimeText()Ljava/lang/String;
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSafeWithdrawalReceiveTimeText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_time_immediate:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final isSafeWithdrawalSelected()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    return v0
.end method

.method public final isSafeWithdrawalVisible()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalVisible:Z

    return v0
.end method

.method public final onActionClick()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    .line 138
    instance-of v1, v0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    invoke-virtual {v0}, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->getTokenTicker()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->confirmTokenApprovalExecution(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v1, Lcom/iMe/model/staking/TransactionStep$Prepare;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Prepare;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->validatePrepareAmount()V

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    iget v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    invoke-direct {v1, v2}, Lcom/iMe/model/staking/TransactionStep$StakingExecute;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->confirmExecution()V

    goto :goto_0

    .line 141
    :cond_2
    sget-object v1, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->staking_action_loading_wait:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_3
    sget-object v1, Lcom/iMe/model/staking/TransactionStep$RetryLoading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$RetryLoading;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->loadInitialData()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onAmountChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string v0, "ZERO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    .line 169
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 168
    :goto_1
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 171
    :goto_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    instance-of p1, p1, Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    if-eqz p1, :cond_2

    .line 172
    sget-object p1, Lcom/iMe/model/staking/TransactionStep$Prepare;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Prepare;

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    .line 175
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateAmountDependedViews()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->loadInitialData()V

    return-void
.end method

.method public final setMaxAmount()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v0

    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it"

    .line 153
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onAmountChanged(Ljava/lang/String;)V

    .line 152
    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->forcedAmountText:Ljava/lang/String;

    return-void
.end method

.method public final shouldShowApprovalInfoButton()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    instance-of v0, v0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    return v0
.end method

.method public final startStakingConditionsDialog()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public final switchSafeWithdrawal(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    .line 159
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateWithdrawalFee()V

    .line 160
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    instance-of p1, p1, Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    if-eqz p1, :cond_0

    .line 161
    sget-object p1, Lcom/iMe/model/staking/TransactionStep$Prepare;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Prepare;

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    .line 162
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareAction()V

    :cond_0
    return-void
.end method
