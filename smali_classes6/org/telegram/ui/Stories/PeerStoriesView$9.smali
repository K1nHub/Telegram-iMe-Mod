.class Lorg/telegram/ui/Stories/PeerStoriesView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 1580
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$9;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$9;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1583
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$9;->val$show:Z

    if-nez p1, :cond_0

    .line 1584
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$9;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1585
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$9;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    :cond_0
    return-void
.end method
