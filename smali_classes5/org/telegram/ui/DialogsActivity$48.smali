.class Lorg/telegram/ui/DialogsActivity$48;
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

    .line 7837
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$48;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    iput-object p5, p0, Lorg/telegram/ui/DialogsActivity$48;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/RightSlidingDialogContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method


# virtual methods
.method getOccupyStatusbar()Z
    .locals 1

    .line 7846
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

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

.method public openAnimationFinished(Z)V
    .locals 6

    .line 7935
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 7936
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$22200(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7938
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30000(Lorg/telegram/ui/DialogsActivity;)V

    .line 7940
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7941
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7943
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 7944
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 7945
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 7946
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 7947
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$21000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7948
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 7949
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7950
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 7951
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 7952
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZZ)V

    .line 7953
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/DialogsActivity;->access$9402(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7954
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$34000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 7955
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 7957
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v0, :cond_2

    .line 7958
    invoke-static {p1, v5}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;F)V

    .line 7960
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7961
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$4002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7962
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$7702(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7963
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$34100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 7965
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    .line 7966
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$14900(Lorg/telegram/ui/DialogsActivity;)V

    .line 7967
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;ZZ)V

    return-void
.end method

.method public openAnimationStarted(Z)V
    .locals 13

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 7853
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$22200(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7856
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$21200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7857
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$24302(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/MenuDrawable;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7858
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$24300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRoundCap()V

    .line 7861
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$9402(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7862
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/DialogsActivity;->access$9502(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7863
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 7864
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/DialogsActivity$48;->fromScrollYProperty:F

    .line 7866
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7867
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7869
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    .line 7870
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7871
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$48$1;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$48;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/DialogsActivity$48$1;-><init>(Lorg/telegram/ui/DialogsActivity$48;Landroid/content/Context;)V

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33502(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView;

    .line 7893
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    .line 7894
    new-instance v3, Lorg/telegram/ui/DialogsActivity$48$2;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$48;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1}, Lorg/telegram/ui/DialogsActivity$48$2;-><init>(Lorg/telegram/ui/DialogsActivity$48;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    .line 7903
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7904
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$48;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7600(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$8200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$33700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    move-result-object v11

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    invoke-static {v1, v12}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33602(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 7905
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setIsTransitionSupport()V

    .line 7906
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7907
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    if-nez p1, :cond_4

    .line 7909
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v3, :cond_4

    .line 7910
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$4002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7911
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$7900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;F)V

    .line 7914
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 7915
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7600(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsType(I)V

    .line 7916
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 7917
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 7918
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 7919
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixEndGap(Z)V

    .line 7920
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$21000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7921
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$48;->anotherFragmentOpened:Z

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7922
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 7923
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 7924
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    neg-float v0, v0

    .line 7925
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$33500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v3, v1, v0, p1, v2}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZZ)V

    .line 7926
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 7927
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$33900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 7928
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 7929
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$14900(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method setOpenProgress(F)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 7973
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/DialogsActivity$48;->anotherFragmentOpened:Z

    if-eq v3, v1, :cond_1

    .line 7974
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$48;->anotherFragmentOpened:Z

    .line 7976
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$9700(Lorg/telegram/ui/DialogsActivity;Z)F

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$9602(Lorg/telegram/ui/DialogsActivity;F)F

    .line 7977
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_2

    :cond_3
    :goto_1
    sub-float v3, v4, p1

    :goto_2
    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$6402(Lorg/telegram/ui/DialogsActivity;F)F

    .line 7978
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34200(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7979
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34300(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 7982
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7983
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, -0x3d900000    # -60.0f

    mul-float/2addr v3, p1

    .line 7984
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7985
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v3

    sub-float v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7986
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7988
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7989
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, -0x3df00000    # -36.0f

    mul-float/2addr v3, p1

    .line 7990
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7991
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v3

    sub-float v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7992
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7996
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v3, :cond_7

    .line 7997
    iget v3, p0, Lorg/telegram/ui/DialogsActivity$48;->fromScrollYProperty:F

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;F)V

    .line 7999
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$14900(Lorg/telegram/ui/DialogsActivity;)V

    .line 8000
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$24300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8001
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$24300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 8003
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 8004
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    sub-float v3, v4, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 8005
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_9

    .line 8006
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8009
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 8010
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    sub-float v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8012
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 8013
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    sub-float v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8015
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 8016
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    sub-float v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8018
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 8019
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$48;->anotherFragmentOpened:Z

    if-eqz v2, :cond_d

    move v2, v0

    goto :goto_3

    :cond_d
    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8021
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 8022
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    cmpl-float v2, p1, v4

    if-nez v2, :cond_f

    goto :goto_4

    :cond_f
    move v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8025
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 8026
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    .line 8028
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 8029
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 8027
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 8026
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8035
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    if-eqz v0, :cond_12

    .line 8036
    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setOpenRightFragmentProgress(F)V

    :cond_12
    return-void
.end method
