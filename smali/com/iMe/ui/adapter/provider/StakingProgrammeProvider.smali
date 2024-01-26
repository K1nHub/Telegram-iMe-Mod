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

    .line 32
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 34
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_PROGRAMME:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->itemViewType:I

    .line 35
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_account_balance:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->layoutId:I

    .line 37
    new-instance p1, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$networkIconCornerSize$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$networkIconCornerSize$2;-><init>(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)F
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 37
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
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "helper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget v3, Lorg/telegram/messenger/R$id;->card_account_balance:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 43
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, v3, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 44
    sget v3, Lorg/telegram/messenger/R$id;->staking_info:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v1, v3, v5, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedRoundedBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IIF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 45
    sget v5, Lorg/telegram/messenger/R$id;->text_title:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1, v5, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 47
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v7, 0x2

    new-array v8, v7, [I

    .line 48
    sget v9, Lorg/telegram/messenger/R$id;->text_subtitle:I

    aput v9, v8, v4

    .line 49
    sget v10, Lorg/telegram/messenger/R$id;->text_staking_end_value:I

    const/4 v11, 0x1

    aput v10, v8, v11

    .line 46
    invoke-static {v1, v6, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 52
    sget v6, Lorg/telegram/messenger/R$id;->text_apr_value:I

    .line 53
    sget-object v8, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v2, v8}, Lcom/iMe/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/iMe/model/staking/StakingAnnualPercentageMode;)I

    move-result v8

    .line 51
    invoke-static {v1, v6, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 56
    sget v8, Lorg/telegram/messenger/R$id;->text_apy_value:I

    .line 57
    sget-object v12, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v2, v12}, Lcom/iMe/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/iMe/model/staking/StakingAnnualPercentageMode;)I

    move-result v12

    .line 55
    invoke-static {v1, v8, v12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 60
    sget v12, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    .line 61
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    .line 59
    invoke-static {v1, v12, v13}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 64
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v14, 0x3

    new-array v15, v14, [I

    .line 65
    sget v14, Lorg/telegram/messenger/R$id;->text_apy_title:I

    aput v14, v15, v4

    .line 66
    sget v4, Lorg/telegram/messenger/R$id;->text_apr_title:I

    aput v4, v15, v11

    .line 67
    sget v11, Lorg/telegram/messenger/R$id;->text_staking_end_title:I

    aput v11, v15, v7

    .line 63
    invoke-static {v1, v13, v15}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/16 v13, 0x8

    new-array v13, v13, [I

    const/4 v15, 0x0

    aput v9, v13, v15

    const/4 v15, 0x1

    aput v12, v13, v15

    aput v14, v13, v7

    const/4 v15, 0x3

    aput v4, v13, v15

    const/4 v15, 0x4

    aput v11, v13, v15

    const/4 v15, 0x5

    aput v8, v13, v15

    const/4 v15, 0x6

    aput v6, v13, v15

    const/4 v15, 0x7

    aput v10, v13, v15

    .line 69
    invoke-static {v1, v13}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v16

    .line 79
    sget v17, Lorg/telegram/messenger/R$id;->image_logo:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 82
    iget-object v13, v0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v15, Lorg/telegram/messenger/R$string;->staking_programme_apy:I

    invoke-interface {v13, v15}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 80
    invoke-virtual {v1, v14, v13}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 84
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x25

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v8, v13}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 87
    iget-object v13, v0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->staking_programme_apr:I

    invoke-interface {v13, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v1, v4, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 92
    iget-object v7, v0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v13, Lorg/telegram/messenger/R$string;->staking_programme_expires:I

    invoke-interface {v7, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-virtual {v1, v11, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getEndsAt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v10, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 95
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    invoke-static {v5}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v9, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    invoke-static {v5}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v12, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 98
    sget v5, Lorg/telegram/messenger/R$id;->text_coin_ticker:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 99
    sget v5, Lorg/telegram/messenger/R$id;->image_network_icon:I

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v3, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->isParticipated()Z

    move-result v3

    xor-int/2addr v3, v7

    const/4 v10, 0x2

    new-array v11, v10, [I

    const/4 v13, 0x0

    aput v9, v11, v13

    aput v12, v11, v7

    .line 101
    invoke-static {v1, v3, v11}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 107
    sget-object v3, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/iMe/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v9

    invoke-static {v9}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v9

    new-array v11, v10, [I

    aput v14, v11, v13

    aput v8, v11, v7

    .line 106
    invoke-static {v1, v9, v11}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/iMe/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    new-array v8, v10, [I

    aput v4, v8, v13

    aput v6, v8, v7

    .line 111
    invoke-static {v1, v3, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 116
    new-instance v3, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;

    invoke-direct {v3, v2, v0}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;-><init>(Lcom/iMe/model/staking/StakingProgrammeItem;Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)V

    invoke-static {v1, v5, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingProgrammeItem;Ljava/util/List;)V
    .locals 8
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

    .line 130
    sget p3, Lorg/telegram/messenger/R$id;->text_subtitle:I

    invoke-virtual {p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 131
    sget p3, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    invoke-virtual {p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 132
    sget v2, Lorg/telegram/messenger/R$id;->image_logo:I

    invoke-virtual {p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 134
    sget p3, Lorg/telegram/messenger/R$id;->text_apr_value:I

    .line 135
    sget-object v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {p2, v0}, Lcom/iMe/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/iMe/model/staking/StakingAnnualPercentageMode;)I

    move-result v0

    .line 133
    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 138
    sget p3, Lorg/telegram/messenger/R$id;->text_apy_value:I

    .line 139
    sget-object v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {p2, v0}, Lcom/iMe/model/staking/StakingProgrammeItem;->getPercentageTextColor(Lcom/iMe/model/staking/StakingAnnualPercentageMode;)I

    move-result v0

    .line 137
    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 142
    sget v2, Lorg/telegram/messenger/R$id;->image_network_icon:I

    .line 143
    invoke-virtual {p2}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/iMe/model/staking/StakingProgrammeItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingProgrammeItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/iMe/model/staking/StakingProgrammeItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingProgrammeItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->layoutId:I

    return v0
.end method
