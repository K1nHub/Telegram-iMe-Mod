.class public Lorg/telegram/ui/VoiceMessageEnterTransition;
.super Ljava/lang/Object;
.source "VoiceMessageEnterTransition.java"

# interfaces
.implements Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;


# instance fields
.field private final animator:Landroid/animation/ValueAnimator;

.field final circlePaint:Landroid/graphics/Paint;

.field container:Lorg/telegram/ui/MessageEnterTransitionContainer;

.field fromRadius:F

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final gradientPaint:Landroid/graphics/Paint;

.field private final gradientShader:Landroid/graphics/LinearGradient;

.field lastToCx:F

.field lastToCy:F

.field private final listView:Landroid/view/ViewGroup;

.field private final messageId:I

.field private final messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

.field progress:F

.field private final recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$xiO06hAtyc-c5-2XlAFZVEzRlCU(Lorg/telegram/ui/VoiceMessageEnterTransition;Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoiceMessageEnterTransition;->lambda$new$0(Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/view/ViewGroup;Lorg/telegram/ui/MessageEnterTransitionContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->circlePaint:Landroid/graphics/Paint;

    .line 56
    iput-object p5, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 57
    iput-object p1, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 58
    iput-object p4, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    .line 59
    iput-object p3, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCicle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p3

    iget p3, p3, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCircleRadius:F

    iput p3, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->fromRadius:F

    .line 62
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setEnterTransitionInProgress(Z)V

    .line 64
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCicle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    .line 65
    iput-boolean v1, p2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->voiceEnterTransitionInProgress:Z

    .line 66
    iput-boolean v1, p2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->skipDraw:Z

    .line 68
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->gradientMatrix:Landroid/graphics/Matrix;

    .line 69
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->gradientPaint:Landroid/graphics/Paint;

    .line 70
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    new-instance p3, Landroid/graphics/LinearGradient;

    const/16 p5, 0xc

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    int-to-float v2, p5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p3, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->gradientShader:Landroid/graphics/LinearGradient;

    .line 73
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 75
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessageObject;->stableId:I

    iput p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageId:I

    .line 77
    invoke-virtual {p4, p0}, Lorg/telegram/ui/MessageEnterTransitionContainer;->addTransition(Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 79
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->animator:Landroid/animation/ValueAnimator;

    .line 80
    new-instance p3, Lorg/telegram/ui/VoiceMessageEnterTransition$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/VoiceMessageEnterTransition$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/VoiceMessageEnterTransition;Lorg/telegram/ui/MessageEnterTransitionContainer;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xdc

    .line 86
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    new-instance p3, Lorg/telegram/ui/VoiceMessageEnterTransition$1;

    invoke-direct {p3, p0, p1, p4}, Lorg/telegram/ui/VoiceMessageEnterTransition$1;-><init>(Lorg/telegram/ui/VoiceMessageEnterTransition;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/MessageEnterTransitionContainer;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setSent()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/VoiceMessageEnterTransition;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    return-object p0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 81
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->progress:F

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 111
    iget v2, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->progress:F

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float v4, v2, v4

    .line 114
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget v6, v5, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCx:F

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v6, v5

    iget-object v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    sub-float/2addr v6, v5

    .line 115
    iget-object v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    iget v7, v5, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCy:F

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v7, v5

    iget-object v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    sub-float/2addr v7, v5

    .line 120
    iget-object v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessageObject;->stableId:I

    iget v8, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageId:I

    if-eq v5, v8, :cond_1

    .line 121
    iget v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->lastToCx:F

    .line 122
    iget v8, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->lastToCy:F

    goto :goto_1

    .line 124
    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    add-float/2addr v5, v8

    iget-object v8, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    add-float/2addr v5, v8

    iget-object v8, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    sub-float v8, v5, v8

    .line 125
    iget-object v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    add-float/2addr v5, v9

    iget-object v9, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    add-float/2addr v5, v9

    iget-object v9, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    sub-float/2addr v5, v9

    .line 128
    :goto_1
    iput v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->lastToCx:F

    .line 129
    iput v8, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->lastToCy:F

    .line 131
    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v9

    .line 132
    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v10

    sub-float v11, v3, v10

    mul-float v11, v11, v6

    mul-float v5, v5, v10

    add-float/2addr v11, v5

    sub-float v5, v3, v9

    mul-float v10, v7, v5

    mul-float v8, v8, v9

    add-float/2addr v10, v8

    .line 137
    iget-object v8, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v8, v12

    .line 138
    iget v12, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->fromRadius:F

    mul-float v12, v12, v5

    mul-float v13, v8, v9

    add-float/2addr v12, v13

    .line 140
    iget-object v13, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getY()F

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v14

    sub-float/2addr v13, v14

    iget-object v14, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    .line 142
    iget-object v14, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-lez v14, :cond_2

    .line 143
    iget-object v14, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v5

    mul-float v13, v13, v9

    add-float/2addr v14, v13

    float-to-int v5, v14

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 150
    :goto_2
    iget-object v13, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->circlePaint:Landroid/graphics/Paint;

    const-string v14, "chat_messagePanelVoiceBackground"

    invoke-direct {v0, v14}, Lorg/telegram/ui/VoiceMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/ui/Components/RadialProgress2;->getCircleColorKey()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Lorg/telegram/ui/VoiceMessageEnterTransition;->getThemedColor(Ljava/lang/String;)I

    move-result v15

    invoke-static {v14, v15, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v13, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    sub-float v4, v3, v4

    invoke-virtual {v13, v1, v11, v10, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawWaves(Landroid/graphics/Canvas;FFF)V

    .line 154
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v10, v12, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float/2addr v12, v8

    .line 159
    invoke-virtual {v1, v12, v12, v11, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 160
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v11, v4

    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v10, v4

    invoke-virtual {v1, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 162
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/RadialProgress2;->setOverrideAlpha(F)V

    .line 163
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgress2;->setDrawBackground(Z)V

    .line 164
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 165
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgress2;->setDrawBackground(Z)V

    .line 166
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setOverrideAlpha(F)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_3

    .line 170
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->gradientMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    int-to-float v5, v5

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 171
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->gradientShader:Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 178
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    float-to-int v5, v6

    float-to-int v6, v7

    sub-float/2addr v3, v2

    invoke-virtual {v4, v1, v5, v6, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIcon(Landroid/graphics/Canvas;IIF)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
