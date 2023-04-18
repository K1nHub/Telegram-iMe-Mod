.class public final Lcom/iMe/ui/adapter/provider/NftTokenProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "NftTokenProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/nft/NftTokenItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private spacing:I

.field private spanCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    const/4 v0, 0x4

    .line 21
    iput v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->spanCount:I

    const/16 v0, 0x10

    .line 22
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->spacing:I

    .line 25
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->NFT_AVATAR:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->itemViewType:I

    .line 26
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_nft_token:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/nft/NftTokenItem;)V
    .locals 4

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->getCollection()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->getToken()Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->spanCount:I

    rem-int/2addr v0, v1

    .line 32
    iget v2, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->spacing:I

    mul-int v3, v0, v2

    div-int/2addr v3, v1

    sub-int v3, v2, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    .line 33
    div-int/2addr v0, v1

    .line 36
    sget v1, Lorg/telegram/messenger/R$id;->card_nft_token:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string v2, "windowBackgroundWhite"

    .line 37
    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 38
    sget v1, Lorg/telegram/messenger/R$id;->nft_root_view:I

    new-instance v2, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;

    invoke-direct {v2, p2, v3, v0}, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;-><init>(Lcom/iMe/model/wallet/home/nft/NftTokenItem;II)V

    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 42
    sget v0, Lorg/telegram/messenger/R$id;->image_nft_image:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$2;

    invoke-direct {v1, p2}, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$2;-><init>(Lcom/iMe/model/wallet/home/nft/NftTokenItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/nft/NftTokenItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->layoutId:I

    return v0
.end method

.method public final setSpanCount(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider;->spanCount:I

    return-void
.end method
