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

    .line 1275
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 1276
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1388
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradientPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private measureChildExactly(Landroid/view/View;II)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1385
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

    .line 1393
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 1394
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p4

    if-ne p2, p4, :cond_2

    .line 1395
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1396
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradient:Landroid/graphics/LinearGradient;

    const/16 v8, 0x48

    if-nez p4, :cond_1

    .line 1397
    new-instance p4, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float v4, p2, v0

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    new-array v6, v0, [F

    const/4 v0, 0x0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    div-float v2, p2, v2

    aput v2, v6, v0

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v6, v0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p4

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradient:Landroid/graphics/LinearGradient;

    .line 1398
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1400
    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradientPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1401
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    int-to-float v4, p4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    add-float v5, p4, p2

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->topGradientPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

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

    .line 1295
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY1:F

    return v0
.end method

.method public getTranslationY2()F
    .locals 1

    .line 1299
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY2:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1317
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1319
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1320
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1321
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1322
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1323
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1324
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1326
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    .line 1327
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1328
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateMentionsLayoutPosition()V

    .line 1331
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1332
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1334
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1335
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_3
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    move p1, v0

    .line 1341
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 1342
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1343
    instance-of p3, p2, Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz p3, :cond_4

    .line 1344
    invoke-virtual {p2, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    int-to-float p1, p4

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 1348
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    neg-int p1, p5

    int-to-float p1, p1

    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p2

    .line 1349
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1354
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1355
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    const/16 v2, 0x96

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    const/16 v2, 0xdc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1361
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1367
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    .line 1370
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    :cond_2
    const/4 v0, 0x0

    .line 1374
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1375
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1376
    instance-of v2, v1, Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz v2, :cond_3

    .line 1377
    invoke-direct {p0, v1, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->measureChildExactly(Landroid/view/View;II)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1381
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 3

    .line 1304
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY1:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY2:F

    add-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1306
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

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F

    .line 1307
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 1308
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1310
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

    .line 1311
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1312
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method public setTranslationY2(F)V
    .locals 1

    .line 1291
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY1:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->translationY2:F

    add-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public updateBackground()V
    .locals 2

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 1281
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1283
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
