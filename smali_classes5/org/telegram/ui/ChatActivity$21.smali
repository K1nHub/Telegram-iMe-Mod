.class Lorg/telegram/ui/ChatActivity$21;
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
.method public static synthetic $r8$lambda$16rFajltZeOb2huLpzX-ETr7XXY(Lorg/telegram/ui/ChatActivity$21;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2GFFK8PUzSbUq6DnqBSud_YtTcQ(Lorg/telegram/ui/ChatActivity$21;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$21;->lambda$$1(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ywBd8deNhUvCI8vAK7cP-3v1CY(Lorg/telegram/ui/ChatActivity$21;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IaYONS9MjANFGgGbp5KK7lCbJHQ(Lorg/telegram/ui/ChatActivity$21;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$21;->lambda$$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$IdX0uW3shks3VQXFaZZFKJAxjpM(Lorg/telegram/ui/ChatActivity$21;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$21;->lambda$$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$QS3D-57ZsP4qNcgPgIApBUtWFRg(Lorg/telegram/ui/ChatActivity$21;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$wqNuGGPNM62RSARdscSeriwqx-U(Lorg/telegram/ui/ChatActivity$21;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yBhRvLWYzKBY0UMmOD69e4aPcWM(Lorg/telegram/ui/ChatActivity$21;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 5610
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5614
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    .line 5615
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    .line 5616
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    .line 5617
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    const/high16 p1, 0x44fa0000    # 2000.0f

    .line 5627
    iput p1, p0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    .line 5629
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    .line 5630
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    .line 5632
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 5633
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 5634
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p3, p0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    .line 5635
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v0, 0x44bb8000    # 1500.0f

    .line 5637
    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5638
    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 5636
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    .line 5639
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 5640
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 5641
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 5642
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v1, 0x43c80000    # 400.0f

    .line 5644
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v1, 0x3f000000    # 0.5f

    .line 5645
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 5643
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    .line 5646
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 5647
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 5648
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 5649
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p2, 0x43480000    # 200.0f

    .line 5651
    invoke-virtual {p3, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 5652
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 5650
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    .line 5653
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 5655
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 5660
    iput p1, p0, Lorg/telegram/ui/ChatActivity$21;->lastH:I

    .line 5663
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5664
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5665
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5666
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5667
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5668
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

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

    .line 6551
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v14, 0x0

    move v7, v14

    const/4 v1, 0x0

    :goto_0
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/high16 v16, 0x40000000    # 2.0f

    const/4 v8, 0x1

    if-ge v7, v12, :cond_19

    .line 6555
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6556
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$21100(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lorg/telegram/ui/Cells/BotHelpCell;

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3, v8, v14}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v2, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v3, :cond_3

    .line 6557
    :cond_1
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 6558
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float v3, v3, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, v9

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    add-float/2addr v3, v4

    .line 6559
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/BotHelpCell;->animating()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-nez v1, :cond_19

    .line 6560
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 6561
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_10

    .line 6563
    :cond_2
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_10

    .line 6567
    :cond_3
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_17

    .line 6568
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6569
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eq v5, v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v13, v5

    move-object v10, v6

    goto/16 :goto_d

    .line 6572
    :cond_5
    :goto_1
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v1

    .line 6573
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v2

    .line 6574
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

    .line 6575
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

    .line 6599
    :cond_9
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 6601
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-nez v1, :cond_a

    .line 6603
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    goto :goto_5

    .line 6605
    :cond_a
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    const-wide/16 v16, 0x0

    move v8, v14

    move-wide/from16 v17, v16

    move/from16 v16, v10

    :goto_4
    if-ge v8, v12, :cond_c

    .line 6610
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 6611
    instance-of v13, v15, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_b

    .line 6612
    check-cast v15, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6613
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-ne v13, v5, :cond_b

    .line 6615
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v13

    .line 6616
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6617
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v22

    add-int v14, v14, v22

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6618
    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getLastTouchTime()J

    move-result-wide v22

    cmp-long v14, v22, v17

    if-lez v14, :cond_b

    .line 6620
    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getTouchX()F

    move-result v10

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getX()F

    move-result v14

    add-float/2addr v10, v14

    .line 6621
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

    .line 6627
    invoke-virtual {v2, v10, v8}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setTouchCoordsOverride(FF)V

    sub-int/2addr v1, v3

    .line 6630
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v1, v3

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v3, v8, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6631
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v8

    .line 6632
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v9, :cond_f

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->access$21200(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v9

    if-nez v9, :cond_f

    if-eqz v8, :cond_f

    .line 6633
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    .line 6634
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    goto :goto_6

    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$21400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    :goto_6
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    .line 6635
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v8

    .line 6636
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v9, :cond_e

    .line 6637
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v13

    invoke-virtual {v9, v10, v8, v13, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    goto :goto_7

    .line 6639
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v10

    invoke-static {v9, v8, v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    .line 6642
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    .line 6643
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setColor(I)V

    .line 6645
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v3, v4, v1}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setBounds(IIII)V

    .line 6646
    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 6647
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    :cond_10
    :goto_8
    if-nez v1, :cond_6

    .line 6577
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    .line 6578
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v2, :cond_11

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->access$21200(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    if-nez v1, :cond_13

    .line 6579
    :cond_12
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_replyLinePaint:Landroid/graphics/Paint;

    .line 6580
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9
    move-object v8, v1

    goto :goto_b

    .line 6582
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    goto :goto_a

    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 6583
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v3

    .line 6584
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v4, :cond_15

    .line 6585
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    invoke-virtual {v4, v8, v3, v9, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    goto :goto_9

    .line 6587
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    invoke-static {v4, v3, v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    goto :goto_9

    .line 6590
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6591
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    invoke-virtual {v11, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6592
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    int-to-float v1, v9

    .line 6593
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getHighlightAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 6594
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

    .line 6595
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6596
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_c
    move-object v1, v13

    .line 6651
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    if-eq v2, v10, :cond_18

    if-nez v13, :cond_18

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 6652
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6653
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6654
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_16

    .line 6656
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v3

    .line 6657
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v4

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    shr-int/2addr v5, v6

    int-to-float v5, v5

    .line 6655
    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_e

    :cond_16
    const/4 v6, 0x1

    .line 6660
    :goto_e
    invoke-virtual {v10, v11, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 6661
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    .line 6663
    :cond_17
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_18

    .line 6664
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 6665
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6666
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6667
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6668
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

    .line 6669
    invoke-virtual {v2, v11, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    .line 6670
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    :goto_f
    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 6675
    :cond_19
    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_1a

    .line 6676
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

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

    .line 6679
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-ne v14, v9, :cond_1c

    .line 6680
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1b
    move/from16 v25, v9

    move/from16 v22, v10

    const/4 v2, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    goto/16 :goto_20

    :cond_1c
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v12, :cond_31

    .line 6684
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6685
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_2f

    .line 6686
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6687
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 6690
    :cond_1d
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_2f

    if-nez v14, :cond_1e

    .line 6691
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

    .line 6694
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

    .line 6697
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_22
    if-eq v14, v9, :cond_23

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v4

    if-eqz v4, :cond_23

    goto/16 :goto_16

    .line 6701
    :cond_23
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 6702
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v15, 0x0

    iput v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 6703
    iput v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 6704
    iput v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    .line 6705
    iput v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 6707
    iput-boolean v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 6708
    iput-boolean v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 6709
    iput-object v3, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6710
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_24
    const/4 v15, 0x0

    .line 6713
    :goto_15
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 6714
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 6716
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 6717
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 6718
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v7

    add-int/2addr v6, v7

    .line 6719
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 6721
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v8, v8, 0x4

    const/16 v17, 0xa

    if-nez v8, :cond_25

    .line 6722
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v6, v8

    .line 6725
    :cond_25
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_26

    .line 6726
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 6729
    :cond_26
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 6730
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-object v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6733
    :cond_27
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-eqz v3, :cond_28

    if-ge v6, v3, :cond_29

    .line 6734
    :cond_28
    iput v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 6736
    :cond_29
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-eqz v3, :cond_2a

    if-le v7, v3, :cond_2b

    .line 6737
    :cond_2a
    iput v7, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 6739
    :cond_2b
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-eqz v3, :cond_2c

    if-ge v4, v3, :cond_2d

    .line 6740
    :cond_2c
    iput v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 6742
    :cond_2d
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-eqz v3, :cond_2e

    if-le v5, v3, :cond_30

    .line 6743
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

    move v8, v15

    .line 6748
    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_1b

    .line 6749
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-ne v7, v13, :cond_32

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v22, v10

    const/4 v2, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    goto/16 :goto_1f

    .line 6753
    :cond_32
    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    .line 6754
    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float v5, v3, v4

    .line 6755
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v3, v3

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v3, v4

    .line 6756
    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v1, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v4, v1

    .line 6757
    iget v1, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v1, v1

    iget v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v1, v6

    .line 6759
    iget-boolean v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v6, :cond_33

    .line 6760
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v3, v2

    .line 6761
    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    .line 6764
    :cond_33
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)I

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

    .line 6765
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    :cond_34
    move v9, v3

    .line 6768
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_35

    .line 6769
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    :cond_35
    move v6, v1

    .line 6772
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
    move/from16 v20, v15

    goto :goto_1a

    :cond_37
    :goto_19
    const/16 v20, 0x1

    :goto_1a
    if-eqz v20, :cond_38

    .line 6774
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6775
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

    .line 6778
    :cond_38
    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v10, v15

    :goto_1b
    if-ge v10, v1, :cond_3b

    .line 6779
    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 6780
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v23

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v25

    cmp-long v3, v23, v25

    if-nez v3, :cond_39

    move v3, v15

    goto :goto_1c

    :cond_39
    const/4 v3, 0x1

    .line 6781
    :goto_1c
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

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

    .line 6786
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

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

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

    move/from16 v24, v23

    move/from16 v23, v25

    move/from16 v8, v26

    move/from16 v17, v9

    const/16 v25, 0x2

    move v9, v10

    const/16 v22, 0x0

    move/from16 v10, v27

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    .line 6787
    iget-object v1, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6788
    iget-boolean v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v20, :cond_3d

    .line 6790
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v10, 0x0

    :goto_1e
    if-ge v10, v12, :cond_3d

    .line 6792
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6793
    instance-of v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_3c

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-ne v4, v11, :cond_3c

    .line 6795
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    .line 6796
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    int-to-float v4, v4

    sub-float v5, v15, v4

    sub-float v4, v28, v15

    div-float v4, v4, v16

    add-float/2addr v5, v4

    .line 6797
    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotX(F)V

    int-to-float v3, v3

    sub-float v9, v17, v3

    sub-float v6, v19, v17

    div-float v6, v6, v16

    add-float/2addr v9, v6

    .line 6798
    invoke-virtual {v1, v9}, Landroid/view/View;->setPivotY(F)V

    :cond_3c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_3d
    :goto_1f
    add-int/lit8 v8, v23, 0x1

    move-object/from16 v11, p1

    move/from16 v10, v22

    move/from16 v9, v25

    const/4 v15, 0x0

    goto/16 :goto_18

    :goto_20
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, p1

    move/from16 v10, v22

    move/from16 v9, v25

    goto/16 :goto_12

    :cond_3e
    return-void
.end method

.method private drawChatForegroundElements(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6481
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_2

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_1

    .line 6484
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6485
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6486
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6487
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

    .line 6488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6490
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6492
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move v6, v5

    :goto_2
    if-ge v6, v2, :cond_4

    .line 6495
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6496
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v9

    add-float/2addr v8, v9

    .line 6497
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    .line 6498
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v10

    goto :goto_3

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    .line 6500
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6501
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6502
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 6503
    invoke-virtual {v7, v1, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    .line 6504
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 6505
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 6507
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6509
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    move v6, v5

    :goto_4
    if-ge v6, v2, :cond_b

    .line 6512
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6514
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 6515
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v8, v4

    if-nez v8, :cond_6

    move v8, v4

    goto :goto_5

    :cond_6
    move v8, v5

    .line 6517
    :goto_5
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v9

    goto :goto_6

    :cond_7
    const/high16 v9, 0x3f800000    # 1.0f

    .line 6518
    :goto_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v11

    add-float/2addr v10, v11

    .line 6519
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v11

    .line 6520
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6521
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 6522
    iget-object v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v13, :cond_9

    .line 6523
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v13

    .line 6524
    iget-object v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v14, v14

    add-float/2addr v14, v13

    iget v15, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v14, v15

    .line 6525
    iget v15, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v15, v15

    iget v3, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v15, v3

    .line 6526
    iget v3, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    iget v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v3, v13

    .line 6527
    iget v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v13, v13

    iget v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v13, v5

    .line 6529
    iget-boolean v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v5, :cond_8

    .line 6530
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v15, v5

    .line 6531
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v13, v5

    :cond_8
    const/16 v5, 0x8

    .line 6534
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v14, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v15, v12

    .line 6535
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v3, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v13, v5

    .line 6533
    invoke-virtual {v1, v14, v15, v3, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 6538
    :cond_9
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v3, :cond_a

    .line 6539
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6540
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 6541
    invoke-virtual {v7, v1, v8, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    const/4 v3, 0x0

    .line 6542
    invoke-virtual {v7, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 6543
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v5, v3

    goto/16 :goto_4

    .line 6546
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_c
    return-void
.end method

.method private drawReplyButton(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 5775
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

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

    .line 5778
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v8

    .line 5779
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    .line 5780
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 5781
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5783
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 5784
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5786
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 5787
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5789
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v9}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 5790
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5793
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    div-float/2addr v1, v2

    .line 5794
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v11

    const/4 v3, 0x1

    if-lez v2, :cond_5

    .line 5797
    iput-boolean v3, v0, Lorg/telegram/ui/ChatActivity$21;->slidingBeyondMax:Z

    .line 5800
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v2

    .line 5801
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v5

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-nez v5, :cond_6

    .line 5802
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 5803
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5804
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 5805
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 5806
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5807
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 5808
    iput-boolean v4, v0, Lorg/telegram/ui/ChatActivity$21;->slidingBeyondMax:Z

    .line 5811
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    cmpl-float v5, v5, v6

    const/16 v6, 0x14

    if-eqz v5, :cond_7

    neg-float v5, v2

    .line 5812
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

    .line 5817
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v5

    iget v14, v0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    cmpl-float v5, v5, v14

    if-eqz v5, :cond_8

    .line 5818
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    iget v14, v0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    invoke-virtual {v5, v14}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5819
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 5821
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    iget v14, v0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    invoke-virtual {v5, v14}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5822
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 5825
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

    .line 5826
    iget v5, v0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    goto :goto_2

    :cond_a
    move v5, v12

    .line 5827
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_b

    .line 5828
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5829
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v5

    if-nez v5, :cond_b

    .line 5830
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 5834
    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    div-float v14, v5, v6

    .line 5835
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

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

    .line 5836
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v16, v2, v5

    .line 5837
    iget-boolean v2, v0, Lorg/telegram/ui/ChatActivity$21;->slidingBeyondMax:Z

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

    :goto_5
    const-string v2, "windowBackgroundWhite"

    .line 5841
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

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

    .line 5843
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    sub-float v2, v15, v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

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

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

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

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

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

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    div-float/2addr v12, v6

    sub-float/2addr v11, v12

    float-to-int v6, v11

    int-to-float v6, v6

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5844
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

    .line 5846
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 5847
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v11

    mul-float/2addr v2, v14

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v12, v13, v1

    const/4 v5, 0x0

    .line 5848
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v23, v4

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 5849
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5851
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5852
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz v19, :cond_10

    .line 5854
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    const/4 v11, -0x1

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_10
    const/4 v11, -0x1

    .line 5856
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    .line 5857
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_11
    const/4 v11, -0x1

    .line 5861
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

    .line 5862
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

    .line 5863
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 5864
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

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

    .line 5866
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v14

    mul-float/2addr v3, v13

    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 5867
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5868
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5869
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5871
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5872
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-eqz v19, :cond_12

    .line 5874
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5876
    :cond_12
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5877
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5878
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_13
    const/4 v2, 0x0

    cmpl-float v3, v18, v2

    if-eqz v3, :cond_14

    .line 5882
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

    .line 5883
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 5884
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 5886
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5887
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 5890
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

    .line 5891
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

    .line 5892
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 5893
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

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

    .line 5895
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v14

    int-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 5896
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5897
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5898
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5900
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5901
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-eqz v19, :cond_15

    .line 5903
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5905
    :cond_15
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v6, v2

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5906
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5907
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_16
    if-eqz v3, :cond_17

    .line 5910
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5913
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_19

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_19

    add-float v5, v2, v4

    .line 5917
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    sub-float v2, v4, v2

    mul-float/2addr v2, v6

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_19

    .line 5920
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

    .line 5921
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

    .line 5923
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 5924
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v8, v3

    mul-float/2addr v8, v14

    float-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5926
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5927
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v8, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5928
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5930
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5932
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5933
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-eqz v19, :cond_18

    .line 5935
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5937
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    int-to-float v3, v3

    mul-float/2addr v3, v14

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5939
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5940
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5941
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_19
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v14, v1

    float-to-int v1, v14

    .line 5947
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 5948
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5949
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v1

    const/4 v3, 0x7

    const/16 v4, 0xc

    if-eqz v1, :cond_1b

    move v1, v4

    goto :goto_a

    :cond_1b
    move v1, v3

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v17

    sub-float v1, v15, v1

    float-to-int v1, v1

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v4

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

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v6

    if-eqz v6, :cond_1d

    move v3, v4

    :cond_1d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v17

    add-float/2addr v15, v3

    float-to-int v3, v15

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

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

    .line 5950
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v1, 0xff

    .line 5951
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5953
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 5954
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1f
    :goto_d
    return-void
.end method

.method private synthetic lambda$$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 5639
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$21;->invalidate()V

    return-void
.end method

.method private synthetic lambda$$1(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 5646
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$21;->invalidate()V

    return-void
.end method

.method private synthetic lambda$$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 5653
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$21;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6061
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$17502(Lorg/telegram/ui/ChatActivity;F)F

    .line 6062
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 1

    .line 6068
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6082
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$17502(Lorg/telegram/ui/ChatActivity;F)F

    .line 6083
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6090
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$17502(Lorg/telegram/ui/ChatActivity;F)F

    .line 6091
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 6106
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$17502(Lorg/telegram/ui/ChatActivity;F)F

    .line 6107
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 5959
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->access$3302(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_10

    .line 5961
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 5962
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView;->getPressedChildView()Landroid/view/View;

    move-result-object v6

    .line 5963
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_1b

    .line 5964
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 5965
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5967
    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7, v6}, Lorg/telegram/ui/ChatActivity;->access$16402(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5968
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 5970
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5971
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v10, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v10, v2}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 5973
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v8, :cond_2

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8, v9, v7}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v7, v2

    goto :goto_0

    :cond_3
    move v7, v5

    .line 5976
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8, v2, v5}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v3, v2}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;Z)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    if-nez v8, :cond_f

    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    :cond_6
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5977
    invoke-static {v8, v6}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result v8

    if-ne v8, v2, :cond_7

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$17100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_f

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v8

    if-nez v8, :cond_f

    :cond_7
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v8, :cond_8

    .line 5978
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ltz v8, :cond_f

    :cond_8
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5979
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v7, :cond_a

    :cond_9
    iget-boolean v6, v6, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z

    if-eqz v6, :cond_f

    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5980
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_d

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_b
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_f

    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_d
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5981
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_1

    .line 5986
    :cond_e
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingPointerId:I

    .line 5987
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->access$16602(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 5988
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingX:I

    .line 5989
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingY:I

    goto/16 :goto_4

    .line 5982
    :cond_f
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5983
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$16402(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void

    .line 5991
    :cond_10
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

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

    iget v10, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingPointerId:I

    if-ne v6, v10, :cond_16

    const/16 v3, -0x50

    .line 5992
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v6, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5993
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v6, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingY:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 5994
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Z

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

    .line 5995
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 5996
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5997
    invoke-super {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5998
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 5999
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    .line 6000
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/ChatActivity;->access$16602(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6001
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->access$16502(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6002
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingX:I

    .line 6003
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 6004
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_4

    .line 6006
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6007
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-lt v1, v4, :cond_12

    .line 6008
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$21;->wasTrackingVibrate:Z

    if-nez v1, :cond_13

    .line 6010
    :try_start_0
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6014
    :catch_0
    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity$21;->wasTrackingVibrate:Z

    goto :goto_2

    .line 6017
    :cond_12
    iput-boolean v5, v0, Lorg/telegram/ui/ChatActivity$21;->wasTrackingVibrate:Z

    .line 6019
    :cond_13
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6020
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 6021
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 6022
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 6024
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ChatActivity$21;->setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V

    .line 6025
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$21;->invalidate()V

    goto/16 :goto_4

    .line 6027
    :cond_16
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    if-eqz v6, :cond_1b

    if-eqz v1, :cond_17

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v9, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingPointerId:I

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

    .line 6028
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v8, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

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

    .line 6030
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 6031
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_3

    .line 6033
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReply(Lorg/telegram/messenger/MessageObject;)V

    .line 6035
    :cond_19
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$21;->endTrackingX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1a

    .line 6037
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$16402(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6039
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/ChatActivity$21;->lastTrackingAnimationTime:J

    .line 6040
    iput v4, v0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    .line 6041
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$21;->invalidate()V

    .line 6042
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ChatActivity;->access$16602(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6043
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ChatActivity;->access$16502(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6044
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    :cond_1b
    :goto_4
    return-void
.end method

.method private setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V
    .locals 5

    .line 5725
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5729
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 5731
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p1, :cond_2

    .line 5732
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v4, :cond_1

    goto :goto_1

    .line 5735
    :cond_1
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5736
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 5737
    invoke-virtual {v3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5738
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5741
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$21;->invalidate()V

    return-void
.end method

.method private updateSkeletonColors()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "windowBackgroundWhite"

    .line 6410
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

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

    :goto_0
    const-string v4, "listSelectorSDK21"

    .line 6411
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

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

    .line 6412
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    if-eqz v1, :cond_3

    const/16 v7, 0x18

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$2300()I

    move-result v7

    :goto_3
    invoke-static {v4, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 6413
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$19800(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-ne v7, v4, :cond_4

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$19900(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-eq v7, v5, :cond_6

    .line 6414
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v5}, Lorg/telegram/ui/ChatActivity;->access$19902(Lorg/telegram/ui/ChatActivity;I)I

    .line 6415
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v4}, Lorg/telegram/ui/ChatActivity;->access$19802(Lorg/telegram/ui/ChatActivity;I)I

    .line 6416
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v15, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v12, 0xc8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v9, v12}, Lorg/telegram/ui/ChatActivity;->access$20102(Lorg/telegram/ui/ChatActivity;I)I

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

    invoke-static {v7, v5}, Lorg/telegram/ui/ChatActivity;->access$20002(Lorg/telegram/ui/ChatActivity;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;

    .line 6417
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$20100(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$20202(Lorg/telegram/ui/ChatActivity;I)I

    .line 6418
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$20000(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz v1, :cond_5

    const/16 v1, 0x2b

    goto :goto_4

    :cond_5
    const/16 v1, 0x60

    .line 6420
    :goto_4
    invoke-static {v1, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 6421
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$20100(Lorg/telegram/ui/ChatActivity;)I

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

    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$20302(Lorg/telegram/ui/ChatActivity;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;

    .line 6422
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$20300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

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

    .line 6427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6428
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$20400(Lorg/telegram/ui/ChatActivity;)J

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

    .line 6435
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 6436
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v0, v1}, Lorg/telegram/ui/ChatActivity;->access$20402(Lorg/telegram/ui/ChatActivity;J)J

    .line 6437
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-long v5, v4

    mul-long/2addr v2, v5

    long-to-float v1, v2

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$20216(Lorg/telegram/ui/ChatActivity;F)I

    .line 6438
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20200(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    mul-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_2

    .line 6439
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20100(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$20202(Lorg/telegram/ui/ChatActivity;I)I

    .line 6441
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20200(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6442
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20000(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6443
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20000(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 6445
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20200(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6446
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6447
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20300(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 7187
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7190
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 6453
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$20702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    .line 6454
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$21;->invalidated:Z

    .line 6456
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6457
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2000(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6458
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)I

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

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 6460
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 6461
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 6462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 6464
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 6465
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 6467
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    neg-float v4, v4

    sub-float/2addr v4, v2

    iput v4, v3, Lorg/telegram/ui/ChatActivity;->drawingChatLisViewYoffset:F

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6468
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    .line 6469
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6470
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->drawChatForegroundElements(Landroid/graphics/Canvas;)V

    .line 6471
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 6473
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    .line 6474
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6475
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->drawChatForegroundElements(Landroid/graphics/Canvas;)V

    .line 6477
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6223
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/16 v6, 0xc8

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-gtz v2, :cond_25

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_25

    .line 6224
    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    .line 6225
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    .line 6226
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6227
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v1, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6229
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$21;->updateSkeletonColors()V

    .line 6230
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$21;->updateSkeletonGradient()V

    .line 6232
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v11, v11, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v9, v11

    const v11, 0x7fffffff

    move v12, v8

    .line 6236
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 6237
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-ge v13, v11, :cond_4

    move v11, v13

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 6242
    :cond_5
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    cmp-long v12, v12, v4

    if-nez v12, :cond_6

    if-gtz v11, :cond_6

    .line 6243
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_6
    const-string v11, "paintChatActionBackground"

    .line 6246
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v11

    .line 6247
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getColor()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    if-eq v12, v13, :cond_7

    .line 6248
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 6250
    :cond_7
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v13

    if-eq v12, v13, :cond_8

    .line 6251
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v11}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6252
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$2500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object v11

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$2400()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 6253
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    new-instance v12, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$2500(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_8
    move v11, v8

    .line 6256
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v11, v12, :cond_10

    .line 6257
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6308
    instance-of v14, v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v14, :cond_c

    .line 6309
    move-object v14, v12

    check-cast v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v15

    .line 6310
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundDrawable(Z)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 6311
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
    move v3, v10

    :goto_4
    add-float/2addr v14, v3

    float-to-int v3, v14

    .line 6312
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    cmp-long v14, v14, v4

    if-nez v14, :cond_a

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Z

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

    .line 6316
    :cond_c
    instance-of v3, v12, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_f

    .line 6317
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    cmp-long v3, v14, v4

    if-nez v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Z

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

    .line 6324
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 6325
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_8

    :cond_11
    move v3, v8

    :goto_8
    const-string v6, "windowBackgroundWhite"

    .line 6326
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v11

    const-wide v14, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v7, v11, v14

    if-gtz v7, :cond_12

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_9

    :cond_12
    move v7, v8

    .line 6327
    :goto_9
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v11

    const-wide v14, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v6, v11, v14

    if-gtz v6, :cond_13

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v16, 0x1

    goto :goto_a

    :cond_13
    move/from16 v16, v8

    :goto_a
    if-eqz v3, :cond_14

    .line 6329
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getY()F

    move-result v12

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)F

    move-result v14

    sub-float/2addr v12, v14

    invoke-static {v6, v11, v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 6331
    :cond_14
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    if-eqz v16, :cond_15

    .line 6333
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v12, v6

    const/high16 v14, 0x40800000    # 4.0f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6336
    :cond_15
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-eqz v11, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    sub-long/2addr v11, v14

    long-to-float v11, v11

    const/high16 v12, 0x43480000    # 200.0f

    div-float/2addr v11, v12

    sub-float/2addr v13, v11

    .line 6337
    :cond_16
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 6338
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    .line 6339
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    .line 6340
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v10, v13, v16

    float-to-int v10, v10

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6341
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v10

    int-to-float v15, v11

    mul-float/2addr v13, v15

    float-to-int v13, v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6342
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v10

    mul-int v13, v14, v11

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    move v10, v8

    .line 6343
    :goto_b
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v15, v13, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    const/high16 v16, 0x40400000    # 3.0f

    if-le v9, v15, :cond_1a

    .line 6344
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v9, v13

    .line 6347
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v10, v13, :cond_17

    .line 6348
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13, v2}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;Z)Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    move-result-object v13

    .line 6349
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 6351
    :cond_17
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    .line 6353
    :goto_c
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v15

    cmp-long v15, v15, v4

    if-eqz v15, :cond_19

    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v4, 0x2

    if-gt v15, v4, :cond_18

    iget v4, v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_d

    :cond_18
    iget v4, v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    goto :goto_d

    :cond_19
    move v4, v9

    :goto_d
    iput v4, v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    .line 6355
    iget v4, v13, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int/2addr v9, v4

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v4, 0x0

    goto :goto_b

    .line 6360
    :cond_1a
    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v5, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v4, v5

    goto :goto_e

    :cond_1b
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    iget v4, v4, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    :goto_e
    move v5, v8

    .line 6361
    :goto_f
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_22

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v9, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    if-le v4, v9, :cond_22

    .line 6362
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v4, v9

    .line 6364
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    .line 6366
    iget v10, v9, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    .line 6367
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

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

    move/from16 v17, v6

    iget v6, v9, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->width:I

    invoke-virtual {v13, v15, v8, v6, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    if-eqz v3, :cond_1d

    .line 6369
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v6, v1, v8, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    .line 6371
    :cond_1d
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v6, v1, v8, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    if-eqz v7, :cond_1e

    .line 6373
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v8

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1, v8, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    .line 6375
    :cond_1e
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v6, v1, v8, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    if-nez v2, :cond_21

    const/16 v6, 0x1b

    const/16 v8, 0x15

    if-eqz v3, :cond_1f

    .line 6379
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int v15, v10, v15

    int-to-float v15, v15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v1, v13, v15, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v6, 0x1b

    .line 6381
    :cond_1f
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    const/16 v13, 0x15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int v15, v10, v15

    int-to-float v15, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v1, v8, v15, v6, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v6, 0x1b

    if-eqz v7, :cond_20

    .line 6383
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    const/16 v13, 0x15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int v15, v10, v15

    int-to-float v15, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v15, v6, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v6, 0x1b

    .line 6385
    :cond_20
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v8, 0x15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v10, v13

    int-to-float v10, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v1, v6, v10, v8, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6388
    :cond_21
    iget v6, v9, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v17

    const/4 v8, 0x0

    goto/16 :goto_f

    :cond_22
    move/from16 v17, v6

    .line 6391
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6392
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6393
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19100(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6394
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    move/from16 v3, v17

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 6395
    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity$21;->invalidated:Z

    .line 6396
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$21;->invalidate()V

    goto :goto_11

    .line 6397
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_24

    .line 6398
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6400
    :cond_24
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19602(Lorg/telegram/ui/ChatActivity;I)I

    .line 6401
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19702(Lorg/telegram/ui/ChatActivity;I)I

    .line 6402
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_25

    .line 6403
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6406
    :cond_25
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 6808
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6809
    iput-boolean v4, v0, Lorg/telegram/ui/ChatActivity$21;->invalidated:Z

    .line 6810
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$21;->invalidate()V

    .line 6815
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 6818
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    .line 6820
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
    move v3, v5

    .line 6826
    :cond_3
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v8, 0x0

    if-eqz v6, :cond_a

    .line 6827
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6828
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v3, v5

    .line 6831
    :cond_4
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v9

    .line 6832
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v10

    if-eqz v9, :cond_6

    .line 6834
    iget v11, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iget v12, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eq v11, v12, :cond_5

    const/16 v11, 0x3e8

    if-ne v12, v11, :cond_5

    iget-object v11, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-nez v11, :cond_5

    iget-boolean v11, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    if-eqz v11, :cond_5

    .line 6835
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v9

    move v11, v4

    goto :goto_1

    .line 6836
    :cond_5
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v9, :cond_6

    .line 6837
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v11

    add-int/2addr v11, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    move v11, v9

    move v9, v4

    goto :goto_1

    :cond_6
    move v9, v4

    move v11, v9

    .line 6840
    :goto_1
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDelayRoundProgressDraw()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 6841
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12, v6}, Lorg/telegram/ui/ChatActivity;->access$20702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    :cond_7
    if-nez v3, :cond_8

    .line 6843
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v12, :cond_8

    .line 6844
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6845
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v12

    if-ne v12, v10, :cond_8

    move v3, v5

    :cond_8
    if-eqz v3, :cond_9

    .line 6850
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->skipDraw()V

    :cond_9
    move/from16 v18, v9

    move-object v9, v8

    move-object v8, v10

    move/from16 v10, v18

    goto :goto_2

    .line 6852
    :cond_a
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v6, :cond_b

    .line 6853
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatActionCell;

    move v10, v4

    move v11, v10

    move-object v9, v6

    move-object v6, v8

    goto :goto_2

    :cond_b
    move v10, v4

    move v11, v10

    move-object v6, v8

    move-object v9, v6

    :goto_2
    if-eqz v10, :cond_c

    .line 6859
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_3

    :cond_c
    if-eqz v11, :cond_d

    .line 6861
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :cond_d
    :goto_3
    if-nez v3, :cond_13

    if-eqz v8, :cond_e

    .line 6865
    iget-object v12, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v12, :cond_e

    move v12, v5

    goto :goto_4

    :cond_e
    move v12, v4

    :goto_4
    if-eqz v12, :cond_f

    .line 6867
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6868
    invoke-virtual {v6, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v13

    .line 6869
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v14, v14

    add-float/2addr v14, v13

    iget v15, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v14, v15

    .line 6870
    iget v15, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v15, v15

    iget v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v15, v5

    .line 6871
    iget v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v13

    iget v13, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v5, v13

    .line 6872
    iget v13, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v13, v13

    iget v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v13, v8

    .line 6875
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v14, v8

    .line 6876
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v15, v8

    .line 6877
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    .line 6878
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v13, v8

    .line 6874
    invoke-virtual {v1, v14, v15, v5, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_f
    if-eqz v6, :cond_10

    if-eqz v12, :cond_10

    .line 6883
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_5

    .line 6886
    :cond_10
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    :goto_5
    if-eqz v12, :cond_11

    .line 6889
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    if-eqz v6, :cond_12

    .line 6891
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 6892
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6893
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6894
    invoke-virtual {v6, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 6895
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_12
    if-eqz v9, :cond_14

    .line 6897
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6898
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getY()F

    move-result v12

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6899
    invoke-virtual {v9, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 6900
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_13
    move v5, v4

    :cond_14
    :goto_6
    if-nez v10, :cond_15

    if-eqz v11, :cond_16

    .line 6906
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6909
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_17

    .line 6910
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6911
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_17
    if-eqz v6, :cond_18

    .line 6915
    invoke-virtual {v6, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCheckBox(Landroid/graphics/Canvas;)V

    .line 6918
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_19

    .line 6919
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6922
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1a

    .line 6923
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6924
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1a
    if-eqz v6, :cond_50

    .line 6928
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    .line 6929
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v10

    if-nez v3, :cond_26

    if-nez v10, :cond_1b

    .line 6931
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v3, :cond_23

    :cond_1b
    if-eqz v10, :cond_1c

    .line 6932
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v3, :cond_1c

    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v3, :cond_20

    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v3, :cond_20

    :cond_1c
    if-eqz v10, :cond_1d

    .line 6933
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v3, :cond_1e

    .line 6934
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    if-eqz v10, :cond_1f

    .line 6936
    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v3, :cond_20

    iget-byte v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v3, :cond_20

    :cond_1f
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 6937
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    if-nez v10, :cond_21

    .line 6940
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

    .line 6941
    iget v3, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_23

    .line 6942
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6947
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

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

    .line 6948
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 6949
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v11

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v12

    add-float/2addr v11, v12

    .line 6950
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v12

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    add-float/2addr v12, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v12, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v12, v3

    .line 6951
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v11

    if-nez v3, :cond_25

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_26

    .line 6952
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 6953
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6954
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21800(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 6955
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6959
    :cond_26
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 6961
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11, v8}, Lorg/telegram/ui/ChatActivity;->access$21900(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v8

    .line 6962
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    iget-boolean v11, v11, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-eqz v11, :cond_28

    .line 6963
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_27

    .line 6964
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6966
    :cond_27
    invoke-virtual {v3, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v5

    .line 6970
    :cond_28
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v11

    if-nez v11, :cond_2a

    if-eqz v8, :cond_29

    iget-object v11, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v11, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v11, :cond_29

    goto :goto_7

    :cond_29
    move v11, v4

    goto :goto_8

    :cond_2a
    :goto_7
    const/4 v11, 0x1

    :goto_8
    if-eqz v11, :cond_2b

    .line 6971
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_9

    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    .line 6972
    :goto_9
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v13

    if-eqz v13, :cond_35

    .line 6974
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 6975
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_2d

    .line 6977
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    goto :goto_a

    .line 6980
    :cond_2c
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 6981
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v13

    :cond_2d
    :goto_a
    if-ltz v13, :cond_35

    if-eqz v8, :cond_30

    if-eqz v10, :cond_30

    .line 6987
    iget-object v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 6988
    iget-object v15, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 6989
    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2e

    sub-int/2addr v13, v15

    add-int/2addr v13, v14

    goto :goto_c

    :cond_2e
    const/4 v7, 0x1

    sub-int/2addr v13, v7

    add-int/2addr v14, v7

    :goto_b
    if-ge v14, v15, :cond_31

    .line 6994
    iget-object v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v4, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-le v7, v4, :cond_2f

    goto :goto_c

    :cond_2f
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_b

    :cond_30
    const/4 v4, 0x1

    sub-int/2addr v13, v4

    .line 7004
    :cond_31
    :goto_c
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 7005
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_35

    .line 7007
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_32

    .line 7008
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_32
    const/4 v1, 0x0

    .line 7010
    invoke-virtual {v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v5

    .line 7014
    :cond_33
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 7016
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_34

    .line 7017
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_34
    const/4 v1, 0x0

    .line 7019
    invoke-virtual {v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v5

    .line 7025
    :cond_35
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v4

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v7

    add-float/2addr v4, v7

    if-eqz v11, :cond_36

    .line 7027
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    goto :goto_d

    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v7

    :goto_d
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v7, v13

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    add-float/2addr v7, v13

    float-to-int v7, v7

    .line 7028
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    .line 7029
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v14, :cond_38

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v14

    iget-boolean v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v14, :cond_37

    goto :goto_e

    :cond_37
    if-le v7, v13, :cond_3a

    move v7, v13

    goto :goto_f

    .line 7030
    :cond_38
    :goto_e
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v14

    iget-boolean v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v14, :cond_3a

    .line 7031
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v14

    iget v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 7032
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v17

    if-nez v17, :cond_39

    sub-float v14, v15, v14

    .line 7036
    :cond_39
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v7, v7

    mul-float/2addr v7, v14

    int-to-float v13, v13

    sub-float v14, v15, v14

    mul-float/2addr v13, v14

    add-float/2addr v7, v13

    float-to-int v7, v7

    :cond_3a
    :goto_f
    if-nez v11, :cond_3b

    .line 7045
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v13

    cmpl-float v13, v13, v9

    if-eqz v13, :cond_3b

    .line 7046
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 7048
    :cond_3b
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v13

    if-eqz v13, :cond_48

    .line 7050
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 7051
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_3d

    .line 7053
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    goto :goto_10

    .line 7056
    :cond_3c
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 7057
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v13

    :cond_3d
    :goto_10
    if-ltz v13, :cond_48

    move v14, v13

    move v13, v12

    move-object v12, v6

    const/4 v6, 0x0

    :goto_11
    const/16 v15, 0x14

    if-lt v6, v15, :cond_3e

    goto/16 :goto_16

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    if-eqz v8, :cond_42

    if-eqz v10, :cond_42

    .line 7069
    iget-object v15, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    if-gez v15, :cond_3f

    goto/16 :goto_16

    .line 7073
    :cond_3f
    iget-object v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 7074
    iget v9, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v16, 0x4

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_40

    add-int/2addr v14, v15

    const/4 v9, 0x1

    add-int/2addr v14, v9

    goto :goto_13

    :cond_40
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    :goto_12
    if-ltz v15, :cond_43

    .line 7079
    iget-object v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v2, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-ge v9, v2, :cond_41

    goto :goto_13

    :cond_41
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v2, p2

    goto :goto_12

    :cond_42
    const/16 v16, 0x4

    add-int/lit8 v14, v14, 0x1

    .line 7089
    :cond_43
    :goto_13
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 7090
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    .line 7092
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 7093
    instance-of v13, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_46

    .line 7094
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7095
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v12

    if-nez v12, :cond_45

    goto :goto_14

    .line 7107
    :cond_44
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 7109
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 7110
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v13, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_46

    .line 7111
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7112
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v12

    if-nez v12, :cond_45

    :goto_14
    move-object v6, v2

    goto :goto_15

    :cond_45
    move-object v12, v2

    move v13, v9

    move-object/from16 v2, p2

    const/4 v9, 0x0

    goto/16 :goto_11

    :cond_46
    move-object v6, v12

    :goto_15
    move v12, v9

    goto :goto_17

    :cond_47
    :goto_16
    move-object v6, v12

    move v12, v13

    :cond_48
    :goto_17
    const/16 v2, 0x30

    .line 7127
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v7, v8

    if-ge v8, v12, :cond_49

    .line 7128
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v7, v12, v2

    .line 7130
    :cond_49
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v2

    if-nez v2, :cond_4b

    if-eqz v11, :cond_4a

    .line 7131
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    goto :goto_18

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

    :goto_18
    if-le v7, v2, :cond_4b

    move v7, v2

    .line 7136
    :cond_4b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    cmpl-float v8, v4, v2

    if-eqz v8, :cond_4c

    .line 7138
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7140
    :cond_4c
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 7141
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v2, :cond_4d

    int-to-float v2, v7

    .line 7142
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v7, v2

    :cond_4d
    const/16 v2, 0x2c

    .line 7145
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v7, v2

    int-to-float v2, v7

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 7146
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 7147
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 7149
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v4

    .line 7150
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

    .line 7148
    invoke-virtual {v1, v2, v4, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_19

    :cond_4e
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    .line 7153
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :goto_19
    const/4 v2, 0x0

    .line 7155
    invoke-virtual {v3, v9, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 7156
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 7157
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-nez v11, :cond_4f

    .line 7159
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_51

    .line 7160
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_1a

    :cond_4f
    const/4 v3, 0x0

    goto :goto_1a

    :cond_50
    move v3, v9

    .line 7165
    :cond_51
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_52

    .line 7166
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_52
    return v5
.end method

.method public invalidate()V
    .locals 1

    .line 7195
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$21;->invalidated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7198
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$21;->invalidated:Z

    .line 7199
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7200
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    .line 7201
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7202
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->invalidatePosition()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 7228
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    .line 7229
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$22102(Lorg/telegram/ui/ChatActivity;Z)Z

    return-void
.end method

.method protected onChildPressed(Landroid/view/View;FFZ)V
    .locals 3

    .line 6136
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    .line 6137
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_3

    .line 6138
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6139
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    .line 6140
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_2

    .line 6143
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 6145
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 6147
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 6148
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v2, :cond_1

    goto :goto_1

    .line 6151
    :cond_1
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6152
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 6153
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

    .line 7234
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    .line 7235
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$22102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7236
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->clearMessagesPreloading()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 6162
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6163
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 6164
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v0

    .line 6165
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/ChatActivity$21;->endTrackingX:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_6

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 6166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6167
    iget-wide v5, p0, Lorg/telegram/ui/ChatActivity$21;->lastTrackingAnimationTime:J

    sub-long v5, v3, v5

    .line 6168
    iget v0, p0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    long-to-float v5, v5

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 6170
    iput v1, p0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    .line 6172
    :cond_0
    iput-wide v3, p0, Lorg/telegram/ui/ChatActivity$21;->lastTrackingAnimationTime:J

    .line 6173
    iget v0, p0, Lorg/telegram/ui/ChatActivity$21;->endTrackingX:F

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v4, p0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    invoke-virtual {v3, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v1, v3

    mul-float/2addr v0, v3

    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    .line 6175
    iput v2, p0, Lorg/telegram/ui/ChatActivity$21;->endTrackingX:F

    .line 6177
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/ChatActivity$21;->setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V

    .line 6178
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6179
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 6180
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6181
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 6184
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 6185
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 6186
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$16402(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6188
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$21;->invalidate()V

    .line 6190
    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->drawReplyButton(Landroid/graphics/Canvas;)V

    .line 6193
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6196
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_9

    .line 6197
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    :goto_0
    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v0, v3

    goto :goto_1

    :cond_9
    move v0, v2

    .line 6199
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6200
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    if-nez v3, :cond_a

    .line 6201
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v12, Lorg/telegram/ui/ChatPullingDownDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$18400(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v6

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v4, Lorg/telegram/ui/ChatActivity;->dialogFolderId:I

    iget v10, v4, Lorg/telegram/ui/ChatActivity;->dialogFilterId:I

    iget-object v11, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ChatPullingDownDrawable;-><init>(ILandroid/view/View;JIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v3, v12}, Lorg/telegram/ui/ChatActivity;->access$17602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatPullingDownDrawable;)Lorg/telegram/ui/ChatPullingDownDrawable;

    .line 6202
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ChatPullingDownDrawable;->onAttach()V

    .line 6204
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->setWidth(I)V

    .line 6205
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    const/16 v4, 0x6e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 6206
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    sub-float/2addr v1, v6

    invoke-virtual {v4, p1, v5, v3, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->draw(Landroid/graphics/Canvas;Landroid/view/View;FF)V

    .line 6208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 6210
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6211
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v8, v3

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 6212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6213
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 6214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 6216
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 6217
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatPullingDownDrawable;->reset()V

    :cond_c
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 7173
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    return-void

    .line 7176
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 7178
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7180
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

    .line 5754
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->checkSelectionCancel(Landroid/view/MotionEvent;)V

    .line 5755
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5758
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5759
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 5762
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 5700
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 5701
    iget p1, p0, Lorg/telegram/ui/ChatActivity$21;->lastWidth:I

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    if-eq p1, p4, :cond_0

    .line 5702
    iput p4, p0, Lorg/telegram/ui/ChatActivity$21;->lastWidth:I

    .line 5703
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5706
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 5707
    iget p3, p0, Lorg/telegram/ui/ChatActivity$21;->lastH:I

    if-eq p3, p1, :cond_2

    const/4 p3, 0x1

    .line 5708
    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$21;->ignoreLayout:Z

    .line 5709
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 5710
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/ChatListItemAnimator;->endAnimations()V

    .line 5712
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->cancel()V

    .line 5713
    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$21;->ignoreLayout:Z

    .line 5714
    iput p1, p0, Lorg/telegram/ui/ChatActivity$21;->lastH:I

    .line 5717
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$16102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 5718
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5719
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->invalidate()V

    .line 5721
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 7223
    invoke-super/range {p0 .. p5}, Landroid/view/ViewGroup;->onNestedScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 7218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 7213
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 7208
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 6050
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->checkSelectionCancel(Landroid/view/MotionEvent;)V

    .line 6051
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 6052
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$17402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 6054
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

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

    .line 6055
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    const/16 v4, 0x6e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 6056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v1, :cond_3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-nez v0, :cond_3

    .line 6057
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->animationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v6, [F

    .line 6058
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    aput v2, v0, v3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6059
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$17702(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 6060
    new-instance v2, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0xc8

    .line 6064
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6065
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6066
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6067
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatPullingDownDrawable;->runOnAnimationFinish(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6071
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_0

    .line 6074
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    const-wide/16 v4, 0xfa

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-wide v9, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastShowingReleaseTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    if-eqz v0, :cond_5

    .line 6075
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6076
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v0}, Lorg/telegram/ui/ChatActivity;->access$17702(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 6077
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 6078
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel(Z)V

    :cond_4
    new-array v7, v6, [F

    .line 6080
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v8

    aput v8, v7, v3

    const/16 v8, 0x6f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 6081
    new-instance v9, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v9, 0x190

    .line 6085
    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6086
    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v9, v6, [F

    .line 6088
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v9, v3

    aput v2, v9, v1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 6089
    new-instance v8, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x258

    .line 6093
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 6094
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6095
    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v7, v4, v3

    aput-object v2, v4, v1

    .line 6097
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 6098
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_5
    new-array v0, v6, [F

    .line 6100
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    aput v6, v0, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6101
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$17702(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 6102
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6103
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel(Z)V

    .line 6105
    :cond_6
    new-instance v2, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6109
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6110
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6111
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6115
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    .line 6118
    :cond_8
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6119
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-ltz v2, :cond_9

    goto :goto_2

    .line 6122
    :cond_9
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 6123
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Z

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

    .line 5746
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5749
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 6128
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6129
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 6130
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 5673
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$21;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 5676
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 1

    .line 5768
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5771
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 5681
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 5682
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 5683
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5684
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5685
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 5687
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x3fd9999a    # 1.7f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5690
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/Components/BotCommandsMenuContainer;

    if-eqz v0, :cond_2

    .line 5691
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5693
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)V

    .line 5694
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    :cond_3
    return-void
.end method
