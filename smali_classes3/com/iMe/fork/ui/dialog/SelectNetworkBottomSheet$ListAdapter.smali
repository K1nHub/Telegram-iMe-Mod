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

    .line 439
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 446
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

    .line 450
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->EMPTY_VIEW:I

    goto :goto_0

    .line 451
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NETWORK_CELL:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 442
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
    .locals 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 472
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->NETWORK_CELL:I

    if-ne v0, v1, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type com.iMe.ui.custom.ImageTextCheckCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/ui/custom/ImageTextCheckCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    .line 473
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 474
    instance-of v2, v1, Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    .line 475
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getResourceManager(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->networks_all:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 476
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_all_networks:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 477
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getSelectedNetwork$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 478
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-eq v0, p2, :cond_0

    move p2, v9

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, p1

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, p2

    .line 474
    invoke-static/range {v1 .. v8}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupViewData$default(Lcom/iMe/ui/custom/ImageTextCheckCell;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZILjava/lang/Object;)V

    goto :goto_2

    .line 481
    :cond_1
    instance-of v2, v1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 483
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getLogoUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 485
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getSelectedNetwork$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 486
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getCurrentItemsList(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-eq v0, p2, :cond_2

    move p2, v9

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, p1

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, p2

    .line 482
    invoke-static/range {v1 .. v8}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupViewData$default(Lcom/iMe/ui/custom/ImageTextCheckCell;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZILjava/lang/Object;)V

    .line 490
    :cond_3
    :goto_2
    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    goto :goto_3

    .line 493
    :cond_4
    sget p2, Lcom/iMe/common/IdFabric$ViewTypes;->EMPTY_VIEW:I

    if-ne v0, p2, :cond_5

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "null cannot be cast to non-null type com.iMe.fork.ui.view.EmptyView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/view/EmptyView;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/EmptyView;->getAnimationView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_5
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->EMPTY_VIEW:I

    const-string v0, "context"

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/iMe/fork/ui/view/EmptyView;

    .line 458
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    sget v0, Lorg/telegram/messenger/R$string;->wallet_network_type_dialog_search_empty:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026type_dialog_search_empty)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-direct {p1, p2, v0}, Lcom/iMe/fork/ui/view/EmptyView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    .line 461
    invoke-static {p2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)I

    move-result p2

    const/16 v0, 0xfa

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 464
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

    .line 465
    invoke-static {p2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;)I

    move-result p2

    const/4 v0, -0x2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
