.class Lorg/telegram/ui/ChatActivity$22;
.super Lorg/telegram/ui/ChatActivity$RecyclerListViewInternal;
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
.method public static synthetic $r8$lambda$7glVDjDugWH4XLZbytzmeJJeWoo(Lorg/telegram/ui/ChatActivity$22;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$22;->lambda$$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$9xgoQenm0gu-pR5_LG6NGypAQ7M(Lorg/telegram/ui/ChatActivity$22;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->lambda$onTouchEvent$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J2bRWH6bGh3xDSSRKsQHhpmsLJk(Lorg/telegram/ui/ChatActivity$22;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$22;->lambda$$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$WadSAWk9mzQHzYTlTvoNq0cGghw(Lorg/telegram/ui/ChatActivity$22;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$22;->lambda$$1(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$_T2096ZmnqL2pEs3BrkFOsjDhXo(Lorg/telegram/ui/ChatActivity$22;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->lambda$onTouchEvent$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d-A3HwPZhmvhINGQeCgenPrreFI(Lorg/telegram/ui/ChatActivity$22;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$22;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$wIIJ0Ycmcqd3E7-NcjxAQkaZPFw(Lorg/telegram/ui/ChatActivity$22;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wW53nvzZ0LEeijpwf0rca7SiYVQ(Lorg/telegram/ui/ChatActivity$22;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->lambda$onTouchEvent$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 2

    .line 5602
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$RecyclerListViewInternal;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    .line 5605
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->drawTimeAfter:Ljava/util/ArrayList;

    .line 5606
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->drawNamesAfter:Ljava/util/ArrayList;

    .line 5607
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->drawCaptionAfter:Ljava/util/ArrayList;

    .line 5608
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->drawingGroups:Ljava/util/ArrayList;

    const/high16 p1, 0x44fa0000    # 2000.0f

    .line 5618
    iput p1, p0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    .line 5620
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    .line 5621
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    .line 5623
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 5624
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$22;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 5625
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p3, p0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    .line 5626
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v0, 0x44bb8000    # 1500.0f

    .line 5628
    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5629
    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 5627
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    .line 5630
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 5631
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 5632
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 5633
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v1, 0x43c80000    # 400.0f

    .line 5635
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v1, 0x3f000000    # 0.5f

    .line 5636
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 5634
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    .line 5637
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 5638
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 5639
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$22;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 5640
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p2, 0x43480000    # 200.0f

    .line 5642
    invoke-virtual {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 5643
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 5641
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    .line 5644
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 5646
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 5651
    iput p1, p0, Lorg/telegram/ui/ChatActivity$22;->lastH:I

    .line 5654
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5655
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5656
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5657
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5658
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5659
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawChatBackgroundElements(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 6552
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v14, 0x0

    move v7, v14

    const/4 v1, 0x0

    :goto_0
    const/4 v15, 0x4

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/high16 v17, 0x40000000    # 2.0f

    const/4 v6, 0x1

    if-ge v7, v12, :cond_1b

    .line 6556
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6557
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v15, :cond_1a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v10, :cond_0

    goto/16 :goto_e

    .line 6560
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20300(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lorg/telegram/ui/Cells/BotHelpCell;

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3, v6, v14}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v2, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v3, :cond_4

    .line 6561
    :cond_2
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 6562
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v4, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    sub-float/2addr v3, v5

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float v3, v3, v17

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, v8

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    add-float/2addr v3, v4

    .line 6563
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/BotHelpCell;->animating()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-nez v1, :cond_1b

    .line 6564
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 6565
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_f

    .line 6567
    :cond_3
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_f

    .line 6571
    :cond_4
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_19

    .line 6572
    move-object v10, v2

    check-cast v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6573
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v15

    if-eqz v15, :cond_6

    if-eq v15, v1, :cond_5

    goto :goto_1

    :cond_5
    move v13, v6

    goto/16 :goto_d

    .line 6576
    :cond_6
    :goto_1
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v1

    .line 6577
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v2

    .line 6578
    invoke-virtual {v2}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->isAnimationInProgress()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawingSelectionBackground()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v13, v6

    goto/16 :goto_c

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_7

    .line 6579
    :cond_9
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v3

    const-string v4, "paintChatMessageBackgroundSelected"

    if-nez v3, :cond_11

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlightedAnimated()Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_7

    .line 6603
    :cond_a
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 6605
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-nez v1, :cond_b

    .line 6607
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    goto :goto_4

    .line 6609
    :cond_b
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    const-wide/16 v17, 0x0

    move v5, v9

    move v8, v14

    :goto_3
    if-ge v8, v12, :cond_d

    .line 6614
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6615
    instance-of v13, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_c

    .line 6616
    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6617
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-ne v13, v15, :cond_c

    .line 6619
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v13

    .line 6620
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6621
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v21

    add-int v14, v14, v21

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6622
    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getLastTouchTime()J

    move-result-wide v21

    cmp-long v14, v21, v17

    if-lez v14, :cond_c

    .line 6624
    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getTouchX()F

    move-result v5

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    add-float/2addr v5, v9

    .line 6625
    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getTouchY()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    add-float/2addr v9, v6

    move-wide/from16 v17, v21

    move/from16 v30, v9

    move v9, v5

    move/from16 v5, v30

    :cond_c
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x1

    const/4 v14, 0x0

    goto :goto_3

    :cond_d
    int-to-float v6, v3

    sub-float/2addr v5, v6

    .line 6631
    invoke-virtual {v2, v9, v5}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setTouchCoordsOverride(FF)V

    sub-int/2addr v1, v3

    .line 6634
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v1, v3

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v3, v5, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6635
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    .line 6636
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v5, :cond_10

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->access$18400(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v5

    if-nez v5, :cond_10

    if-eqz v4, :cond_10

    .line 6637
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    .line 6638
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    goto :goto_5

    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$20500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 6639
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v5

    .line 6640
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v6, :cond_f

    .line 6641
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    invoke-virtual {v6, v8, v5, v9, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    goto :goto_6

    .line 6643
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    invoke-static {v6, v5, v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    .line 6646
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    .line 6647
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setColor(I)V

    .line 6649
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4, v1}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setBounds(IIII)V

    .line 6650
    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 6651
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_b

    :cond_11
    :goto_7
    if-nez v1, :cond_17

    .line 6581
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    .line 6582
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v2, :cond_12

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->access$18400(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    if-nez v1, :cond_14

    .line 6583
    :cond_13
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_replyLinePaint:Landroid/graphics/Paint;

    .line 6584
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_8
    move-object v8, v1

    goto :goto_a

    .line 6586
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    goto :goto_9

    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$20400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 6587
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v3

    .line 6588
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v4, :cond_16

    .line 6589
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    goto :goto_8

    .line 6591
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    invoke-static {v4, v3, v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    goto :goto_8

    .line 6594
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6595
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    invoke-virtual {v11, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6596
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    int-to-float v1, v9

    .line 6597
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getHighlightAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 6598
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v1, p1

    const/4 v13, 0x1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6599
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6600
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :cond_17
    :goto_b
    const/4 v13, 0x1

    :goto_c
    move-object v1, v15

    .line 6655
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    if-eq v2, v10, :cond_1a

    if-nez v15, :cond_1a

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 6656
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6657
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6658
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_18

    .line 6660
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v3

    .line 6661
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v4

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    shr-int/2addr v5, v13

    int-to-float v5, v5

    .line 6659
    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 6664
    :cond_18
    invoke-virtual {v10, v11, v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 6665
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    :cond_19
    move v13, v6

    .line 6667
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_1a

    .line 6668
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 6669
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 6670
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6671
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6672
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v17

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v17

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 6673
    invoke-virtual {v2, v11, v13}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    .line 6674
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1a
    :goto_e
    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1b
    :goto_f
    move v13, v6

    .line 6679
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_1c

    .line 6680
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    move-object v14, v4

    goto :goto_10

    :cond_1c
    const/4 v14, 0x0

    :goto_10
    const/4 v7, 0x0

    :goto_11
    const/4 v1, 0x3

    if-ge v7, v1, :cond_3f

    .line 6683
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-ne v7, v8, :cond_1d

    .line 6684
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_1d

    move/from16 v25, v7

    move/from16 v18, v8

    move/from16 v26, v9

    move/from16 v21, v10

    const/4 v2, 0x0

    const/16 v20, 0x0

    goto/16 :goto_1d

    :cond_1d
    const/4 v6, 0x0

    :goto_12
    if-ge v6, v12, :cond_31

    .line 6688
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6689
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_30

    .line 6690
    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6691
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_30

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    cmpg-float v1, v3, v9

    if-ltz v1, :cond_30

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_1e

    goto/16 :goto_14

    .line 6694
    :cond_1e
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    if-eqz v1, :cond_30

    if-nez v7, :cond_1f

    .line 6695
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v13, :cond_30

    :cond_1f
    if-ne v7, v13, :cond_20

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    if-nez v3, :cond_20

    goto/16 :goto_14

    :cond_20
    if-nez v7, :cond_21

    .line 6698
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v3, :cond_30

    :cond_21
    if-ne v7, v13, :cond_22

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v3, :cond_22

    goto/16 :goto_14

    :cond_22
    if-ne v7, v8, :cond_23

    .line 6701
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_23
    if-eq v7, v8, :cond_24

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v3

    if-eqz v3, :cond_24

    goto/16 :goto_14

    .line 6705
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 6706
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v5, 0x0

    iput v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 6707
    iput v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 6708
    iput v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    .line 6709
    iput v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 6711
    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 6712
    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 6713
    iput-object v2, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6714
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_25
    const/4 v5, 0x0

    .line 6717
    :goto_13
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 6718
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 6720
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 6721
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v18

    add-int v4, v4, v18

    .line 6722
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v18

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v19

    add-int v18, v18, v19

    .line 6723
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v19

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v20

    add-int v19, v19, v20

    .line 6725
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v5, v15

    const/16 v21, 0xa

    if-nez v5, :cond_26

    .line 6726
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v18, v18, v5

    :cond_26
    move/from16 v5, v18

    .line 6729
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v8, v10

    if-nez v8, :cond_27

    .line 6730
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int v19, v19, v8

    :cond_27
    move/from16 v8, v19

    .line 6733
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v19

    if-eqz v19, :cond_28

    .line 6734
    iget-object v9, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-object v2, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6737
    :cond_28
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-eqz v2, :cond_29

    if-ge v5, v2, :cond_2a

    .line 6738
    :cond_29
    iput v5, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 6740
    :cond_2a
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-eqz v2, :cond_2b

    if-le v8, v2, :cond_2c

    .line 6741
    :cond_2b
    iput v8, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 6743
    :cond_2c
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-eqz v2, :cond_2d

    if-ge v3, v2, :cond_2e

    .line 6744
    :cond_2d
    iput v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 6746
    :cond_2e
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-eqz v2, :cond_2f

    if-le v4, v2, :cond_30

    .line 6747
    :cond_2f
    iput v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    :cond_30
    :goto_14
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    goto/16 :goto_12

    :cond_31
    const/4 v9, 0x0

    .line 6752
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_3e

    .line 6753
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-ne v8, v14, :cond_32

    move/from16 v25, v7

    move/from16 v19, v9

    move/from16 v21, v10

    const/4 v2, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v26, 0x0

    goto/16 :goto_1c

    .line 6757
    :cond_32
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    .line 6758
    iget-object v2, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float v6, v3, v4

    .line 6759
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v3, v3

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v3, v4

    .line 6760
    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v1, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float v5, v4, v1

    .line 6761
    iget v1, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v1, v1

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v1, v4

    .line 6763
    iget-boolean v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v4, :cond_33

    .line 6764
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v3, v2

    .line 6765
    iget-object v2, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    .line 6768
    :cond_33
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v2, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v2, v2, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v2, v2

    sub-float/2addr v4, v2

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v4, v10

    cmpg-float v4, v3, v4

    if-gez v4, :cond_34

    .line 6769
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v3, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v3, v3, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v4, v3

    :cond_34
    move v10, v3

    .line 6772
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_35

    .line 6773
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    :cond_35
    move v4, v1

    .line 6776
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    cmpl-float v1, v1, v16

    if-nez v1, :cond_37

    iget-object v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_36

    goto :goto_16

    :cond_36
    const/16 v22, 0x0

    goto :goto_17

    :cond_37
    :goto_16
    move/from16 v22, v13

    :goto_17
    if-eqz v22, :cond_38

    .line 6778
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6779
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    iget-object v2, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v2

    sub-float v3, v5, v6

    div-float v3, v3, v17

    add-float/2addr v3, v6

    sub-float v23, v4, v10

    div-float v23, v23, v17

    add-float v13, v10, v23

    invoke-virtual {v11, v1, v2, v3, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 6782
    :cond_38
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_3b

    .line 6783
    iget-object v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 6784
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v24

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v26

    cmp-long v13, v24, v26

    if-nez v13, :cond_39

    const/4 v13, 0x0

    goto :goto_19

    :cond_39
    const/4 v13, 0x1

    .line 6785
    :goto_19
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v15

    aget-object v13, v15, v13

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3a

    const/4 v13, 0x0

    goto :goto_1a

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x4

    goto :goto_18

    :cond_3b
    const/4 v13, 0x1

    .line 6790
    :goto_1a
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    float-to-int v3, v6

    float-to-int v15, v10

    move/from16 v24, v6

    float-to-int v6, v5

    move/from16 v25, v7

    float-to-int v7, v4

    move-object/from16 v26, v8

    iget-boolean v8, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    move/from16 v27, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v28

    move-object v1, v2

    move-object/from16 v2, p1

    move/from16 v29, v4

    move v4, v15

    move v15, v5

    const/16 v20, 0x0

    move v5, v6

    move v6, v7

    move v7, v8

    move-object/from16 v11, v26

    const/16 v18, 0x2

    move/from16 v8, v27

    move/from16 v19, v9

    const/16 v26, 0x0

    move v9, v13

    move v13, v10

    const/16 v21, 0x8

    move/from16 v10, v28

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    .line 6791
    iget-object v1, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6792
    iget-boolean v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v22, :cond_3d

    .line 6794
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move/from16 v6, v20

    :goto_1b
    if-ge v6, v12, :cond_3d

    .line 6796
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6797
    instance-of v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_3c

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-ne v4, v11, :cond_3c

    .line 6799
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    .line 6800
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    int-to-float v4, v4

    sub-float v4, v24, v4

    sub-float v5, v15, v24

    div-float v5, v5, v17

    add-float/2addr v4, v5

    .line 6801
    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    int-to-float v3, v3

    sub-float v10, v13, v3

    sub-float v4, v29, v13

    div-float v4, v4, v17

    add-float/2addr v10, v4

    .line 6802
    invoke-virtual {v1, v10}, Landroid/view/View;->setPivotY(F)V

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_3d
    :goto_1c
    add-int/lit8 v9, v19, 0x1

    move-object/from16 v11, p1

    move/from16 v10, v21

    move/from16 v7, v25

    const/4 v13, 0x1

    const/4 v15, 0x4

    goto/16 :goto_15

    :cond_3e
    move/from16 v25, v7

    move/from16 v21, v10

    const/4 v2, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v26, 0x0

    :goto_1d
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v11, p1

    move/from16 v8, v18

    move/from16 v10, v21

    move/from16 v9, v26

    const/4 v13, 0x1

    const/4 v15, 0x4

    goto/16 :goto_11

    :cond_3f
    return-void
.end method

.method private drawChatForegroundElements(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6482
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_2

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_1

    .line 6485
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6486
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6487
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6488
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

    .line 6489
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6491
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6493
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move v6, v5

    :goto_2
    if-ge v6, v2, :cond_4

    .line 6496
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6497
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v9

    add-float/2addr v8, v9

    .line 6498
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    .line 6499
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v10

    goto :goto_3

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    .line 6501
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6502
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6503
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 6504
    invoke-virtual {v7, v1, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    .line 6505
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 6506
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 6508
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6510
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    move v6, v5

    :goto_4
    if-ge v6, v2, :cond_b

    .line 6513
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6515
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 6516
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v8, v4

    if-nez v8, :cond_6

    move v8, v4

    goto :goto_5

    :cond_6
    move v8, v5

    .line 6518
    :goto_5
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v9

    goto :goto_6

    :cond_7
    const/high16 v9, 0x3f800000    # 1.0f

    .line 6519
    :goto_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v11

    add-float/2addr v10, v11

    .line 6520
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v11

    .line 6521
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6522
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 6523
    iget-object v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v13, :cond_9

    .line 6524
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v13

    .line 6525
    iget-object v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v14, v14

    add-float/2addr v14, v13

    iget v15, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v14, v15

    .line 6526
    iget v15, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v15, v15

    iget v3, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v15, v3

    .line 6527
    iget v3, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    iget v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v3, v13

    .line 6528
    iget v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v13, v13

    iget v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v13, v5

    .line 6530
    iget-boolean v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v5, :cond_8

    .line 6531
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v15, v5

    .line 6532
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v13, v5

    :cond_8
    const/16 v5, 0x8

    .line 6535
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v14, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v15, v12

    .line 6536
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v3, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v13, v5

    .line 6534
    invoke-virtual {v1, v14, v15, v3, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 6539
    :cond_9
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v3, :cond_a

    .line 6540
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6541
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 6542
    invoke-virtual {v7, v1, v8, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    const/4 v3, 0x0

    .line 6543
    invoke-virtual {v7, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 6544
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v5, v3

    goto/16 :goto_4

    .line 6547
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_c
    return-void
.end method

.method private drawReplyButton(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 5778
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_a

    :cond_0
    const-string v1, "paintChatActionBackground"

    .line 5781
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v8

    .line 5782
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    .line 5783
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 5784
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5786
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 5787
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5789
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 5790
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5792
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v9}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 5793
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5796
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    div-float/2addr v1, v2

    .line 5797
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v11

    const/4 v3, 0x1

    if-lez v2, :cond_5

    .line 5800
    iput-boolean v3, v0, Lorg/telegram/ui/ChatActivity$22;->slidingBeyondMax:Z

    .line 5803
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v2

    .line 5804
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v5

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-nez v5, :cond_6

    .line 5805
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 5806
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5807
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 5808
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 5809
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5810
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 5811
    iput-boolean v4, v0, Lorg/telegram/ui/ChatActivity$22;->slidingBeyondMax:Z

    .line 5814
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    cmpl-float v5, v5, v6

    const/16 v6, 0x14

    if-eqz v5, :cond_7

    neg-float v5, v2

    .line 5815
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v5, v13

    const/16 v13, 0x1e

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v5, v13

    invoke-static {v5, v12, v11}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    move v13, v5

    goto :goto_0

    :cond_7
    move v13, v11

    :goto_0
    cmpl-float v5, v13, v11

    if-nez v5, :cond_8

    .line 5820
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v5

    iget v14, v0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    cmpl-float v5, v5, v14

    if-eqz v5, :cond_8

    .line 5821
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    iget v14, v0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    invoke-virtual {v5, v14}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5822
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 5824
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    iget v14, v0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    invoke-virtual {v5, v14}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5825
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 5828
    :cond_8
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_9

    move v5, v3

    goto :goto_1

    :cond_9
    move v5, v4

    :goto_1
    if-eqz v5, :cond_a

    .line 5829
    iget v5, v0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    goto :goto_2

    :cond_a
    move v5, v12

    .line 5830
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_b

    .line 5831
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5832
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v5

    if-nez v5, :cond_b

    .line 5833
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 5837
    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    div-float v14, v5, v6

    .line 5838
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v6

    if-eqz v6, :cond_c

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_c
    move v6, v11

    :goto_3
    mul-float/2addr v2, v6

    add-float v15, v5, v2

    .line 5839
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v16, v2, v5

    .line 5840
    iget-boolean v2, v0, Lorg/telegram/ui/ChatActivity$22;->slidingBeyondMax:Z

    if-eqz v2, :cond_d

    move/from16 v17, v1

    goto :goto_4

    :cond_d
    move/from16 v17, v14

    :goto_4
    if-eqz v2, :cond_e

    move/from16 v18, v12

    goto :goto_5

    :cond_e
    sub-float v2, v11, v1

    move/from16 v18, v2

    .line 5844
    :goto_5
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v2

    invoke-static {v2}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v19

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v19, v21

    if-gtz v2, :cond_f

    move/from16 v19, v3

    goto :goto_6

    :cond_f
    move/from16 v19, v4

    :goto_6
    cmpl-float v2, v14, v12

    const/16 v20, 0x10

    if-eqz v2, :cond_11

    .line 5846
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    sub-float v2, v15, v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

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

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

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

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

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

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    div-float/2addr v12, v6

    sub-float/2addr v11, v12

    float-to-int v6, v11

    int-to-float v6, v6

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5847
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

    .line 5849
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 5850
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v11

    mul-float/2addr v2, v14

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v12, v13, v1

    const/4 v5, 0x0

    .line 5851
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v23, v4

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 5852
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5854
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5855
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz v19, :cond_10

    .line 5857
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    const/4 v11, -0x1

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_10
    const/4 v11, -0x1

    .line 5859
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    .line 5860
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_11
    const/4 v11, -0x1

    .line 5864
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

    .line 5865
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

    .line 5866
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 5867
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

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

    .line 5869
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v14

    mul-float/2addr v3, v13

    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 5870
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5871
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5872
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5874
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5875
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-eqz v19, :cond_12

    .line 5877
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5879
    :cond_12
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5880
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5881
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_13
    const/4 v2, 0x0

    cmpl-float v3, v18, v2

    if-eqz v3, :cond_14

    .line 5885
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

    .line 5886
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 5887
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 5889
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5890
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 5893
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

    .line 5894
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

    .line 5895
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 5896
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

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

    .line 5898
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v14

    int-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 5899
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5900
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5901
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5903
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5904
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-eqz v19, :cond_15

    .line 5906
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5908
    :cond_15
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v6, v2

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5909
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->path:Landroid/graphics/Path;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5910
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_16
    if-eqz v3, :cond_17

    .line 5913
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5916
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/ChatActivity$22;->springMultiplier:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_19

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_19

    add-float v5, v2, v4

    .line 5920
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    sub-float v2, v4, v2

    mul-float/2addr v2, v6

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_19

    .line 5923
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float v3, v15, v3

    add-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float v4, v16, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v15

    sub-float/2addr v8, v2

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v5

    add-float v12, v16, v12

    sub-float/2addr v12, v2

    float-to-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v1, v3, v4, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5924
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

    .line 5926
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 5927
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v8, v3

    mul-float/2addr v8, v14

    float-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5929
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5930
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v8, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5931
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5933
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5935
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5936
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-eqz v19, :cond_18

    .line 5938
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5940
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    int-to-float v3, v3

    mul-float/2addr v3, v14

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5942
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5943
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5944
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_19
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v14, v1

    float-to-int v1, v14

    .line 5950
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 5951
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5952
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, v17

    sub-float v1, v15, v1

    float-to-int v1, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v3, v3, v17

    sub-float v3, v16, v3

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float/2addr v15, v4

    float-to-int v4, v15

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float v5, v5, v17

    add-float v5, v16, v5

    float-to-int v5, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5953
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v1, 0xff

    .line 5954
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5956
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 5957
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1b
    :goto_a
    return-void
.end method

.method private synthetic lambda$$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 5630
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$$1(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 5637
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 5644
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6058
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$16802(Lorg/telegram/ui/ChatActivity;F)F

    .line 6059
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 1

    .line 6065
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17100(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6079
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$16802(Lorg/telegram/ui/ChatActivity;F)F

    .line 6080
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6087
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$16802(Lorg/telegram/ui/ChatActivity;F)F

    .line 6088
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6103
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$16802(Lorg/telegram/ui/ChatActivity;F)F

    .line 6104
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 5962
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->access$2902(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_e

    .line 5964
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    if-nez v6, :cond_e

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 5965
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView;->getPressedChildView()Landroid/view/View;

    move-result-object v6

    .line 5966
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_19

    .line 5967
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 5968
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5970
    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7, v6}, Lorg/telegram/ui/ChatActivity;->access$15702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5971
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 5972
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v6}, Lorg/telegram/ui/ChatActivity;->access$16100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    .line 5973
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8, v2, v5}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v3, v2}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;Z)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    if-nez v8, :cond_d

    :cond_3
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5974
    invoke-static {v8, v6}, Lorg/telegram/ui/ChatActivity;->access$16300(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result v8

    if-ne v8, v2, :cond_5

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v8

    if-nez v8, :cond_d

    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v8, :cond_6

    .line 5975
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ltz v8, :cond_d

    :cond_6
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5976
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v7, :cond_8

    :cond_7
    iget-boolean v6, v6, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z

    if-eqz v6, :cond_d

    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5977
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_b

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_d

    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v7, :cond_d

    :cond_b
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5978
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_0

    .line 5983
    :cond_c
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/ChatActivity$22;->startedTrackingPointerId:I

    .line 5984
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->access$15902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 5985
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/ChatActivity$22;->startedTrackingX:I

    .line 5986
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$22;->startedTrackingY:I

    goto/16 :goto_3

    .line 5979
    :cond_d
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5980
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$15702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void

    .line 5988
    :cond_e
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    const/16 v7, 0x32

    const/4 v8, 0x3

    if-eqz v6, :cond_14

    if-eqz v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_14

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v10, v0, Lorg/telegram/ui/ChatActivity$22;->startedTrackingPointerId:I

    if-ne v6, v10, :cond_14

    const/16 v3, -0x50

    .line 5989
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v6, v0, Lorg/telegram/ui/ChatActivity$22;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5990
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v6, v0, Lorg/telegram/ui/ChatActivity$22;->startedTrackingY:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 5991
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_f

    int-to-float v6, v3

    const v10, 0x3ecccccd    # 0.4f

    invoke-static {v10, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v10

    neg-float v10, v10

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_f

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/2addr v6, v8

    if-le v6, v4, :cond_f

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 5992
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 5993
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5994
    invoke-super {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5995
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 5996
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    .line 5997
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/ChatActivity;->access$15902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 5998
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->access$15802(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 5999
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$22;->startedTrackingX:I

    .line 6000
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 6001
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_3

    .line 6003
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 6004
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-lt v1, v4, :cond_10

    .line 6005
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$22;->wasTrackingVibrate:Z

    if-nez v1, :cond_11

    .line 6007
    :try_start_0
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6011
    :catch_0
    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity$22;->wasTrackingVibrate:Z

    goto :goto_1

    .line 6014
    :cond_10
    iput-boolean v5, v0, Lorg/telegram/ui/ChatActivity$22;->wasTrackingVibrate:Z

    .line 6016
    :cond_11
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6017
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 6018
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 6019
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 6021
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ChatActivity$22;->setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V

    .line 6022
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_3

    .line 6024
    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    if-eqz v6, :cond_19

    if-eqz v1, :cond_15

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v9, v0, Lorg/telegram/ui/ChatActivity$22;->startedTrackingPointerId:I

    if-ne v6, v9, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v8, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v9, 0x6

    if-ne v6, v9, :cond_19

    :cond_15
    if-eqz v1, :cond_17

    .line 6025
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v8, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_17

    .line 6027
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 6028
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_2

    .line 6030
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReply(Lorg/telegram/messenger/MessageObject;)V

    .line 6032
    :cond_17
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$22;->endTrackingX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_18

    .line 6034
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$15702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6036
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/ChatActivity$22;->lastTrackingAnimationTime:J

    .line 6037
    iput v4, v0, Lorg/telegram/ui/ChatActivity$22;->trackAnimationProgress:F

    .line 6038
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6039
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ChatActivity;->access$15902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6040
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ChatActivity;->access$15802(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6041
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    :cond_19
    :goto_3
    return-void
.end method

.method private setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V
    .locals 5

    .line 5728
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5732
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 5734
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p1, :cond_2

    .line 5735
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v4, :cond_1

    goto :goto_1

    .line 5738
    :cond_1
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5739
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 5740
    invoke-virtual {v3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5741
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5744
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private updateSkeletonColors()V
    .locals 18

    move-object/from16 v0, p0

    .line 6411
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 6412
    :goto_0
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x3

    if-eqz v1, :cond_1

    const/16 v7, 0x21

    goto :goto_1

    :cond_1
    move v7, v6

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

    .line 6413
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v4

    if-eqz v1, :cond_3

    const/16 v7, 0x18

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$1900()I

    move-result v7

    :goto_3
    invoke-static {v4, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 6414
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-ne v7, v4, :cond_4

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-eq v7, v5, :cond_6

    .line 6415
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v5}, Lorg/telegram/ui/ChatActivity;->access$19202(Lorg/telegram/ui/ChatActivity;I)I

    .line 6416
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v4}, Lorg/telegram/ui/ChatActivity;->access$19102(Lorg/telegram/ui/ChatActivity;I)I

    .line 6417
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v15, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v12, 0xc8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v9, v12}, Lorg/telegram/ui/ChatActivity;->access$19402(Lorg/telegram/ui/ChatActivity;I)I

    move-result v9

    int-to-float v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x4

    new-array v9, v14, [I

    aput v4, v9, v3

    aput v5, v9, v2

    const/16 v17, 0x2

    aput v5, v9, v17

    aput v4, v9, v6

    new-array v4, v14, [F

    fill-array-data v4, :array_0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v9

    move-object v9, v15

    move v6, v14

    move-object v14, v5

    move-object v5, v15

    move-object v15, v4

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v7, v5}, Lorg/telegram/ui/ChatActivity;->access$19302(Lorg/telegram/ui/ChatActivity;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;

    .line 6418
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$19502(Lorg/telegram/ui/ChatActivity;I)I

    .line 6419
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz v1, :cond_5

    const/16 v1, 0x2b

    goto :goto_4

    :cond_5
    const/16 v1, 0x60

    .line 6421
    :goto_4
    invoke-static {v1, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 6422
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    int-to-float v10, v7

    const/4 v11, 0x0

    new-array v12, v6, [I

    aput v3, v12, v3

    aput v1, v12, v2

    aput v1, v12, v17

    const/4 v1, 0x3

    aput v3, v12, v1

    new-array v13, v6, [F

    fill-array-data v13, :array_1

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$19602(Lorg/telegram/ui/ChatActivity;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;

    .line 6423
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

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

    .line 6428
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6429
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x11

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/16 v2, 0x10

    :cond_0
    const-wide/16 v4, 0x4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const-wide/16 v2, 0x0

    .line 6436
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 6437
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v0, v1}, Lorg/telegram/ui/ChatActivity;->access$19702(Lorg/telegram/ui/ChatActivity;J)J

    .line 6438
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-long v5, v4

    mul-long/2addr v2, v5

    long-to-float v1, v2

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$19516(Lorg/telegram/ui/ChatActivity;F)I

    .line 6439
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    mul-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_2

    .line 6440
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$19502(Lorg/telegram/ui/ChatActivity;I)I

    .line 6442
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19800(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6443
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6444
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19800(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 6446
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19900(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6447
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6448
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19900(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 5691
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 5692
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->allowSelectChildAtPosition(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 7199
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7202
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 6454
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$20002(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6457
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6458
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez v2, :cond_1

    .line 6459
    iget v2, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 6461
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 6462
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 6463
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 6465
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 6466
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 6468
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    neg-float v4, v4

    sub-float/2addr v4, v2

    iput v4, v3, Lorg/telegram/ui/ChatActivity;->drawingChatLisViewYoffset:F

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6469
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    .line 6470
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6471
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->drawChatForegroundElements(Landroid/graphics/Canvas;)V

    .line 6472
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 6474
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    .line 6475
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6476
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->drawChatForegroundElements(Landroid/graphics/Canvas;)V

    .line 6478
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6220
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/16 v6, 0xc8

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-gtz v2, :cond_26

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_26

    .line 6221
    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v8, 0x1

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
    move v2, v8

    .line 6222
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    .line 6223
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6224
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v1, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6226
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$22;->updateSkeletonColors()V

    .line 6227
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$22;->updateSkeletonGradient()V

    .line 6229
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v11, v11, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v9, v11

    const v11, 0x7fffffff

    const/4 v12, 0x0

    .line 6233
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 6234
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-ge v13, v11, :cond_4

    move v11, v13

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 6239
    :cond_5
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    cmp-long v12, v12, v4

    if-nez v12, :cond_6

    if-gtz v11, :cond_6

    .line 6240
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_6
    const-string v11, "paintChatActionBackground"

    .line 6243
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v11

    .line 6244
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getColor()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    if-eq v12, v13, :cond_7

    .line 6245
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 6247
    :cond_7
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v13

    if-eq v12, v13, :cond_8

    .line 6248
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6249
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object v11

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$2000()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 6250
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    new-instance v12, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_8
    const/4 v11, 0x0

    .line 6253
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v11, v12, :cond_10

    .line 6254
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6305
    instance-of v14, v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v14, :cond_c

    .line 6306
    move-object v14, v12

    check-cast v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v15

    .line 6307
    invoke-virtual {v14, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundDrawable(Z)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 6308
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v16

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int v14, v16, v14

    int-to-float v14, v14

    if-eqz v15, :cond_9

    iget-object v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v8, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v8, v8

    iget v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v8, v15

    goto :goto_4

    :cond_9
    move v8, v10

    :goto_4
    add-float/2addr v14, v8

    float-to-int v8, v14

    .line 6309
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    cmp-long v14, v14, v4

    if-nez v14, :cond_a

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    invoke-static {v9, v8, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v8

    goto :goto_5

    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    cmpl-float v12, v12, v13

    if-nez v12, :cond_b

    goto :goto_5

    :cond_b
    move v8, v9

    :goto_5
    if-ge v8, v9, :cond_f

    goto :goto_7

    .line 6313
    :cond_c
    instance-of v8, v12, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v8, :cond_f

    .line 6314
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    cmp-long v8, v14, v4

    if-nez v8, :cond_d

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    invoke-static {v9, v8, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v8

    goto :goto_6

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v8

    cmpl-float v8, v8, v13

    if-nez v8, :cond_e

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_6

    :cond_e
    move v8, v9

    :goto_6
    if-ge v8, v9, :cond_f

    :goto_7
    move v9, v8

    :cond_f
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 6321
    :cond_10
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 6322
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x1

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    .line 6323
    :goto_8
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v8

    invoke-static {v8}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v11

    const-wide v14, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v8, v11, v14

    if-gtz v8, :cond_12

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v8, 0x1

    goto :goto_9

    :cond_12
    const/4 v8, 0x0

    .line 6324
    :goto_9
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v7

    invoke-static {v7}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v11

    const-wide v14, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v7, v11, v14

    if-gtz v7, :cond_13

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v16, 0x1

    goto :goto_a

    :cond_13
    const/16 v16, 0x0

    :goto_a
    if-eqz v6, :cond_14

    .line 6326
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getY()F

    move-result v12

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)F

    move-result v14

    sub-float/2addr v12, v14

    invoke-static {v7, v11, v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 6328
    :cond_14
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    if-eqz v16, :cond_15

    .line 6330
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v12, v7

    const/high16 v14, 0x40800000    # 4.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6333
    :cond_15
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-eqz v11, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    sub-long/2addr v11, v14

    long-to-float v11, v11

    const/high16 v12, 0x43480000    # 200.0f

    div-float/2addr v11, v12

    sub-float v11, v13, v11

    goto :goto_b

    :cond_16
    move v11, v13

    .line 6334
    :goto_b
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    .line 6335
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    .line 6336
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    .line 6338
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v13, :cond_17

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->access$18400(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v13

    if-eqz v13, :cond_17

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v13

    if-eqz v13, :cond_17

    const v13, 0x3e99999a    # 0.3f

    goto :goto_c

    :cond_17
    const/high16 v13, 0x3f800000    # 1.0f

    .line 6341
    :goto_c
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v10

    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v17, v17, v11

    mul-float v3, v17, v13

    float-to-int v3, v3

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6342
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v3

    mul-float/2addr v13, v11

    int-to-float v10, v12

    mul-float/2addr v13, v10

    float-to-int v13, v13

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6343
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v3

    mul-float/2addr v11, v10

    float-to-int v10, v11

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 6344
    :goto_d
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v11, v10, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    const/high16 v13, 0x40400000    # 3.0f

    if-le v9, v11, :cond_1b

    .line 6345
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    .line 6348
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_18

    .line 6349
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10, v2}, Lorg/telegram/ui/ChatActivity;->access$18600(Lorg/telegram/ui/ChatActivity;Z)Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    move-result-object v10

    .line 6350
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 6352
    :cond_18
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    .line 6354
    :goto_e
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v19

    cmp-long v11, v19, v4

    if-eqz v11, :cond_1a

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v11, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v13, 0x2

    if-gt v11, v13, :cond_19

    iget v11, v10, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_f

    :cond_19
    iget v11, v10, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    goto :goto_f

    :cond_1a
    move v11, v9

    :goto_f
    iput v11, v10, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    .line 6356
    iget v10, v10, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int/2addr v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 6361
    :cond_1b
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    goto :goto_10

    :cond_1c
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    iget v3, v3, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    :goto_10
    move/from16 v21, v4

    move v4, v3

    move/from16 v3, v21

    .line 6362
    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_23

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v5, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    if-le v4, v5, :cond_23

    .line 6363
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 6365
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    .line 6367
    iget v9, v5, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    .line 6368
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v10

    if-eqz v2, :cond_1d

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    goto :goto_12

    :cond_1d
    const/16 v11, 0x33

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    :goto_12
    iget v13, v5, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int v13, v9, v13

    move/from16 v18, v7

    iget v7, v5, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->width:I

    invoke-virtual {v10, v11, v13, v7, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    if-eqz v6, :cond_1e

    .line 6370
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v7

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v7, v1, v10, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    .line 6372
    :cond_1e
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v7

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v7, v1, v10, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    if-eqz v8, :cond_1f

    .line 6374
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v7

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v10

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v10, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    .line 6376
    :cond_1f
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v7

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v7, v1, v10, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    if-nez v2, :cond_22

    const/16 v7, 0x1b

    const/16 v10, 0x15

    if-eqz v6, :cond_20

    .line 6380
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int v13, v9, v13

    int-to-float v13, v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v1, v11, v13, v7, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v7, 0x1b

    .line 6382
    :cond_20
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    const/16 v11, 0x15

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int v13, v9, v13

    int-to-float v13, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v1, v10, v13, v7, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v7, 0x1b

    if-eqz v8, :cond_21

    .line 6384
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    const/16 v11, 0x15

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int v13, v9, v13

    int-to-float v13, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v13, v7, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v7, 0x1b

    .line 6386
    :cond_21
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/16 v10, 0x15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v1, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6389
    :cond_22
    iget v5, v5, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v18

    const/high16 v13, 0x40400000    # 3.0f

    goto/16 :goto_11

    :cond_23
    move/from16 v18, v7

    .line 6392
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6393
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6394
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6395
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    move/from16 v3, v18

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6397
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_13

    .line 6398
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_25

    .line 6399
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6401
    :cond_25
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$18902(Lorg/telegram/ui/ChatActivity;I)I

    .line 6402
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19002(Lorg/telegram/ui/ChatActivity;I)I

    .line 6403
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_26

    .line 6404
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6407
    :cond_26
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 6812
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6814
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6819
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6822
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v7, v6, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v6, v6, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v6, v6

    sub-float/2addr v7, v6

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 6823
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    const/16 v9, 0x8

    if-gtz v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    cmpg-float v7, v8, v7

    if-ltz v7, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v9, :cond_3

    :cond_2
    move v3, v5

    .line 6829
    :cond_3
    instance-of v7, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v8, 0x0

    if-eqz v7, :cond_a

    .line 6830
    move-object v7, v2

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6831
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v3, v5

    .line 6834
    :cond_4
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v10

    .line 6835
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v11

    if-eqz v10, :cond_6

    .line 6837
    iget v12, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iget v13, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eq v12, v13, :cond_5

    const/16 v12, 0x3e8

    if-ne v13, v12, :cond_5

    iget-object v12, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-nez v12, :cond_5

    iget-boolean v12, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    if-eqz v12, :cond_5

    .line 6838
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v10

    goto :goto_1

    .line 6839
    :cond_5
    iget-object v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v10, :cond_6

    .line 6840
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v12

    add-int/2addr v12, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int/2addr v10, v12

    move v12, v10

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_1
    const/4 v12, 0x0

    .line 6843
    :goto_2
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDelayRoundProgressDraw()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 6844
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13, v7}, Lorg/telegram/ui/ChatActivity;->access$20002(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    :cond_7
    if-nez v3, :cond_8

    .line 6846
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v13

    instance-of v13, v13, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_8

    .line 6847
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6848
    invoke-virtual {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-ne v13, v11, :cond_8

    move v3, v5

    :cond_8
    if-eqz v3, :cond_9

    .line 6853
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->skipDraw()V

    :cond_9
    move/from16 v18, v10

    move-object v10, v8

    move-object v8, v11

    move/from16 v11, v18

    goto :goto_4

    .line 6855
    :cond_a
    instance-of v7, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v7, :cond_b

    .line 6856
    move-object v7, v2

    check-cast v7, Lorg/telegram/ui/Cells/ChatActionCell;

    move-object v10, v7

    move-object v7, v8

    goto :goto_3

    :cond_b
    move-object v7, v8

    move-object v10, v7

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    if-eqz v11, :cond_c

    .line 6862
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_5

    :cond_c
    if-eqz v12, :cond_d

    .line 6864
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :cond_d
    :goto_5
    if-nez v3, :cond_13

    if-eqz v8, :cond_e

    .line 6868
    iget-object v13, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v13, :cond_e

    move v13, v5

    goto :goto_6

    :cond_e
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_f

    .line 6870
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6871
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v14

    .line 6872
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v15, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v15, v15

    add-float/2addr v15, v14

    iget v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v15, v5

    .line 6873
    iget v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v5, v5

    iget v4, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v5, v4

    .line 6874
    iget v4, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v14

    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v4, v14

    .line 6875
    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v14, v14

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v14, v8

    .line 6878
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v15, v8

    .line 6879
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v5, v8

    .line 6880
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v8

    .line 6881
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v14, v8

    .line 6877
    invoke-virtual {v1, v15, v5, v4, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_f
    if-eqz v7, :cond_10

    if-eqz v13, :cond_10

    .line 6886
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    goto :goto_7

    .line 6889
    :cond_10
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    :goto_7
    if-eqz v13, :cond_11

    .line 6892
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    if-eqz v7, :cond_12

    .line 6894
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 6895
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6896
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6897
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v5

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    invoke-virtual {v1, v5, v8, v10, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 6898
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 6899
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_12
    if-eqz v10, :cond_14

    .line 6901
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6902
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6903
    invoke-virtual {v10, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 6904
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :cond_14
    :goto_8
    if-nez v11, :cond_15

    if-eqz v12, :cond_16

    .line 6910
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6913
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_17

    .line 6914
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6915
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {v1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_17
    if-eqz v7, :cond_18

    .line 6919
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCheckBox(Landroid/graphics/Canvas;)V

    .line 6922
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_19

    .line 6923
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6926
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1a

    .line 6927
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6928
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {v1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1a
    if-eqz v7, :cond_53

    .line 6932
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 6933
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v10

    if-nez v3, :cond_26

    if-nez v10, :cond_1b

    .line 6935
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v3, :cond_23

    :cond_1b
    if-eqz v10, :cond_1c

    .line 6936
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v3, :cond_1c

    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v3, :cond_20

    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v3, :cond_20

    :cond_1c
    if-eqz v10, :cond_1d

    .line 6937
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v3, :cond_1e

    .line 6938
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    if-eqz v10, :cond_1f

    .line 6940
    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v3, :cond_20

    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v3, :cond_20

    :cond_1f
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 6941
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    if-nez v10, :cond_21

    .line 6944
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    if-nez v3, :cond_21

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v3, :cond_23

    :cond_21
    if-eqz v10, :cond_22

    .line 6945
    iget v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v3, v9

    if-eqz v3, :cond_23

    .line 6946
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6951
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_24
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 6952
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 6953
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v11

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v12

    add-float/2addr v11, v12

    .line 6954
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v12

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    add-float/2addr v12, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v12, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v12, v3

    .line 6955
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v11

    if-nez v3, :cond_25

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_26

    .line 6956
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 6957
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6958
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 6959
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6963
    :cond_26
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 6965
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11, v5}, Lorg/telegram/ui/ChatActivity;->access$20900(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    .line 6966
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    iget-boolean v11, v11, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-eqz v11, :cond_28

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    iget-boolean v11, v11, Lorg/telegram/messenger/MessageObject;->deletedByThanos:Z

    if-nez v11, :cond_28

    .line 6967
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_27

    .line 6968
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_27
    const/4 v1, 0x0

    .line 6970
    invoke-virtual {v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v4

    .line 6974
    :cond_28
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v11

    if-nez v11, :cond_2a

    if-eqz v5, :cond_29

    iget-object v11, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

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

    .line 6975
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_b

    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    .line 6976
    :goto_b
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v13

    if-eqz v13, :cond_35

    .line 6978
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 6979
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_2d

    .line 6981
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    goto :goto_c

    .line 6984
    :cond_2c
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 6985
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v13

    :cond_2d
    :goto_c
    if-ltz v13, :cond_35

    if-eqz v5, :cond_30

    if-eqz v10, :cond_30

    .line 6991
    iget-object v14, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 6992
    iget-object v15, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 6993
    iget v6, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_2e

    sub-int/2addr v13, v15

    add-int/2addr v13, v14

    goto :goto_e

    :cond_2e
    const/4 v6, 0x1

    sub-int/2addr v13, v6

    add-int/2addr v14, v6

    :goto_d
    if-ge v14, v15, :cond_31

    .line 6998
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v9, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-le v6, v9, :cond_2f

    goto :goto_e

    :cond_2f
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_30
    const/4 v6, 0x1

    sub-int/2addr v13, v6

    .line 7008
    :cond_31
    :goto_e
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 7009
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_35

    .line 7011
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_32

    .line 7012
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_32
    const/4 v1, 0x0

    .line 7014
    invoke-virtual {v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v4

    .line 7018
    :cond_33
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 7020
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_34

    .line 7021
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_34
    const/4 v1, 0x0

    .line 7023
    invoke-virtual {v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v4

    .line 7029
    :cond_35
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v6

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v9

    add-float/2addr v6, v9

    if-eqz v11, :cond_36

    .line 7030
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    goto :goto_f

    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v9

    :goto_f
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v9, v13

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    add-float/2addr v9, v13

    float-to-int v9, v9

    .line 7031
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    .line 7032
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCheckBoxVisible()Z

    move-result v14

    if-eqz v14, :cond_37

    cmpl-float v14, v6, v8

    if-nez v14, :cond_37

    const/4 v14, 0x1

    goto :goto_10

    :cond_37
    const/4 v14, 0x0

    .line 7033
    :goto_10
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v15

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v15, :cond_39

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v15

    iget-boolean v15, v15, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v15, :cond_38

    goto :goto_11

    :cond_38
    if-le v9, v13, :cond_3b

    move v9, v13

    goto :goto_12

    .line 7034
    :cond_39
    :goto_11
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v15

    iget-boolean v15, v15, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v15, :cond_3b

    .line 7035
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v15

    iget v15, v15, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 7036
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v17

    if-nez v17, :cond_3a

    sub-float v15, v8, v15

    .line 7040
    :cond_3a
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v9, v9

    mul-float/2addr v9, v15

    int-to-float v13, v13

    sub-float v15, v8, v15

    mul-float/2addr v13, v15

    add-float/2addr v9, v13

    float-to-int v9, v9

    :cond_3b
    :goto_12
    if-nez v11, :cond_3c

    .line 7049
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v13

    const/4 v15, 0x0

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_3c

    .line 7050
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7052
    :cond_3c
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 7054
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 7055
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_3e

    .line 7057
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    goto :goto_13

    .line 7060
    :cond_3d
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 7061
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v13

    :cond_3e
    :goto_13
    if-ltz v13, :cond_4b

    move v15, v13

    move v13, v12

    move-object v12, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_14
    const/16 v8, 0x14

    if-lt v6, v8, :cond_3f

    goto/16 :goto_19

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    if-eqz v5, :cond_44

    if-eqz v10, :cond_44

    .line 7073
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_40

    goto/16 :goto_19

    .line 7077
    :cond_40
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 7078
    iget v2, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v16, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_41

    add-int/2addr v15, v8

    const/4 v2, 0x1

    add-int/2addr v15, v2

    goto :goto_16

    :cond_41
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_15
    if-ltz v8, :cond_43

    .line 7083
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    move-object/from16 v17, v5

    iget-byte v5, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-ge v2, v5, :cond_42

    goto :goto_17

    :cond_42
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v5, v17

    goto :goto_15

    :cond_43
    :goto_16
    move-object/from16 v17, v5

    goto :goto_17

    :cond_44
    move-object/from16 v17, v5

    const/16 v16, 0x4

    add-int/lit8 v15, v15, 0x1

    .line 7093
    :goto_17
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 7094
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_4a

    .line 7096
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    .line 7097
    instance-of v8, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_49

    .line 7098
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7099
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v8

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v12

    add-float/2addr v8, v12

    if-eqz v14, :cond_45

    const/4 v12, 0x0

    cmpl-float v13, v8, v12

    if-lez v13, :cond_45

    move v7, v8

    .line 7103
    :cond_45
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v8

    if-nez v8, :cond_48

    goto :goto_18

    .line 7115
    :cond_46
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 7117
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 7118
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v8, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_49

    .line 7119
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7120
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v8

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v12

    add-float/2addr v8, v12

    if-eqz v14, :cond_47

    const/4 v12, 0x0

    cmpl-float v13, v8, v12

    if-lez v13, :cond_47

    move v7, v8

    .line 7124
    :cond_47
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v8

    if-nez v8, :cond_48

    :goto_18
    move v12, v5

    move v6, v7

    move-object v7, v2

    goto :goto_1a

    :cond_48
    move-object v12, v2

    move v13, v5

    move-object/from16 v2, p2

    move-object/from16 v5, v17

    goto/16 :goto_14

    :cond_49
    move v6, v7

    move-object v7, v12

    move v12, v5

    goto :goto_1a

    :cond_4a
    :goto_19
    move v6, v7

    move-object v7, v12

    move v12, v13

    :cond_4b
    :goto_1a
    const/16 v2, 0x30

    .line 7139
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v9, v5

    if-ge v5, v12, :cond_4c

    .line 7140
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v9, v12, v2

    .line 7142
    :cond_4c
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v2

    if-nez v2, :cond_4e

    if-eqz v11, :cond_4d

    .line 7143
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    goto :goto_1b

    :cond_4d
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    :goto_1b
    if-le v9, v2, :cond_4e

    move v9, v2

    .line 7148
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    cmpl-float v5, v6, v2

    if-eqz v5, :cond_4f

    .line 7150
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7152
    :cond_4f
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 7153
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v2, :cond_50

    int-to-float v2, v9

    .line 7154
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    sub-float/2addr v2, v5

    float-to-int v9, v2

    :cond_50
    const/16 v2, 0x2c

    .line 7157
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v9, v2

    int-to-float v2, v9

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 7158
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 7159
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 7161
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v5

    .line 7162
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v8

    add-float/2addr v6, v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    shr-int/2addr v7, v9

    int-to-float v7, v7

    add-float/2addr v8, v7

    .line 7160
    invoke-virtual {v1, v2, v5, v6, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1c

    :cond_51
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    .line 7165
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :goto_1c
    const/4 v2, 0x0

    .line 7167
    invoke-virtual {v3, v9, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 7168
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 7169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-nez v11, :cond_52

    .line 7171
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_54

    .line 7172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_1d

    :cond_52
    const/4 v3, 0x0

    goto :goto_1d

    :cond_53
    move v3, v8

    .line 7177
    :cond_54
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_55

    .line 7178
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_55
    return v4
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 7207
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    .line 7208
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$21002(Lorg/telegram/ui/ChatActivity;Z)Z

    return-void
.end method

.method protected onChildPressed(Landroid/view/View;FFZ)V
    .locals 3

    .line 6133
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    .line 6134
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_3

    .line 6135
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6136
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    .line 6137
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_2

    .line 6140
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 6142
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 6144
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 6145
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v2, :cond_1

    goto :goto_1

    .line 6148
    :cond_1
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6149
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 6150
    invoke-virtual {v1, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setPressed(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 7213
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    .line 7214
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$21002(Lorg/telegram/ui/ChatActivity;Z)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 6159
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6160
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 6161
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v0

    .line 6162
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/ChatActivity$22;->endTrackingX:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_6

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 6163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6164
    iget-wide v5, p0, Lorg/telegram/ui/ChatActivity$22;->lastTrackingAnimationTime:J

    sub-long v5, v3, v5

    .line 6165
    iget v0, p0, Lorg/telegram/ui/ChatActivity$22;->trackAnimationProgress:F

    long-to-float v5, v5

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/ChatActivity$22;->trackAnimationProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 6167
    iput v1, p0, Lorg/telegram/ui/ChatActivity$22;->trackAnimationProgress:F

    .line 6169
    :cond_0
    iput-wide v3, p0, Lorg/telegram/ui/ChatActivity$22;->lastTrackingAnimationTime:J

    .line 6170
    iget v0, p0, Lorg/telegram/ui/ChatActivity$22;->endTrackingX:F

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v4, p0, Lorg/telegram/ui/ChatActivity$22;->trackAnimationProgress:F

    invoke-virtual {v3, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v1, v3

    mul-float/2addr v0, v3

    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    .line 6172
    iput v2, p0, Lorg/telegram/ui/ChatActivity$22;->endTrackingX:F

    .line 6174
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/ChatActivity$22;->setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V

    .line 6175
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6176
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 6177
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6178
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 6181
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ChatActivity$22;->trackAnimationProgress:F

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 6182
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6183
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$15702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6185
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6187
    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->drawReplyButton(Landroid/graphics/Canvas;)V

    .line 6190
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v3, v0, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez v3, :cond_b

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b

    .line 6191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6193
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_9

    .line 6194
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    :goto_0
    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v0, v3

    goto :goto_1

    :cond_9
    move v0, v2

    .line 6196
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6197
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    if-nez v3, :cond_a

    .line 6198
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v12, Lorg/telegram/ui/ChatPullingDownDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v4, Lorg/telegram/ui/ChatActivity;->dialogFolderId:I

    iget v10, v4, Lorg/telegram/ui/ChatActivity;->dialogFilterId:I

    iget-object v11, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ChatPullingDownDrawable;-><init>(ILandroid/view/View;JIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v3, v12}, Lorg/telegram/ui/ChatActivity;->access$16902(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatPullingDownDrawable;)Lorg/telegram/ui/ChatPullingDownDrawable;

    .line 6199
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ChatPullingDownDrawable;->onAttach()V

    .line 6201
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->setWidth(I)V

    .line 6202
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    const/16 v4, 0x6e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 6203
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    sub-float/2addr v1, v6

    invoke-virtual {v4, p1, v5, v3, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->draw(Landroid/graphics/Canvas;Landroid/view/View;FF)V

    .line 6205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 6207
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$17400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6208
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$17400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$17400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v8, v3

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 6209
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6210
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 6211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 6213
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 6214
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatPullingDownDrawable;->reset()V

    :cond_c
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 7185
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    return-void

    .line 7188
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 7190
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7192
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

    .line 5757
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->checkSelectionCancel(Landroid/view/MotionEvent;)V

    .line 5758
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5761
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5762
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 5765
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 5703
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 5704
    iget p1, p0, Lorg/telegram/ui/ChatActivity$22;->lastWidth:I

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    if-eq p1, p4, :cond_0

    .line 5705
    iput p4, p0, Lorg/telegram/ui/ChatActivity$22;->lastWidth:I

    .line 5706
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$14400(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5709
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 5710
    iget p3, p0, Lorg/telegram/ui/ChatActivity$22;->lastH:I

    if-eq p3, p1, :cond_2

    const/4 p3, 0x1

    .line 5711
    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$22;->ignoreLayout:Z

    .line 5712
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 5713
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/ChatListItemAnimator;->endAnimations()V

    .line 5715
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->cancel()V

    .line 5716
    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$22;->ignoreLayout:Z

    .line 5717
    iput p1, p0, Lorg/telegram/ui/ChatActivity$22;->lastH:I

    .line 5720
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$15402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 5721
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5722
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->invalidate()V

    .line 5724
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 5697
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15200(Lorg/telegram/ui/ChatActivity;)V

    .line 5698
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 6047
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->checkSelectionCancel(Landroid/view/MotionEvent;)V

    .line 6048
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 6049
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6051
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    .line 6052
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    const/16 v4, 0x6e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 6053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v1, :cond_3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-nez v0, :cond_3

    .line 6054
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->animationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v6, [F

    .line 6055
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    aput v2, v0, v3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6056
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$17002(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 6057
    new-instance v2, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0xc8

    .line 6061
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6062
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6063
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6064
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatPullingDownDrawable;->runOnAnimationFinish(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6068
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17100(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_0

    .line 6071
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    const-wide/16 v4, 0xfa

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-wide v9, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastShowingReleaseTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    if-eqz v0, :cond_5

    .line 6072
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6073
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v0}, Lorg/telegram/ui/ChatActivity;->access$17002(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 6074
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 6075
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel(Z)V

    :cond_4
    new-array v7, v6, [F

    .line 6077
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v8

    aput v8, v7, v3

    const/16 v8, 0x6f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 6078
    new-instance v9, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v9, 0x190

    .line 6082
    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6083
    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v9, v6, [F

    .line 6085
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v9, v3

    aput v2, v9, v1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 6086
    new-instance v8, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x258

    .line 6090
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 6091
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6092
    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v7, v4, v3

    aput-object v2, v4, v1

    .line 6094
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 6095
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_5
    new-array v0, v6, [F

    .line 6097
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    aput v6, v0, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6098
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$17002(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 6099
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6100
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel(Z)V

    .line 6102
    :cond_6
    new-instance v2, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6106
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6107
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6108
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6112
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    .line 6115
    :cond_8
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6116
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-ltz v2, :cond_9

    goto :goto_2

    .line 6119
    :cond_9
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 6120
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15800(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_b

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    move v1, v3

    :cond_b
    :goto_1
    return v1

    :cond_c
    :goto_2
    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 5749
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5752
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 6125
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6126
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 6127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$22;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 5664
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$22;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 5667
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 1

    .line 5771
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5774
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 5672
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 5673
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 5674
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5675
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5676
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 5678
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x3fd9999a    # 1.7f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5681
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    if-eqz v0, :cond_2

    .line 5682
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5684
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)V

    .line 5685
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    :cond_3
    return-void
.end method
