.class Lorg/telegram/ui/Stories/PeerStoriesView$13;
.super Lorg/telegram/ui/Components/ChatActivityEnterView;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private chatActivityEnterViewAnimateFromTop:I

.field private messageEditTextAnimator:Landroid/animation/Animator;

.field messageEditTextPredrawHeigth:I

.field messageEditTextPredrawScrollY:I

.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$95Ru6p9LO1nbRTVnc5H6j8acuMg(Lorg/telegram/ui/Stories/PeerStoriesView$13;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kMois8hzqhKCYHG661zKeEwlX-c(Lorg/telegram/ui/Stories/PeerStoriesView$13;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 1869
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$4502(Lorg/telegram/ui/Stories/PeerStoriesView$13;I)I
    .locals 0

    .line 1869
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;
    .locals 0

    .line 1869
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;
    .locals 0

    .line 1869
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/PeerStoriesView$13;)I
    .locals 0

    .line 1869
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/PeerStoriesView$13;)F
    .locals 0

    .line 1869
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewEnterProgress:F

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;
    .locals 0

    .line 1869
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;
    .locals 0

    .line 1869
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;
    .locals 0

    .line 1869
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Stories/PeerStoriesView$13;)I
    .locals 0

    .line 1869
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;
    .locals 0

    .line 1869
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method private checkRecording()V
    .locals 2

    .line 1971
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingAudioVideo()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2002(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_2

    .line 1973
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsRecording(Z)V

    .line 1975
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1976
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1903
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 1904
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    .line 1905
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 1906
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1907
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1933
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    return-void
.end method


# virtual methods
.method public checkAnimation()V
    .locals 11

    .line 1883
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v0

    .line 1884
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->chatActivityEnterViewAnimateFromTop:I

    const-wide/16 v2, 0xfa

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    if-eq v0, v1, :cond_2

    .line 1885
    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    add-int/2addr v8, v1

    sub-int/2addr v8, v0

    .line 1886
    iput v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    .line 1887
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 1888
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1890
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1893
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v1, v1

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewEnterProgress:F

    sub-float/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1896
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1900
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1901
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-array v1, v5, [F

    int-to-float v8, v8

    aput v8, v1, v7

    aput v4, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4402(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1902
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$13$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$13$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$13;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1909
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$13;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1924
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1925
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1926
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1927
    iput v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->chatActivityEnterViewAnimateFromTop:I

    .line 1929
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    if-eqz v0, :cond_4

    .line 1930
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->messageEditTextPredrawHeigth:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->messageEditTextPredrawScrollY:I

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8}, Landroid/widget/EditText;->getScrollY()I

    move-result v8

    sub-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1931
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    new-array v0, v5, [F

    .line 1932
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v1

    aput v1, v0, v7

    aput v4, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1933
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$13$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$13$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$13;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1934
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->messageEditTextAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 1935
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1937
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->messageEditTextAnimator:Landroid/animation/Animator;

    .line 1938
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1939
    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1940
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1941
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 1943
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    return-void
.end method

.method public extendActionMode(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1981
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    return-void
.end method

.method protected isRecordingStateChanged()V
    .locals 0

    .line 1966
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    .line 1967
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->checkRecording()V

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    .line 1948
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1949
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 1950
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->messageEditTextPredrawHeigth:I

    .line 1951
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->messageEditTextPredrawScrollY:I

    .line 1952
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1953
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1954
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->chatActivityEnterViewAnimateFromTop:I

    :cond_0
    return-void
.end method

.method protected showConfirmAlert(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1879
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4300(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method protected updateRecordInterface(I)V
    .locals 0

    .line 1960
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    .line 1961
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->checkRecording()V

    return-void
.end method
