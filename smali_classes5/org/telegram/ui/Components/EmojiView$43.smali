.class Lorg/telegram/ui/Components/EmojiView$43;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->closeSearch(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final synthetic val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroidx/recyclerview/widget/GridLayoutManager;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 5506
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 5528
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$15300(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5529
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$15302(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 5509
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$15300(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5510
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 5511
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 5512
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$10100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/16 v2, 0x24

    const/16 v3, 0x2c

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5514
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 5515
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 5516
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 5517
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v5, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 5513
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_3
    :goto_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 5520
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$43;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 5522
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$43;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$15302(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_5
    return-void
.end method
