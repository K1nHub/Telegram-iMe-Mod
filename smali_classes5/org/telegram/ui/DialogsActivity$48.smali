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

    .line 7954
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$48;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    iput-object p5, p0, Lorg/telegram/ui/DialogsActivity$48;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/RightSlidingDialogContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method


# virtual methods
.method getOccupyStatusbar()Z
    .locals 1

    .line 7963
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

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

    .line 8052
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 8053
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$22500(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 8055
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$29400(Lorg/telegram/ui/DialogsActivity;)V

    .line 8057
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8058
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8060
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixGap(Z)V

    .line 8061
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 8062
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 8063
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 8064
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$21500(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 8065
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 8066
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 8067
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 8068
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 8069
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZZ)V

    .line 8070
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/DialogsActivity;->access$8902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 8071
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$33300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 8072
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 8074
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v0, :cond_2

    .line 8075
    invoke-static {p1, v5}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;F)V

    .line 8077
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8078
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$3502(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 8079
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$7202(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 8081
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 8082
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8084
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    .line 8085
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$15200(Lorg/telegram/ui/DialogsActivity;)V

    .line 8086
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;ZZ)V

    return-void
.end method

.method public openAnimationStarted(Z)V
    .locals 13

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 7970
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$22500(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7973
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$21700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7974
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$32700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$24502(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/MenuDrawable;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7975
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$24500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRoundCap()V

    .line 7978
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$8902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7979
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/DialogsActivity;->access$9002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 7980
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->val$contentView:Lorg/telegram/ui/DialogsActivity$ContentView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 7981
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/DialogsActivity$48;->fromScrollYProperty:F

    .line 7983
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7984
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7986
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    .line 7987
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7988
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$48$1;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$48;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/DialogsActivity$48$1;-><init>(Lorg/telegram/ui/DialogsActivity$48;Landroid/content/Context;)V

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32802(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView;

    .line 8010
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    .line 8011
    new-instance v3, Lorg/telegram/ui/DialogsActivity$48$2;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$48;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1}, Lorg/telegram/ui/DialogsActivity$48$2;-><init>(Lorg/telegram/ui/DialogsActivity$48;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    .line 8020
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8021
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v12, Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$48;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$7700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$10800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$33000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$33100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$RequestPeerType;

    move-result-object v11

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;IIZLjava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$RequestPeerType;)V

    invoke-static {v1, v12}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32902(Lorg/telegram/ui/DialogsActivity$ViewPage;Lorg/telegram/ui/Adapters/DialogsAdapter;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 8022
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setIsTransitionSupport()V

    .line 8023
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8024
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    if-nez p1, :cond_4

    .line 8026
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v3, :cond_4

    .line 8027
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$3502(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 8028
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$7400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;F)V

    .line 8031
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 8032
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsType(I)V

    .line 8033
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setCollapsedView(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 8034
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 8035
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsListFrozen(Z)V

    .line 8036
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setNeedFixEndGap(Z)V

    .line 8037
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$21500(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 8038
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$48;->anotherFragmentOpened:Z

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 8039
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 8040
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 8041
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    neg-float v0, v0

    .line 8042
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$32800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v3, v1, v0, p1, v2}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZZ)V

    .line 8043
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 8044
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$33200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 8045
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 8046
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$15200(Lorg/telegram/ui/DialogsActivity;)V

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

    .line 8092
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/DialogsActivity$48;->anotherFragmentOpened:Z

    if-eq v3, v1, :cond_1

    .line 8093
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$48;->anotherFragmentOpened:Z

    .line 8095
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$9200(Lorg/telegram/ui/DialogsActivity;Z)F

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$9102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 8096
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;)Z

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
    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$5802(Lorg/telegram/ui/DialogsActivity;F)F

    .line 8097
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 8098
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 8101
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$400(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 8102
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$400(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 8103
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v3, :cond_5

    const/16 v3, -0x30

    goto :goto_3

    :cond_5
    const/16 v3, -0x3c

    :goto_3
    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8104
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$400(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v3

    sub-float v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8105
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$400(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8107
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 8108
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, -0x3df00000    # -36.0f

    mul-float/2addr v3, p1

    .line 8109
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8110
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v3

    sub-float v5, v4, p1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8111
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8115
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v3, :cond_8

    .line 8116
    iget v3, p0, Lorg/telegram/ui/DialogsActivity$48;->fromScrollYProperty:F

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;F)V

    .line 8118
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$15200(Lorg/telegram/ui/DialogsActivity;)V

    .line 8119
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$24500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8120
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$24500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 8122
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 8123
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    sub-float v3, v4, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 8124
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_a

    .line 8125
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8128
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 8129
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    sub-float v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8131
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$23000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 8132
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$23000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    sub-float v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8134
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 8135
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    sub-float v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8137
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 8138
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$48;->anotherFragmentOpened:Z

    if-eqz v2, :cond_e

    move v2, v0

    goto :goto_4

    :cond_e
    move v2, v4

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8140
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 8141
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    cmpl-float v2, p1, v4

    if-nez v2, :cond_10

    goto :goto_5

    :cond_10
    move v0, v4

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8144
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 8145
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    .line 8147
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 8148
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 8146
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 8145
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8154
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->transitionPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    if-eqz v0, :cond_13

    .line 8155
    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setOpenRightFragmentProgress(F)V

    :cond_13
    return-void
.end method
