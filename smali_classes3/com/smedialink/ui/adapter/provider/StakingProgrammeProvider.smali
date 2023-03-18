.class public final Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "StakingProgrammeProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/staking/StakingProgrammeItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private final networkIconCornerSize$delegate:Lkotlin/Lazy;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 28
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->STAKING_PROGRAMME:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->itemViewType:I

    .line 29
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_account_balance:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->layoutId:I

    .line 32
    new-instance p1, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$networkIconCornerSize$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$networkIconCornerSize$2;-><init>(Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;)F
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingProgrammeItem;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "helper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget v3, Lorg/telegram/messenger/R$id;->card_account_balance:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const-string v5, "windowBackgroundWhite"

    .line 40
    invoke-static {v1, v3, v5}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 41
    sget v3, Lorg/telegram/messenger/R$id;->staking_info:I

    const-string v5, "chats_pinnedOverlay"

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v1, v3, v5, v6}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedRoundedBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;F)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 42
    sget v5, Lorg/telegram/messenger/R$id;->text_account_title:I

    const-string v6, "chats_actionBackground"

    invoke-static {v1, v5, v6}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 43
    sget v8, Lorg/telegram/messenger/R$id;->text_account_balance:I

    aput v8, v7, v4

    sget v9, Lorg/telegram/messenger/R$id;->text_staking_end_value:I

    const/4 v10, 0x1

    aput v9, v7, v10

    const-string v11, "windowBackgroundWhiteBlackText"

    invoke-static {v1, v11, v7}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 44
    sget v7, Lorg/telegram/messenger/R$id;->text_apr_value:I

    sget-object v11, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APR:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v2, v11}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/smedialink/model/staking/StakingAnnualPercentageMode;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v7, v11}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 45
    sget v11, Lorg/telegram/messenger/R$id;->text_apy_value:I

    sget-object v12, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APY:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v2, v12}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/smedialink/model/staking/StakingAnnualPercentageMode;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v11, v12}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    new-array v12, v10, [I

    .line 46
    sget v13, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    aput v13, v12, v4

    const-string v14, "windowBackgroundWhiteGrayText2"

    invoke-static {v1, v14, v12}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/4 v12, 0x3

    new-array v14, v12, [I

    .line 47
    sget v15, Lorg/telegram/messenger/R$id;->text_apy_title:I

    aput v15, v14, v4

    sget v12, Lorg/telegram/messenger/R$id;->text_apr_title:I

    aput v12, v14, v10

    sget v10, Lorg/telegram/messenger/R$id;->text_staking_end_title:I

    aput v10, v14, v6

    const-string v6, "windowBackgroundWhiteGrayText"

    invoke-static {v1, v6, v14}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/16 v6, 0x8

    new-array v6, v6, [I

    aput v8, v6, v4

    const/4 v14, 0x1

    aput v13, v6, v14

    const/4 v14, 0x2

    aput v15, v6, v14

    const/4 v14, 0x3

    aput v12, v6, v14

    const/4 v14, 0x4

    aput v10, v6, v14

    const/4 v14, 0x5

    aput v11, v6, v14

    const/4 v14, 0x6

    aput v7, v6, v14

    const/4 v14, 0x7

    aput v9, v6, v14

    .line 48
    invoke-static {v1, v6}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 49
    sget v6, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 50
    sget v4, Lorg/telegram/messenger/R$id;->image_network_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getLogo()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 51
    iget-object v6, v0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v14, Lorg/telegram/messenger/R$string;->staking_programme_apy:I

    invoke-interface {v6, v14}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v15, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x25

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v11, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 53
    iget-object v6, v0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v14, Lorg/telegram/messenger/R$string;->staking_programme_apr:I

    invoke-interface {v6, v14}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v12, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x25

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 55
    iget-object v6, v0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v14, Lorg/telegram/messenger/R$string;->staking_programme_expires:I

    invoke-interface {v6, v14}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v10, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getEndsAt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v9, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    invoke-static {v5}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    iget-object v6, v0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v5, v6}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v13, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/4 v5, 0x1

    .line 60
    invoke-virtual {v1, v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v3, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated()Z

    move-result v3

    xor-int/2addr v3, v5

    const/4 v6, 0x2

    new-array v9, v6, [I

    const/4 v10, 0x0

    aput v8, v9, v10

    aput v13, v9, v5

    invoke-static {v1, v3, v9}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 63
    sget-object v3, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/smedialink/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v8

    invoke-static {v8}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v8

    new-array v9, v6, [I

    aput v15, v9, v10

    aput v11, v9, v5

    invoke-static {v1, v8, v9}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/smedialink/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    new-array v6, v6, [I

    aput v12, v6, v10

    aput v7, v6, v5

    invoke-static {v1, v3, v6}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 65
    sget v3, Lorg/telegram/messenger/R$id;->text_coin_ticker:I

    new-instance v5, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;

    invoke-direct {v5, v2, v0}, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;-><init>(Lcom/smedialink/model/staking/StakingProgrammeItem;Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;)V

    invoke-static {v1, v3, v5}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$2;

    invoke-direct {v2, v0}, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$2;-><init>(Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;)V

    invoke-static {v1, v4, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingProgrammeItem;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/staking/StakingProgrammeItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget p3, Lorg/telegram/messenger/R$id;->text_account_balance:I

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 79
    sget p3, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 80
    sget p3, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 81
    sget p3, Lorg/telegram/messenger/R$id;->text_apr_value:I

    sget-object v0, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APR:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {p2, v0}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/smedialink/model/staking/StakingAnnualPercentageMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 82
    sget p3, Lorg/telegram/messenger/R$id;->text_apy_value:I

    sget-object v0, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APY:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {p2, v0}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/smedialink/model/staking/StakingAnnualPercentageMode;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingProgrammeItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingProgrammeItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->layoutId:I

    return v0
.end method
