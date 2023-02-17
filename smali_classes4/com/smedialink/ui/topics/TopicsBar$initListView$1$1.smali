.class public final Lcom/smedialink/ui/topics/TopicsBar$initListView$1$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "TopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/topics/TopicsBar;->initListView()Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lorg/telegram/ui/Components/RecyclerListView;

.field final synthetic this$0:Lcom/smedialink/ui/topics/TopicsBar;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Lcom/smedialink/ui/topics/TopicsBar;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicsBar$initListView$1$1;->$this_apply:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p2, p0, Lcom/smedialink/ui/topics/TopicsBar$initListView$1$1;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    const/4 p1, 0x0

    .line 147
    invoke-direct {p0, p3, p1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const-string v0, "recycler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicsBar$initListView$1$1;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    invoke-static {v0}, Lcom/smedialink/ui/topics/TopicsBar;->access$getDelegate$p(Lcom/smedialink/ui/topics/TopicsBar;)Lcom/smedialink/ui/topics/TopicsBar$TopicsBarDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/smedialink/ui/topics/TopicsBar$TopicsBarDelegate;->isTabMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/smedialink/ui/topics/TopicsBar$initListView$1$1$smoothScrollToPosition$linearSmoothScroller$1;

    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicsBar$initListView$1$1;->$this_apply:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p2, v0, p1}, Lcom/smedialink/ui/topics/TopicsBar$initListView$1$1$smoothScrollToPosition$linearSmoothScroller$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    .line 167
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 168
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
