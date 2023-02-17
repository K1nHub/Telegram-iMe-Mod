.class Lorg/telegram/ui/Components/SharedMediaLayout$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$finalMediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

.field final synthetic val$forward:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;ZLorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V
    .locals 0

    .line 2876
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$forward:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$finalMediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 2879
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v0

    .line 2880
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2402(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 2881
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    .line 2882
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$forward:Z

    if-eqz v1, :cond_0

    .line 2883
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2502(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    .line 2884
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setMediaColumnsCount(I)V

    .line 2885
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$finalMediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2887
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$forward:Z

    if-eqz v1, :cond_2

    .line 2888
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2889
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$finalMediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_0

    .line 2891
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2894
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$finalMediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2895
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ltz v1, :cond_5

    .line 2896
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    array-length v0, v0

    if-ge v2, v0, :cond_6

    .line 2897
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2898
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$forward:Z

    if-eqz v0, :cond_3

    .line 2899
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2901
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    .line 2904
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2908
    :cond_5
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5800(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    .line 2910
    :cond_6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
