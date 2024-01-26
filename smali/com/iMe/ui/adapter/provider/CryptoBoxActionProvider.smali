.class public final Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CryptoBoxActionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;",
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

    .line 24
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 26
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTOBOX_ACTION:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->itemViewType:I

    .line 27
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_transaction:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->layoutId:I

    .line 29
    new-instance p1, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider$networkIconCornerSize$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider$networkIconCornerSize$2;-><init>(Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;)F
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "helper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget v3, Lorg/telegram/messenger/R$id;->linear_root:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 34
    sget v5, Lorg/telegram/messenger/R$id;->text_date:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_date:I

    invoke-static {v3, v5, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 35
    sget v6, Lorg/telegram/messenger/R$id;->text_amount:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    invoke-static {v3, v6, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 36
    sget v7, Lorg/telegram/messenger/R$id;->text_status:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getStatusColor()I

    move-result v8

    invoke-static {v3, v7, v8}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 37
    sget v8, Lorg/telegram/messenger/R$id;->text_transaction_type_title:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    invoke-static {v3, v8, v9}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 38
    sget v9, Lorg/telegram/messenger/R$id;->view_divider:I

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;->getAdapter()Lcom/chad/library/adapter/base/BaseNodeAdapter;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v10}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->isLastItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v1

    const/4 v10, 0x1

    xor-int/2addr v1, v10

    invoke-static {v3, v9, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 39
    sget v3, Lorg/telegram/messenger/R$id;->image_transaction_type_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getIcon()I

    move-result v9

    invoke-virtual {v1, v3, v9}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v11

    .line 40
    sget v1, Lorg/telegram/messenger/R$id;->image_staking_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getToken()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/TokenItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move v12, v1

    invoke-static/range {v11 .. v17}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    new-array v9, v10, [I

    aput v6, v9, v4

    .line 41
    invoke-static {v3, v9}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 42
    iget-object v4, v0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v2, v4}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getStatusText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getAmount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 44
    iget-object v4, v0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v2, v4}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getTransactionTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 45
    new-instance v4, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider$convert$1;

    invoke-direct {v4, v2}, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider$convert$1;-><init>(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;)V

    invoke-static {v3, v5, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v2

    .line 46
    new-instance v3, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider$convert$2;

    invoke-direct {v3, v0}, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider$convert$2;-><init>(Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;)V

    invoke-static {v2, v1, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;->layoutId:I

    return v0
.end method
