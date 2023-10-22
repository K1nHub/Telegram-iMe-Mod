.class Lorg/telegram/ui/Stories/StoryViewer$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoryViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->startOpenAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 2061
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 2064
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 2065
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    const/4 p1, 0x0

    .line 2066
    sput-boolean p1, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    .line 2067
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration()V

    .line 2068
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz p1, :cond_0

    .line 2069
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2071
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    if-nez p1, :cond_1

    .line 2072
    invoke-virtual {v1, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2073
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput-object v2, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2075
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    if-nez p1, :cond_2

    .line 2076
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 2077
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2078
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput-object v2, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2080
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2082
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2084
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 2085
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method
