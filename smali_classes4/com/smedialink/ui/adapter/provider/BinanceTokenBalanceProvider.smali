.class public final Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "BinanceTokenBalanceProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 21
    iput-object p2, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 25
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->itemViewType:I

    .line 26
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_account_balance:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;)V
    .locals 10

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget v0, Lorg/telegram/messenger/R$id;->card_account_balance:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string v2, "windowBackgroundWhite"

    .line 33
    invoke-static {p1, v0, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 34
    sget v0, Lorg/telegram/messenger/R$id;->text_account_title:I

    const-string v2, "chats_actionBackground"

    invoke-static {p1, v0, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 35
    sget v4, Lorg/telegram/messenger/R$id;->text_trade_pair:I

    aput v4, v3, v1

    sget v5, Lorg/telegram/messenger/R$id;->text_trade_price:I

    const/4 v6, 0x1

    aput v5, v3, v6

    sget v7, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    const/4 v8, 0x2

    aput v7, v3, v8

    const-string v9, "windowBackgroundWhiteGrayText2"

    invoke-static {p1, v9, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 36
    sget v3, Lorg/telegram/messenger/R$id;->text_account_balance:I

    const-string v9, "chat_messagePanelText"

    invoke-static {p1, v3, v9}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v9, 0x5

    new-array v9, v9, [I

    aput v3, v9, v1

    aput v4, v9, v6

    .line 37
    sget v1, Lorg/telegram/messenger/R$id;->text_trade_percent:I

    aput v1, v9, v8

    aput v5, v9, v2

    const/4 v1, 0x4

    aput v7, v9, v1

    invoke-static {p1, v9}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 38
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    sget-object v0, Lcom/smedialink/utils/formatter/MaskFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/MaskFormatter;

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v1

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getTotalBalanceText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v1

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v2, v3}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getDollarsBalanceText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    sget v0, Lorg/telegram/messenger/R$id;->constraint_trade_info:I

    invoke-virtual {p1, v0, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 42
    sget v0, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

    invoke-virtual {v2}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->getRefererHeader()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/util/Map;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 43
    sget v0, Lorg/telegram/messenger/R$id;->text_coin_ticker:I

    new-instance v1, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider$convert$1;

    invoke-direct {v1, p2}, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider$convert$1;-><init>(Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;)V

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;",
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

    .line 48
    sget p3, Lorg/telegram/messenger/R$id;->text_account_title:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 49
    sget p3, Lorg/telegram/messenger/R$id;->text_account_balance:I

    sget-object v0, Lcom/smedialink/utils/formatter/MaskFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/MaskFormatter;

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v1

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getTotalBalanceText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 50
    sget p3, Lorg/telegram/messenger/R$id;->text_account_balance_in_dollars:I

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v1

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v2, v3}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getDollarsBalanceText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/utils/formatter/MaskFormatter;->textOrMask(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 51
    sget p3, Lorg/telegram/messenger/R$id;->constraint_trade_info:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 52
    sget p3, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

    invoke-virtual {v1}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->getRefererHeader()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1, p3, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/util/Map;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 53
    sget p3, Lorg/telegram/messenger/R$id;->text_coin_ticker:I

    new-instance v0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider$convert$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider$convert$2;-><init>(Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;)V

    invoke-static {p1, p3, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/pay/BinanceBalanceItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;->layoutId:I

    return v0
.end method
