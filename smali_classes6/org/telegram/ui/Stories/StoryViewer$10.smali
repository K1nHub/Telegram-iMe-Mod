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

    .line 1889
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1892
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 1893
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    const/4 p1, 0x0

    .line 1894
    sput-boolean p1, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    .line 1895
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration()V

    .line 1896
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz p1, :cond_0

    .line 1897
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1899
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    if-nez p1, :cond_1

    .line 1900
    invoke-virtual {v1, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1901
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    const/4 v1, 0x0

    iput-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1903
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    if-nez p1, :cond_2

    .line 1904
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1905
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1907
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1909
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 1911
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 1912
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method
