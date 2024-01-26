.class Lorg/telegram/ui/Stories/PeerStoriesView$15;
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
.method public static synthetic $r8$lambda$GgAFzWmpJlJlUFchNVtKyZwWfrM(Lorg/telegram/ui/Stories/PeerStoriesView$15;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PGG-pi-SmEIwkg5yf5EE3OSIXJY(Lorg/telegram/ui/Stories/PeerStoriesView$15;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 2125
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Stories/PeerStoriesView$15;I)I
    .locals 0

    .line 2125
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;
    .locals 0

    .line 2125
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;
    .locals 0

    .line 2125
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Stories/PeerStoriesView$15;)I
    .locals 0

    .line 2125
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/PeerStoriesView$15;)F
    .locals 0

    .line 2125
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewEnterProgress:F

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;
    .locals 0

    .line 2125
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;
    .locals 0

    .line 2125
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;
    .locals 0

    .line 2125
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/PeerStoriesView$15;)I
    .locals 0

    .line 2125
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;
    .locals 0

    .line 2125
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method private checkRecording()V
    .locals 3

    .line 2262
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    .line 2263
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingAudioVideo()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->seekbarVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2002(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 2264
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 2265
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_2

    .line 2266
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsRecording(Z)V

    .line 2268
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2269
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2194
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 2195
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    .line 2196
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 2197
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2224
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

    .line 2174
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v0

    .line 2175
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->chatActivityEnterViewAnimateFromTop:I

    const-wide/16 v2, 0xfa

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    if-eq v0, v1, :cond_2

    .line 2176
    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    add-int/2addr v8, v1

    sub-int/2addr v8, v0

    .line 2177
    iput v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    .line 2178
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 2179
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2180
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 2181
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2184
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2185
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

    .line 2186
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2187
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2191
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2192
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-array v1, v5, [F

    int-to-float v8, v8

    aput v8, v1, v7

    aput v4, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5302(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 2193
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$15$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$15$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$15;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2200
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$15;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2215
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2216
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2217
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2218
    iput v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->chatActivityEnterViewAnimateFromTop:I

    .line 2220
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    if-eqz v0, :cond_4

    .line 2221
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->messageEditTextPredrawHeigth:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->messageEditTextPredrawScrollY:I

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8}, Landroid/widget/EditText;->getScrollY()I

    move-result v8

    sub-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 2222
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    new-array v0, v5, [F

    .line 2223
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v1

    aput v1, v0, v7

    aput v4, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2224
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$15$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$15$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$15;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2225
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->messageEditTextAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 2226
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 2228
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->messageEditTextAnimator:Landroid/animation/Animator;

    .line 2229
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2230
    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2231
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2232
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 2234
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2130
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 2132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .line 2133
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2134
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    .line 2136
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 2137
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_1

    .line 2138
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2139
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5000(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 2141
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    .line 2143
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2144
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2145
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 2148
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 2150
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public extendActionMode(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2275
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    return-void
.end method

.method protected isRecordingStateChanged()V
    .locals 0

    .line 2257
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    .line 2258
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->checkRecording()V

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    .line 2239
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2240
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 2241
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->messageEditTextPredrawHeigth:I

    .line 2242
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->messageEditTextPredrawScrollY:I

    .line 2243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2244
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2245
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->chatActivityEnterViewAnimateFromTop:I

    :cond_0
    return-void
.end method

.method public setHorizontalPadding(FFZ)V
    .locals 2

    neg-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    .line 2156
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5100(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2157
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5100(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/LinearLayout;

    move-result-object v1

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 2159
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setHorizontalPadding(FFZ)V

    return-void
.end method

.method protected showConfirmAlert(Ljava/lang/Runnable;)Z
    .locals 1

    .line 2170
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method protected updateRecordInterface(I)V
    .locals 0

    .line 2251
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    .line 2252
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->checkRecording()V

    return-void
.end method
