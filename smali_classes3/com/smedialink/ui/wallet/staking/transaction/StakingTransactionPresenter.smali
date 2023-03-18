.class public final Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "StakingTransactionPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingTransactionPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingTransactionPresenter.kt\ncom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CommonExt.kt\ncom/smedialink/storage/data/utils/extentions/CommonExtKt\n+ 4 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,551:1\n1#2:552\n6#3,6:553\n39#4,8:559\n39#4,8:567\n39#4,8:575\n39#4,8:583\n39#4,8:591\n39#4,8:599\n*S KotlinDebug\n*F\n+ 1 StakingTransactionPresenter.kt\ncom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter\n*L\n161#1:553,6\n206#1:559,8\n245#1:567,8\n276#1:575,8\n309#1:583,8\n367#1:591,8\n450#1:599,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private currentAmount:Ljava/math/BigDecimal;

.field private currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

.field private feeTokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

.field private feeType:Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

.field private forcedAmountText:Ljava/lang/String;

.field private isSafeWithdrawalSelected:Z

.field private final isSafeWithdrawalVisible:Z

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final safeWithdrawalReceiveTimeText$delegate:Lkotlin/Lazy;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:I

.field private final stakingAnnualPercentageData:Lcom/smedialink/model/staking/StakingAnnualPercentageData;

.field private final stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

.field private stakingTransactionAction:Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;

.field private tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final tokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

.field private tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

.field private final walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

.field private wrappedAction:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$X1S9xKw23h1706Jqd-90toqRVxE(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->executeTokenApproval()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z12b-hwZsk4PILor4yRzSEEfNPQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kRGLV4lPuPzl2Nf56iOVgN53Ar4(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->executeAction()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;ILcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 3

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 46
    iput p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 47
    iput-object p3, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    .line 48
    iput-object p4, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 49
    iput-object p5, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 50
    iput-object p6, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 51
    iput-object p7, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 52
    iput-object p8, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 56
    sget-object p2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/smedialink/model/staking/StakingDetailsItem;->getTokenTicker()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, p4

    :goto_0
    const-string p6, ""

    if-nez p5, :cond_1

    move-object p5, p6

    :cond_1
    invoke-virtual {p2, p5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 57
    sget-object p5, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p5, p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    if-eqz p3, :cond_2

    .line 59
    new-instance p7, Lcom/smedialink/model/staking/StakingAnnualPercentageData;

    invoke-virtual {p3}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p3}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compoundAccrualThreshold.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p7, p8, v0, v1}, Lcom/smedialink/model/staking/StakingAnnualPercentageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object p7, p4

    .line 58
    :goto_1
    iput-object p7, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingAnnualPercentageData:Lcom/smedialink/model/staking/StakingAnnualPercentageData;

    const/4 p7, 0x0

    if-eqz p3, :cond_3

    .line 62
    invoke-virtual {p3}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCanWithdrawSafely()Z

    move-result p8

    if-eqz p8, :cond_3

    invoke-virtual {p3}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCanWithdrawImmediately()Z

    move-result p8

    if-eqz p8, :cond_3

    const/4 p8, 0x1

    goto :goto_2

    :cond_3
    const/4 p8, 0x0

    .line 61
    :goto_2
    iput-boolean p8, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalVisible:Z

    if-eqz p3, :cond_4

    .line 64
    invoke-virtual {p3}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCanWithdrawSafely()Z

    move-result p7

    :cond_4
    iput-boolean p7, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    .line 66
    sget-object p7, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {p7, p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 68
    sget-object p2, Lcom/smedialink/model/staking/StakingTransactionStep$Loading;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Loading;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    if-eqz p3, :cond_5

    .line 72
    invoke-virtual {p3}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFeeTokenTicker()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, p4

    :goto_3
    if-nez p2, :cond_6

    move-object p2, p6

    :cond_6
    invoke-virtual {p5, p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p2

    invoke-virtual {p7, p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeTokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 75
    new-instance p2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;

    invoke-direct {p2, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->safeWithdrawalReceiveTimeText$delegate:Lkotlin/Lazy;

    if-eqz p1, :cond_7

    .line 76
    new-instance p2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p7

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    sget-object p2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string p1, "ZERO"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    .line 77
    iput-object p6, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 79
    invoke-static {p2}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    move-object p2, p4

    :goto_5
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p4

    :cond_9
    iput-object p4, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->forcedAmountText:Ljava/lang/String;

    .line 80
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "disposed()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic access$getFeeDialogModel(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/model/dialog/DialogModel;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getFeeDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSafeWithdrawalDurationText(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSafeWithdrawalDurationText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    return p0
.end method

.method public static final synthetic access$getStakingInteractor$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/i_staking/StakingInteractor;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    return-object p0
.end method

.method public static final synthetic access$getSuccessMessage(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;D)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSuccessMessage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSuccessTitle(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSuccessTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTokensApprovalStatusUpdateDisposable$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static final synthetic access$onActionSuccess(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingTransactionStep;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->onActionSuccess(Lcom/smedialink/model/staking/StakingTransactionStep;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$prepareTokenApproval(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareTokenApproval(Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)V

    return-void
.end method

.method public static final synthetic access$runNoEnoughMoneyFlow(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->runNoEnoughMoneyFlow()V

    return-void
.end method

.method public static final synthetic access$setCurrentStep$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingTransactionStep;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    return-void
.end method

.method public static final synthetic access$setStakingTransactionAction$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingTransactionAction:Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$showCommonErrorToast(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->showCommonErrorToast(Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V

    return-void
.end method

.method private final checkTokensApproval(Z)V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 201
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xf

    .line 202
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 204
    :goto_0
    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$1;

    invoke-direct {v2, p0, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$1;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingDetailsItem;)V

    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "private fun checkTokensA\u2026y { autoDispose() }\n    }"

    .line 204
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p1, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(ZLcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 233
    invoke-static {p0, p1, v1, v0, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    .line 203
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic checkTokensApproval$default(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 199
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval(Z)V

    return-void
.end method

.method private static final checkTokensApproval$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final confirmExecution()V
    .locals 3

    .line 360
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSendConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showConfirmDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private final confirmTokenApprovalExecution(Ljava/lang/String;)V
    .locals 2

    .line 265
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getApproveConfirmationDialogModel(Ljava/lang/String;)Lcom/smedialink/model/dialog/DialogModel;

    move-result-object p1

    new-instance v1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    invoke-interface {v0, p1, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showConfirmDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private final executeAction()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingTransactionAction:Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getExecuteActionObservableByScreenType(Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "getExecuteActionObservab\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 381
    invoke-static {p0, v0, v4, v1, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final executeTokenApproval()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 271
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 272
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingTransactionAction:Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/iMe/i_staking/StakingInteractor;->sendApprovalExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 286
    invoke-static {p0, v0, v4, v1, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final getApproveConfirmationDialogModel(Ljava/lang/String;)Lcom/smedialink/model/dialog/DialogModel;
    .locals 6

    .line 473
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 474
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 475
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 476
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 475
    invoke-interface {v2, v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 479
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 480
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_action:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getConfirmMessage()Ljava/lang/String;
    .locals 6

    .line 509
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 510
    iget v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 511
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_confirm_description:I

    goto :goto_0

    .line 512
    :cond_0
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_confirm_description:I

    goto :goto_0

    .line 513
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_confirm_description:I

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 515
    iget-object v4, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v5

    invoke-static {v4, v5}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 516
    iget-object v4, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v5, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 509
    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getConfirmTitle()Ljava/lang/String;
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 502
    iget v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 503
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_confirm_title:I

    goto :goto_0

    .line 504
    :cond_0
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_confirm_title:I

    goto :goto_0

    .line 505
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_confirm_title:I

    .line 501
    :goto_0
    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getExecuteActionObservableByScreenType(Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    .line 385
    iget v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 386
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 387
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 386
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendDepositExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 390
    :cond_0
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 391
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 390
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendClaimExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 395
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 394
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendWithdrawExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getFeeDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 8

    .line 483
    new-instance v7, Lcom/smedialink/model/dialog/DialogModel;

    .line 484
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 483
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getPrepareActionObservableByScreenType(J)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    .line 344
    iget v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 345
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 347
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    .line 345
    invoke-virtual {v0, p1, p2, v1}, Lcom/iMe/i_staking/StakingInteractor;->sendDepositPrepare(JLjava/math/BigDecimal;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 349
    :cond_0
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/i_staking/StakingInteractor;->sendClaimPrepare(J)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 354
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    .line 355
    iget-boolean v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    .line 352
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/iMe/i_staking/StakingInteractor;->sendWithdrawPrepare(JLjava/math/BigDecimal;Z)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getSafeWithdrawalDurationText()Ljava/lang/String;
    .locals 7

    .line 464
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getSafeWithdrawalDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Long;)J

    move-result-wide v0

    .line 465
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    long-to-int v0, v2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DaysSchedule"

    .line 467
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{\n            LocaleCont\u2026onDays.toInt())\n        }"

    .line 466
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    long-to-int v1, v0

    .line 469
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{\n            LocaleCont\u2026econds.toInt())\n        }"

    .line 468
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private final getSafeWithdrawalReceiveTimeText()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->safeWithdrawalReceiveTimeText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getSendConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 7

    .line 488
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 489
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getConfirmTitle()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getConfirmMessage()Ljava/lang/String;

    move-result-object v2

    .line 491
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 492
    iget-object v4, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 493
    iget v5, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 494
    sget v6, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v5, v6, :cond_0

    sget v5, Lorg/telegram/messenger/R$string;->wallet_operation_deposit:I

    goto :goto_0

    .line 495
    :cond_0
    sget v6, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v5, v6, :cond_1

    sget v5, Lorg/telegram/messenger/R$string;->staking_profit_claim:I

    goto :goto_0

    .line 496
    :cond_1
    sget v5, Lorg/telegram/messenger/R$string;->staking_details_withdraw:I

    .line 492
    :goto_0
    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 488
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSuccessMessage(D)Ljava/lang/String;
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 532
    iget v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 533
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_success_description:I

    goto :goto_0

    .line 534
    :cond_0
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_success_description:I

    goto :goto_0

    .line 535
    :cond_1
    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v1, :cond_2

    .line 536
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_success_description:I

    goto :goto_0

    .line 538
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_immediate_success_description:I

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 541
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result p2

    invoke-static {p1, p2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 542
    iget-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v3

    invoke-interface {p2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 531
    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getSuccessTitle()Ljava/lang/String;
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 520
    iget v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 521
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_success_title:I

    goto :goto_0

    .line 522
    :cond_0
    sget v2, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_success_title:I

    goto :goto_0

    .line 523
    :cond_1
    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v1, :cond_2

    .line 524
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_success_title:I

    goto :goto_0

    .line 526
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_immediate_success_title:I

    .line 519
    :goto_0
    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final loadBalance()V
    .locals 6

    .line 444
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 446
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 447
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/smedialink/model/staking/StakingDetailsItem;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 445
    invoke-static/range {v0 .. v5}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    invoke-static {p0, v0, v2, v1, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadInitialData()V
    .locals 1

    .line 191
    sget-object v0, Lcom/smedialink/model/staking/StakingTransactionStep$Loading;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Loading;

    iput-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    .line 192
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    .line 193
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->updateAvailableBalance(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    const/4 v0, 0x1

    .line 195
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval(Z)V

    :cond_0
    return-void
.end method

.method private final onActionSuccess(Lcom/smedialink/model/staking/StakingTransactionStep;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p3, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 406
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeType:Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    .line 407
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    .line 408
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    return-void
.end method

.method static synthetic onActionSuccess$default(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingTransactionStep;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 400
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->onActionSuccess(Lcom/smedialink/model/staking/StakingTransactionStep;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Ljava/lang/String;)V

    return-void
.end method

.method private final prepareAction()V
    .locals 5

    .line 305
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getPrepareActionObservableByScreenType(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "getPrepareActionObservab\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 340
    invoke-static {p0, v0, v4, v1, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final prepareTokenApproval(Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 238
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 241
    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v2

    .line 240
    invoke-virtual {v1, v2, v3, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendApprovalPrepare(JLcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)Lio/reactivex/Observable;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;Lcom/smedialink/model/staking/StakingDetailsItem;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, v2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v1, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    invoke-static {p0, p1, v1, v0, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final runNoEnoughMoneyFlow()V
    .locals 5

    .line 423
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    new-instance v2, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    .line 425
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 426
    sget-object v4, Lcom/smedialink/utils/helper/wallet/SwapHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/SwapHelper;

    invoke-virtual {v4, v0}, Lcom/smedialink/utils/helper/wallet/SwapHelper;->resolveSwapProtocolByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v4

    .line 424
    invoke-direct {v2, v3, v4, v0}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    invoke-interface {v1, v2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showNoEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final showCommonErrorToast(Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V
    .locals 2

    .line 413
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 414
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_error_no_internet:I

    invoke-interface {p1, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 416
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {p1, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 413
    :cond_2
    :goto_1
    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private final updateAvailableBalance(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 12

    .line 432
    iget v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    .line 433
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->loadBalance()V

    goto :goto_0

    .line 434
    :cond_0
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v0, v1, :cond_1

    .line 435
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getAvailableForClaim()D

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3d

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 436
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->setMaxAmount()V

    goto :goto_0

    .line 438
    :cond_1
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_WITHDRAW_SCREEN_TYPE:I

    if-ne v0, v1, :cond_2

    .line 439
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getDebt()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3d

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    :cond_2
    :goto_0
    return-void
.end method

.method private final validatePrepareAmount()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 292
    iget v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    sget v3, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v2, v3, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->staking_profit_no_tokens_to_claim:I

    goto :goto_0

    .line 293
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_validation_zero_amount_error:I

    .line 291
    :goto_0
    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    .line 295
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_3

    iget v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->runNoEnoughMoneyFlow()V

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->staking_not_enough_money:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 300
    :cond_3
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareAction()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getApproveTokenDescriptionModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 8

    .line 172
    new-instance v7, Lcom/smedialink/model/dialog/DialogModel;

    .line 173
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve_dialog_description:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final getCompoundThresholdProgress()F
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getImpact()Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.add(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

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

    .line 92
    :goto_0
    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public final getCurrentStep()Lcom/smedialink/model/staking/StakingTransactionStep;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    return-object v0
.end method

.method public final getFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeType:Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    return-object v0
.end method

.method public final getForcedAmountText()Ljava/lang/String;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->forcedAmountText:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    iput-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->forcedAmountText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final getSafeWithdrawalHelpAlertText()Ljava/lang/String;
    .locals 10

    .line 120
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 121
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_withdrawal_help_alert_description:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalTimeText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 123
    sget-object v4, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    iget-object v6, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/smedialink/model/staking/StakingDetailsItem;->getSafeWithdrawalFeePercentage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    invoke-static {v6}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v6, v5, v2, v7}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/smedialink/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 120
    invoke-interface {v0, v1, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStakingAnnualPercentageData()Lcom/smedialink/model/staking/StakingAnnualPercentageData;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingAnnualPercentageData:Lcom/smedialink/model/staking/StakingAnnualPercentageData;

    return-object v0
.end method

.method public final getStakingContractUrl()Ljava/lang/String;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    .line 87
    sget-object v1, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getContract()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanAddressUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public final getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method public final getWithdrawalFeeText()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 94
    iget-object v1, v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 95
    iget-boolean v3, v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getSafeWithdrawalFeePercentage()D

    move-result-wide v3

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getImmediateWithdrawalFeePercentage()D

    move-result-wide v3

    .line 100
    :goto_0
    iget-object v1, v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 101
    sget v5, Lorg/telegram/messenger/R$string;->staking_withdraw_fee_value:I

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 102
    sget-object v8, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10, v6, v2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/smedialink/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v10

    const/4 v2, 0x1

    .line 103
    iget-object v8, v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeTokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    const/4 v9, 0x0

    .line 104
    iget-object v6, v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    new-instance v10, Ljava/math/BigDecimal;

    const/16 v11, 0x64

    int-to-double v11, v11

    div-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    const-string v4, "this.multiply(other)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3d

    const/16 v17, 0x0

    .line 103
    invoke-static/range {v8 .. v17}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    .line 105
    iget-object v4, v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v3, v4}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 100
    invoke-interface {v1, v5, v7}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    return-object v2
.end method

.method public final getWithdrawalHelpAlertText()Ljava/lang/String;
    .locals 10

    .line 113
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 114
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_help_alert:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalTimeText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 116
    sget-object v3, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    iget-object v5, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/smedialink/model/staking/StakingDetailsItem;->getSafeWithdrawalFeePercentage()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-static {v5}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v7, 0x2

    invoke-static {v3, v5, v4, v7, v6}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/smedialink/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v2, v8

    .line 117
    iget-object v5, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/smedialink/model/staking/StakingDetailsItem;->getImmediateWithdrawalFeePercentage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-static {v5}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3, v5, v4, v7, v6}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/smedialink/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 113
    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWithdrawalTimeText()Ljava/lang/String;
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSafeWithdrawalReceiveTimeText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_time_immediate:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final isSafeWithdrawalSelected()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    return v0
.end method

.method public final isSafeWithdrawalVisible()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalVisible:Z

    return v0
.end method

.method public final onActionClick()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    .line 132
    instance-of v1, v0, Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalNeeded;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalNeeded;

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalNeeded;->getTokenTicker()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->confirmTokenApprovalExecution(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object v1, Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->validatePrepareAmount()V

    goto :goto_0

    .line 134
    :cond_1
    new-instance v1, Lcom/smedialink/model/staking/StakingTransactionStep$Execute;

    iget v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:I

    invoke-direct {v1, v2}, Lcom/smedialink/model/staking/StakingTransactionStep$Execute;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->confirmExecution()V

    goto :goto_0

    .line 135
    :cond_2
    sget-object v1, Lcom/smedialink/model/staking/StakingTransactionStep$Loading;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Loading;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->staking_action_loading_wait:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_3
    sget-object v1, Lcom/smedialink/model/staking/StakingTransactionStep$RetryLoading;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$RetryLoading;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->loadInitialData()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onAmountChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
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

    .line 163
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 162
    :goto_1
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 165
    :goto_2
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    instance-of p1, p1, Lcom/smedialink/model/staking/StakingTransactionStep$Execute;

    if-eqz p1, :cond_2

    .line 166
    sget-object p1, Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeType:Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    .line 169
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateAmountDependedViews()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->loadInitialData()V

    return-void
.end method

.method public final setMaxAmount()V
    .locals 3

    .line 146
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it"

    .line 147
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->onAmountChanged(Ljava/lang/String;)V

    .line 146
    iput-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->forcedAmountText:Ljava/lang/String;

    return-void
.end method

.method public final shouldShowApprovalInfoButton()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    instance-of v0, v0, Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalNeeded;

    return v0
.end method

.method public final startStakingConditionsDialog()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showStakingConditionsDialog(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public final switchSafeWithdrawal(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    .line 153
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateWithdrawalFee()V

    .line 154
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    instance-of p1, p1, Lcom/smedialink/model/staking/StakingTransactionStep$Execute;

    if-eqz p1, :cond_0

    .line 155
    sget-object p1, Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/smedialink/model/staking/StakingTransactionStep;

    .line 156
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareAction()V

    :cond_0
    return-void
.end method
