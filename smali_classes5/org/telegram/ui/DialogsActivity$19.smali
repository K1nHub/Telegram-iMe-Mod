.class Lorg/telegram/ui/DialogsActivity$19;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field private wasManualScroll:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 5892
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    .line 5901
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$19;->wasManualScroll:Z

    .line 5902
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/DialogsActivity;->access$27302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5903
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    invoke-virtual {p1}, Lorg/telegram/ui/RecyclerListViewScroller;->cancel()V

    goto :goto_0

    .line 5905
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$27302(Lorg/telegram/ui/DialogsActivity;Z)Z

    :goto_0
    if-nez p2, :cond_3

    .line 5908
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$19;->wasManualScroll:Z

    .line 5909
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$16902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5910
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$7800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5911
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$7802(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5912
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$17000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5913
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->access$27400(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V

    .line 5914
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$17002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5916
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 5918
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$26600(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Z

    :cond_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 5924
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$18900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object p2

    neg-int v0, p3

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->onListScroll(I)V

    const/4 p2, -0x1

    const/4 v0, 0x0

    move v2, p2

    move v3, v2

    move v1, v0

    .line 5927
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 5928
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    if-eq v2, p2, :cond_0

    if-le v4, v2, :cond_1

    :cond_0
    move v2, v4

    :cond_1
    if-eq v3, p2, :cond_2

    if-ge v4, v3, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5938
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$15100(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    .line 5939
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 5940
    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->access$4002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5941
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$27500(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5942
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$27600(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 5945
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_f

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$19;->wasManualScroll:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity;->storiesEnabled:Z

    if-nez v1, :cond_f

    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_f

    if-eq v3, p2, :cond_f

    .line 5947
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    .line 5948
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ltz v1, :cond_f

    :cond_7
    if-eqz p2, :cond_8

    .line 5951
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    goto :goto_1

    :cond_8
    move p2, v0

    .line 5955
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$27700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 5956
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$27800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    sub-int/2addr v1, p2

    .line 5957
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$27800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    if-ge p2, v2, :cond_9

    move v2, v4

    goto :goto_2

    :cond_9
    move v2, v0

    .line 5958
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v4, :cond_a

    goto :goto_3

    :cond_a
    move v1, v0

    goto :goto_4

    .line 5960
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$27700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    if-le v3, v1, :cond_c

    move v2, v4

    goto :goto_3

    :cond_c
    move v2, v0

    :goto_3
    move v1, v4

    :goto_4
    if-eqz v1, :cond_e

    .line 5962
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v2, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$27300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5963
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5965
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$27702(Lorg/telegram/ui/DialogsActivity;I)I

    .line 5966
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, p2}, Lorg/telegram/ui/DialogsActivity;->access$27802(Lorg/telegram/ui/DialogsActivity;I)I

    .line 5967
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v4}, Lorg/telegram/ui/DialogsActivity;->access$27902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5971
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p2, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v1, :cond_18

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$28000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v0

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    if-ne p1, p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$13600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$28100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$16900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_18

    .line 5972
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_11

    if-lez p3, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7600(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result p2

    if-nez p2, :cond_11

    .line 5973
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 5975
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5976
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_11

    .line 5977
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    add-int/2addr v1, p2

    add-int p1, v1, p3

    if-lez p1, :cond_11

    if-gez v1, :cond_10

    neg-int p3, v1

    goto :goto_5

    :cond_10
    return-void

    .line 5988
    :cond_11
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result p1

    int-to-float p2, p3

    sub-float p2, p1, p2

    .line 5991
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v1, :cond_12

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 5993
    :cond_12
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3, v4}, Lorg/telegram/ui/DialogsActivity;->access$4002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5994
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$28200(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_13

    .line 5995
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$28300(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    :cond_13
    move v4, v0

    :cond_14
    if-eqz v4, :cond_18

    .line 6000
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$7900(Lorg/telegram/ui/DialogsActivity;)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    cmpg-float v1, p2, p3

    const/4 v2, 0x0

    if-gez v1, :cond_15

    move p2, p3

    goto :goto_6

    :cond_15
    cmpl-float p3, p2, v2

    if-lez p3, :cond_16

    move p2, v2

    :cond_16
    :goto_6
    cmpl-float p1, p2, p1

    if-eqz p1, :cond_18

    cmpl-float p1, p2, v2

    if-nez p1, :cond_17

    .line 6009
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 6012
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;F)V

    .line 6016
    :cond_18
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$28400(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 6017
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$28500(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    .line 6019
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    if-eqz p1, :cond_1a

    .line 6020
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 6022
    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 6023
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$19;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_1b
    return-void
.end method
