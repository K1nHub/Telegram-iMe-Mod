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
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 23
    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 27
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->itemViewType:I

    .line 28
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_account_balance:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->layoutId:I

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Token;)V
    .locals 13

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget v0, Lorg/telegram/messenger/R$id;->card_account_balance:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 35
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 36
    sget v0, Lorg/telegram/messenger/R$id;->constraint_trade_info:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p1, v0, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedRoundedBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IIF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 37
    sget v2, Lorg/telegram/messenger/R$id;->text_account_title:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p1, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 38
    sget v3, Lorg/telegram/messenger/R$id;->text_trade_pair:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p1, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    sget v5, Lorg/telegram/messenger/R$id;->text_trade_price:I

    invoke-static {p1, v5, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    sget v6, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    invoke-static {p1, v6, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    sget v7, Lorg/telegram/messenger/R$id;->text_trade_percent:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/iMe/storage/domain/model/wallet/PriceRate;

    move-result-object v8

    invoke-static {v8}, Lcom/iMe/utils/extentions/model/wallet/PriceRateExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/PriceRate;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getColorKey()I

    move-result v8

    invoke-static {p1, v7, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 42
    sget v8, Lorg/telegram/messenger/R$id;->text_account_balance:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {p1, v8, v9}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v9, 0x5

    new-array v9, v9, [I

    aput v8, v9, v1

    const/4 v10, 0x1

    aput v3, v9, v10

    const/4 v11, 0x2

    aput v7, v9, v11

    const/4 v11, 0x3

    aput v5, v9, v11

    const/4 v11, 0x4

    aput v6, v9, v11

    .line 43
    invoke-static {p1, v9}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 44
    sget v9, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v11

    iget-object v12, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v12}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iMe/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)I

    move-result v11

    invoke-virtual {p1, v9, v11}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 45
    sget v9, Lorg/telegram/messenger/R$id;->image_price_direction:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/iMe/storage/domain/model/wallet/PriceRate;

    move-result-object v11

    invoke-static {v11}, Lcom/iMe/utils/extentions/model/wallet/PriceRateExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/PriceRate;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getIcon()I

    move-result v11

    invoke-virtual {p1, v9, v11}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 46
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/iMe/storage/domain/model/wallet/PriceRate;

    move-result-object v11

    invoke-static {v11}, Lcom/iMe/utils/extentions/model/wallet/PriceRateExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/PriceRate;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getColorKey()I

    move-result v11

    invoke-static {p1, v9, v11}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 47
    sget v9, Lorg/telegram/messenger/R$id;->image_trade:I

    invoke-static {p1, v9, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 48
    sget-object v4, Lcom/iMe/utils/formatter/MaskFormatter;->INSTANCE:Lcom/iMe/utils/formatter/MaskFormatter;

    iget-object v9, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v9}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v9

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v11

    invoke-static {v11}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lcom/iMe/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 49
    iget-object v8, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getFullName()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v2, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget-object v9, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->getFullName()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsRateText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 52
    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_dashboard_balance_24h_rate:I

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/iMe/storage/domain/model/wallet/PriceRate;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/PriceRate;->getRatePercentageChange24h()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-interface {v2, v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v1

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/iMe/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 55
    sget v0, Lorg/telegram/messenger/R$id;->text_coin_ticker:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$1;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$1;-><init>(Lcom/iMe/model/wallet/home/AccountItem$Token;Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Token;Ljava/util/List;)V
    .locals 4
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

    .line 59
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p2

    .line 61
    sget p3, Lorg/telegram/messenger/R$id;->text_account_balance:I

    sget-object v0, Lcom/iMe/utils/formatter/MaskFormatter;->INSTANCE:Lcom/iMe/utils/formatter/MaskFormatter;

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v1

    invoke-static {p2}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iMe/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 62
    sget p3, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v1

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p2, v2}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iMe/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 63
    sget p3, Lorg/telegram/messenger/R$id;->image_price_direction:I

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/iMe/storage/domain/model/wallet/PriceRate;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/PriceRateExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/PriceRate;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getIcon()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/iMe/storage/domain/model/wallet/PriceRate;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/PriceRateExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/PriceRate;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getColorKey()I

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 65
    sget p3, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 66
    sget p3, Lorg/telegram/messenger/R$id;->text_trade_percent:I

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/iMe/storage/domain/model/wallet/PriceRate;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/PriceRateExtKt;->getPriceDirection(Lcom/iMe/storage/domain/model/wallet/PriceRate;)Lcom/iMe/model/wallet/home/PriceRateDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/PriceRateDirection;->getColorKey()I

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 67
    sget v0, Lorg/telegram/messenger/R$id;->text_trade_price:I

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p2, v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsRateText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_dashboard_balance_24h_rate:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/iMe/storage/domain/model/wallet/PriceRate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/PriceRate;->getRatePercentageChange24h()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/iMe/model/wallet/home/AccountItem$Token;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Token;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/iMe/model/wallet/home/AccountItem$Token;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Token;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->layoutId:I

    return v0
.end method