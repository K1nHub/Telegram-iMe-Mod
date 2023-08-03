.class Lorg/telegram/ui/Stories/PeerStoriesView$8;
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
.method public static synthetic $r8$lambda$id9ieRCgxjdea9ODD0KcJdS0HC4(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zW9_W1SDWOQl1N1XHXz-483YlRE(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 1335
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Stories/PeerStoriesView$8;I)I
    .locals 0

    .line 1335
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;
    .locals 0

    .line 1335
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;
    .locals 0

    .line 1335
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/PeerStoriesView$8;)I
    .locals 0

    .line 1335
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/PeerStoriesView$8;)F
    .locals 0

    .line 1335
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewEnterProgress:F

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;
    .locals 0

    .line 1335
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;
    .locals 0

    .line 1335
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;
    .locals 0

    .line 1335
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Stories/PeerStoriesView$8;)I
    .locals 0

    .line 1335
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;
    .locals 0

    .line 1335
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method private checkRecording()V
    .locals 2

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

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
    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1502(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_2

    .line 1434
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsRecording(Z)V

    .line 1436
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1364
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 1365
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    .line 1366
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 1367
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->setOffsetY(F)V

    return-void
.end method


# virtual methods
.method public checkAnimation()V
    .locals 11

    .line 1344
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v0

    .line 1345
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->chatActivityEnterViewAnimateFromTop:I

    const-wide/16 v2, 0xfa

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    if-eq v0, v1, :cond_2

    .line 1346
    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    add-int/2addr v8, v1

    sub-int/2addr v8, v0

    .line 1347
    iput v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 1349
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1354
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1355
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

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1357
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1361
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-array v1, v5, [F

    int-to-float v8, v8

    aput v8, v1, v7

    aput v4, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3502(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1386
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1388
    iput v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->chatActivityEnterViewAnimateFromTop:I

    .line 1390
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    if-eqz v0, :cond_4

    .line 1391
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->messageEditTextPredrawHeigth:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->messageEditTextPredrawScrollY:I

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8}, Landroid/widget/EditText;->getScrollY()I

    move-result v8

    sub-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1392
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getOffsetY()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextCaption;->setOffsetY(F)V

    new-array v0, v5, [F

    .line 1393
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getOffsetY()F

    move-result v1

    aput v1, v0, v7

    aput v4, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1394
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1395
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->messageEditTextAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 1396
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1398
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->messageEditTextAnimator:Landroid/animation/Animator;

    .line 1399
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1400
    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1401
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1402
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 1404
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    return-void
.end method

.method public extendActionMode(Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x0

    .line 1442
    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    return-void
.end method

.method protected isRecordingStateChanged()V
    .locals 0

    .line 1427
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    .line 1428
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->checkRecording()V

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    .line 1409
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1410
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    .line 1411
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->messageEditTextPredrawHeigth:I

    .line 1412
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->messageEditTextPredrawScrollY:I

    .line 1413
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1414
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1415
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->chatActivityEnterViewAnimateFromTop:I

    :cond_0
    return-void
.end method

.method protected updateRecordInterface(I)V
    .locals 0

    .line 1421
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    .line 1422
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->checkRecording()V

    return-void
.end method
