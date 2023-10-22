.class public final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "StakingTransactionPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$Companion;,
        Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$WhenMappings;
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
    value = "SMAP\nStakingTransactionPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingTransactionPresenter.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,630:1\n63#2,12:631\n63#2,12:644\n63#2,12:656\n63#2,12:668\n63#2,12:680\n63#2,12:692\n1#3:643\n*S KotlinDebug\n*F\n+ 1 StakingTransactionPresenter.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter\n*L\n186#1:631,12\n232#1:644,12\n269#1:656,12\n288#1:668,12\n363#1:680,12\n448#1:692,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final amountSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private currentAmount:Ljava/math/BigDecimal;

.field private currentStep:Lcom/iMe/model/staking/TransactionStep;

.field private feeTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private isSafeWithdrawalSelected:Z

.field private final presetAmount:Ljava/lang/Double;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final safeWithdrawalReceiveTimeText$delegate:Lkotlin/Lazy;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

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
.method public static synthetic $r8$lambda$8imYHaK50jsMVe1Pex200yg-hII(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->executeAction()V

    return-void
.end method

.method public static synthetic $r8$lambda$MC3LafY7lUYiF8shl-dz0SCrldw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->subscribeToAmountSubject$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgcrZmYNnsuxkELpUVwCJcir1D0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
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

.method public constructor <init>(Ljava/lang/Double;Lcom/iMe/model/wallet/staking/StakingScreenType;Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string/jumbo v0, "screenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stakingInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->presetAmount:Ljava/lang/Double;

    .line 53
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    .line 54
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 55
    iput-object p4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 56
    iput-object p5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 57
    iput-object p6, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 58
    iput-object p7, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 59
    iput-object p8, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 60
    iput-object p9, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 63
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

    .line 64
    new-instance p5, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;

    invoke-direct {p5, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    invoke-static {p5}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p5

    iput-object p5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->safeWithdrawalReceiveTimeText$delegate:Lkotlin/Lazy;

    if-eqz p3, :cond_1

    .line 66
    new-instance p5, Lcom/iMe/model/staking/StakingAnnualPercentageData;

    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object p8

    invoke-virtual {p8}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p8

    const-string p9, "compoundAccrualThreshold.toString()"

    invoke-static {p8, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p5, p6, p7, p8}, Lcom/iMe/model/staking/StakingAnnualPercentageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p5, p2

    .line 65
    :goto_1
    iput-object p5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingAnnualPercentageData:Lcom/iMe/model/staking/StakingAnnualPercentageData;

    .line 68
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p5

    const-string p6, "create()"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    if-eqz p1, :cond_2

    .line 70
    new-instance p5, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object p5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string p1, "ZERO"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iput-object p5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    const-string p1, ""

    .line 71
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 73
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p5, "disposed()"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p3, :cond_3

    .line 74
    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getCanWithdrawSafely()Z

    move-result p1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz p4, :cond_4

    .line 76
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {p1, p4}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    goto :goto_4

    :cond_4
    move-object p1, p2

    .line 75
    :goto_4
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 78
    sget-object p1, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    if-eqz p3, :cond_5

    .line 80
    invoke-virtual {p3}, Lcom/iMe/model/staking/StakingDetailsItem;->getFeeTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 81
    sget-object p2, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {p2, p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p2

    .line 80
    :cond_5
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$getCompoundThresholdProgress(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Ljava/math/BigDecimal;)F
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getCompoundThresholdProgress(Ljava/math/BigDecimal;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCurrentAmount$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/math/BigDecimal;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public static final synthetic access$getFeeDialogModel(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/model/dialog/DialogModel;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSafeWithdrawalDurationText(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSafeWithdrawalDurationText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/model/wallet/staking/StakingScreenType;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    return-object p0
.end method

.method public static final synthetic access$getStakingInteractor$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/i_staking/StakingInteractor;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    return-object p0
.end method

.method public static final synthetic access$getSuccessMessage(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;D)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSuccessMessage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSuccessTitle(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSuccessTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTokenBalance$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object p0
.end method

.method public static final synthetic access$getTokensApprovalStatusUpdateDisposable$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static final synthetic access$onActionSuccess(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onActionSuccess(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$prepareAction(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareAction()V

    return-void
.end method

.method public static final synthetic access$prepareTokenApproval(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareTokenApproval(Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)V

    return-void
.end method

.method public static final synthetic access$runNoEnoughMoneyFlow(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->runNoEnoughMoneyFlow()V

    return-void
.end method

.method public static final synthetic access$setCurrentAmount$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Ljava/math/BigDecimal;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    return-void
.end method

.method public static final synthetic access$setCurrentStep(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/TransactionStep;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->setCurrentStep(Lcom/iMe/model/staking/TransactionStep;)V

    return-void
.end method

.method public static final synthetic access$setStakingTransactionAction$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingTransactionAction:Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$showAmountError(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->showAmountError(Z)V

    return-void
.end method

.method public static final synthetic access$showBalance(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->showBalance()V

    return-void
.end method

.method public static final synthetic access$updateWithdrawalFee(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->updateWithdrawalFee()V

    return-void
.end method

.method private final checkTokensApproval(Z)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 181
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xf

    .line 182
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 184
    :goto_0
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$1;

    invoke-direct {v2, p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/StakingDetailsItem;)V

    new-instance v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun checkTokensA\u2026y { autoDispose() }\n    }"

    .line 184
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p1, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(ZLcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    .line 183
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic checkTokensApproval$default(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 179
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval(Z)V

    return-void
.end method

.method private static final checkTokensApproval$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final confirmExecution()V
    .locals 3

    .line 356
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

    .line 255
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    .line 256
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getApproveConfirmationDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object p1

    .line 257
    new-instance v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    .line 255
    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private final executeAction()V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingTransactionAction:Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getExecuteActionObservableByScreenType(Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "getExecuteActionObservab\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
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

    .line 363
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 380
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final executeTokenApproval()V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 264
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 265
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingTransactionAction:Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/iMe/i_staking/StakingInteractor;->sendApprovalExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
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

    .line 269
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 280
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final getApproveConfirmationDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 573
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 574
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 576
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 575
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 579
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 580
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_action:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 573
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCompoundThresholdProgress(Ljava/math/BigDecimal;)F
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getImpact()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    const-string/jumbo v1, "this.add(other)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-static {p1, v0}, Lkotlin/comparisons/ComparisonsKt;->minOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 169
    :goto_0
    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Float;)F

    move-result p1

    return p1
.end method

.method private final getConfirmMessage()Ljava/lang/String;
    .locals 6

    .line 595
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 596
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/staking/StakingScreenType;->getConfirmMessageTextId()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 597
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-static {v4}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 598
    iget-object v4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-nez v5, :cond_2

    const-string v5, ""

    :cond_2
    aput-object v5, v2, v3

    .line 595
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 385
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 397
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 396
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendWithdrawExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 392
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 391
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendClaimExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 387
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 386
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendDepositExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 8

    .line 583
    new-instance v7, Lcom/iMe/model/dialog/DialogModel;

    .line 584
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 585
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 583
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

    .line 338
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 350
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    .line 351
    iget-boolean v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    .line 348
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/iMe/i_staking/StakingInteractor;->sendWithdrawPrepare(JLjava/math/BigDecimal;Z)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/i_staking/StakingInteractor;->sendClaimPrepare(J)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 341
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentAmount:Ljava/math/BigDecimal;

    .line 339
    invoke-virtual {v0, p1, p2, v1}, Lcom/iMe/i_staking/StakingInteractor;->sendDepositPrepare(JLjava/math/BigDecimal;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getSafeWithdrawalDurationText()Ljava/lang/String;
    .locals 6

    .line 557
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

    .line 558
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

    .line 560
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{\n            LocaleCont\u2026onDays.toInt())\n        }"

    .line 559
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    long-to-int v0, v0

    .line 562
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{\n            LocaleCont\u2026econds.toInt())\n        }"

    .line 561
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private final getSafeWithdrawalHelpAlertText()Ljava/lang/String;
    .locals 10

    .line 550
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 551
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_withdrawal_help_alert_description:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 552
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalTimeText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 553
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

    .line 550
    invoke-interface {v0, v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getSafeWithdrawalReceiveTimeText()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->safeWithdrawalReceiveTimeText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getSendConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 588
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 589
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/staking/StakingScreenType;->getConfirmTitleTextId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getConfirmMessage()Ljava/lang/String;

    move-result-object v2

    .line 591
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 592
    iget-object v4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v5, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v5}, Lcom/iMe/model/wallet/staking/StakingScreenType;->getButtonTextId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSuccessMessage(D)Ljava/lang/String;
    .locals 5

    .line 613
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 614
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    .line 617
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v1, :cond_0

    .line 618
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_success_description:I

    goto :goto_0

    .line 620
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_immediate_success_description:I

    goto :goto_0

    .line 616
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_success_description:I

    goto :goto_0

    .line 615
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_success_description:I

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 623
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

    invoke-static {p1, p2}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 624
    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    aput-object v4, v2, p1

    .line 613
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getSuccessTitle()Ljava/lang/String;
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 602
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 605
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v1, :cond_0

    .line 606
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_success_title:I

    goto :goto_0

    .line 608
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_immediate_success_title:I

    goto :goto_0

    .line 604
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_success_title:I

    goto :goto_0

    .line 603
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_success_title:I

    .line 601
    :goto_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getWithdrawalFeeText()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 531
    iget-object v1, v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 532
    iget-boolean v4, v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v4, :cond_0

    .line 533
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getSafeWithdrawalFeePercentage()D

    move-result-wide v4

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getImmediateWithdrawalFeePercentage()D

    move-result-wide v4

    .line 537
    :goto_0
    iget-object v1, v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 538
    sget v6, Lorg/telegram/messenger/R$string;->staking_withdraw_fee_value:I

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 539
    sget-object v9, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, v7, v3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v11

    const/4 v7, 0x1

    .line 540
    iget-object v9, v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->feeTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v9, :cond_1

    .line 541
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

    .line 540
    invoke-static/range {v9 .. v18}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 542
    invoke-static {v4}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    move-object v3, v2

    :cond_2
    aput-object v3, v8, v7

    .line 537
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

.method private final getWithdrawalHelpAlertText()Ljava/lang/String;
    .locals 10

    .line 566
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 567
    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_help_alert:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 568
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalTimeText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 569
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

    .line 570
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

    .line 566
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getWithdrawalTimeText()Ljava/lang/String;
    .locals 2

    .line 547
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSafeWithdrawalReceiveTimeText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_time_immediate:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final loadBalance()V
    .locals 6

    .line 442
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 444
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 445
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 443
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadInitialData()V
    .locals 1

    .line 172
    sget-object v0, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->setCurrentStep(Lcom/iMe/model/staking/TransactionStep;)V

    .line 173
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->updateAvailableBalance(Lcom/iMe/model/staking/StakingDetailsItem;)V

    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval(Z)V

    :cond_0
    return-void
.end method

.method private final onActionSuccess(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Ljava/lang/String;)V
    .locals 0

    .line 407
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->wrappedAction:Ljava/lang/String;

    .line 409
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->setCurrentStep(Lcom/iMe/model/staking/TransactionStep;)V

    .line 410
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1, p2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateFeeView(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

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

    .line 402
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onActionSuccess(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Ljava/lang/String;)V

    return-void
.end method

.method private final prepareAction()V
    .locals 4

    .line 284
    sget-object v0, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->setCurrentStep(Lcom/iMe/model/staking/TransactionStep;)V

    .line 285
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getPrepareActionObservableByScreenType(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "getPrepareActionObservab\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final prepareTokenApproval(Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokensApprovalStatusUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 225
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 228
    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v2

    .line 227
    invoke-virtual {v1, v2, v3, p1}, Lcom/iMe/i_staking/StakingInteractor;->sendApprovalPrepare(JLcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)Lio/reactivex/Observable;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string/jumbo v2, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v3, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;Lcom/iMe/model/staking/StakingDetailsItem;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v1, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final runNoEnoughMoneyFlow()V
    .locals 9

    .line 414
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    .line 416
    new-instance v8, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    const/4 v2, 0x0

    .line 417
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 418
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    invoke-virtual {v1, v5}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    .line 416
    invoke-direct/range {v1 .. v7}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 415
    invoke-interface {v0, v8}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setCurrentStep(Lcom/iMe/model/staking/TransactionStep;)V
    .locals 1

    .line 148
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    .line 149
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep(Lcom/iMe/model/staking/TransactionStep;)V

    return-void
.end method

.method private final setupSafeWithdrawal()V
    .locals 4

    .line 160
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    .line 161
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    .line 162
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_withdrawal_help_alert_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getSafeWithdrawalHelpAlertText()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->setupSafeWithdrawal(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final showAmountError(Z)V
    .locals 4

    .line 479
    sget-object v0, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/iMe/manager/common/FeatureAvailableManager$Token;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->isPurchaseAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v1, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_REPLENISH_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    if-ne v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_token_details_action_buy:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 487
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    .line 489
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_send_error_insufficient_funds:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-interface {v1, p1, v2, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->setupAmountInputErrorState(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final showBalance()V
    .locals 10

    .line 465
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    .line 467
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 468
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_my_balance:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v9, v8, v9}, Lcom/iMe/utils/formatter/BalanceFormatter;->format$default(Ljava/lang/Number;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 467
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-interface {v1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showBalance(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final subscribeToAmountSubject()V
    .locals 4

    .line 495
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    .line 496
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 497
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 499
    new-instance v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;-><init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "private fun subscribeToA\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 528
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToAmountSubject$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final updateAvailableBalance(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 13

    .line 425
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 429
    :cond_0
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

    .line 430
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->showBalance()V

    .line 431
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->setMaxAmount()V

    goto :goto_0

    .line 426
    :cond_2
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->loadBalance()V

    goto :goto_0

    .line 435
    :cond_3
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v3, :cond_4

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

    :cond_4
    iput-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 436
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->showBalance()V

    :goto_0
    return-void
.end method

.method private final updateWithdrawalFee()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    .line 154
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalFeeText()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalTimeText()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateWithdrawalFee(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onActionClick()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    .line 90
    instance-of v1, v0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    invoke-virtual {v0}, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->getTokenTicker()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->confirmTokenApprovalExecution(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-direct {v1, v2}, Lcom/iMe/model/staking/TransactionStep$StakingExecute;-><init>(Lcom/iMe/model/wallet/staking/StakingScreenType;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->confirmExecution()V

    goto :goto_0

    .line 92
    :cond_1
    sget-object v1, Lcom/iMe/model/staking/TransactionStep$RetryLoading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$RetryLoading;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->loadInitialData()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onAmountChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    instance-of p1, p1, Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    if-eqz p1, :cond_0

    .line 112
    new-instance p1, Lcom/iMe/model/staking/TransactionStep$Idle;

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/staking/StakingScreenType;->getButtonTextId()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/iMe/model/staking/TransactionStep$Idle;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->setCurrentStep(Lcom/iMe/model/staking/TransactionStep;)V

    :cond_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 7

    .line 131
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->subscribeToAmountSubject()V

    .line 132
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->presetAmount:Ljava/lang/Double;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v4, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-interface {v0, v3}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->setupAmount(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->loadInitialData()V

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    sget-object v1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->stakingAnnualPercentageData:Lcom/iMe/model/staking/StakingAnnualPercentageData;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->renderStakingPercentage(Lcom/iMe/model/staking/StakingAnnualPercentageData;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->setupSafeWithdrawal()V

    .line 138
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->updateWithdrawalFee()V

    :goto_0
    return-void
.end method

.method public final onReplenishClick()V
    .locals 9

    .line 118
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    .line 119
    new-instance v8, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    .line 120
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, v8

    .line 119
    invoke-direct/range {v1 .. v7}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    invoke-interface {v0, v8}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onWithdrawHelpClick()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalHelpAlertText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showWithdrawHelpAlert(Ljava/lang/String;)V

    return-void
.end method

.method public final setMaxAmount()V
    .locals 4

    .line 98
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v1

    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tokenBalance?.total.orZe\u2026Decimal().toPlainString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->setupAmount(Ljava/lang/String;)V

    return-void
.end method

.method public final startStakingConditionsDialog()V
    .locals 2

    .line 85
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

    .line 102
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalSelected:Z

    .line 103
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->updateWithdrawalFee()V

    .line 104
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->currentStep:Lcom/iMe/model/staking/TransactionStep;

    instance-of p1, p1, Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    if-eqz p1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareAction()V

    :cond_0
    return-void
.end method
