.class public final Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "StakingCalculatorProgrammeProvider.kt"


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

    .line 21
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 24
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->STAKING_PROGRAMME:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->itemViewType:I

    .line 25
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_staking_calculator_programme:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->layoutId:I

    .line 28
    new-instance p1, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider$networkIconCornerSize$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider$networkIconCornerSize$2;-><init>(Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;)F
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingProgrammeItem;)V
    .locals 12

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget v0, Lorg/telegram/messenger/R$id;->text_name:I

    const-string v1, "chats_actionBackground"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 36
    sget v4, Lorg/telegram/messenger/R$id;->text_apr_value:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v6, Lorg/telegram/messenger/R$id;->text_apy_value:I

    const/4 v7, 0x1

    aput v6, v3, v7

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-static {p1, v8, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v3, v2, [I

    .line 37
    sget v8, Lorg/telegram/messenger/R$id;->text_apy_title:I

    aput v8, v3, v5

    sget v9, Lorg/telegram/messenger/R$id;->text_apr_title:I

    aput v9, v3, v7

    const-string v10, "windowBackgroundWhiteGrayText"

    invoke-static {p1, v10, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput v8, v3, v5

    aput v9, v3, v7

    aput v6, v3, v2

    const/4 v10, 0x3

    aput v4, v3, v10

    .line 38
    invoke-static {p1, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    sget v3, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v10

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)I

    move-result v10

    invoke-virtual {p1, v3, v10}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    sget v3, Lorg/telegram/messenger/R$id;->image_network_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getLogo()I

    move-result v10

    invoke-virtual {p1, v3, v10}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    sget v10, Lorg/telegram/messenger/R$id;->image_info:I

    invoke-static {p1, v10, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 42
    invoke-static {p1, v10}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v10, Lorg/telegram/messenger/R$string;->staking_programme_apy:I

    invoke-interface {v1, v10}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v8, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x25

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v11, Lorg/telegram/messenger/R$string;->staking_programme_apr:I

    invoke-interface {v1, v11}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v9, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 47
    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 48
    sget-object v0, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v1

    new-array v10, v2, [I

    aput v8, v10, v5

    aput v6, v10, v7

    invoke-static {p1, v1, v10}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p2

    invoke-static {p2}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p2

    new-array v0, v2, [I

    aput v9, v0, v5

    aput v4, v0, v7

    invoke-static {p1, p2, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider$convert$1$1;

    invoke-direct {p2, p0}, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider$convert$1$1;-><init>(Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;)V

    invoke-static {p1, v3, p2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingProgrammeItem;Ljava/util/List;)V
    .locals 7
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

    .line 62
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

    .line 63
    sget p3, Lorg/telegram/messenger/R$id;->image_network_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getLogo()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 64
    sget p3, Lorg/telegram/messenger/R$id;->text_apy_value:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 65
    sget v0, Lorg/telegram/messenger/R$id;->text_apr_value:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 66
    sget v1, Lorg/telegram/messenger/R$id;->text_name:I

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 67
    sget-object v1, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    sget v5, Lorg/telegram/messenger/R$id;->text_apy_title:I

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput p3, v4, v5

    invoke-static {p1, v2, v4}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getApr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p2

    invoke-static {p2}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p2

    new-array p3, v3, [I

    sget v1, Lorg/telegram/messenger/R$id;->text_apr_title:I

    aput v1, p3, v6

    aput v0, p3, v5

    invoke-static {p1, p2, p3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Z[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingProgrammeItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingProgrammeItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->layoutId:I

    return v0
.end method
