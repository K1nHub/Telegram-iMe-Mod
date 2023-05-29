.class public final Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "StakingProgrammeProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/staking/StakingProgrammeItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private final networkIconCornerSize$delegate:Lkotlin/Lazy;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 28
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_PROGRAMME:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->itemViewType:I

    .line 29
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_account_balance:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->layoutId:I

    .line 32
    new-instance p1, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$networkIconCornerSize$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$networkIconCornerSize$2;-><init>(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)F
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingProgrammeItem;)V
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

    invoke-static {v1, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 40
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, v3, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 41
    sget v3, Lorg/telegram/messenger/R$id;->staking_info:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v1, v3, v5, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedRoundedBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IIF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 42
    sget v5, Lorg/telegram/messenger/R$id;->text_account_title:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1, v5, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 43
    sget v6, Lorg/telegram/messenger/R$id;->text_account_balance:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, v6, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 44
    sget v8, Lorg/telegram/messenger/R$id;->text_staking_end_value:I

    invoke-static {v1, v8, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 45
    sget v7, Lorg/telegram/messenger/R$id;->text_apr_value:I

    sget-object v9, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v2, v9}, Lcom/iMe/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/iMe/model/staking/StakingAnnualPercentageMode;)I

    move-result v9

    invoke-static {v1, v7, v9}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 46
    sget v9, Lorg/telegram/messenger/R$id;->text_apy_value:I

    sget-object v10, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v2, v10}, Lcom/iMe/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/iMe/model/staking/StakingAnnualPercentageMode;)I

    move-result v10

    invoke-static {v1, v9, v10}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 47
    sget v10, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1, v10, v11}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 48
    sget v11, Lorg/telegram/messenger/R$id;->text_apy_title:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1, v11, v12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 49
    sget v13, Lorg/telegram/messenger/R$id;->text_apr_title:I

    invoke-static {v1, v13, v12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 50
    sget v14, Lorg/telegram/messenger/R$id;->text_staking_end_title:I

    invoke-static {v1, v14, v12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/16 v12, 0x8

    new-array v12, v12, [I

    aput v6, v12, v4

    const/4 v15, 0x1

    aput v10, v12, v15

    const/4 v4, 0x2

    aput v11, v12, v4

    const/16 v16, 0x3

    aput v13, v12, v16

    const/16 v16, 0x4

    aput v14, v12, v16

    const/16 v16, 0x5

    aput v9, v12, v16

    const/16 v16, 0x6

    aput v7, v12, v16

    const/16 v16, 0x7

    aput v8, v12, v16

    .line 51
    invoke-static {v1, v12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 52
    sget v12, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/iMe/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)I

    move-result v4

    invoke-virtual {v1, v12, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 53
    sget v4, Lorg/telegram/messenger/R$id;->image_network_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getLogo()I

    move-result v12

    invoke-virtual {v1, v4, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 54
    iget-object v12, v0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v15, Lorg/telegram/messenger/R$string;->staking_programme_apy:I

    invoke-interface {v12, v15}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 55
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x25

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 56
    iget-object v12, v0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v15, Lorg/telegram/messenger/R$string;->staking_programme_apr:I

    invoke-interface {v12, v15}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v13, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 57
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x25

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 58
    iget-object v12, v0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v15, Lorg/telegram/messenger/R$string;->staking_programme_expires:I

    invoke-interface {v12, v15}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v14, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getEndsAt()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v8, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    invoke-static {v5}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    iget-object v8, v0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v5, v8}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/4 v5, 0x1

    .line 63
    invoke-virtual {v1, v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v3, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->isParticipated()Z

    move-result v3

    xor-int/2addr v3, v5

    const/4 v8, 0x2

    new-array v12, v8, [I

    const/4 v14, 0x0

    aput v6, v12, v14

    aput v10, v12, v5

    invoke-static {v1, v3, v12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 66
    sget-object v3, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    invoke-static {v6}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v6

    new-array v10, v8, [I

    aput v11, v10, v14

    aput v9, v10, v5

    invoke-static {v1, v6, v10}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    new-array v6, v8, [I

    aput v13, v6, v14

    aput v7, v6, v5

    invoke-static {v1, v3, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 68
    sget v3, Lorg/telegram/messenger/R$id;->text_coin_ticker:I

    new-instance v5, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;

    invoke-direct {v5, v2, v0}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;-><init>(Lcom/iMe/model/staking/StakingProgrammeItem;Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)V

    invoke-static {v1, v3, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$2;

    invoke-direct {v2, v0}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$2;-><init>(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)V

    invoke-static {v1, v4, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingProgrammeItem;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/staking/StakingProgrammeItem;",
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

    .line 81
    sget p3, Lorg/telegram/messenger/R$id;->text_account_balance:I

    invoke-virtual {p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 82
    sget p3, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    invoke-virtual {p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 83
    sget p3, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual {p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 84
    sget p3, Lorg/telegram/messenger/R$id;->text_apr_value:I

    sget-object v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {p2, v0}, Lcom/iMe/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/iMe/model/staking/StakingAnnualPercentageMode;)I

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 85
    sget p3, Lorg/telegram/messenger/R$id;->text_apy_value:I

    sget-object v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {p2, v0}, Lcom/iMe/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/iMe/model/staking/StakingAnnualPercentageMode;)I

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/iMe/model/staking/StakingProgrammeItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingProgrammeItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/iMe/model/staking/StakingProgrammeItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingProgrammeItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->layoutId:I

    return v0
.end method
