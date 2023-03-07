.class public final Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "BinanceTransactionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private extraPadding:F

.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 23
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TRANSACTION:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;->itemViewType:I

    .line 24
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_transaction:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;)V
    .locals 13

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v2, Lorg/telegram/messenger/R$id;->linear_root:I

    const/4 v0, 0x0

    invoke-static {p1, v2, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 31
    sget v9, Lorg/telegram/messenger/R$id;->text_date:I

    const-string v3, "chats_date"

    invoke-static {v1, v9, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 32
    sget v10, Lorg/telegram/messenger/R$id;->text_amount:I

    const-string v3, "chats_name"

    invoke-static {v1, v10, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 33
    sget v11, Lorg/telegram/messenger/R$id;->text_status:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;->getTransactionStatusColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 34
    sget v12, Lorg/telegram/messenger/R$id;->text_transaction_type_title:I

    const-string v3, "chats_message"

    invoke-static {v1, v12, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 35
    sget v3, Lorg/telegram/messenger/R$id;->view_divider:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;->getAdapter()Lcom/chad/library/adapter/base/BaseNodeAdapter;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v4}, Lcom/smedialink/utils/extentions/common/RecycleViewExtKt;->isLastItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result p1

    const/4 v4, 0x1

    xor-int/2addr p1, v4

    invoke-static {v1, v3, p1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 36
    sget v1, Lorg/telegram/messenger/R$id;->image_transaction_type_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;->getTransactionIcon()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v1, v4, [I

    aput v10, v1, v0

    .line 37
    invoke-static {p1, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 38
    iget v5, p0, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;->extraPadding:F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    move v3, v5

    invoke-static/range {v1 .. v8}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setPadding$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IFFFFILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2, v0}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;->getTransactionStatus(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2, v0}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;->getTransactionTitle(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v12, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider$convert$1;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider$convert$1;-><init>(Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;)V

    invoke-static {p1, v9, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/pay/BinanceTransactionItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/BinanceTransactionProvider;->layoutId:I

    return v0
.end method
