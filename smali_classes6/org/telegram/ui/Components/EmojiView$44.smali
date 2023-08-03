.class Lorg/telegram/ui/Components/EmojiView$44;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->openSearch(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final synthetic val$gridView:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 5062
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$44;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 5080
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$15100(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5081
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$15102(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 5065
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$15100(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5066
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 5067
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$9900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5069
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5070
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v2, v1, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 5071
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 5072
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 5068
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 5074
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$44;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$15102(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_4
    return-void
.end method
