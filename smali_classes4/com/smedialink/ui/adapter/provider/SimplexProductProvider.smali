.class public final Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "SimplexProductProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 23
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->PRODUCT_FOR_BUY:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->itemViewType:I

    .line 24
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_buy_token:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 7

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v0, Lorg/telegram/messenger/R$id;->card_buy_token_wrapper:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string v2, "windowBackgroundWhite"

    .line 31
    invoke-static {p1, v0, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 32
    sget v0, Lorg/telegram/messenger/R$id;->text_discount:I

    const-string v2, "chats_name"

    invoke-static {p1, v0, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 33
    sget v2, Lorg/telegram/messenger/R$id;->text_coin_value:I

    const-string v3, "chats_attachMessage"

    invoke-static {p1, v2, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 34
    sget v3, Lorg/telegram/messenger/R$id;->text_price_value:I

    const-string v4, "chats_date"

    invoke-static {p1, v3, v4}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 35
    sget v5, Lorg/telegram/messenger/R$id;->text_price_title:I

    invoke-static {p1, v5, v4}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v4, 0x1

    new-array v6, v4, [I

    aput v0, v6, v1

    .line 36
    invoke-static {p1, v6}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v4, v4, [I

    aput v3, v4, v1

    .line 37
    invoke-static {p1, v4}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 38
    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_amount_title:I

    invoke-interface {v1, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2, v0}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getAmount(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2, v0}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getPrice(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_buy_tokens_purchase_slide_price_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 42
    sget v0, Lorg/telegram/messenger/R$id;->image_coin_icon:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/custom/CircleTokenView;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getSmallWhiteIcon()I

    move-result v0

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getProduct()Lcom/smedialink/storage/domain/model/billing/CryptoProduct;

    move-result-object p2

    invoke-static {p2}, Lcom/smedialink/utils/extentions/model/wallet/CryptoProductExtKt;->getBackgroundColor(Lcom/smedialink/storage/domain/model/billing/CryptoProduct;)I

    move-result p2

    invoke-interface {v1, p2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/smedialink/ui/custom/CircleTokenView;->setIconAndColor(II)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/SimplexProductProvider;->layoutId:I

    return v0
.end method
