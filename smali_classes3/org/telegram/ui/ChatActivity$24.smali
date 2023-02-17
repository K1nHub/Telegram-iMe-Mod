.class Lorg/telegram/ui/ChatActivity$24;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
.field private final drawCaptionAfter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/ChatMessageCell;",
            ">;"
        }
    .end annotation
.end field

.field private final drawNamesAfter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/ChatMessageCell;",
            ">;"
        }
    .end annotation
.end field

.field private final drawTimeAfter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/ChatMessageCell;",
            ">;"
        }
    .end annotation
.end field

.field private final drawingGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$GroupedMessages;",
            ">;"
        }
    .end annotation
.end field

.field private endTrackingX:F

.field private ignoreLayout:Z

.field private invalidated:Z

.field lastH:I

.field private lastTrackingAnimationTime:J

.field private lastWidth:I

.field private outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

.field private outlineActionBackgroundPaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private slidingBeyondMax:Z

.field private slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private springMultiplier:F

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private trackAnimationProgress:F

.field private wasTrackingVibrate:Z


# direct methods
.method public static synthetic $r8$lambda$28CPH1jTRI2IQli_kVJ9vb7BBm0(Lorg/telegram/ui/ChatActivity$24;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$24;->lambda$$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$6GintJBpXvtDmE88_9lg_w8DqZw(Lorg/telegram/ui/ChatActivity$24;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$24;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$PJ90U6TJa0ofNT4aYT4FrIwatLk(Lorg/telegram/ui/ChatActivity$24;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$24;->lambda$$1(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$eszq6XzIxuDoX4WUaJ8Hd-FF_Jc(Lorg/telegram/ui/ChatActivity$24;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gZwt_5io4X5E9UGqE1xpnO4LYuU(Lorg/telegram/ui/ChatActivity$24;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->lambda$onTouchEvent$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jtOwt3wUBwGQ14YcqRum4HGJZm0(Lorg/telegram/ui/ChatActivity$24;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->lambda$onTouchEvent$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sP-Gg9JG5PVPDXJhMsCnwwrmQas(Lorg/telegram/ui/ChatActivity$24;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->lambda$onTouchEvent$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPVJG1GFzSRRNxcy2b1yx48NaQM(Lorg/telegram/ui/ChatActivity$24;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$24;->lambda$$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 6531
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 6535
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->drawTimeAfter:Ljava/util/ArrayList;

    .line 6536
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->drawNamesAfter:Ljava/util/ArrayList;

    .line 6537
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->drawCaptionAfter:Ljava/util/ArrayList;

    .line 6538
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->drawingGroups:Ljava/util/ArrayList;

    const/high16 p1, 0x44fa0000    # 2000.0f

    .line 6548
    iput p1, p0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    .line 6550
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    .line 6551
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    .line 6553
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 6554
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$24;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 6555
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p3, p0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    .line 6556
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v0, 0x44bb8000    # 1500.0f

    .line 6558
    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6559
    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 6557
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatActivity$24;)V

    .line 6560
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6561
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 6562
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 6563
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v1, 0x43c80000    # 400.0f

    .line 6565
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v1, 0x3f000000    # 0.5f

    .line 6566
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 6564
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatActivity$24;)V

    .line 6567
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6568
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 6569
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$24;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 6570
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p2, 0x43480000    # 200.0f

    .line 6572
    invoke-virtual {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 6573
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 6571
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$24;)V

    .line 6574
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 6576
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 6581
    iput p1, p0, Lorg/telegram/ui/ChatActivity$24;->lastH:I

    .line 6584
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6585
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6586
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6587
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6588
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6589
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawChatBackgroundElements(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 7472
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/high16 v16, 0x40000000    # 2.0f

    const/4 v8, 0x1

    if-ge v7, v12, :cond_19

    .line 7476
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7477
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$28400(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lorg/telegram/ui/Cells/BotHelpCell;

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3, v8, v14}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v2, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v3, :cond_3

    .line 7478
    :cond_1
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 7479
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float v3, v3, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, v9

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    add-float/2addr v3, v4

    .line 7480
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/BotHelpCell;->animating()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-nez v1, :cond_19

    .line 7481
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 7482
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_10

    .line 7484
    :cond_2
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_10

    .line 7488
    :cond_3
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_17

    .line 7489
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7490
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eq v5, v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v13, v5

    move-object v10, v6

    goto/16 :goto_d

    .line 7493
    :cond_5
    :goto_1
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v1

    .line 7494
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v2

    .line 7495
    invoke-virtual {v2}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->isAnimationInProgress()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawingSelectionBackground()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move-object v13, v5

    move-object v10, v6

    goto/16 :goto_c

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v3, v9

    if-eqz v3, :cond_6

    .line 7496
    :cond_8
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v3

    const-string v4, "chat_selectedBackground"

    const-string v9, "paintChatMessageBackgroundSelected"

    if-nez v3, :cond_10

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlightedAnimated()Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_8

    .line 7520
    :cond_9
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 7522
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-nez v1, :cond_a

    .line 7524
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    goto :goto_5

    .line 7526
    :cond_a
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    const-wide/16 v16, 0x0

    move-wide/from16 v17, v16

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v8, v12, :cond_c

    .line 7531
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 7532
    instance-of v13, v15, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_b

    .line 7533
    check-cast v15, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7534
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-ne v13, v5, :cond_b

    .line 7536
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v13

    .line 7537
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7538
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v22

    add-int v14, v14, v22

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7539
    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getLastTouchTime()J

    move-result-wide v22

    cmp-long v14, v22, v17

    if-lez v14, :cond_b

    .line 7541
    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getTouchX()F

    move-result v10

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getX()F

    move-result v14

    add-float/2addr v10, v14

    .line 7542
    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getTouchY()F

    move-result v13

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    add-float/2addr v13, v14

    move/from16 v16, v13

    move-wide/from16 v17, v22

    :cond_b
    add-int/lit8 v8, v8, 0x1

    const/4 v14, 0x0

    goto :goto_4

    :cond_c
    int-to-float v8, v3

    sub-float v8, v16, v8

    .line 7548
    invoke-virtual {v2, v10, v8}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setTouchCoordsOverride(FF)V

    sub-int/2addr v1, v3

    .line 7551
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v1, v3

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v3, v8, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 7552
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v8

    .line 7553
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v9, :cond_f

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->access$28500(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v9

    if-nez v9, :cond_f

    if-eqz v8, :cond_f

    .line 7554
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    .line 7555
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    goto :goto_6

    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$28700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    :goto_6
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    .line 7556
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v8

    .line 7557
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v9, :cond_e

    .line 7558
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v13

    invoke-virtual {v9, v10, v8, v13, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    goto :goto_7

    .line 7560
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v10

    invoke-static {v9, v8, v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    .line 7563
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    .line 7564
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setColor(I)V

    .line 7566
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v3, v4, v1}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setBounds(IIII)V

    .line 7567
    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 7568
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    :cond_10
    :goto_8
    if-nez v1, :cond_6

    .line 7498
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    .line 7499
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v2, :cond_11

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->access$28500(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    if-nez v1, :cond_13

    .line 7500
    :cond_12
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_replyLinePaint:Landroid/graphics/Paint;

    .line 7501
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9
    move-object v8, v1

    goto :goto_b

    .line 7503
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    goto :goto_a

    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$28600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 7504
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v3

    .line 7505
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v4, :cond_15

    .line 7506
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    invoke-virtual {v4, v8, v3, v9, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    goto :goto_9

    .line 7508
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    invoke-static {v4, v3, v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    goto :goto_9

    .line 7511
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7512
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    invoke-virtual {v11, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7513
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    int-to-float v1, v9

    .line 7514
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getHighlightAlpha()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 7515
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v10, v1

    move-object/from16 v1, p1

    move-object v13, v5

    move v5, v10

    move-object v10, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7516
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7517
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_c
    move-object v1, v13

    .line 7572
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    if-eq v2, v10, :cond_18

    if-nez v13, :cond_18

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 7573
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7574
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7575
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_16

    .line 7577
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v3

    .line 7578
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v4

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    shr-int/2addr v5, v6

    int-to-float v5, v5

    .line 7576
    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_e

    :cond_16
    const/4 v6, 0x1

    .line 7581
    :goto_e
    invoke-virtual {v10, v11, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 7582
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    .line 7584
    :cond_17
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_18

    .line 7585
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 7586
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7587
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7588
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7589
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v16

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v16

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v3, 0x1

    .line 7590
    invoke-virtual {v2, v11, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    .line 7591
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    :goto_f
    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 7596
    :cond_19
    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_1a

    .line 7597
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v8

    move-object v13, v8

    goto :goto_11

    :cond_1a
    const/4 v13, 0x0

    :goto_11
    const/4 v14, 0x0

    :goto_12
    const/4 v1, 0x3

    if-ge v14, v1, :cond_3e

    .line 7600
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-ne v14, v9, :cond_1c

    .line 7601
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1b
    const/4 v2, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x2

    goto/16 :goto_20

    :cond_1c
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v12, :cond_31

    .line 7605
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7606
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_2f

    .line 7607
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7608
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2f

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    cmpg-float v2, v4, v10

    if-gez v2, :cond_1d

    goto/16 :goto_16

    .line 7611
    :cond_1d
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_2f

    if-nez v14, :cond_1e

    .line 7612
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2f

    goto :goto_14

    :cond_1e
    const/4 v5, 0x1

    :goto_14
    if-ne v14, v5, :cond_1f

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    if-nez v4, :cond_1f

    goto/16 :goto_16

    :cond_1f
    if-nez v14, :cond_20

    .line 7615
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v4, :cond_2f

    :cond_20
    const/4 v4, 0x1

    if-ne v14, v4, :cond_21

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v4, :cond_21

    goto/16 :goto_16

    :cond_21
    if-ne v14, v9, :cond_22

    .line 7618
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_22
    if-eq v14, v9, :cond_23

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v4

    if-eqz v4, :cond_23

    goto/16 :goto_16

    .line 7622
    :cond_23
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 7623
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v15, 0x0

    iput v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 7624
    iput v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 7625
    iput v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    .line 7626
    iput v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 7628
    iput-boolean v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 7629
    iput-boolean v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 7630
    iput-object v3, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7631
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_24
    const/4 v15, 0x0

    .line 7634
    :goto_15
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 7635
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 7637
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 7638
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 7639
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v7

    add-int/2addr v6, v7

    .line 7640
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 7642
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v8, v8, 0x4

    const/16 v17, 0xa

    if-nez v8, :cond_25

    .line 7643
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v6, v8

    .line 7646
    :cond_25
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_26

    .line 7647
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 7650
    :cond_26
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 7651
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-object v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7654
    :cond_27
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-eqz v3, :cond_28

    if-ge v6, v3, :cond_29

    .line 7655
    :cond_28
    iput v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 7657
    :cond_29
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-eqz v3, :cond_2a

    if-le v7, v3, :cond_2b

    .line 7658
    :cond_2a
    iput v7, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 7660
    :cond_2b
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-eqz v3, :cond_2c

    if-ge v4, v3, :cond_2d

    .line 7661
    :cond_2c
    iput v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 7663
    :cond_2d
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-eqz v3, :cond_2e

    if-le v5, v3, :cond_30

    .line 7664
    :cond_2e
    iput v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    goto :goto_17

    :cond_2f
    :goto_16
    const/4 v15, 0x0

    :cond_30
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    :cond_31
    const/4 v15, 0x0

    const/4 v8, 0x0

    .line 7669
    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_1b

    .line 7670
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-ne v7, v13, :cond_32

    move/from16 v23, v8

    const/4 v2, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x2

    goto/16 :goto_1f

    .line 7674
    :cond_32
    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    .line 7675
    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float v5, v3, v4

    .line 7676
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v3, v3

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v3, v4

    .line 7677
    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v1, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v4, v1

    .line 7678
    iget v1, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v1, v1

    iget v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v1, v6

    .line 7680
    iget-boolean v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v6, :cond_33

    .line 7681
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v3, v2

    .line 7682
    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    .line 7685
    :cond_33
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v2, v9

    cmpg-float v2, v3, v2

    if-gez v2, :cond_34

    .line 7686
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    :cond_34
    move v9, v3

    .line 7689
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_35

    .line 7690
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    :cond_35
    move v6, v1

    .line 7693
    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v18

    if-nez v1, :cond_37

    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v18

    if-eqz v1, :cond_36

    goto :goto_19

    :cond_36
    const/16 v20, 0x0

    goto :goto_1a

    :cond_37
    :goto_19
    const/16 v20, 0x1

    :goto_1a
    if-eqz v20, :cond_38

    .line 7695
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7696
    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v2

    sub-float v3, v4, v5

    div-float v3, v3, v16

    add-float/2addr v3, v5

    sub-float v21, v6, v9

    div-float v21, v21, v16

    add-float v10, v9, v21

    invoke-virtual {v11, v1, v2, v3, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 7699
    :cond_38
    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v1, :cond_3b

    .line 7700
    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 7701
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v23

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v25

    cmp-long v3, v23, v25

    if-nez v3, :cond_39

    const/4 v3, 0x0

    goto :goto_1c

    :cond_39
    const/4 v3, 0x1

    .line 7702
    :goto_1c
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v15

    aget-object v3, v15, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_3a

    const/4 v10, 0x0

    goto :goto_1d

    :cond_3a
    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x0

    goto :goto_1b

    :cond_3b
    const/4 v10, 0x1

    .line 7707
    :goto_1d
    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    float-to-int v3, v5

    float-to-int v15, v9

    move/from16 v23, v5

    float-to-int v5, v4

    move-object/from16 v24, v7

    float-to-int v7, v6

    move/from16 v25, v8

    iget-boolean v8, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    move/from16 v26, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v27

    move-object v1, v2

    move-object/from16 v2, p1

    move/from16 v28, v4

    move v4, v15

    move/from16 v15, v23

    move/from16 v19, v6

    const/16 v23, 0x1

    move v6, v7

    move-object/from16 v11, v24

    move v7, v8

    move/from16 v23, v25

    const/16 v24, 0x1

    move/from16 v8, v26

    move/from16 v17, v9

    const/16 v25, 0x2

    move v9, v10

    const/16 v22, 0x0

    move/from16 v10, v27

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    .line 7708
    iget-object v1, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7709
    iget-boolean v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v20, :cond_3d

    .line 7711
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v10, 0x0

    :goto_1e
    if-ge v10, v12, :cond_3d

    .line 7713
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7714
    instance-of v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_3c

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-ne v4, v11, :cond_3c

    .line 7716
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    .line 7717
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    int-to-float v4, v4

    sub-float v5, v15, v4

    sub-float v4, v28, v15

    div-float v4, v4, v16

    add-float/2addr v5, v4

    .line 7718
    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotX(F)V

    int-to-float v3, v3

    sub-float v9, v17, v3

    sub-float v6, v19, v17

    div-float v6, v6, v16

    add-float/2addr v9, v6

    .line 7719
    invoke-virtual {v1, v9}, Landroid/view/View;->setPivotY(F)V

    :cond_3c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_3d
    :goto_1f
    add-int/lit8 v8, v23, 0x1

    move-object/from16 v11, p1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v15, 0x0

    goto/16 :goto_18

    :goto_20
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, p1

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_12

    :cond_3e
    return-void
.end method

.method private drawChatForegroundElements(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7402
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    .line 7405
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7406
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7407
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7408
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v8

    goto :goto_1

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v7, v1, v8, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    .line 7409
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7411
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 7413
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_4

    .line 7416
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7417
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v9

    add-float/2addr v8, v9

    .line 7418
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    .line 7419
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v10

    goto :goto_3

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    .line 7421
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7422
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7423
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 7424
    invoke-virtual {v7, v1, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    .line 7425
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 7426
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 7428
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 7430
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_b

    .line 7433
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7435
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 7436
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v8, v4

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    .line 7438
    :goto_5
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v9

    goto :goto_6

    :cond_7
    const/high16 v9, 0x3f800000    # 1.0f

    .line 7439
    :goto_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v11

    add-float/2addr v10, v11

    .line 7440
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v11

    .line 7441
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7442
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 7443
    iget-object v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v13, :cond_9

    .line 7444
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v13

    .line 7445
    iget-object v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v14, v14

    add-float/2addr v14, v13

    iget v15, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v14, v15

    .line 7446
    iget v15, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v15, v15

    iget v3, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v15, v3

    .line 7447
    iget v3, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    iget v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v3, v13

    .line 7448
    iget v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v13, v13

    iget v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v13, v5

    .line 7450
    iget-boolean v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v5, :cond_8

    .line 7451
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v15, v5

    .line 7452
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v13, v5

    :cond_8
    const/16 v5, 0x8

    .line 7455
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v14, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v15, v12

    .line 7456
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v3, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v13, v5

    .line 7454
    invoke-virtual {v1, v14, v15, v3, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 7459
    :cond_9
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v3, :cond_a

    .line 7460
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7461
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 7462
    invoke-virtual {v7, v1, v8, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    const/4 v3, 0x0

    .line 7463
    invoke-virtual {v7, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 7464
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 7467
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_c
    return-void
.end method

.method private drawReplyButton(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 6696
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_d

    :cond_0
    const-string v1, "paintChatActionBackground"

    .line 6699
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v8

    .line 6700
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    .line 6701
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 6702
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6704
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 6705
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6707
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 6708
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6710
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v9}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 6711
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6714
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    div-float/2addr v1, v2

    .line 6715
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    const/4 v2, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v11

    if-lez v3, :cond_5

    .line 6718
    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity$24;->slidingBeyondMax:Z

    .line 6721
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v3

    .line 6722
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v5

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-nez v5, :cond_6

    .line 6723
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 6724
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 6725
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 6726
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 6727
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 6728
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 6729
    iput-boolean v4, v0, Lorg/telegram/ui/ChatActivity$24;->slidingBeyondMax:Z

    .line 6732
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    const/16 v13, 0x14

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_7

    neg-float v5, v3

    .line 6733
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/16 v6, 0x1e

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5, v12, v11}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    move v14, v5

    goto :goto_0

    :cond_7
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_0
    cmpl-float v5, v14, v11

    if-nez v5, :cond_8

    .line 6738
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_8

    .line 6739
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 6740
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 6742
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 6743
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 6746
    :cond_8
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_a

    .line 6747
    iget v5, v0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    .line 6748
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_b

    .line 6749
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 6750
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v5

    if-nez v5, :cond_b

    .line 6751
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 6755
    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    div-float v13, v5, v6

    .line 6756
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v6

    if-eqz v6, :cond_c

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_c
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    mul-float v3, v3, v6

    add-float v15, v5, v3

    .line 6757
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v16, v3, v5

    .line 6758
    iget-boolean v3, v0, Lorg/telegram/ui/ChatActivity$24;->slidingBeyondMax:Z

    if-eqz v3, :cond_d

    move/from16 v17, v1

    goto :goto_4

    :cond_d
    move/from16 v17, v13

    :goto_4
    if-eqz v3, :cond_e

    const/16 v18, 0x0

    goto :goto_5

    :cond_e
    sub-float v3, v11, v1

    move/from16 v18, v3

    :goto_5
    const-string v3, "windowBackgroundWhite"

    .line 6762
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v19

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v19, v21

    if-gtz v3, :cond_f

    const/16 v19, 0x1

    goto :goto_6

    :cond_f
    const/16 v19, 0x0

    :goto_6
    const/16 v20, 0x10

    cmpl-float v2, v13, v12

    if-eqz v2, :cond_11

    .line 6764
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    sub-float v2, v15, v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v17

    sub-float v3, v16, v3

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    add-float/2addr v5, v15

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    div-float/2addr v11, v6

    sub-float/2addr v5, v11

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v17

    add-float v11, v16, v11

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    div-float/2addr v12, v6

    sub-float/2addr v11, v12

    float-to-int v6, v11

    int-to-float v6, v6

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6765
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget v6, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    cmpl-float v1, v1, v6

    if-nez v1, :cond_11

    .line 6767
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 6768
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v11

    mul-float v2, v2, v13

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v12, v14, v1

    const/4 v5, 0x0

    .line 6769
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v23, v4

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 6770
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6772
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6773
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz v19, :cond_10

    .line 6775
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    const/4 v11, -0x1

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_10
    const/4 v11, -0x1

    .line 6777
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    mul-float v1, v1, v13

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    .line 6778
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_11
    const/4 v11, -0x1

    .line 6782
    :goto_8
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    sub-float v2, v15, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v17

    sub-float v3, v16, v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float/2addr v4, v15

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    add-float v5, v16, v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6783
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 6784
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 6785
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v17

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 6787
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float v3, v3, v13

    mul-float v3, v3, v14

    int-to-float v4, v2

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 6788
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6789
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6790
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6792
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 6793
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-eqz v19, :cond_12

    .line 6795
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 6797
    :cond_12
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6798
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6799
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_13
    const/4 v2, 0x0

    cmpl-float v3, v18, v2

    if-eqz v3, :cond_14

    .line 6803
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    sub-float v2, v15, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v18

    sub-float v4, v16, v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v18

    add-float/2addr v5, v15

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v18

    add-float v6, v16, v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6804
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 6805
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 6807
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6808
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 6811
    :cond_14
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    sub-float v2, v15, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    sub-float v4, v16, v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    add-float/2addr v5, v15

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v17

    add-float v6, v16, v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6812
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 6813
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 6814
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 6816
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const v4, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v13

    int-to-float v5, v2

    mul-float v5, v5, v4

    float-to-int v5, v5

    .line 6817
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6818
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6819
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6821
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 6822
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-eqz v19, :cond_15

    .line 6824
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 6826
    :cond_15
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v6, v2

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6827
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->path:Landroid/graphics/Path;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6828
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_16
    if-eqz v3, :cond_17

    .line 6831
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6834
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/ChatActivity$24;->springMultiplier:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_19

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_19

    add-float v5, v2, v4

    .line 6838
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    sub-float v2, v4, v2

    mul-float v2, v2, v6

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_19

    .line 6841
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v5

    sub-float v3, v15, v3

    add-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v5

    sub-float v4, v16, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v5

    add-float/2addr v8, v15

    sub-float/2addr v8, v2

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v5

    add-float v12, v16, v12

    sub-float/2addr v12, v2

    float-to-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v1, v3, v4, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6842
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    iget v12, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v12

    const/4 v12, 0x0

    invoke-static {v3, v4, v12, v8}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 6844
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 6845
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v8, v3

    mul-float v8, v8, v13

    float-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6847
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6848
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v5

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v8, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 6849
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6851
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6853
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 6854
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-eqz v19, :cond_18

    .line 6856
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 6858
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    int-to-float v3, v3

    mul-float v3, v3, v13

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6860
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6861
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v5

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 6862
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_19
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v13, v13, v1

    float-to-int v1, v13

    .line 6868
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "drawableEditIcon"

    goto :goto_9

    :cond_1a
    const-string v2, "drawableReplyIcon"

    :goto_9
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6869
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6870
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v1

    const/4 v3, 0x7

    const/16 v4, 0xc

    if-eqz v1, :cond_1b

    const/16 v1, 0xc

    goto :goto_a

    :cond_1b
    const/4 v1, 0x7

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v17

    sub-float v1, v15, v1

    float-to-int v1, v1

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v5, 0xc

    goto :goto_b

    :cond_1c
    const/4 v5, 0x6

    :goto_b
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    sub-float v5, v16, v5

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v3, 0xc

    :cond_1d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v17

    add-float/2addr v15, v3

    float-to-int v3, v15

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v4, 0x5

    :goto_c
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float v4, v16, v4

    float-to-int v4, v4

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6871
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v1, 0xff

    .line 6872
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6874
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 6875
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1f
    :goto_d
    return-void
.end method

.method private synthetic lambda$$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 6560
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$24;->invalidate()V

    return-void
.end method

.method private synthetic lambda$$1(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 6567
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$24;->invalidate()V

    return-void
.end method

.method private synthetic lambda$$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 6574
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$24;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6982
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$17002(Lorg/telegram/ui/ChatActivity;F)F

    .line 6983
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 1

    .line 6989
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25800(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 7003
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$17002(Lorg/telegram/ui/ChatActivity;F)F

    .line 7004
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 7011
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$17002(Lorg/telegram/ui/ChatActivity;F)F

    .line 7012
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 7027
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$17002(Lorg/telegram/ui/ChatActivity;F)F

    .line 7028
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6880
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_10

    .line 6882
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$24900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$25000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$25100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 6883
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView;->getPressedChildView()Landroid/view/View;

    move-result-object v6

    .line 6884
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_1b

    .line 6885
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 6886
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6888
    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7, v6}, Lorg/telegram/ui/ChatActivity;->access$24802(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6889
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 6891
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6892
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v10, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v10, v2}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 6894
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v8, :cond_2

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$25200(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8, v9, v7}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 6897
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8, v2, v5}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v3, v2}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;Z)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    if-nez v8, :cond_f

    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$25300(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$25300(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    :cond_6
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 6898
    invoke-static {v8, v6}, Lorg/telegram/ui/ChatActivity;->access$25400(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result v8

    if-ne v8, v2, :cond_7

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$12400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-eqz v12, :cond_f

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v8

    if-nez v8, :cond_f

    :cond_7
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v8, :cond_8

    .line 6899
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ltz v8, :cond_f

    :cond_8
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 6900
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$25500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v7, :cond_a

    :cond_9
    iget-boolean v6, v6, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z

    if-eqz v6, :cond_f

    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 6901
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_d

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_b
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_f

    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_d
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 6902
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_1

    .line 6907
    :cond_e
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/ChatActivity$24;->startedTrackingPointerId:I

    .line 6908
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->access$25002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6909
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/ChatActivity$24;->startedTrackingX:I

    .line 6910
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$24;->startedTrackingY:I

    goto/16 :goto_4

    .line 6903
    :cond_f
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6904
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$24802(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void

    .line 6912
    :cond_10
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    const/16 v7, 0x32

    const/4 v8, 0x3

    if-eqz v6, :cond_16

    if-eqz v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_16

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v10, v0, Lorg/telegram/ui/ChatActivity$24;->startedTrackingPointerId:I

    if-ne v6, v10, :cond_16

    const/16 v3, -0x50

    .line 6913
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v6, v0, Lorg/telegram/ui/ChatActivity$24;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6914
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v6, v0, Lorg/telegram/ui/ChatActivity$24;->startedTrackingY:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 6915
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$25000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$24900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_11

    int-to-float v6, v3

    const v10, 0x3ecccccd    # 0.4f

    invoke-static {v10, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v10

    neg-float v10, v10

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_11

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/2addr v6, v8

    if-le v6, v4, :cond_11

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 6916
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 6917
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6918
    invoke-super {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6919
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 6920
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    .line 6921
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/ChatActivity;->access$25002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6922
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->access$24902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6923
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$24;->startedTrackingX:I

    .line 6924
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 6925
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_4

    .line 6927
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6928
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-lt v1, v4, :cond_12

    .line 6929
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$24;->wasTrackingVibrate:Z

    if-nez v1, :cond_13

    .line 6931
    :try_start_0
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6935
    :catch_0
    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity$24;->wasTrackingVibrate:Z

    goto :goto_2

    .line 6938
    :cond_12
    iput-boolean v5, v0, Lorg/telegram/ui/ChatActivity$24;->wasTrackingVibrate:Z

    .line 6940
    :cond_13
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6941
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 6942
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 6943
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 6945
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ChatActivity$24;->setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V

    .line 6946
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$24;->invalidate()V

    goto/16 :goto_4

    .line 6948
    :cond_16
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    if-eqz v6, :cond_1b

    if-eqz v1, :cond_17

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v9, v0, Lorg/telegram/ui/ChatActivity$24;->startedTrackingPointerId:I

    if-ne v6, v9, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v8, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v9, 0x6

    if-ne v6, v9, :cond_1b

    :cond_17
    if-eqz v1, :cond_19

    .line 6949
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v8, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_19

    .line 6951
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 6952
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_3

    .line 6954
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReply(Lorg/telegram/messenger/MessageObject;)V

    .line 6956
    :cond_19
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$24;->endTrackingX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1a

    .line 6958
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$24802(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6960
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/ChatActivity$24;->lastTrackingAnimationTime:J

    .line 6961
    iput v4, v0, Lorg/telegram/ui/ChatActivity$24;->trackAnimationProgress:F

    .line 6962
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$24;->invalidate()V

    .line 6963
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ChatActivity;->access$25002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6964
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ChatActivity;->access$24902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6965
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    :cond_1b
    :goto_4
    return-void
.end method

.method private setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V
    .locals 5

    .line 6646
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6650
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 6652
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p1, :cond_2

    .line 6653
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v4, :cond_1

    goto :goto_1

    .line 6656
    :cond_1
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6657
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 6658
    invoke-virtual {v3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6659
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6662
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$24;->invalidate()V

    return-void
.end method

.method private updateSkeletonColors()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "windowBackgroundWhite"

    .line 7331
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide v5, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v7, v1, v5

    if-gtz v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "listSelectorSDK21"

    .line 7332
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-eqz v1, :cond_1

    const/16 v7, 0x21

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    :goto_1
    const/16 v8, 0xff

    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    if-eqz v1, :cond_2

    const v9, 0x3f666666    # 0.9f

    goto :goto_2

    :cond_2
    const/high16 v9, 0x3f000000    # 0.5f

    :goto_2
    invoke-static {v5, v7, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    .line 7333
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_3

    const/16 v7, 0x18

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$2400()I

    move-result v7

    :goto_3
    invoke-static {v2, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 7334
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$27400(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-ne v7, v2, :cond_4

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$27500(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-eq v7, v5, :cond_6

    .line 7335
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v5}, Lorg/telegram/ui/ChatActivity;->access$27502(Lorg/telegram/ui/ChatActivity;I)I

    .line 7336
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v2}, Lorg/telegram/ui/ChatActivity;->access$27402(Lorg/telegram/ui/ChatActivity;I)I

    .line 7337
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v15, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v12, 0xc8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v9, v12}, Lorg/telegram/ui/ChatActivity;->access$27702(Lorg/telegram/ui/ChatActivity;I)I

    move-result v9

    int-to-float v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x4

    new-array v9, v14, [I

    aput v2, v9, v4

    aput v5, v9, v3

    const/16 v17, 0x2

    aput v5, v9, v17

    aput v2, v9, v6

    new-array v2, v14, [F

    fill-array-data v2, :array_0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v9

    move-object v9, v15

    const/4 v6, 0x4

    move-object v14, v5

    move-object v5, v15

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v7, v5}, Lorg/telegram/ui/ChatActivity;->access$27602(Lorg/telegram/ui/ChatActivity;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;

    .line 7338
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$27700(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v2, v5}, Lorg/telegram/ui/ChatActivity;->access$27802(Lorg/telegram/ui/ChatActivity;I)I

    .line 7339
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$26600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$27600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz v1, :cond_5

    const/16 v1, 0x2b

    goto :goto_4

    :cond_5
    const/16 v1, 0x60

    .line 7341
    :goto_4
    invoke-static {v1, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 7342
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$27700(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    int-to-float v10, v7

    const/4 v11, 0x0

    new-array v12, v6, [I

    aput v4, v12, v4

    aput v1, v12, v3

    aput v1, v12, v17

    const/4 v1, 0x3

    aput v4, v12, v1

    new-array v13, v6, [F

    fill-array-data v13, :array_1

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v2, v5}, Lorg/telegram/ui/ChatActivity;->access$27902(Lorg/telegram/ui/ChatActivity;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;

    .line 7343
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$26700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$27900(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateSkeletonGradient()V
    .locals 7

    .line 7348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7349
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$28000(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x11

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-wide/16 v2, 0x10

    :cond_0
    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const-wide/16 v2, 0x0

    .line 7356
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 7357
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v0, v1}, Lorg/telegram/ui/ChatActivity;->access$28002(Lorg/telegram/ui/ChatActivity;J)J

    .line 7358
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-long v5, v4

    mul-long v2, v2, v5

    long-to-float v1, v2

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$27816(Lorg/telegram/ui/ChatActivity;F)I

    .line 7359
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27800(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    mul-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_2

    .line 7360
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27700(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$27802(Lorg/telegram/ui/ChatActivity;I)I

    .line 7362
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$28100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$27800(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7363
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7364
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$28100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7366
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$28200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$27800(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7367
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27900(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7368
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27900(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$28200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 8108
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8111
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 7374
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$17202(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    .line 7375
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->invalidated:Z

    .line 7377
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7378
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$28300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7379
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 7381
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 7382
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 7383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 7385
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 7386
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v2, v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7388
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    neg-float v4, v4

    sub-float/2addr v4, v2

    iput v4, v3, Lorg/telegram/ui/ChatActivity;->drawingChatLisViewYoffset:F

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7389
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    .line 7390
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7391
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->drawChatForegroundElements(Landroid/graphics/Canvas;)V

    .line 7392
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 7394
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    .line 7395
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7396
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->drawChatForegroundElements(Landroid/graphics/Canvas;)V

    .line 7398
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7144
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    cmp-long v8, v2, v4

    if-gtz v8, :cond_25

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$26300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_25

    .line 7145
    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 7146
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    .line 7147
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7148
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v1, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7150
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$24;->updateSkeletonColors()V

    .line 7151
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$24;->updateSkeletonGradient()V

    .line 7153
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v11, v11, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v9, v11

    const v11, 0x7fffffff

    const/4 v12, 0x0

    .line 7157
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 7158
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-ge v13, v11, :cond_4

    move v11, v13

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 7163
    :cond_5
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    cmp-long v14, v12, v6

    if-nez v14, :cond_6

    if-gtz v11, :cond_6

    .line 7164
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$26400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/ui/ChatActivity;->access$26500(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_6
    const-string v11, "paintChatActionBackground"

    .line 7167
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v11

    .line 7168
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getColor()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    if-eq v12, v13, :cond_7

    .line 7169
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 7171
    :cond_7
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v13

    if-eq v12, v13, :cond_8

    .line 7172
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 7173
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object v11

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$2500()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 7174
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    new-instance v12, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_8
    const/4 v11, 0x0

    .line 7177
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v11, v12, :cond_10

    .line 7178
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 7229
    instance-of v14, v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v14, :cond_c

    .line 7230
    move-object v14, v12

    check-cast v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v15

    .line 7231
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundDrawable(Z)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 7232
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v16

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int v14, v16, v14

    int-to-float v14, v14

    if-eqz v15, :cond_9

    iget-object v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v3, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v3, v3

    iget v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v3, v15

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    add-float/2addr v14, v3

    float-to-int v3, v14

    .line 7233
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    cmp-long v17, v14, v6

    if-nez v17, :cond_a

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$24600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    invoke-static {v9, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    goto :goto_5

    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    cmpl-float v12, v12, v13

    if-nez v12, :cond_b

    goto :goto_5

    :cond_b
    move v3, v9

    :goto_5
    if-ge v3, v9, :cond_f

    goto :goto_7

    .line 7237
    :cond_c
    instance-of v3, v12, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_f

    .line 7238
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    cmp-long v3, v14, v6

    if-nez v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$24600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    invoke-static {v9, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    goto :goto_6

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v13

    if-nez v3, :cond_e

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_6

    :cond_e
    move v3, v9

    :goto_6
    if-ge v3, v9, :cond_f

    :goto_7
    move v9, v3

    :cond_f
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto/16 :goto_3

    .line 7245
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$24600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 7246
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    :goto_8
    const-string v4, "windowBackgroundWhite"

    .line 7247
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v11

    const-wide v14, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v5, v11, v14

    if-gtz v5, :cond_12

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_9

    :cond_12
    const/4 v5, 0x0

    .line 7248
    :goto_9
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v11

    const-wide v14, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v4, v11, v14

    if-gtz v4, :cond_13

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v16, 0x1

    goto :goto_a

    :cond_13
    const/16 v16, 0x0

    :goto_a
    if-eqz v3, :cond_14

    .line 7250
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getY()F

    move-result v12

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)F

    move-result v14

    sub-float/2addr v12, v14

    invoke-static {v4, v11, v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 7252
    :cond_14
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    if-eqz v16, :cond_15

    .line 7254
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v12, v4

    const/high16 v14, 0x40800000    # 4.0f

    mul-float v12, v12, v14

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7257
    :cond_15
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v11

    cmp-long v14, v11, v6

    if-eqz v14, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    sub-long/2addr v11, v14

    long-to-float v11, v11

    const/high16 v12, 0x43480000    # 200.0f

    div-float/2addr v11, v12

    sub-float/2addr v13, v11

    .line 7258
    :cond_16
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$26600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 7259
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    .line 7260
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$26700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    .line 7261
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v10, v13, v16

    float-to-int v10, v10

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7262
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$26600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v10

    int-to-float v15, v11

    mul-float v13, v13, v15

    float-to-int v13, v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7263
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$26700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v10

    mul-int v13, v14, v11

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v10, 0x0

    .line 7264
    :goto_b
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v15, v13, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    const/high16 v16, 0x40400000    # 3.0f

    if-le v9, v15, :cond_1a

    .line 7265
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v9, v13

    .line 7268
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v10, v13, :cond_17

    .line 7269
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13, v2}, Lorg/telegram/ui/ChatActivity;->access$26900(Lorg/telegram/ui/ChatActivity;Z)Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    move-result-object v13

    .line 7270
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 7272
    :cond_17
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    .line 7274
    :goto_c
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v15

    cmp-long v18, v15, v6

    if-eqz v18, :cond_19

    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v6, 0x2

    if-gt v15, v6, :cond_18

    iget v6, v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_d

    :cond_18
    iget v6, v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    goto :goto_d

    :cond_19
    move v6, v9

    :goto_d
    iput v6, v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    .line 7276
    iget v6, v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int/2addr v9, v6

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v6, 0x0

    goto :goto_b

    .line 7281
    :cond_1a
    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v7, v7, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v6, v7

    goto :goto_e

    :cond_1b
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    iget v6, v6, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    :goto_e
    const/4 v7, 0x0

    .line 7282
    :goto_f
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_22

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v9, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    if-le v6, v9, :cond_22

    .line 7283
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    .line 7285
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    .line 7287
    iget v10, v9, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    .line 7288
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$27000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v13

    if-eqz v2, :cond_1c

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    goto :goto_10

    :cond_1c
    const/16 v15, 0x33

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    :goto_10
    iget v8, v9, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int v8, v10, v8

    move/from16 v19, v4

    iget v4, v9, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->width:I

    invoke-virtual {v13, v15, v8, v4, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    if-eqz v3, :cond_1d

    .line 7290
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$27000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v4

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$27100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v1, v8, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    .line 7292
    :cond_1d
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$27000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v4

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$27100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$26600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v1, v8, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    if-eqz v5, :cond_1e

    .line 7294
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$27000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v4

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$27100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v8

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v8, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    .line 7296
    :cond_1e
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$27000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v4

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$27100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$26700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v1, v8, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    if-nez v2, :cond_21

    const/16 v4, 0x1b

    const/16 v8, 0x15

    if-eqz v3, :cond_1f

    .line 7300
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int v15, v10, v15

    int-to-float v15, v15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v1, v13, v15, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v4, 0x1b

    .line 7302
    :cond_1f
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    const/16 v13, 0x15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int v15, v10, v15

    int-to-float v15, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$26600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v1, v8, v15, v4, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v4, 0x1b

    if-eqz v5, :cond_20

    .line 7304
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    const/16 v13, 0x15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int v15, v10, v15

    int-to-float v15, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v15, v4, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v4, 0x1b

    .line 7306
    :cond_20
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/16 v8, 0x15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v10, v13

    int-to-float v10, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$26700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v1, v4, v10, v8, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7309
    :cond_21
    iget v4, v9, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int/2addr v6, v4

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v19

    const/4 v8, 0x0

    goto/16 :goto_f

    :cond_22
    move/from16 v19, v4

    .line 7312
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7313
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$26600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7314
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$26700(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7315
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    move/from16 v3, v19

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 7316
    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity$24;->invalidated:Z

    .line 7317
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$24;->invalidate()V

    goto :goto_11

    .line 7318
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_24

    .line 7319
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 7321
    :cond_24
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$26800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$27202(Lorg/telegram/ui/ChatActivity;I)I

    .line 7322
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$27302(Lorg/telegram/ui/ChatActivity;I)I

    .line 7323
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_25

    .line 7324
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7327
    :cond_25
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 7729
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$24600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 7730
    iput-boolean v4, v0, Lorg/telegram/ui/ChatActivity$24;->invalidated:Z

    .line 7731
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$24;->invalidate()V

    .line 7736
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7739
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    .line 7741
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    cmpg-float v6, v8, v6

    if-gez v6, :cond_3

    :cond_2
    const/4 v3, 0x1

    .line 7747
    :cond_3
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v8, 0x0

    if-eqz v6, :cond_a

    .line 7748
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7749
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v3, 0x1

    .line 7752
    :cond_4
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v9

    .line 7753
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v10

    if-eqz v9, :cond_6

    .line 7755
    iget v11, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iget v12, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eq v11, v12, :cond_5

    const/16 v11, 0x3e8

    if-ne v12, v11, :cond_5

    iget-object v11, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-nez v11, :cond_5

    iget-boolean v11, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    if-eqz v11, :cond_5

    .line 7756
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v9

    goto :goto_1

    .line 7757
    :cond_5
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v9, :cond_6

    .line 7758
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v11

    add-int/2addr v11, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    move v11, v9

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x0

    .line 7761
    :goto_2
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDelayRoundProgressDraw()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 7762
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12, v6}, Lorg/telegram/ui/ChatActivity;->access$17202(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    :cond_7
    if-nez v3, :cond_8

    .line 7764
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v12, :cond_8

    .line 7765
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7766
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v12

    if-ne v12, v10, :cond_8

    const/4 v3, 0x1

    :cond_8
    if-eqz v3, :cond_9

    .line 7771
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->skipDraw()V

    :cond_9
    move/from16 v18, v9

    move-object v9, v8

    move-object v8, v10

    move/from16 v10, v18

    goto :goto_4

    .line 7773
    :cond_a
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v6, :cond_b

    .line 7774
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatActionCell;

    move-object v9, v6

    move-object v6, v8

    goto :goto_3

    :cond_b
    move-object v6, v8

    move-object v9, v6

    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    if-eqz v10, :cond_c

    .line 7780
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_5

    :cond_c
    if-eqz v11, :cond_d

    .line 7782
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :cond_d
    :goto_5
    if-nez v3, :cond_13

    if-eqz v8, :cond_e

    .line 7786
    iget-object v12, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    goto :goto_6

    :cond_e
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_f

    .line 7788
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7789
    invoke-virtual {v6, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v13

    .line 7790
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v14, v14

    add-float/2addr v14, v13

    iget v15, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v14, v15

    .line 7791
    iget v15, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v15, v15

    iget v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v15, v5

    .line 7792
    iget v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v13

    iget v13, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v5, v13

    .line 7793
    iget v13, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v13, v13

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v13, v8

    .line 7796
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v14, v8

    .line 7797
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v15, v8

    .line 7798
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    .line 7799
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v13, v8

    .line 7795
    invoke-virtual {v1, v14, v15, v5, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_f
    if-eqz v6, :cond_10

    if-eqz v12, :cond_10

    .line 7804
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_7

    .line 7807
    :cond_10
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    :goto_7
    if-eqz v12, :cond_11

    .line 7810
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    if-eqz v6, :cond_12

    .line 7812
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 7813
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7814
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7815
    invoke-virtual {v6, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 7816
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_12
    if-eqz v9, :cond_14

    .line 7818
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7819
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getY()F

    move-result v12

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7820
    invoke-virtual {v9, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 7821
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_13
    const/4 v5, 0x0

    :cond_14
    :goto_8
    if-nez v10, :cond_15

    if-eqz v11, :cond_16

    .line 7827
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7830
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_17

    .line 7831
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7832
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_17
    if-eqz v6, :cond_18

    .line 7836
    invoke-virtual {v6, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCheckBox(Landroid/graphics/Canvas;)V

    .line 7839
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_19

    .line 7840
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7843
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1a

    .line 7844
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 7845
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1a
    if-eqz v6, :cond_4f

    .line 7849
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    .line 7850
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v10

    if-nez v3, :cond_26

    if-nez v10, :cond_1b

    .line 7852
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v3, :cond_23

    :cond_1b
    if-eqz v10, :cond_1c

    .line 7853
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v3, :cond_1c

    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v3, :cond_20

    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v3, :cond_20

    :cond_1c
    if-eqz v10, :cond_1d

    .line 7854
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v3, :cond_1e

    .line 7855
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    if-eqz v10, :cond_1f

    .line 7857
    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v3, :cond_20

    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v3, :cond_20

    :cond_1f
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 7858
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    if-nez v10, :cond_21

    .line 7861
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    if-nez v3, :cond_21

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v3, :cond_23

    :cond_21
    if-eqz v10, :cond_22

    .line 7862
    iget v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_23

    .line 7863
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7868
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_24
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 7869
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 7870
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v11

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v12

    add-float/2addr v11, v12

    .line 7871
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v12

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    add-float/2addr v12, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v12, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v12, v3

    .line 7872
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v11

    if-nez v3, :cond_25

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_26

    .line 7873
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 7874
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7875
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$28800(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 7876
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7880
    :cond_26
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 7882
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11, v8}, Lorg/telegram/ui/ChatActivity;->access$28900(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v8

    .line 7883
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    iget-boolean v11, v11, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-eqz v11, :cond_28

    .line 7884
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_27

    .line 7885
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7887
    :cond_27
    invoke-virtual {v3, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v5

    .line 7891
    :cond_28
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v11

    if-nez v11, :cond_2a

    if-eqz v8, :cond_29

    iget-object v11, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v11, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v11, :cond_29

    goto :goto_9

    :cond_29
    const/4 v11, 0x0

    goto :goto_a

    :cond_2a
    :goto_9
    const/4 v11, 0x1

    :goto_a
    if-eqz v11, :cond_2b

    .line 7892
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_b

    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    .line 7893
    :goto_b
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v13

    if-eqz v13, :cond_35

    .line 7895
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 7896
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$24400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_2d

    .line 7898
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$24400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    goto :goto_c

    .line 7901
    :cond_2c
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 7902
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v13

    :cond_2d
    :goto_c
    if-ltz v13, :cond_35

    if-eqz v8, :cond_30

    if-eqz v10, :cond_30

    .line 7908
    iget-object v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 7909
    iget-object v15, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 7910
    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2e

    sub-int/2addr v13, v15

    add-int/2addr v13, v14

    goto :goto_e

    :cond_2e
    const/4 v7, 0x1

    sub-int/2addr v13, v7

    add-int/2addr v14, v7

    :goto_d
    if-ge v14, v15, :cond_31

    .line 7915
    iget-object v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v4, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-le v7, v4, :cond_2f

    goto :goto_e

    :cond_2f
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_d

    :cond_30
    const/4 v4, 0x1

    sub-int/2addr v13, v4

    .line 7925
    :cond_31
    :goto_e
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 7926
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$24400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_35

    .line 7928
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_32

    .line 7929
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_32
    const/4 v1, 0x0

    .line 7931
    invoke-virtual {v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v5

    .line 7935
    :cond_33
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 7937
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_34

    .line 7938
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_34
    const/4 v1, 0x0

    .line 7940
    invoke-virtual {v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v5

    .line 7946
    :cond_35
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v4

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v7

    add-float/2addr v4, v7

    if-eqz v11, :cond_36

    .line 7948
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    goto :goto_f

    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v7

    :goto_f
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v7, v13

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    add-float/2addr v7, v13

    float-to-int v7, v7

    .line 7949
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    .line 7950
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v14, :cond_38

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v14

    iget-boolean v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v14, :cond_37

    goto :goto_10

    :cond_37
    if-le v7, v13, :cond_3a

    move v7, v13

    goto :goto_11

    .line 7951
    :cond_38
    :goto_10
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v14

    iget-boolean v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v14, :cond_3a

    .line 7952
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v14

    iget v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 7953
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v17

    if-nez v17, :cond_39

    sub-float v14, v15, v14

    .line 7957
    :cond_39
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v7, v7

    mul-float v7, v7, v14

    int-to-float v13, v13

    sub-float v14, v15, v14

    mul-float v13, v13, v14

    add-float/2addr v7, v13

    float-to-int v7, v7

    :cond_3a
    :goto_11
    if-nez v11, :cond_3b

    .line 7966
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v13

    cmpl-float v13, v13, v9

    if-eqz v13, :cond_3b

    .line 7967
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7969
    :cond_3b
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v13

    if-eqz v13, :cond_48

    .line 7971
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 7972
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$24400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_3d

    .line 7974
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$24400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    goto :goto_12

    .line 7977
    :cond_3c
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 7978
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v13

    :cond_3d
    :goto_12
    if-ltz v13, :cond_48

    move v14, v13

    move v13, v12

    move-object v12, v6

    const/4 v6, 0x0

    :goto_13
    const/16 v15, 0x14

    if-lt v6, v15, :cond_3e

    goto/16 :goto_18

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    if-eqz v8, :cond_42

    if-eqz v10, :cond_42

    .line 7990
    iget-object v15, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    if-gez v15, :cond_3f

    goto/16 :goto_18

    .line 7994
    :cond_3f
    iget-object v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 7995
    iget v9, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v16, 0x4

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_40

    add-int/2addr v14, v15

    const/4 v9, 0x1

    add-int/2addr v14, v9

    goto :goto_15

    :cond_40
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    :goto_14
    if-ltz v15, :cond_43

    .line 8000
    iget-object v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v2, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-ge v9, v2, :cond_41

    goto :goto_15

    :cond_41
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v2, p2

    goto :goto_14

    :cond_42
    const/16 v16, 0x4

    add-int/lit8 v14, v14, 0x1

    .line 8010
    :cond_43
    :goto_15
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 8011
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$24400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    .line 8013
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 8014
    instance-of v13, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_46

    .line 8015
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 8016
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v12

    if-nez v12, :cond_45

    goto :goto_16

    .line 8028
    :cond_44
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 8030
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 8031
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v13, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_46

    .line 8032
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 8033
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v12

    if-nez v12, :cond_45

    :goto_16
    move-object v6, v2

    goto :goto_17

    :cond_45
    move-object v12, v2

    move v13, v9

    move-object/from16 v2, p2

    const/4 v9, 0x0

    goto/16 :goto_13

    :cond_46
    move-object v6, v12

    :goto_17
    move v12, v9

    goto :goto_19

    :cond_47
    :goto_18
    move-object v6, v12

    move v12, v13

    :cond_48
    :goto_19
    const/16 v2, 0x30

    .line 8048
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v7, v8

    if-ge v8, v12, :cond_49

    .line 8049
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v7, v12, v2

    .line 8051
    :cond_49
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v2

    if-nez v2, :cond_4b

    if-eqz v11, :cond_4a

    .line 8052
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    goto :goto_1a

    :cond_4a
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v2, v8

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    add-float/2addr v2, v8

    float-to-int v2, v2

    :goto_1a
    if-le v7, v2, :cond_4b

    move v7, v2

    .line 8057
    :cond_4b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    cmpl-float v8, v4, v2

    if-eqz v8, :cond_4c

    .line 8059
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8061
    :cond_4c
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 8062
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v2, :cond_4d

    int-to-float v2, v7

    .line 8063
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v7, v2

    :cond_4d
    const/16 v2, 0x2c

    .line 8066
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v7, v2

    int-to-float v2, v7

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 8067
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 8068
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 8070
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v4

    .line 8071
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    const/4 v9, 0x1

    shr-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v8, v6

    .line 8069
    invoke-virtual {v1, v2, v4, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1b

    :cond_4e
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    .line 8074
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :goto_1b
    const/4 v2, 0x0

    .line 8076
    invoke-virtual {v3, v9, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 8077
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 8078
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-nez v11, :cond_4f

    .line 8080
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_50

    .line 8081
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_1c

    :cond_4f
    const/4 v3, 0x0

    .line 8086
    :cond_50
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_51

    .line 8087
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_51
    return v5
.end method

.method public invalidate()V
    .locals 1

    .line 8116
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->invalidated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 8119
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->invalidated:Z

    .line 8120
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 8121
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    .line 8122
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8123
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->invalidatePosition()V

    :cond_1
    return-void
.end method

.method protected onChildPressed(Landroid/view/View;FFZ)V
    .locals 3

    .line 7057
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    .line 7058
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_3

    .line 7059
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7060
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    .line 7061
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_2

    .line 7064
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7066
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 7068
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 7069
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v2, :cond_1

    goto :goto_1

    .line 7072
    :cond_1
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7073
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 7074
    invoke-virtual {v1, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setPressed(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 7083
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7084
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 7085
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v0

    .line 7086
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$25000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$24900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/ChatActivity$24;->endTrackingX:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_6

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 7087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7088
    iget-wide v5, p0, Lorg/telegram/ui/ChatActivity$24;->lastTrackingAnimationTime:J

    sub-long v5, v3, v5

    .line 7089
    iget v0, p0, Lorg/telegram/ui/ChatActivity$24;->trackAnimationProgress:F

    long-to-float v5, v5

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/ChatActivity$24;->trackAnimationProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 7091
    iput v1, p0, Lorg/telegram/ui/ChatActivity$24;->trackAnimationProgress:F

    .line 7093
    :cond_0
    iput-wide v3, p0, Lorg/telegram/ui/ChatActivity$24;->lastTrackingAnimationTime:J

    .line 7094
    iget v0, p0, Lorg/telegram/ui/ChatActivity$24;->endTrackingX:F

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v4, p0, Lorg/telegram/ui/ChatActivity$24;->trackAnimationProgress:F

    invoke-virtual {v3, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v1, v3

    mul-float v0, v0, v3

    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    .line 7096
    iput v2, p0, Lorg/telegram/ui/ChatActivity$24;->endTrackingX:F

    .line 7098
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/ChatActivity$24;->setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V

    .line 7099
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 7100
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 7101
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7102
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 7105
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ChatActivity$24;->trackAnimationProgress:F

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 7106
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 7107
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$24802(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7109
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$24;->invalidate()V

    .line 7111
    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->drawReplyButton(Landroid/graphics/Canvas;)V

    .line 7114
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 7115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7117
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_9

    .line 7118
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17100(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    :goto_0
    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v0, v0, v3

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    .line 7120
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7121
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    if-nez v3, :cond_a

    .line 7122
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v12, Lorg/telegram/ui/ChatPullingDownDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$26000(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$26100(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v6

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v4, Lorg/telegram/ui/ChatActivity;->dialogFolderId:I

    iget v10, v4, Lorg/telegram/ui/ChatActivity;->dialogFilterId:I

    iget-object v11, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ChatPullingDownDrawable;-><init>(ILandroid/view/View;JIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v3, v12}, Lorg/telegram/ui/ChatActivity;->access$14902(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatPullingDownDrawable;)Lorg/telegram/ui/ChatPullingDownDrawable;

    .line 7123
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ChatPullingDownDrawable;->onAttach()V

    .line 7125
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->setWidth(I)V

    .line 7126
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    const/16 v4, 0x6e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 7127
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    sub-float/2addr v1, v6

    invoke-virtual {v4, p1, v5, v3, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->draw(Landroid/graphics/Canvas;Landroid/view/View;FF)V

    .line 7129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7131
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7132
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v3, v3, v1

    float-to-int v8, v3

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 7133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7134
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 7135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 7137
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 7138
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatPullingDownDrawable;->reset()V

    :cond_c
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 8094
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    return-void

    .line 8097
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8098
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 8099
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8101
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 6675
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->checkSelectionCancel(Landroid/view/MotionEvent;)V

    .line 6676
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6679
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6680
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 6683
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 6621
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 6622
    iget p1, p0, Lorg/telegram/ui/ChatActivity$24;->lastWidth:I

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    if-eq p1, p4, :cond_0

    .line 6623
    iput p4, p0, Lorg/telegram/ui/ChatActivity$24;->lastWidth:I

    .line 6624
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6627
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 6628
    iget p3, p0, Lorg/telegram/ui/ChatActivity$24;->lastH:I

    if-eq p3, p1, :cond_2

    const/4 p3, 0x1

    .line 6629
    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$24;->ignoreLayout:Z

    .line 6630
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 6631
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/ChatListItemAnimator;->endAnimations()V

    .line 6633
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$24400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->cancel()V

    .line 6634
    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$24;->ignoreLayout:Z

    .line 6635
    iput p1, p0, Lorg/telegram/ui/ChatActivity$24;->lastH:I

    .line 6638
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$24502(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6639
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6640
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->invalidate()V

    .line 6642
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$24600(Lorg/telegram/ui/ChatActivity;)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 8144
    invoke-super/range {p0 .. p5}, Landroid/view/ViewGroup;->onNestedScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 8139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 8134
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 8129
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 6971
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->checkSelectionCancel(Landroid/view/MotionEvent;)V

    .line 6972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 6973
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$25602(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6975
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    .line 6976
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    const/16 v4, 0x6e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 6977
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v1, :cond_3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-nez v0, :cond_3

    .line 6978
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->animationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v6, [F

    .line 6979
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    aput v2, v0, v3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6980
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$25702(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 6981
    new-instance v2, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$24;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0xc8

    .line 6985
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6986
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6987
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6988
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatActivity$24;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatPullingDownDrawable;->runOnAnimationFinish(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6992
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25800(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_0

    .line 6995
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    const-wide/16 v4, 0xfa

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-wide v9, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastShowingReleaseTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    if-eqz v0, :cond_5

    .line 6996
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6997
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v0}, Lorg/telegram/ui/ChatActivity;->access$25702(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 6998
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 6999
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel(Z)V

    :cond_4
    new-array v7, v6, [F

    .line 7001
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v8

    aput v8, v7, v3

    const/16 v8, 0x6f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 7002
    new-instance v9, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$24;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v9, 0x190

    .line 7006
    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7007
    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v9, v6, [F

    .line 7009
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v9, v3

    aput v2, v9, v1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 7010
    new-instance v8, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$24;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x258

    .line 7014
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 7015
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7016
    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v7, v4, v3

    aput-object v2, v4, v1

    .line 7018
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 7019
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_5
    new-array v0, v6, [F

    .line 7021
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    aput v6, v0, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 7022
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$25702(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 7023
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 7024
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel(Z)V

    .line 7026
    :cond_6
    new-instance v2, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$24;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7030
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7031
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7032
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 7036
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    .line 7039
    :cond_8
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 7040
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$25900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-ltz v2, :cond_9

    goto :goto_2

    .line 7043
    :cond_9
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 7044
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$24900(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_b

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_1
    return v1

    :cond_c
    :goto_2
    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 6667
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6670
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 7049
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 7050
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 7051
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$24;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 6594
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 6597
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 1

    .line 6689
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6692
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 6602
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 6603
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 6604
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6605
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6606
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 6608
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x3fd9999a    # 1.7f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6611
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    if-eqz v0, :cond_2

    .line 6612
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6614
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;)V

    .line 6615
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    :cond_3
    return-void
.end method
