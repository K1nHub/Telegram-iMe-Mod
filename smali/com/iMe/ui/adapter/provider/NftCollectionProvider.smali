.class public final Lcom/iMe/ui/adapter/provider/NftCollectionProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "NftCollectionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/nft/NftCollectionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageCornerRadius$delegate:Lkotlin/Lazy;

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
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 37
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NFT_COLLECTION:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->itemViewType:I

    .line 38
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_nft_collection:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->layoutId:I

    .line 40
    new-instance p1, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$imageCornerRadius$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$imageCornerRadius$2;-><init>(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->imageCornerRadius$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p1, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$networkIconCornerSize$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$networkIconCornerSize$2;-><init>(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getImageCornerRadius(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)F
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->getImageCornerRadius()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)F
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final getImageCornerRadius()F
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->imageCornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/nft/NftCollectionItem;)V
    .locals 7

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget v0, Lorg/telegram/messenger/R$id;->card_nft_collection:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 46
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 47
    sget v0, Lorg/telegram/messenger/R$id;->text_collection_name:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 48
    sget v2, Lorg/telegram/messenger/R$id;->text_collection_size:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {p1, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [I

    aput v2, v4, v1

    .line 49
    invoke-static {p1, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 50
    sget v4, Lorg/telegram/messenger/R$id;->image_arrow:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p1, v4, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/high16 v5, 0x3f000000    # 0.5f

    .line 51
    invoke-static {p1, v4, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setAlpha(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x43870000    # 270.0f

    .line 52
    :goto_0
    invoke-static {p1, v4, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRotate(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 58
    iget-object v4, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->nft_collection_size:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->getTokens()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-interface {v4, v5, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 60
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->getCollection()Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 61
    sget v0, Lorg/telegram/messenger/R$id;->image_collection_image:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;-><init>(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;Lcom/iMe/model/wallet/home/nft/NftCollectionItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 88
    sget v0, Lorg/telegram/messenger/R$id;->image_network_icon:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$2;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$2;-><init>(Lcom/iMe/model/wallet/home/nft/NftCollectionItem;Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/nft/NftCollectionItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/home/nft/NftCollectionItem;",
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

    .line 107
    sget p3, Lorg/telegram/messenger/R$id;->image_arrow:I

    .line 108
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43870000    # 270.0f

    .line 106
    :goto_0
    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRotate(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 110
    sget p3, Lorg/telegram/messenger/R$id;->image_network_icon:I

    new-instance v0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$3;

    invoke-direct {v0, p2, p0}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$3;-><init>(Lcom/iMe/model/wallet/home/nft/NftCollectionItem;Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)V

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/nft/NftCollectionItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/nft/NftCollectionItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->layoutId:I

    return v0
.end method
