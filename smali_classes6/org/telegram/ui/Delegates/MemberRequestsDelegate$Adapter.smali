.class Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MemberRequestsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Delegates/MemberRequestsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;)I
    .locals 0

    .line 547
    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->extraFirstHolders()I

    move-result p0

    return p0
.end method

.method private extraFirstHolders()I
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private extraLastHolders()I
    .locals 1

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public appendItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 635
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 636
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    move v4, v0

    .line 637
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v5}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 638
    iget-object v5, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v5}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    .line 640
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 650
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 597
    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->extraFirstHolders()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->extraLastHolders()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$900(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 609
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 592
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 581
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    .line 582
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/MemberRequestCell;

    .line 583
    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->extraFirstHolders()I

    move-result v0

    sub-int/2addr p2, v0

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$700(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-object v2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Cells/MemberRequestCell;->setData(Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Z)V

    goto :goto_1

    .line 585
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 586
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 547
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 556
    new-instance p2, Lorg/telegram/ui/Cells/MemberRequestCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    iget-boolean v1, v0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->isChannel:Z

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Cells/MemberRequestCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/Cells/MemberRequestCell$OnClickListener;Z)V

    .line 557
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$600(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 573
    :cond_0
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 565
    :cond_1
    new-instance p2, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter$1;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;Landroid/content/Context;)V

    goto :goto_0

    .line 561
    :cond_2
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 562
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 576
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public removeItem(Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;)V
    .locals 5

    const/4 v0, 0x0

    .line 655
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 656
    iget-object v1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 662
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 663
    invoke-direct {p0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->extraFirstHolders()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 664
    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 665
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_2
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 618
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 619
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    add-int/lit8 v3, v0, 0x1

    .line 620
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 621
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    cmp-long v4, v4, v1

    if-nez v4, :cond_0

    .line 623
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$Adapter;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->access$800(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 631
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
