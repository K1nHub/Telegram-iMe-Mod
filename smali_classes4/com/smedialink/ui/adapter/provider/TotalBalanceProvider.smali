.class public final Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "TotalBalanceProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/home/TotalBalanceItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 21
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TOTAL_BALANCE:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->itemViewType:I

    .line 22
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_crypto_total_balance:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/TotalBalanceItem;)V
    .locals 4

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget v0, Lorg/telegram/messenger/R$id;->text_wallet_crypto_total_balance:I

    const-string v1, "chat_messagePanelText"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 29
    invoke-static {p1, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    iget-object v2, p0, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->getFormattedBalance(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 31
    sget p2, Lorg/telegram/messenger/R$id;->image_wallet_crypto_eye:I

    const-string v0, "windowBackgroundWhiteGrayText2"

    invoke-static {p1, p2, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 32
    iget-object v2, p0, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_wallet_crypto_cipher_eye:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_eye:I

    :goto_0
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 33
    invoke-static {p1, p2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 34
    sget v2, Lorg/telegram/messenger/R$id;->image_wallet_crypto_tokens_settings:I

    aput v2, p2, v3

    sget v3, Lorg/telegram/messenger/R$id;->image_wallet_order_tokens:I

    aput v3, p2, v1

    invoke-static {p1, v0, p2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 35
    invoke-static {p1, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/TotalBalanceItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/wallet/home/TotalBalanceItem;",
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

    .line 40
    sget p3, Lorg/telegram/messenger/R$id;->text_wallet_crypto_total_balance:I

    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->getFormattedBalance(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/TotalBalanceItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/TotalBalanceItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;->layoutId:I

    return v0
.end method
