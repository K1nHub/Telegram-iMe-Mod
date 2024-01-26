.class public Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "StoryRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;,
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$ScaleListener;
    }
.end annotation


# instance fields
.field private allowModeScroll:Z

.field private flingDetected:Z

.field private gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

.field private ignoreLayout:Z

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scaling:Z

.field private stx:F

.field private sty:F

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

.field private ty:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V
    .locals 2

    .line 946
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 947
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1086
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->scaling:Z

    .line 948
    new-instance p1, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;)V

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    .line 949
    new-instance p1, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$ScaleListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$ScaleListener;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)Z
    .locals 0

    .line 941
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->scaling:Z

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Z)Z
    .locals 0

    .line 941
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->scaling:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F
    .locals 0

    .line 941
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->sty:F

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F
    .locals 0

    .line 941
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->sty:F

    return p1
.end method

.method static synthetic access$3916(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F
    .locals 1

    .line 941
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->sty:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->sty:F

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F
    .locals 0

    .line 941
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->stx:F

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F
    .locals 0

    .line 941
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->stx:F

    return p1
.end method

.method static synthetic access$4016(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F
    .locals 1

    .line 941
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->stx:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->stx:F

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F
    .locals 0

    .line 941
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->ty:F

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F
    .locals 0

    .line 941
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->ty:F

    return p1
.end method

.method static synthetic access$4724(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F
    .locals 1

    .line 941
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->ty:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->ty:F

    return v0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Z)Z
    .locals 0

    .line 941
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->flingDetected:Z

    return p1
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Z)Z
    .locals 0

    .line 941
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->allowModeScroll:Z

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v0

    .line 970
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    const/high16 v1, -0x1000000

    .line 971
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v4

    mul-float/2addr v4, v2

    sub-float v0, v3, v0

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 974
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v1

    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 975
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v1

    cmpl-float v1, v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 976
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    if-nez v1, :cond_2

    .line 977
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v4, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 978
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-static {v1, v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 981
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 982
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 983
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v7, v0, v0, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 984
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 986
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v1

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v1, v7

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 987
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v10, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v11, v7

    mul-float/2addr v1, v2

    float-to-int v12, v1

    const/16 v13, 0x1f

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 988
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 989
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 990
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 992
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 993
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    :cond_3
    move v5, v6

    .line 996
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 997
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onParentPreDraw()V

    .line 999
    :cond_4
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v5, :cond_a

    .line 1001
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1002
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1004
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1005
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v5

    sub-float v1, v3, v1

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 1006
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 1007
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 1008
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .line 1009
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v8, 0x2

    if-eqz v7, :cond_5

    .line 1010
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 1011
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v2

    aget v2, v2, v6

    .line 1012
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1014
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto/16 :goto_2

    .line 1016
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    .line 1017
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-virtual {v0, v4, v6, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v2, v1

    mul-float/2addr v2, v1

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1020
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_8

    .line 1021
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hasShadow:Z

    if-eqz v6, :cond_7

    .line 1022
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/4 v9, 0x3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x33000000

    invoke-static {v10, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v10

    invoke-virtual {v6, v7, v4, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1024
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundPaint:Landroid/graphics/Paint;

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1025
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1027
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 1030
    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconSize:I

    div-int/2addr v2, v8

    int-to-float v2, v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 1031
    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconSize:I

    div-int/2addr v4, v8

    int-to-float v4, v4

    sub-float v4, v5, v4

    float-to-int v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 1032
    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v6

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconSize:I

    div-int/2addr v6, v8

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 1033
    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v6

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconSize:I

    div-int/2addr v6, v8

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 1029
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    .line 1036
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1037
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1038
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1039
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1042
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->drawAbove(Landroid/graphics/Canvas;F)V

    .line 1045
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1078
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1079
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1080
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onBackPressed()Z

    return v1

    .line 1083
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1054
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->flingDetected:Z

    .line 1055
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1056
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1057
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->flingDetected:Z

    if-nez v1, :cond_4

    .line 1059
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 1060
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result v1

    const v4, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 1061
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    goto :goto_1

    .line 1063
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    goto :goto_1

    .line 1065
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1066
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPadding()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 1068
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1069
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->stopScroll(F)Z

    .line 1070
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1071
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1073
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawBlurBitmap(Landroid/graphics/Bitmap;F)V
    .locals 5

    .line 1474
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v1, -0x1000000

    .line 1475
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1476
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 1477
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1479
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1481
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    :cond_0
    if-eqz v1, :cond_1

    .line 1484
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1485
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1486
    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p2

    float-to-int p2, v3

    .line 1488
    :try_start_0
    invoke-virtual {v1, v2, p2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    .line 1489
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1490
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1491
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    :catch_0
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1495
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1496
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getY()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p1, 0x0

    move p2, p1

    .line 1497
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_7

    .line 1498
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1499
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1500
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1501
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 1503
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v1, v2, :cond_5

    move v1, p1

    .line 1504
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1505
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1506
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v3

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v3

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;

    move-result-object v3

    if-eq v2, v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 1509
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1510
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1511
    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1512
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1515
    :cond_5
    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1517
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 1519
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBottomPadding()I
    .locals 2

    .line 956
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getBottomPadding2()I
    .locals 2

    .line 960
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingUnderContainer()I
    .locals 2

    .line 964
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1402
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->ignoreLayout:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1408
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    .line 1409
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    .line 1411
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    move p1, v0

    .line 1412
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    sub-int v1, p4, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    .line 1413
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    sub-int v2, p4, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 1414
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1416
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    :goto_0
    add-int/2addr v2, p1

    add-int/2addr v2, p2

    goto :goto_2

    :cond_2
    sub-int v2, p5, p1

    .line 1418
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    .line 1419
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, p2

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v4

    sub-int v4, p5, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 1420
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    goto :goto_1

    :cond_3
    sub-int v3, v2, p1

    const/16 v4, 0x28

    .line 1421
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    goto :goto_1

    :cond_4
    move p1, v2

    .line 1424
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    goto :goto_0

    .line 1427
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p2

    invoke-virtual {p2, p3, p1, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1428
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    invoke-virtual {p2, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1429
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1430
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object p2

    invoke-virtual {p2, v0, v0, p4, p5}, Landroid/view/TextureView;->layout(IIII)V

    .line 1432
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1433
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1436
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1437
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    div-int/lit8 p3, p3, 0x2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, p3, v0, v1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1439
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryThemeSheet;

    .line 1443
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1444
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1446
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    sub-int v2, p4, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    sub-int v3, p5, v3

    invoke-virtual {p2, p3, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1450
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1451
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p2, :cond_9

    .line 1452
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    sub-int v1, p5, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    sub-int v2, p4, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    sub-int v3, p5, v3

    invoke-virtual {p2, p3, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1454
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz p2, :cond_b

    .line 1455
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2, p3, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1456
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    goto :goto_3

    :cond_a
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_b

    .line 1458
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2, p3, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_b
    move p2, v0

    .line 1463
    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_e

    .line 1464
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1465
    instance-of v1, p3, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v1, :cond_c

    .line 1466
    invoke-virtual {p3, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 1467
    :cond_c
    instance-of v1, p3, Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    if-eqz v1, :cond_d

    .line 1468
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p3, v0, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_d
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 1291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1296
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1297
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1298
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1300
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    .line 1301
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v4

    int-to-float v5, v2

    const/high16 v6, 0x41100000    # 9.0f

    div-float/2addr v5, v6

    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v5, v7

    float-to-double v8, v5

    .line 1303
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 1304
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/16 v9, 0x30

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v8, v10}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1305
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v8

    add-int/2addr v8, v5

    sub-int v10, v1, v4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-gt v8, v10, :cond_2

    .line 1306
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1307
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1308
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v10, v3

    if-le v5, v10, :cond_1

    move v5, v11

    goto :goto_0

    :cond_1
    move v5, v12

    :goto_0
    invoke-static {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    goto :goto_1

    .line 1310
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v5, v12}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1311
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v8

    sub-int v8, v1, v8

    sub-int/2addr v8, v4

    sub-int/2addr v8, v3

    invoke-static {v5, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1312
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1314
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v12

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    sub-int/2addr v5, v6

    const/16 v6, 0x44

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1316
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v4

    .line 1317
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x4

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v4, -0x5

    .line 1322
    :goto_3
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1324
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 1325
    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 1326
    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1324
    invoke-virtual {v4, v5, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1328
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    .line 1329
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1330
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1328
    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    .line 1332
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1333
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v4

    .line 1334
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1335
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1333
    invoke-virtual {v4, v5, v7}, Landroid/view/TextureView;->measure(II)V

    .line 1338
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1339
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;

    move-result-object v4

    .line 1340
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1341
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1339
    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    .line 1344
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryThemeSheet;

    .line 1348
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1349
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1352
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1353
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v4

    .line 1354
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v5

    const/16 v7, 0x14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    if-le v5, v7, :cond_8

    .line 1355
    iput-boolean v11, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->ignoreLayout:Z

    .line 1357
    iput-boolean v12, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->ignoreLayout:Z

    :cond_8
    if-eqz v4, :cond_9

    .line 1361
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1362
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1360
    invoke-virtual {v4, v5, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1367
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1368
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v4, :cond_a

    .line 1369
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 1370
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 1371
    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1369
    invoke-virtual {v4, v5, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1374
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v4, :cond_b

    .line 1375
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p0, v4, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1376
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1377
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    :cond_b
    move p1, v12

    .line 1382
    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_f

    .line 1383
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1384
    instance-of v4, p2, Lorg/telegram/ui/Stories/recorder/DownloadButton$PreparingVideoToast;

    if-eqz v4, :cond_c

    .line 1386
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1387
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1385
    invoke-virtual {p2, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 1389
    :cond_c
    instance-of v4, p2, Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    if-eqz v4, :cond_e

    .line 1391
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/16 v5, 0x154

    .line 1392
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v12

    goto :goto_5

    :cond_d
    move v7, v3

    :goto_5
    sub-int v7, v1, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1390
    invoke-virtual {p2, v4, v5}, Landroid/view/View;->measure(II)V

    :cond_e
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 1397
    :cond_f
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method
