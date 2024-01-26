.class public Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "FiltersSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHelperCallback"
.end annotation


# instance fields
.field private selectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic this$0:Lorg/telegram/ui/FiltersSetupActivity;


# direct methods
.method public static synthetic $r8$lambda$ogDrU04AT3gCrHVjswhYNt_YIU8(Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->resetDefaultPosition()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;)V
    .locals 0

    .line 1517
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method private clearSelectedViewHolder()V
    .locals 4

    .line 1527
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->selectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 1530
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    .line 1531
    iput-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->selectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    .line 1532
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1533
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const-string v1, "elevation"

    .line 1534
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private resetDefaultPosition()V
    .locals 4

    .line 1581
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1584
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1585
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1586
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->moveElementToStart(I)V

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1800(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1589
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/FiltersSetupActivity;->onDefaultTabMoved()V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1616
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1617
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->clearSelectedViewHolder()V

    .line 1618
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 1548
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1549
    invoke-static {p2, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    .line 1551
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 1565
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1567
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1568
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p3}, Lorg/telegram/ui/FiltersSetupActivity;->access$1400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    .line 1569
    iget-object p6, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p6}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p6

    iget-object p7, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p7}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result p7

    add-int/2addr p6, p7

    invoke-virtual {p2, p6}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    const/4 p6, 0x0

    if-eqz p3, :cond_0

    .line 1570
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p7

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    if-gt p7, p3, :cond_0

    cmpg-float p3, p5, p6

    if-gez p3, :cond_0

    :goto_0
    move p5, p6

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 1572
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    cmpl-float p2, p5, p6

    if-lez p2, :cond_1

    goto :goto_0

    .line 1575
    :cond_1
    :goto_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 1576
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1556
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1559
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->swapElements(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1597
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->clearSelectedViewHolder()V

    if-eqz p2, :cond_0

    .line 1599
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->selectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1600
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1800(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 1601
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1603
    :cond_0
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1604
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity$TouchHelperCallback;)V

    const-wide/16 v1, 0x140

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1606
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
