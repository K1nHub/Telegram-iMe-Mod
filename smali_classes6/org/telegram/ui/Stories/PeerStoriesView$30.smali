.class Lorg/telegram/ui/Stories/PeerStoriesView$30;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 5008
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$30;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5011
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 5012
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$30;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 5013
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$30;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7302(Lorg/telegram/ui/Stories/PeerStoriesView;F)F

    .line 5014
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$30;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_0

    .line 5015
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onOverrideAnimationEnd()V

    .line 5017
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$30;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v0, :cond_1

    .line 5018
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setKeyboardVisible(Z)V

    .line 5020
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$30;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5021
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$30;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5023
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$30;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 5024
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
