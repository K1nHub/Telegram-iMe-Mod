.class public final Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "StakingConditionsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;


# direct methods
.method public constructor <init>(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 17
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 20

    move-object/from16 v0, p0

    .line 23
    iget-object v1, v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 24
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsView;

    .line 25
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    sget-object v4, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenTicker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iMe/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)I

    move-result v4

    .line 26
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getLogo()I

    move-result v5

    .line 27
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getAuthor()Ljava/lang/String;

    move-result-object v7

    .line 29
    iget-object v2, v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->staking_details_apy_apr_values:I

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    invoke-interface {v2, v8, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getStartsAt()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getEndsAt()Ljava/lang/String;

    move-result-object v10

    .line 32
    sget-object v11, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenTicker()Ljava/lang/String;

    move-result-object v1

    iget-object v15, v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v11, v14, v1, v15}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Ljava/lang/String;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v1

    .line 33
    iget-object v14, v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 34
    sget v15, Lorg/telegram/messenger/R$string;->staking_conditions_fee_value:I

    new-array v9, v13, [Ljava/lang/Object;

    .line 35
    iget-object v13, v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    invoke-virtual {v13}, Lcom/iMe/model/staking/StakingDetailsItem;->getSafeWithdrawalFeePercentage()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v16, v1

    const/4 v1, 0x0

    move-object/from16 v17, v10

    const/4 v10, 0x2

    invoke-static {v11, v13, v12, v10, v1}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    .line 33
    invoke-interface {v14, v15, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 37
    iget-object v9, v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    const/4 v14, 0x1

    new-array v1, v14, [Ljava/lang/Object;

    .line 39
    iget-object v14, v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    invoke-virtual {v14}, Lcom/iMe/model/staking/StakingDetailsItem;->getPrematureWithdrawalFeePercentage()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object/from16 v18, v13

    const/4 v13, 0x0

    invoke-static {v11, v14, v12, v10, v13}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatPercents$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v12

    .line 37
    invoke-interface {v9, v15, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 41
    iget-object v1, v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "0"

    aput-object v10, v9, v12

    invoke-interface {v1, v15, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v2

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v12, v18

    .line 24
    invoke-interface/range {v3 .. v14}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsView;->setupScreenWithData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
