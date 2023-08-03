.class public Lorg/telegram/ui/DialogsActivity$ViewPage;
.super Landroid/widget/FrameLayout;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPage"
.end annotation


# instance fields
.field public animateStoriesView:Z

.field private animationSupportDialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

.field private animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private archivePullViewState:I

.field private dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

.field private dialogsItemAnimator:Lorg/telegram/ui/Components/DialogsItemAnimator;

.field private dialogsType:I

.field private isLocked:Z

.field private itemTouchhelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private lastItemsCount:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

.field public pageAdditionalOffset:I

.field private progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

.field private recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field public scroller:Lorg/telegram/ui/RecyclerListViewScroller;

.field private selectedType:I

.field private swipeController:Lorg/telegram/ui/DialogsActivity$SwipeController;

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field updateListRunnable:Ljava/lang/Runnable;

.field updating:Z


# direct methods
.method public static synthetic $r8$lambda$LFHGvfMuYNSCdNgVGOI6aoPhcJM(Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 1660
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 1661
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1669
    new-instance p1, Lorg/telegram/ui/DialogsActivity$ViewPage$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$ViewPage$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I
    .locals 0

    .line 1636
    iget p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->selectedType:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I
    .locals 0

    .line 1636
    iput p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->selectedType:I

    return p1
.end method

.method static synthetic access$14400(Lorg/telegram/ui/DialogsActivity$ViewPage;)Z
    .locals 0

    .line 1636
    iget-boolean p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->isLocked:Z

    return p0
.end method

.method static synthetic access$14402(Lorg/telegram/ui/DialogsActivity$ViewPage;Z)Z
    .locals 0

    .line 1636
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->isLocked:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/Adapters/DialogsAdapter;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    return-object p1
.end method

.method static synthetic access$15500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-object p0
.end method

.method static synthetic access$15502(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/PullForegroundDrawable;)Lorg/telegram/ui/Components/PullForegroundDrawable;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-object p1
.end method

.method static synthetic access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$16002(Lorg/telegram/ui/DialogsActivity$ViewPage;Landroidx/recyclerview/widget/LinearLayoutManager;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p1
.end method

.method static synthetic access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->itemTouchhelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$16102(Lorg/telegram/ui/DialogsActivity$ViewPage;Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->itemTouchhelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p1
.end method

.method static synthetic access$16200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I
    .locals 0

    .line 1636
    iget p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->archivePullViewState:I

    return p0
.end method

.method static synthetic access$16202(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I
    .locals 0

    .line 1636
    iput p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->archivePullViewState:I

    return p1
.end method

.method static synthetic access$16700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static synthetic access$16702(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/FlickerLoadingView;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p1
.end method

.method static synthetic access$17100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$SwipeController;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->swipeController:Lorg/telegram/ui/DialogsActivity$SwipeController;

    return-object p0
.end method

.method static synthetic access$17102(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/DialogsActivity$SwipeController;)Lorg/telegram/ui/DialogsActivity$SwipeController;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->swipeController:Lorg/telegram/ui/DialogsActivity$SwipeController;

    return-object p1
.end method

.method static synthetic access$18900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsItemAnimator:Lorg/telegram/ui/Components/DialogsItemAnimator;

    return-object p0
.end method

.method static synthetic access$18902(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/DialogsItemAnimator;)Lorg/telegram/ui/Components/DialogsItemAnimator;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsItemAnimator:Lorg/telegram/ui/Components/DialogsItemAnimator;

    return-object p1
.end method

.method static synthetic access$27200(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    return-object p0
.end method

.method static synthetic access$27202(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    return-object p1
.end method

.method static synthetic access$28602(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I
    .locals 0

    .line 1636
    iput p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->lastItemsCount:I

    return p1
.end method

.method static synthetic access$28800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    return-object p0
.end method

.method static synthetic access$28802(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    return-object p1
.end method

.method static synthetic access$33500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$33502(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p1
.end method

.method static synthetic access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;
    .locals 0

    .line 1636
    iget-object p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->animationSupportDialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    return-object p0
.end method

.method static synthetic access$33602(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/Adapters/DialogsAdapter;
    .locals 0

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->animationSupportDialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    return-object p1
.end method

.method static synthetic access$7600(Lorg/telegram/ui/DialogsActivity$ViewPage;)I
    .locals 0

    .line 1636
    iget p0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsType:I

    return p0
.end method

.method static synthetic access$7602(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I
    .locals 0

    .line 1636
    iput p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsType:I

    return p1
.end method

.method private synthetic lambda$new$0()V
    .locals 8

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    .line 1671
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    .line 1676
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    iget v5, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsType:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->archivePullViewState:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    invoke-virtual {v3, v4, v1, v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->updateList(Lorg/telegram/ui/Components/RecyclerListView;ZFZ)V

    .line 1677
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v7}, Lorg/telegram/ui/DialogsActivity;->access$4002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 1678
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    iput-boolean v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updateDialogsOnNextDraw:Z

    .line 1679
    iput-boolean v6, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->updating:Z

    return-void
.end method


# virtual methods
.method public isDefaultDialogType()Z
    .locals 2

    .line 1665
    iget v0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1685
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->animateStoriesView:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x55

    .line 1686
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1688
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1690
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public updateList(Z)V
    .locals 2

    .line 1694
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1698
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateListRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1699
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsItemAnimator:Lorg/telegram/ui/Components/DialogsItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1700
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateListRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1703
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->updating:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 1706
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->updating:Z

    .line 1707
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->dialogsItemAnimator:Lorg/telegram/ui/Components/DialogsItemAnimator;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1708
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1710
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateListRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x24

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
