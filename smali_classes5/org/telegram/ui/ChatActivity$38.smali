.class Lorg/telegram/ui/ChatActivity$38;
.super Lorg/telegram/ui/Components/ChatActivityEnterView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastContentViewHeight:I

.field messageEditTextPredrawHeigth:I

.field messageEditTextPredrawScrollY:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$HcIPm4geO9rrQvKLKMdIkRd4A8c(Lorg/telegram/ui/ChatActivity$38;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$38;->lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a28UH4mUSmIQD69fiBs6MSMLfrE(Lorg/telegram/ui/ChatActivity$38;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$38;->lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 8508
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$25702(Lorg/telegram/ui/ChatActivity$38;I)I
    .locals 0

    .line 8508
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p1
.end method

.method static synthetic access$25800(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;
    .locals 0

    .line 8508
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$25900(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;
    .locals 0

    .line 8508
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$26000(Lorg/telegram/ui/ChatActivity$38;)I
    .locals 0

    .line 8508
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$26100(Lorg/telegram/ui/ChatActivity$38;)F
    .locals 0

    .line 8508
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewEnterProgress:F

    return p0
.end method

.method static synthetic access$26200(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;
    .locals 0

    .line 8508
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$26300(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;
    .locals 0

    .line 8508
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$26400(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;
    .locals 0

    .line 8508
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$26500(Lorg/telegram/ui/ChatActivity$38;)I
    .locals 0

    .line 8508
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$26600(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;
    .locals 0

    .line 8508
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 8590
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int v0, p1

    .line 8591
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    .line 8592
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8593
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewEnterProgress:F

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8594
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 8595
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 8598
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_1

    .line 8599
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8601
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 8602
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)V

    .line 8603
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 8605
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 8606
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 8641
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

    .line 8556
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    goto/16 :goto_1

    .line 8567
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v0

    .line 8568
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const-wide/16 v3, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-eq v0, v2, :cond_5

    iget v2, p0, Lorg/telegram/ui/ChatActivity$38;->lastContentViewHeight:I

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    if-ne v2, v8, :cond_5

    .line 8569
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    add-int/2addr v2, v8

    sub-int/2addr v2, v0

    .line 8570
    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    .line 8571
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 8572
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8573
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 8574
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8577
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 8578
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 8579
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewEnterProgress:F

    sub-float/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 8580
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 8581
    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 8584
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_3

    .line 8585
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8588
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    new-array v8, v7, [F

    aput v2, v8, v1

    aput v5, v8, v6

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$25602(Lorg/telegram/ui/ChatActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 8589
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$38$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$38$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$38;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8608
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$38$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$38$1;-><init>(Lorg/telegram/ui/ChatActivity$38;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8626
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8627
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8628
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8629
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 8631
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)V

    .line 8632
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 8633
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$5202(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_0

    .line 8634
    :cond_5
    iget v0, p0, Lorg/telegram/ui/ChatActivity$38;->lastContentViewHeight:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 8635
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$5202(Lorg/telegram/ui/ChatActivity;I)I

    .line 8637
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    if-eqz v0, :cond_8

    .line 8638
    iget v0, p0, Lorg/telegram/ui/ChatActivity$38;->messageEditTextPredrawHeigth:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/ChatActivity$38;->messageEditTextPredrawScrollY:I

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8}, Landroid/widget/EditText;->getScrollY()I

    move-result v8

    sub-int/2addr v2, v8

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 8639
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    new-array v0, v7, [F

    .line 8640
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v2

    aput v2, v0, v1

    aput v5, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 8641
    new-instance v2, Lorg/telegram/ui/ChatActivity$38$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$38$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$38;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8642
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$25500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 8643
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$25500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 8645
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$25502(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 8646
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8648
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8649
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 8650
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 8652
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$38;->lastContentViewHeight:I

    .line 8654
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$5302(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_2

    .line 8557
    :cond_9
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 8558
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8560
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 8561
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8564
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$5202(Lorg/telegram/ui/ChatActivity;I)I

    .line 8565
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    :goto_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 8532
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8535
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 8516
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8519
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    .line 8660
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 8661
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 8662
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$38;->messageEditTextPredrawHeigth:I

    .line 8663
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$38;->messageEditTextPredrawScrollY:I

    .line 8664
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 8665
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$5202(Lorg/telegram/ui/ChatActivity;I)I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 8524
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8527
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openKeyboard()V
    .locals 1

    .line 8548
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz v0, :cond_0

    return-void

    .line 8551
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    return-void
.end method

.method protected pannelAnimationEnabled()Z
    .locals 1

    .line 8540
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->openAnimationEnded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
