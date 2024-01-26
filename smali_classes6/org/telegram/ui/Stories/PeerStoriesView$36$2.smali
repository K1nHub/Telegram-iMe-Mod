.class Lorg/telegram/ui/Stories/PeerStoriesView$36$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView$36;->lambda$onReactionClicked$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

.field final synthetic val$effectStarted:[Z

.field final synthetic val$storiesLikeButtonFinal:Lorg/telegram/ui/Stories/StoriesLikeButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$36;[ZLorg/telegram/ui/Stories/StoriesLikeButton;)V
    .locals 0

    .line 6277
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->val$effectStarted:[Z

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->val$storiesLikeButtonFinal:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 6280
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$8902(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 6281
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10102(Lorg/telegram/ui/Stories/PeerStoriesView;F)F

    .line 6282
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6283
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->val$effectStarted:[Z

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 6284
    aput-boolean v2, p1, v0

    .line 6285
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10202(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 6286
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 6288
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->val$storiesLikeButtonFinal:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setAllowDrawReaction(Z)V

    .line 6289
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->val$storiesLikeButtonFinal:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->animateVisibleReaction()V

    .line 6291
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6292
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 6293
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$36$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$36;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9202(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_1
    return-void
.end method
