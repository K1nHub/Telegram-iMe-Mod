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
.method public static synthetic $r8$lambda$V_6sE9JvuxwPDrMP1QvFVgIsX6Y(Lorg/telegram/ui/VoiceMessageEnterTransition;Landroid/graphics/Canvas;FFFFFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/VoiceMessageEnterTransition;->lambda$onDraw$1(Landroid/graphics/Canvas;FFFFFFFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$xiO06hAtyc-c5-2XlAFZVEzRlCU(Lorg/telegram/ui/VoiceMessageEnterTransition;Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoiceMessageEnterTransition;->lambda$new$0(Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/view/ViewGroup;Lorg/telegram/ui/MessageEnterTransitionContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->circlePaint:Landroid/graphics/Paint;

    .line 53
    iput-object p5, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 54
    iput-object p1, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 55
    iput-object p4, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    .line 56
    iput-object p3, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    .line 58
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setEnterTransitionInProgress(Z)V

    .line 60
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    if-eqz p2, :cond_0

    .line 62
    iget p3, p2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCircleRadius:F

    iput p3, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->fromRadius:F

    .line 63
    iput-boolean v1, p2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->voiceEnterTransitionInProgress:Z

    .line 64
    iput-boolean v1, p2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->skipDraw:Z

    .line 67
    :cond_0
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->gradientPaint:Landroid/graphics/Paint;

    .line 69
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 71
    new-instance p3, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/16 p5, 0xc

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    int-to-float v2, p5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p3, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->gradientShader:Landroid/graphics/LinearGradient;

    .line 72
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 74
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessageObject;->stableId:I

    iput p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageId:I

    .line 76
    invoke-virtual {p4, p0}, Lorg/telegram/ui/MessageEnterTransitionContainer;->addTransition(Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 78
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->animator:Landroid/animation/ValueAnimator;

    .line 79
    new-instance p3, Lorg/telegram/ui/VoiceMessageEnterTransition$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/VoiceMessageEnterTransition$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/VoiceMessageEnterTransition;Lorg/telegram/ui/MessageEnterTransitionContainer;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 84
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xdc

    .line 85
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    new-instance p3, Lorg/telegram/ui/VoiceMessageEnterTransition$1;

    invoke-direct {p3, p0, p1, p4}, Lorg/telegram/ui/VoiceMessageEnterTransition$1;-><init>(Lorg/telegram/ui/VoiceMessageEnterTransition;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/MessageEnterTransitionContainer;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSeekBarWaveform()Lorg/telegram/ui/Components/SeekBarWaveform;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setSent()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/VoiceMessageEnterTransition;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/MessageEnterTransitionContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 80
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->progress:F

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onDraw$1(Landroid/graphics/Canvas;FFFFFFFF)V
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, p2

    neg-float v1, p3

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, v0, p4

    .line 170
    invoke-virtual {p1, v1, v1, p5, p6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 171
    iget-object v1, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    if-eqz v1, :cond_0

    float-to-int p7, p7

    float-to-int p8, p8

    sub-float/2addr v0, p9

    .line 172
    invoke-virtual {v1, p1, p7, p8, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIcon(Landroid/graphics/Canvas;IIF)V

    .line 174
    :cond_0
    invoke-virtual {p1, p4, p4, p5, p6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 175
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 112
    iget v10, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->progress:F

    const v0, 0x3f19999a    # 0.6f

    cmpl-float v1, v10, v0

    const/high16 v13, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    div-float v0, v10, v0

    .line 115
    :goto_0
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    iget v3, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCx:F

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v3, v1

    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v3, v1

    move v8, v3

    .line 116
    :goto_1
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCy:F

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v2, v1

    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v2, v1

    :goto_2
    move v9, v2

    .line 121
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->stableId:I

    iget v2, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageId:I

    if-eq v1, v2, :cond_3

    .line 122
    iget v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->lastToCx:F

    .line 123
    iget v2, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->lastToCy:F

    goto :goto_3

    .line 125
    :cond_3
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float v2, v1, v2

    .line 126
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    .line 129
    :goto_3
    iput v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->lastToCx:F

    .line 130
    iput v2, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->lastToCy:F

    .line 132
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v14

    .line 133
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float v4, v13, v3

    mul-float/2addr v4, v8

    mul-float/2addr v1, v3

    add-float v6, v4, v1

    sub-float v1, v13, v14

    mul-float v3, v9, v1

    mul-float/2addr v2, v14

    add-float v7, v3, v2

    .line 138
    iget-object v2, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 139
    iget v3, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->fromRadius:F

    mul-float/2addr v3, v1

    mul-float v1, v2, v14

    add-float/2addr v3, v1

    .line 141
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->listView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 143
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_4

    .line 144
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->container:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 151
    :cond_4
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->circlePaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-direct {v11, v4}, Lorg/telegram/ui/VoiceMessageEnterTransition;->getThemedColor(I)I

    move-result v4

    iget-object v5, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RadialProgress2;->getCircleColorKey()I

    move-result v5

    invoke-direct {v11, v5}, Lorg/telegram/ui/VoiceMessageEnterTransition;->getThemedColor(I)I

    move-result v5

    invoke-static {v4, v5, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v1, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    if-eqz v1, :cond_5

    sub-float v0, v13, v0

    .line 154
    invoke-virtual {v1, v12, v6, v7, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawWaves(Landroid/graphics/Canvas;FFF)V

    .line 157
    :cond_5
    iget-object v0, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v6, v7, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v5, v3, v2

    .line 161
    invoke-virtual {v12, v5, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 162
    iget-object v0, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v3, v6, v0

    .line 163
    iget-object v0, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v4, v7, v0

    .line 164
    invoke-virtual {v12, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    iget-object v0, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/RadialProgress2;->setOverrideAlpha(F)V

    .line 166
    iget-object v0, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setDrawBackground(Z)V

    .line 167
    iget-object v15, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v2, Lorg/telegram/ui/VoiceMessageEnterTransition$$ExternalSyntheticLambda1;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v13, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/VoiceMessageEnterTransition$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/VoiceMessageEnterTransition;Landroid/graphics/Canvas;FFFFFFFF)V

    invoke-virtual {v15, v12, v14, v13}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawVoiceOnce(Landroid/graphics/Canvas;FLjava/lang/Runnable;)V

    .line 177
    iget-object v0, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setDrawBackground(Z)V

    .line 178
    iget-object v0, v11, Lorg/telegram/ui/VoiceMessageEnterTransition;->messageView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getRadialProgress()Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setOverrideAlpha(F)V

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/VoiceMessageEnterTransition;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
