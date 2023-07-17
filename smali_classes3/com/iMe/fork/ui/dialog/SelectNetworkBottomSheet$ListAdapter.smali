.class final Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelectNetworkBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 398
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 411
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->EMPTY_VIEW:I

    goto :goto_0

    .line 412
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NETWORK_CELL:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->NETWORK_CELL:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 433
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->NETWORK_CELL:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 434
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "null cannot be cast to non-null type com.iMe.ui.custom.ImageTextCheckCell"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/ui/custom/ImageTextCheckCell;

    .line 436
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getSelectedNetwork$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 439
    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, p2, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 435
    :goto_0
    invoke-virtual {p1, v2, v0, v3, p2}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupViewData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 441
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    goto :goto_1

    .line 445
    :cond_1
    sget p2, Lcom/iMe/common/IdFabric$ViewTypes;->EMPTY_VIEW:I

    if-ne v0, p2, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "null cannot be cast to non-null type com.iMe.fork.ui.view.EmptyView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/view/EmptyView;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/EmptyView;->getAnimationView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->EMPTY_VIEW:I

    const-string v0, "context"

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/iMe/fork/ui/view/EmptyView;

    .line 419
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    sget v0, Lorg/telegram/messenger/R$string;->wallet_network_type_dialog_search_empty:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026type_dialog_search_empty)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-direct {p1, p2, v0}, Lcom/iMe/fork/ui/view/EmptyView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    .line 422
    invoke-static {p2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)I

    move-result p2

    const/16 v0, 0xfa

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 425
    :cond_0
    new-instance p1, Lcom/iMe/ui/custom/ImageTextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/ImageTextCheckCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    .line 426
    invoke-static {p2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)I

    move-result p2

    const/4 v0, -0x2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
