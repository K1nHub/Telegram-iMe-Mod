.class public Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;
.super Ljava/lang/Object;
.source "StoriesUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvatarStoryParams"
.end annotation


# instance fields
.field public allowLongress:Z

.field public animate:Z

.field public animateFromUnreadState:I

.field buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public currentState:I

.field private dialogId:J

.field public drawHiddenStoriesAsSegments:Z

.field public drawSegments:Z

.field public forceAnimateProgressToSegments:Z

.field globalAngle:F

.field public globalState:I

.field inc:Z

.field public isArchive:Z

.field public isFirst:Z

.field public isLast:Z

.field private final isStoryCell:Z

.field longPressRunnable:Ljava/lang/Runnable;

.field operation:Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;

.field public originalAvatarRect:Landroid/graphics/RectF;

.field pressed:Z

.field public prevState:I

.field public progressToArc:F

.field public progressToSate:F

.field public progressToSegments:F

.field public showProgress:Z

.field startX:F

.field startY:F

.field public storyId:I

.field public storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field sweepAngle:F

.field public unreadState:I


# direct methods
.method public static synthetic $r8$lambda$Ts5Wt7Pzl84Ba-A3PjvBz65zcmU(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->lambda$checkOnTouchEvent$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 744
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 745
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animate:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 748
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    const/4 v1, 0x0

    .line 749
    iput v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    .line 763
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    const/4 v0, 0x0

    .line 764
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->showProgress:Z

    .line 767
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    .line 770
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->allowLongress:Z

    .line 773
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J
    .locals 2

    .line 743
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;J)J
    .locals 0

    .line 743
    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z
    .locals 0

    .line 743
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 0

    .line 743
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->updateProgressParams()V

    return-void
.end method

.method private synthetic lambda$checkOnTouchEvent$0(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 831
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 832
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v1, :cond_0

    .line 833
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 835
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 836
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 837
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 839
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->pressed:Z

    .line 840
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onLongPress()V

    return-void
.end method

.method private processOpenStory(Landroid/view/View;)V
    .locals 8

    .line 881
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 882
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 883
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    .line 884
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    .line 885
    invoke-virtual {p0, v0, v1, v3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->openStory(JLjava/lang/Runnable;)V

    return-void

    .line 888
    :cond_0
    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    .line 889
    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    invoke-virtual {p0, v0, v1, v3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->openStory(JLjava/lang/Runnable;)V

    return-void

    .line 893
    :cond_1
    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 894
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    if-nez v1, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:I

    if-lez v0, :cond_2

    .line 895
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;-><init>()V

    .line 896
    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    invoke-virtual {v0, v1, v2, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->load(JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    :cond_2
    return-void
.end method

.method private updateProgressParams()V
    .locals 2

    .line 782
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    const v1, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_0

    .line 783
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 785
    iput v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    const/4 v0, 0x0

    .line 786
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    goto :goto_0

    .line 789
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 791
    iput v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    const/4 v0, 0x1

    .line 792
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    .line 795
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    const v1, 0x3f9374bc    # 1.152f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    return-void
.end method


# virtual methods
.method public checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6

    .line 802
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 803
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 804
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 807
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->isAvatarsEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 810
    :cond_0
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v4, :cond_1

    .line 811
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasHiddenStories()Z

    move-result v3

    goto :goto_0

    .line 813
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    if-nez v0, :cond_3

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:I

    if-lez v0, :cond_3

    :cond_2
    move v3, v2

    .line 815
    :cond_3
    :goto_0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->dialogId:J

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-nez v0, :cond_4

    .line 817
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;F)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    goto :goto_1

    .line 819
    :cond_4
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ButtonBounce;->setView(Landroid/view/View;)V

    .line 821
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 823
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->pressed:Z

    .line 824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->startX:F

    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->startY:F

    .line 826
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->allowLongress:Z

    if-eqz p1, :cond_f

    .line 827
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 828
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 830
    :cond_5
    new-instance p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->longPressRunnable:Ljava/lang/Runnable;

    .line 841
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    int-to-long v0, p2

    .line 830
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_2

    .line 844
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->pressed:Z

    if-eqz v0, :cond_a

    .line 845
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_f

    .line 846
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz p1, :cond_8

    .line 847
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ButtonBounce;->setView(Landroid/view/View;)V

    .line 848
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 850
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    .line 851
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 853
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 854
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->pressed:Z

    goto :goto_2

    .line 856
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 857
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v0, :cond_c

    .line 858
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ButtonBounce;->setView(Landroid/view/View;)V

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 861
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->pressed:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 862
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->processOpenStory(Landroid/view/View;)V

    .line 864
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 865
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_e

    .line 866
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 868
    :cond_e
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->pressed:Z

    .line 869
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_f

    .line 870
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 873
    :cond_f
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->pressed:Z

    return p1
.end method

.method public getScale()F
    .locals 2

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    :goto_0
    return v0
.end method

.method public onDetachFromWindow()V
    .locals 0

    .line 919
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->reset()V

    return-void
.end method

.method public onLongPress()V
    .locals 0

    return-void
.end method

.method public openStory(JLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->operation:Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->cancel()V

    .line 912
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->operation:Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;

    .line 914
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v0, 0x0

    .line 915
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->pressed:Z

    return-void
.end method
