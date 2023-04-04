.class public final Lcom/iMe/ui/adapter/provider/StakingOperationProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "StakingOperationProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/transaction/StakingOperationItem;",
        ">;"
    }
.end annotation


# instance fields
.field private extraPadding:F

.field private final itemViewType:I

.field private final layoutId:I

.field private final networkIconCornerSize$delegate:Lkotlin/Lazy;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 25
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_OPERATION:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->itemViewType:I

    .line 26
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_transaction:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->layoutId:I

    .line 29
    new-instance p1, Lcom/iMe/ui/adapter/provider/StakingOperationProvider$networkIconCornerSize$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/adapter/provider/StakingOperationProvider$networkIconCornerSize$2;-><init>(Lcom/iMe/ui/adapter/provider/StakingOperationProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/StakingOperationProvider;)F
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->getNetworkIconCornerSize()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/StakingOperationProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/transaction/StakingOperationItem;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "helper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget v5, Lorg/telegram/messenger/R$id;->linear_root:I

    const/4 v3, 0x0

    invoke-static {v1, v5, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v4

    .line 36
    sget v12, Lorg/telegram/messenger/R$id;->text_date:I

    const-string v6, "chats_date"

    invoke-static {v4, v12, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v4

    .line 37
    sget v13, Lorg/telegram/messenger/R$id;->text_amount:I

    const-string v6, "chats_name"

    invoke-static {v4, v13, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v4

    .line 38
    sget v14, Lorg/telegram/messenger/R$id;->text_status:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getStatusColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v14, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v4

    .line 39
    sget v15, Lorg/telegram/messenger/R$id;->text_transaction_type_title:I

    const-string v6, "chats_message"

    invoke-static {v4, v15, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v4

    .line 40
    sget v6, Lorg/telegram/messenger/R$id;->view_divider:I

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;->getAdapter()Lcom/chad/library/adapter/base/BaseNodeAdapter;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v7}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->isLastItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v1

    const/4 v7, 0x1

    xor-int/2addr v1, v7

    invoke-static {v4, v6, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 41
    sget v11, Lorg/telegram/messenger/R$id;->image_staking_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->isBadgeVisible()Z

    move-result v4

    invoke-virtual {v1, v11, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 42
    sget v4, Lorg/telegram/messenger/R$id;->image_transaction_type_icon:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getIcon()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getStakingIconResId()I

    move-result v4

    invoke-virtual {v1, v11, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    new-array v4, v7, [I

    aput v13, v4, v3

    .line 44
    invoke-static {v1, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v4

    .line 45
    iget v8, v0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->extraPadding:F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v1, 0x0

    move v6, v8

    move v3, v11

    move-object v11, v1

    invoke-static/range {v4 .. v11}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setPadding$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IFFFFILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 46
    iget-object v4, v0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v2, v4}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getStatusText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v14, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 47
    iget-object v4, v0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v2, v4}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getAmount(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v13, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 48
    iget-object v4, v0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v2, v4}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTransactionTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 49
    new-instance v4, Lcom/iMe/ui/adapter/provider/StakingOperationProvider$convert$1;

    invoke-direct {v4, v2}, Lcom/iMe/ui/adapter/provider/StakingOperationProvider$convert$1;-><init>(Lcom/iMe/model/wallet/transaction/StakingOperationItem;)V

    invoke-static {v1, v12, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/iMe/ui/adapter/provider/StakingOperationProvider$convert$2;

    invoke-direct {v2, v0}, Lcom/iMe/ui/adapter/provider/StakingOperationProvider$convert$2;-><init>(Lcom/iMe/ui/adapter/provider/StakingOperationProvider;)V

    invoke-static {v1, v3, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/transaction/StakingOperationItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/iMe/ui/adapter/provider/StakingOperationProvider;->layoutId:I

    return v0
.end method
