.class public final Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "TokenBalanceProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/AccountItem$Token;",
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

    .line 35
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 37
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->itemViewType:I

    .line 38
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_account_balance:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->layoutId:I

    .line 40
    new-instance p1, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$networkIconCornerSize$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$networkIconCornerSize$2;-><init>(Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;)F
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Token;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "helper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    .line 45
    sget v4, Lorg/telegram/messenger/R$id;->card_account_balance:I

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 46
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, v4, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 48
    sget v4, Lorg/telegram/messenger/R$id;->constraint_trade_info:I

    .line 49
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    const/high16 v7, 0x40800000    # 4.0f

    .line 47
    invoke-static {v1, v4, v6, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedRoundedBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IIF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 52
    sget v6, Lorg/telegram/messenger/R$id;->text_title:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1, v6, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 54
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/4 v8, 0x3

    new-array v9, v8, [I

    .line 55
    sget v10, Lorg/telegram/messenger/R$id;->text_trade_pair:I

    aput v10, v9, v5

    .line 56
    sget v11, Lorg/telegram/messenger/R$id;->text_trade_price:I

    const/4 v12, 0x1

    aput v11, v9, v12

    .line 57
    sget v13, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    const/4 v14, 0x2

    aput v13, v9, v14

    .line 53
    invoke-static {v1, v7, v9}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 59
    sget v9, Lorg/telegram/messenger/R$id;->text_trade_percent:I

    invoke-static {v3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getColorKey()I

    move-result v15

    invoke-static {v1, v9, v15}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 60
    sget v15, Lorg/telegram/messenger/R$id;->text_subtitle:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {v1, v15, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/4 v8, 0x5

    new-array v8, v8, [I

    aput v15, v8, v5

    aput v10, v8, v12

    aput v9, v8, v14

    const/4 v14, 0x3

    aput v11, v8, v14

    const/4 v14, 0x4

    aput v13, v8, v14

    .line 61
    invoke-static {v1, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v16

    .line 68
    sget v17, Lorg/telegram/messenger/R$id;->image_logo:I

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 69
    sget v8, Lorg/telegram/messenger/R$id;->image_price_direction:I

    invoke-static {v3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getIcon()I

    move-result v14

    invoke-virtual {v1, v8, v14}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 70
    invoke-static {v3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getColorKey()I

    move-result v14

    invoke-static {v1, v8, v14}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 71
    sget v8, Lorg/telegram/messenger/R$id;->image_trade:I

    invoke-static {v1, v8, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 74
    sget-object v7, Lcom/iMe/utils/formatter/MaskFormatter;->INSTANCE:Lcom/iMe/utils/formatter/MaskFormatter;

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden()Z

    move-result v8

    invoke-static {v3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v8, v14}, Lcom/iMe/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-virtual {v1, v15, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 76
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v10, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 78
    invoke-static {v3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsRateText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v11, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 81
    iget-object v6, v0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 82
    sget v8, Lorg/telegram/messenger/R$string;->wallet_dashboard_balance_24h_rate:I

    new-array v10, v12, [Ljava/lang/Object;

    .line 83
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRatePercentageChange24h()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v5

    .line 81
    invoke-interface {v6, v8, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v1, v9, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 88
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden()Z

    move-result v5

    invoke-static {v3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lcom/iMe/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v1, v13, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 90
    sget v5, Lorg/telegram/messenger/R$id;->text_coin_ticker:I

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible()Z

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 92
    sget v4, Lorg/telegram/messenger/R$id;->image_network_icon:I

    new-instance v5, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$1$1;

    invoke-direct {v5, v2, v3, v0}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$1$1;-><init>(Lcom/iMe/model/wallet/home/AccountItem$Token;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;)V

    invoke-static {v1, v4, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Token;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/home/AccountItem$Token;",
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

    .line 109
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p3

    .line 112
    sget v0, Lorg/telegram/messenger/R$id;->text_subtitle:I

    .line 113
    sget-object v1, Lcom/iMe/utils/formatter/MaskFormatter;->INSTANCE:Lcom/iMe/utils/formatter/MaskFormatter;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden()Z

    move-result v2

    invoke-static {p3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/iMe/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 116
    sget v0, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    .line 117
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden()Z

    move-result v2

    invoke-static {p3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/iMe/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 119
    sget v0, Lorg/telegram/messenger/R$id;->image_price_direction:I

    invoke-static {p3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getIcon()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 120
    invoke-static {p3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getColorKey()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v2

    .line 121
    sget v3, Lorg/telegram/messenger/R$id;->image_logo:I

    invoke-virtual {p3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 122
    sget v0, Lorg/telegram/messenger/R$id;->text_trade_percent:I

    invoke-static {p3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getColorKey()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 123
    sget v1, Lorg/telegram/messenger/R$id;->text_trade_price:I

    invoke-static {p3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsRateText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 126
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 127
    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_balance_24h_rate:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRatePercentageChange24h()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 126
    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 131
    sget v0, Lorg/telegram/messenger/R$id;->image_network_icon:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;

    invoke-direct {v1, p2, p3, p0}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;-><init>(Lcom/iMe/model/wallet/home/AccountItem$Token;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/iMe/model/wallet/home/AccountItem$Token;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Token;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/iMe/model/wallet/home/AccountItem$Token;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Token;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->layoutId:I

    return v0
.end method
