.class public final Lcom/iMe/ui/adapter/provider/SelectTokenProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "SelectTokenProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/CryptoSelectTokensItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 16
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->SELECT_TOKENS:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/SelectTokenProvider;->itemViewType:I

    .line 17
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_crypto_select_tokens:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/SelectTokenProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoSelectTokensItem;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget p2, Lorg/telegram/messenger/R$id;->select_tokens_text:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string v0, "chats_actionBackground"

    .line 24
    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/iMe/model/wallet/home/CryptoSelectTokensItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/SelectTokenProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoSelectTokensItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/iMe/ui/adapter/provider/SelectTokenProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/iMe/ui/adapter/provider/SelectTokenProvider;->layoutId:I

    return v0
.end method
