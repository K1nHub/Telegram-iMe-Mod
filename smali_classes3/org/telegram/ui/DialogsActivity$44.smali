.class Lorg/telegram/ui/DialogsActivity$44;
.super Lorg/telegram/ui/RightSlidingDialogContainer;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field anotherFragmentOpened:Z

.field fromScrollYProperty:F

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field final synthetic val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/DialogsActivity$ContentView;Landroid/content/Context;)V
    .locals 0

    .line 7301
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$44;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    iput-object p5, p0, Lorg/telegram/ui/DialogsActivity$44;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/RightSlidingDialogContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method


# virtual methods
.method getOccupyStatusbar()Z
    .locals 1

    .line 7310
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openAnimationFinished()V
    .locals 6

    .line 7384
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 7385
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7387
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$34200(Lorg/telegram/ui/DialogsActivity;)V

    .line 7389
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7390
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7392
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 7393
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 7394
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 7395
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 7396
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$20900(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7397
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 7398
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7399
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 7400
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 7401
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZ)V

    .line 7402
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$17002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7403
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$34300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 7404
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 7406
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;F)V

    .line 7407
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    .line 7408
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14700(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method public openAnimationStarted(Z)V
    .locals 13

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 7317
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7320
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7321
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$24002(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/MenuDrawable;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7322
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRoundCap()V

    .line 7325
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$17002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7326
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 7327
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/DialogsActivity$44;->fromScrollYProperty:F

    .line 7329
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7330
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7332
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    .line 7333
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7334
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$44$1;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$44;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/DialogsActivity$44$1;-><init>(Lorg/telegram/ui/DialogsActivity$44;Landroid/content/Context;)V

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33602(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView;

    .line 7356
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->val$context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 7357
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixEndGap(Z)V

    .line 7358
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7359
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$44;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$33900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    move-result-object v11

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    invoke-static {v1, v12}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33702(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 7360
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setIsTransitionSupport()V

    .line 7361
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7362
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7365
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsType(I)V

    .line 7366
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 7367
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 7368
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 7369
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixEndGap(Z)V

    .line 7370
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$20900(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7371
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$44;->anotherFragmentOpened:Z

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7372
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 7373
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 7374
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$34000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZ)V

    .line 7375
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 7376
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$34100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 7377
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 7378
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$14700(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method setOpenProgress(F)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7414
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/DialogsActivity$44;->anotherFragmentOpened:Z

    if-eq v3, v2, :cond_1

    .line 7415
    iput-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$44;->anotherFragmentOpened:Z

    .line 7417
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v3, 0x2c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$7902(Lorg/telegram/ui/DialogsActivity;F)F

    .line 7418
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    sub-float v3, v4, p1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$5002(Lorg/telegram/ui/DialogsActivity;F)F

    .line 7419
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$34400(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7420
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$34500(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 7423
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7424
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    move-result-object v2

    sub-float v3, v4, p1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7425
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7426
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7429
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/topics/TopicsBar;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 7430
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/topics/TopicsBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, -0x3df00000    # -36.0f

    mul-float v3, v3, p1

    .line 7431
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7432
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/topics/TopicsBar;

    move-result-object v3

    sub-float v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7433
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/topics/TopicsBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7437
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$44;->fromScrollYProperty:F

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;F)V

    .line 7438
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$14700(Lorg/telegram/ui/DialogsActivity;)V

    .line 7439
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7440
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 7443
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$34600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 7444
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$34700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    sub-float v3, v4, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 7446
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$34800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 7447
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$34900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_8

    .line 7448
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$35000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7450
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 7451
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sub-float v2, v4, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7453
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 7454
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sub-float v2, v4, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7456
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$35100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 7457
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$35100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sub-float v2, v4, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7459
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 7460
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$44;->anotherFragmentOpened:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_2

    :cond_c
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7462
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$35200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 7463
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$35300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    cmpl-float v2, p1, v4

    if-nez v2, :cond_e

    goto :goto_3

    :cond_e
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7466
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 7467
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "actionBarDefaultArchived"

    .line 7469
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "actionBarDefault"

    .line 7470
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 7468
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 7467
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7476
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$44;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    if-eqz v0, :cond_11

    .line 7477
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setOpenRightFragmentProgress(F)V

    :cond_11
    return-void
.end method
