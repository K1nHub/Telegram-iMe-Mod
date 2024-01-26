.class public Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;
.super Landroid/widget/FrameLayout;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControlsView"
.end annotation


# instance fields
.field private hidePauseT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private lastSize:I

.field private lastUpdateTime:J

.field lockBackgroundPaint:Landroid/graphics/Paint;

.field lockOutlinePaint:Landroid/graphics/Paint;

.field lockPaint:Landroid/graphics/Paint;

.field private micDrawable:Landroid/graphics/drawable/Drawable;

.field private oncePressed:Z

.field public final onceRect:Landroid/graphics/RectF;

.field private p:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private final path2:Landroid/graphics/Path;

.field private pausePressed:Z

.field private periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

.field private final radiiLeft:[F

.field private final radiiRight:[F

.field private final rectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private tooltipBackground:Landroid/graphics/drawable/Drawable;

.field private tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

.field private tooltipLayout:Landroid/text/StaticLayout;

.field private tooltipMessage:Ljava/lang/String;

.field private tooltipPaint:Landroid/text/TextPaint;

.field private tooltipWidth:F

.field private vidDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$CT6vLZPt2TXY03VbUjFo_GxJ-aU(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$hideHintView$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GuBZvOcrw2LyWo3fpa3Fv9VtbsU(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$showHintView$0(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 11

    .line 1402
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 1403
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1379
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    .line 1380
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    .line 1381
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    .line 1382
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    .line 1384
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    .line 1385
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    .line 1506
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1507
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    .line 1511
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v2, v0, [F

    .line 1512
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    .line 1514
    new-instance v10, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x15e

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hidePauseT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1405
    new-instance v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    .line 1406
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1407
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    iget-boolean v4, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setValue(IZZ)V

    .line 1409
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1410
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1411
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    const v4, 0x3fd9999a    # 1.7f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1413
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->lock_round_shadow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1414
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockShadow:I

    invoke-static {p1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v3, 0x5

    .line 1415
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-static {p1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result p1

    invoke-static {v4, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 1417
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    const/16 v4, 0xe

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1418
    sget p1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1419
    sget p1, Lorg/telegram/messenger/R$string;->SlideUpToLock:I

    const-string p2, "SlideUpToLock"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipMessage:Ljava/lang/String;

    const/4 p1, 0x3

    .line 1421
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v4, 0x7

    aput p2, v2, v4

    const/4 v6, 0x6

    aput p2, v2, v6

    aput p2, v2, v1

    aput p2, v2, v5

    const/4 p2, 0x0

    aput p2, v2, v3

    const/4 v7, 0x4

    aput p2, v2, v7

    aput p2, v2, p1

    const/4 v8, 0x2

    aput p2, v2, v8

    aput p2, v0, v4

    aput p2, v0, v6

    aput p2, v0, v1

    aput p2, v0, v5

    .line 1425
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    aput p2, v0, v3

    aput p2, v0, v7

    aput p2, v0, p1

    aput p2, v0, v8

    .line 1427
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->input_mic:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->micDrawable:Landroid/graphics/drawable/Drawable;

    .line 1428
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->input_video:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->vidDrawable:Landroid/graphics/drawable/Drawable;

    .line 1430
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1431
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->updateColors()V

    return-void
.end method

.method static synthetic access$17500(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;)Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;
    .locals 0

    .line 1370
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    return-object p0
.end method

.method private synthetic lambda$hideHintView$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 1473
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showHintView$0(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 1

    .line 1462
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1464
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method private scale(Landroid/graphics/RectF;F)V
    .locals 3

    .line 1849
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 1850
    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 1851
    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1852
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1853
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public hideHintView()V
    .locals 2

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 1473
    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1474
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v0, 0x0

    .line 1475
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1519
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v8, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    .line 1520
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    div-float/2addr v1, v2

    goto :goto_0

    .line 1521
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    const/high16 v4, 0x3f400000    # 0.75f

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    .line 1522
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    sub-float v1, v8, v1

    goto :goto_0

    :cond_1
    const v1, 0x3f666666    # 0.9f

    .line 1524
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 1526
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastUpdateTime:J

    sub-long/2addr v4, v9

    .line 1527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastUpdateTime:J

    .line 1530
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    const v6, 0x461c4000    # 10000.0f

    cmpl-float v2, v2, v6

    const/16 v6, 0x39

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    .line 1531
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v11

    sub-float/2addr v2, v11

    float-to-int v2, v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    .line 1532
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v2, v11

    if-lez v11, :cond_3

    .line 1533
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_2
    move v2, v10

    .line 1537
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    const/high16 v12, 0x41d00000    # 26.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v12

    sub-int/2addr v11, v12

    .line 1538
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v2, v6

    sub-float v12, v8, v6

    .line 1539
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    const/16 v13, 0xc2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v6, v13

    int-to-float v6, v6

    .line 1548
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v13

    const v14, 0x3ecccccd    # 0.4f

    const/high16 v15, 0x41800000    # 16.0f

    const/16 v16, 0x24

    const/16 v17, 0x8

    const/high16 v18, 0x41000000    # 8.0f

    const/high16 v19, 0x40000000    # 2.0f

    if-eqz v13, :cond_5

    .line 1549
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    const/16 v20, 0x3c

    .line 1550
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v6

    const/high16 v20, 0x41f00000    # 30.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v20

    sub-float v1, v8, v1

    mul-float v20, v20, v1

    add-float v3, v3, v20

    sub-float/2addr v3, v2

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    mul-float/2addr v1, v12

    add-float/2addr v3, v1

    div-float v1, v13, v19

    add-float/2addr v1, v3

    .line 1552
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float/2addr v1, v2

    .line 1553
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    cmpl-float v2, v12, v14

    if-lez v2, :cond_4

    move v2, v8

    goto :goto_2

    :cond_4
    div-float v2, v12, v14

    :goto_2
    const/high16 v20, 0x41100000    # 9.0f

    sub-float v22, v8, v12

    mul-float v22, v22, v20

    .line 1556
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v14

    sub-float v14, v8, v14

    mul-float v22, v22, v14

    const/high16 v14, 0x41700000    # 15.0f

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v9

    mul-float/2addr v9, v14

    sub-float v2, v8, v2

    mul-float/2addr v9, v2

    sub-float v22, v22, v9

    move v9, v3

    move v14, v12

    goto :goto_3

    .line 1560
    :cond_5
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v9, 0xe

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    add-int/2addr v3, v9

    int-to-float v13, v3

    const/16 v3, 0x3c

    .line 1561
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v6

    const/16 v9, 0x1e

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v1, v8, v1

    mul-float/2addr v9, v1

    float-to-int v1, v9

    int-to-float v1, v1

    add-float/2addr v3, v1

    float-to-int v1, v2

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    mul-float/2addr v1, v12

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    div-float v1, v13, v19

    add-float/2addr v1, v3

    .line 1562
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float/2addr v2, v12

    add-float/2addr v1, v2

    .line 1563
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    const/high16 v2, 0x41100000    # 9.0f

    sub-float v9, v8, v12

    mul-float v22, v9, v2

    .line 1565
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    move v9, v3

    move v14, v10

    :goto_3
    move/from16 v2, v22

    .line 1568
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    const/high16 v22, 0x3fc00000    # 1.5f

    const/16 v23, 0x2

    const/high16 v24, 0x40800000    # 4.0f

    const/high16 v25, 0x40400000    # 3.0f

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v28

    sub-long v26, v26, v28

    const-wide/16 v28, 0xc8

    cmp-long v3, v26, v28

    if-gtz v3, :cond_7

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_c

    :cond_7
    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v12, v3

    if-ltz v3, :cond_8

    .line 1569
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v10

    if-nez v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_9

    .line 1570
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v15, 0x0

    invoke-static {v3, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 1572
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1573
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_b

    .line 1574
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v4, v4

    const/high16 v5, 0x43160000    # 150.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5616(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1575
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_b

    .line 1576
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5602(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1577
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseLockRecordAudioVideoHintShowed()V

    goto :goto_4

    .line 1581
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    long-to-float v4, v4

    const/high16 v5, 0x43160000    # 150.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5624(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1582
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpg-float v3, v3, v10

    if-gez v3, :cond_b

    .line 1583
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5602(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1588
    :cond_b
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1590
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1591
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1592
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1594
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_c

    .line 1595
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1596
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v4, v10, v10, v5, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1597
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    sub-float/2addr v4, v5

    const/16 v5, 0x2c

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v5, v6

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1598
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 1599
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    neg-int v15, v15

    iget v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    .line 1600
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    add-float v10, v10, v16

    float-to-int v10, v10

    .line 1598
    invoke-virtual {v4, v5, v15, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1602
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1603
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1604
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1606
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1607
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    const/16 v5, 0x1a

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41880000    # 17.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v5, v6

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v19

    add-float/2addr v5, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    mul-float/2addr v8, v10

    sub-float/2addr v5, v8

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1608
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 1609
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    neg-float v5, v5

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 1610
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1611
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1613
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1614
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1615
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1616
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1617
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1618
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1619
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1620
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1622
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1623
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1624
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1625
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v11

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v6

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v10, v6

    float-to-int v6, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v6, v10

    .line 1623
    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1627
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1628
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1635
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hidePauseT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    const-wide/32 v15, 0xe678

    cmp-long v4, v4, v15

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    .line 1637
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_10

    const v3, 0x3ec28f5c    # 0.38f

    .line 1642
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_e

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    div-float/2addr v4, v3

    .line 1643
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    const v6, 0x3f2147ae    # 0.63f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_f

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_f
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    sub-float/2addr v5, v3

    const/high16 v3, 0x3e800000    # 0.25f

    div-float/2addr v5, v3

    const/4 v3, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1646
    :goto_7
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v27

    .line 1647
    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move/from16 v15, v27

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    .line 1654
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_13

    const v3, 0x3f19999a    # 0.6f

    .line 1658
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_11

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    div-float/2addr v4, v3

    .line 1659
    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v6, v5, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    if-eqz v6, :cond_12

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    goto :goto_9

    :cond_12
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    sub-float/2addr v5, v3

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v5, v3

    const/4 v3, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v3, v5

    .line 1661
    :goto_9
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 1662
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    move v15, v4

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 1672
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1673
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v6, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1675
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_14

    .line 1676
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    sub-float v27, v5, v4

    move/from16 v4, v27

    goto :goto_b

    :cond_14
    cmpl-float v4, v3, v6

    if-eqz v4, :cond_15

    move v4, v3

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    .line 1682
    :goto_b
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    const v6, 0x3f333333    # 0.7f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_17

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_c

    .line 1691
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_18

    .line 1692
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const v8, 0x3df5c28f    # 0.12f

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6516(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1693
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_18

    .line 1694
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto :goto_d

    .line 1683
    :cond_17
    :goto_c
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 1684
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_18

    .line 1685
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const v8, 0x3df5c28f    # 0.12f

    invoke-static {v5, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6524(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1686
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_18

    .line 1687
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    :cond_18
    :goto_d
    const/high16 v5, 0x42900000    # 72.0f

    .line 1699
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float v6, v5, v4

    const/high16 v8, 0x41c00000    # 24.0f

    .line 1702
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    mul-float/2addr v8, v15

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v4, v20, v4

    mul-float/2addr v8, v4

    add-float/2addr v6, v8

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 1703
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    sub-float v8, v20, v4

    mul-float/2addr v8, v5

    add-float/2addr v6, v8

    cmpl-float v4, v6, v5

    if-lez v4, :cond_19

    move v8, v5

    goto :goto_e

    :cond_19
    move v8, v6

    :goto_e
    sub-float v4, v20, v10

    .line 1709
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float v3, v20, v3

    mul-float/2addr v4, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    mul-float/2addr v4, v3

    int-to-float v6, v11

    add-float/2addr v1, v8

    .line 1710
    invoke-virtual {v7, v4, v4, v6, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1712
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    const/high16 v20, 0x41900000    # 18.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float v5, v6, v5

    move/from16 v21, v10

    add-float v10, v9, v8

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v28

    move/from16 v29, v9

    add-float v9, v6, v28

    move/from16 v28, v15

    add-float v15, v10, v13

    invoke-virtual {v3, v5, v10, v9, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1713
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 1714
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    sub-float/2addr v5, v9

    float-to-int v5, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    .line 1715
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    add-float/2addr v10, v15

    float-to-int v10, v10

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v30

    add-float v15, v15, v30

    float-to-int v15, v15

    .line 1713
    invoke-virtual {v3, v5, v9, v10, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1717
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1718
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v5, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1719
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1720
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->scale(Landroid/graphics/RectF;F)V

    .line 1722
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    const/high16 v4, 0x40c00000    # 6.0f

    .line 1723
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, v6, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, v14

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    .line 1724
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float/2addr v5, v10

    sub-float v5, v1, v5

    const/4 v9, 0x6

    .line 1725
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v11, v15

    int-to-float v11, v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    mul-float/2addr v15, v10

    add-float/2addr v11, v15

    const/16 v15, 0xc

    .line 1726
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v1, v15

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    mul-float/2addr v15, v10

    add-float/2addr v1, v15

    .line 1722
    invoke-virtual {v3, v4, v5, v11, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1728
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 1729
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    .line 1730
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    .line 1731
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1732
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v30, v4, v12

    mul-float v1, v1, v30

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1733
    invoke-virtual {v7, v2, v11, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    cmpl-float v31, v14, v4

    if-eqz v31, :cond_1b

    .line 1736
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    invoke-virtual {v4, v5, v5, v1, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1737
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1738
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v8

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    mul-float v9, v9, v30

    add-float/2addr v3, v9

    invoke-virtual {v7, v5, v5, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1739
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v1, v6, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v5, v9

    sub-float/2addr v3, v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    move-object/from16 v32, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v4, v26, v4

    mul-float/2addr v9, v4

    invoke-static {v5, v9, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    mul-float/2addr v4, v14

    add-float/2addr v3, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    cmpl-float v3, v2, v1

    if-lez v3, :cond_1a

    .line 1741
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v2, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1743
    :cond_1a
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float/2addr v5, v10

    add-float/2addr v5, v1

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v32

    move/from16 v18, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/4 v5, 0x0

    .line 1744
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 1746
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/4 v4, 0x0

    .line 1747
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v9, v6, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    mul-float/2addr v5, v9

    mul-float/2addr v5, v12

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v6

    const/4 v9, 0x1

    xor-int/2addr v6, v9

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    mul-float/2addr v5, v6

    mul-float v5, v5, v30

    add-float/2addr v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 1745
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1750
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    :cond_1b
    move/from16 v18, v6

    :goto_f
    const/4 v1, 0x0

    .line 1754
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    mul-float v2, v2, v19

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_1d

    .line 1756
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->vidDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_10

    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->micDrawable:Landroid/graphics/drawable/Drawable;

    .line 1759
    :cond_1d
    :goto_10
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 1760
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v9, v6, v2

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    cmpl-float v5, v14, v4

    if-lez v5, :cond_1e

    .line 1762
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1764
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 1765
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1766
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const v6, 0x3fd47ae1    # 1.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v14

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1767
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    const/4 v6, 0x7

    const/4 v9, 0x3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v12, v9, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v9

    int-to-float v9, v9

    aput v9, v5, v6

    const/4 v6, 0x6

    aput v9, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    const/4 v6, 0x0

    aput v9, v5, v6

    .line 1768
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    const/4 v6, 0x4

    const/4 v9, 0x5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v14

    aput v12, v5, v9

    aput v12, v5, v6

    const/4 v6, 0x3

    aput v12, v5, v6

    aput v12, v5, v23

    .line 1769
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v4, v6, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1770
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1771
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const v6, 0x3fd47ae1    # 1.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v14

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1772
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    const/4 v9, 0x5

    const/4 v12, 0x3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v6, v12, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v9

    const/4 v9, 0x4

    aput v6, v5, v9

    const/4 v9, 0x3

    aput v6, v5, v9

    aput v6, v5, v23

    .line 1773
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    const/4 v6, 0x7

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v14

    aput v9, v5, v6

    const/4 v6, 0x6

    aput v9, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    const/4 v12, 0x0

    aput v9, v5, v12

    .line 1774
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v4, v9, v14}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1775
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_11

    :cond_1e
    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 1777
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v9, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1779
    :goto_11
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v1, :cond_1f

    .line 1783
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1784
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const v9, 0x3f6db22d    # 0.9285f

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1785
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    mul-float/2addr v14, v9

    sub-float/2addr v5, v14

    float-to-int v5, v5

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1786
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    div-int/lit8 v6, v16, 0x2

    int-to-float v6, v6

    mul-float/2addr v6, v9

    add-float/2addr v14, v6

    float-to-int v6, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1787
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    div-int/lit8 v12, v16, 0x2

    int-to-float v12, v12

    mul-float/2addr v12, v9

    add-float/2addr v14, v12

    float-to-int v9, v14

    .line 1783
    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1789
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1790
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1791
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1f
    if-eqz v31, :cond_20

    .line 1795
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    mul-float/2addr v1, v10

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v15, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1797
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1798
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1800
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x76

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    move/from16 v4, v28

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v3, v29

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    add-float/2addr v1, v8

    const/16 v2, 0x26

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v21

    add-float/2addr v1, v2

    .line 1801
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v6, v18, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v3, v18, v3

    add-float/2addr v13, v1

    invoke-virtual {v2, v6, v1, v3, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1802
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onceVoiceAvailable()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v9, 0x1

    goto :goto_12

    :cond_21
    const/4 v9, 0x0

    :goto_12
    iput-boolean v9, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    .line 1803
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    if-eqz v1, :cond_23

    const/high16 v1, 0x41400000    # 12.0f

    .line 1804
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    .line 1805
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x42100000    # 36.0f

    .line 1806
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v1

    .line 1805
    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1808
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_22

    .line 1809
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1810
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1812
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1813
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1814
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v8, v3, v2

    mul-float/2addr v1, v8

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1815
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1816
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 1817
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 1818
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 1816
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1820
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1821
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1822
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setBounds(IIII)V

    .line 1823
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1824
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_23
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1483
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v0, 0xfe

    .line 1484
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1485
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastSize:I

    if-eq v1, p2, :cond_1

    .line 1486
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastSize:I

    .line 1487
    new-instance p2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipMessage:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    const/16 v1, 0xdc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    .line 1488
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v1, 0x0

    .line 1489
    iput v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1491
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    .line 1492
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 1493
    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 1502
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1500
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    .line 1399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onSetAlpha(I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 1865
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1866
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v2, v0

    int-to-float v5, v1

    invoke-virtual {p1, v2, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    .line 1868
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    if-eqz v2, :cond_9

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_9

    .line 1869
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    goto/16 :goto_2

    .line 1871
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 1872
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v2, v0

    int-to-float v5, v1

    invoke-virtual {p1, v2, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1873
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1874
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1875
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1877
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->toggleVideoRecordingPause()V

    goto :goto_0

    .line 1879
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->toggleRecordingPause()V

    .line 1880
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 1881
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1882
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1885
    :cond_4
    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    return v3

    .line 1887
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1888
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    .line 1889
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {p1, v3, v0, v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setValue(IZZ)V

    .line 1890
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz p1, :cond_6

    .line 1891
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->showHintView()V

    goto :goto_1

    .line 1893
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    .line 1895
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1896
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    return v3

    .line 1899
    :cond_7
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    goto :goto_2

    .line 1900
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 1901
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    .line 1903
    :cond_9
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    move v3, v4

    :cond_b
    :goto_3
    return v3
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1394
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public showHintView()V
    .locals 8

    .line 1442
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    .line 1443
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1444
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1447
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->VideoSetOnceHintEnabled:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->VideoSetOnceHint:I

    goto :goto_0

    .line 1450
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->VoiceSetOnceHintEnabled:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->VoiceSetOnceHint:I

    .line 1452
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v0, :cond_3

    .line 1455
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v1, Lorg/telegram/messenger/R$raw;->fire_on:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIcon(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_1

    .line 1457
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "voiceoncehint"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1459
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x77

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x36

    const/16 v7, 0x3a

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1461
    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1467
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method public showTooltipIfNeed()V
    .locals 3

    .line 1435
    sget v0, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4902(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 6

    .line 1829
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    .line 1830
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    .line 1831
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v3

    const/4 v4, -0x1

    .line 1829
    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->updateColors(III)V

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockBackground:I

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1836
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x5

    .line 1837
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 1838
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1840
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1841
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1842
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1844
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->micDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1845
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->vidDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1908
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
