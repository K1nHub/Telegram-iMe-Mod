.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;
.super Landroid/widget/FrameLayout;
.source "StoryRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

.field private topGradient:Landroid/graphics/LinearGradient;

.field private final topGradientPaint:Landroid/graphics/Paint;

.field private translationY1:F

.field private translationY2:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V
    .locals 0

    .line 1524
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 1525
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1654
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradientPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private measureChildExactly(Landroid/view/View;II)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1651
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 1659
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 1660
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p4

    if-ne p2, p4, :cond_2

    .line 1661
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    move p2, p4

    .line 1662
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradient:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_1

    .line 1663
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x48

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float v4, p2, v2

    const/4 v2, 0x2

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    new-array v6, v2, [F

    const/4 v2, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    div-float v0, p2, v0

    aput v0, v6, v2

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v6, v0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradient:Landroid/graphics/LinearGradient;

    .line 1664
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1666
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradientPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1667
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x54

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    invoke-virtual {v0, p4, p4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 p2, 0xc

    .line 1668
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    return p3

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x0
    .end array-data
.end method

.method public getTranslationY1()F
    .locals 1

    .line 1552
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY1:F

    return v0
.end method

.method public getTranslationY2()F
    .locals 1

    .line 1556
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY2:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1541
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1574
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1579
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    invoke-virtual {p2, v0, v0, p3, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1580
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    int-to-float p3, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p3, v1

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1581
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p2, v0, p1, p3, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1582
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1583
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1584
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1585
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1586
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1588
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1590
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_2

    .line 1591
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1592
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateMentionsLayoutPosition()V

    .line 1595
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1596
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1598
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1599
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_4
    move p1, v0

    .line 1602
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 1603
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1604
    instance-of p3, p2, Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz p3, :cond_5

    .line 1605
    invoke-virtual {p2, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    int-to-float p1, p4

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 1609
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    neg-int p1, p5

    int-to-float p1, p1

    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p2

    .line 1610
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1615
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1616
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1619
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    const/16 v2, 0x96

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1621
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    const/16 v2, 0xdc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1625
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1629
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1633
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1636
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1637
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    :cond_3
    const/4 v0, 0x0

    .line 1640
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1641
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1642
    instance-of v2, v1, Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz v2, :cond_4

    .line 1643
    invoke-direct {p0, v1, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1647
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 3

    .line 1561
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY1:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY2:F

    add-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1563
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F

    .line 1564
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 1565
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1567
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    const/16 v0, 0x140

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    sub-float/2addr v1, p1

    .line 1568
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1569
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method public setTranslationY2(F)V
    .locals 1

    .line 1548
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY1:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY2:F

    add-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public updateBackground()V
    .locals 2

    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 1530
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1532
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
