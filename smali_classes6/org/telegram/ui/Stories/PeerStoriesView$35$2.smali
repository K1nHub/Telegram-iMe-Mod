.class Lorg/telegram/ui/Stories/PeerStoriesView$35$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView$35;->lambda$onReactionClicked$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

.field final synthetic val$effectStarted:[Z

.field final synthetic val$storiesLikeButtonFinal:Lorg/telegram/ui/Stories/StoriesLikeButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$35;[ZLorg/telegram/ui/Stories/StoriesLikeButton;)V
    .locals 0

    .line 5664
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->val$effectStarted:[Z

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->val$storiesLikeButtonFinal:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 5667
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7902(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 5668
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9102(Lorg/telegram/ui/Stories/PeerStoriesView;F)F

    .line 5669
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5670
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->val$effectStarted:[Z

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5671
    aput-boolean v2, p1, v0

    .line 5672
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9202(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 5673
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 5675
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->val$storiesLikeButtonFinal:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setAllowDrawReaction(Z)V

    .line 5676
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->val$storiesLikeButtonFinal:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->animateVisibleReaction()V

    .line 5678
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$8200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5679
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$8200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 5680
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$8202(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_1
    return-void
.end method
