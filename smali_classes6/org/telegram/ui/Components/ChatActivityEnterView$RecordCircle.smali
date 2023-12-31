.class public Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordCircle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;
    }
.end annotation


# instance fields
.field private amplitude:F

.field private animateAmplitudeDiff:F

.field private animateToAmplitude:F

.field bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

.field private canceledByGesture:Z

.field private circleRadius:F

.field private circleRadiusAmplitude:F

.field public drawingCircleRadius:F

.field public drawingCx:F

.field public drawingCy:F

.field private exitTransition:F

.field idleProgress:F

.field incIdle:Z

.field private lastMovingX:F

.field private lastMovingY:F

.field private lastSize:I

.field private lastUpdateTime:J

.field private lockAnimatedTranslation:F

.field lockBackgroundPaint:Landroid/graphics/Paint;

.field lockOutlinePaint:Landroid/graphics/Paint;

.field lockPaint:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private paintAlpha:I

.field path:Landroid/graphics/Path;

.field private pressed:Z

.field private progressToSeekbarStep3:F

.field private progressToSendButton:F

.field rectF:Landroid/graphics/RectF;

.field private scale:F

.field private sendButtonVisible:Z

.field private showTooltip:Z

.field private showTooltipStartTime:J

.field private showWaves:Z

.field public skipDraw:Z

.field private slideDelta:I

.field private slideToCancelLockProgress:F

.field private slideToCancelProgress:F

.field private snapAnimationProgress:F

.field private startTranslation:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

.field private tooltipAlpha:F

.field private tooltipBackground:Landroid/graphics/drawable/Drawable;

.field private tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

.field private tooltipLayout:Landroid/text/StaticLayout;

.field private tooltipMessage:Ljava/lang/String;

.field private tooltipPaint:Landroid/text/TextPaint;

.field private tooltipWidth:F

.field private touchSlop:F

.field private transformToSeekbar:F

.field private virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

.field public voiceEnterTransitionInProgress:Z

.field private wavesEnterAnimation:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 4

    .line 1406
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 1407
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1358
    new-instance v0, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0xb

    const v2, 0x81e0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    .line 1359
    new-instance v0, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    .line 1366
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x42240000    # 41.0f

    .line 1371
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadius:F

    const/16 v0, 0x1e

    .line 1372
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadiusAmplitude:F

    .line 1374
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockBackgroundPaint:Landroid/graphics/Paint;

    .line 1375
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockPaint:Landroid/graphics/Paint;

    .line 1376
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    .line 1377
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    .line 1378
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 1395
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    .line 1396
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves:Z

    .line 1398
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    .line 1409
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

    .line 1410
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0x2f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v2, 0x37

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1418
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    const v1, 0x3fd9999a    # 1.7f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1424
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->lock_round_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1425
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockShadow:I

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v0, 0x5

    .line 1426
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 1428
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipPaint:Landroid/text/TextPaint;

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1429
    sget p1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1430
    sget p1, Lorg/telegram/messenger/R$string;->SlideUpToLock:I

    const-string v0, "SlideUpToLock"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipMessage:Ljava/lang/String;

    .line 1433
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 1434
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->touchSlop:F

    mul-float/2addr p1, p1

    .line 1435
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->touchSlop:F

    .line 1437
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->updateColors()V

    return-void
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;)F
    .locals 0

    .line 1339
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->startTranslation:F

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;)F
    .locals 0

    .line 1339
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    return p0
.end method

.method static synthetic access$8002(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;Z)Z
    .locals 0

    .line 1339
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    return p1
.end method

.method private checkDrawables()V
    .locals 5

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1444
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->input_mic_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4802(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1447
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->input_video_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4902(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5002(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->input_mic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5102(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1456
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->input_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5202(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .locals 3

    .line 2041
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->checkDrawables()V

    const/4 v0, 0x0

    cmpl-float v1, p4, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    cmpl-float v1, p4, v2

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2064
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2065
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p4, p4, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    int-to-float p5, p5

    mul-float v0, p5, p4

    float-to-int v0, v0

    .line 2066
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2067
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2068
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2070
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v2, p4

    .line 2071
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v2, v2, p4, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    mul-float/2addr p5, v2

    float-to-int p2, p5

    .line 2072
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2073
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2074
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 2043
    :cond_1
    :goto_0
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    if-eqz p3, :cond_2

    iget p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    cmpl-float p4, p4, v2

    if-nez p4, :cond_2

    .line 2044
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    .line 2045
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const/16 p1, 0x8

    .line 2046
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    if-eqz p3, :cond_5

    .line 2049
    iget p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    cmpg-float p4, p4, v2

    if-gez p4, :cond_5

    .line 2050
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 2051
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2052
    iget p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    const p5, 0x3f6e147b    # 0.93f

    cmpg-float v1, p4, p5

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    sub-float/2addr p4, p5

    const p5, 0x3d8f5c29    # 0.07f

    div-float/2addr p4, p5

    const/high16 p5, 0x437f0000    # 255.0f

    mul-float v0, p4, p5

    :goto_2
    float-to-int p4, v0

    .line 2053
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2054
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 p5, 0xff

    .line 2055
    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sub-int/2addr p5, p4

    .line 2057
    invoke-virtual {p2, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2058
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_5
    if-nez p3, :cond_6

    .line 2060
    invoke-virtual {p2, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2061
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public canceledByGesture()V
    .locals 1

    const/4 v0, 0x1

    .line 2142
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2080
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

.method public drawIcon(Landroid/graphics/Canvas;IIF)V
    .locals 8

    .line 2022
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->checkDrawables()V

    .line 2023
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2024
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 2027
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    move-object v4, v0

    move-object v5, v1

    goto :goto_2

    .line 2029
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 2031
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p3, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2032
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v5, :cond_4

    .line 2034
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p3, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    invoke-virtual {v5, v0, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2037
    :cond_4
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p4, p2

    float-to-int v7, p4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    return-void
.end method

.method public drawWaves(Landroid/graphics/Canvas;FFF)V
    .locals 6

    .line 2162
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2163
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    const v2, 0x3f333333    # 0.7f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float/2addr v1, v2

    .line 2164
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2165
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    sget v3, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v4, v4, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v5, 0x3fb33333    # 1.4f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, p4

    .line 2166
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2167
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v3, v2, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, p3, p1, v3}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2169
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    sget v0, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v1, v1, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, p4

    .line 2170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2171
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2172
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, p4, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, p3, p1, v0}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getExitTransition()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2094
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    return v0
.end method

.method public getLockAnimatedTranslation()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1494
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1471
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    return v0
.end method

.method public getSlideToCancelProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2127
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    return v0
.end method

.method public getTransformToSeekbarProgressStep3()F
    .locals 1

    .line 2089
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    return v0
.end method

.method public isSendButtonVisible()Z
    .locals 1

    .line 1498
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1602
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->skipDraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 1606
    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, v8, :cond_1

    .line 1607
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    move v11, v0

    goto :goto_0

    :cond_1
    move v11, v10

    .line 1609
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v1

    sub-int v12, v0, v1

    const/16 v0, 0xaa

    .line 1610
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    .line 1613
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCx:F

    int-to-float v13, v0

    .line 1614
    iput v13, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCy:F

    .line 1616
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    const v2, 0x461c4000    # 10000.0f

    cmpl-float v2, v1, v2

    const/16 v3, 0x39

    if-eqz v2, :cond_3

    .line 1617
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->startTranslation:F

    sub-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1618
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 1619
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :cond_2
    move v14, v1

    goto :goto_1

    :cond_3
    move v14, v10

    .line 1625
    :goto_1
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v4, v1, v2

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v15, 0x3f800000    # 1.0f

    if-gtz v4, :cond_4

    div-float/2addr v1, v2

    :goto_2
    move/from16 v16, v1

    goto :goto_3

    :cond_4
    const/high16 v4, 0x3f400000    # 0.75f

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_5

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    sub-float v1, v15, v1

    goto :goto_2

    :cond_5
    const v2, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f400000    # 0.75f

    sub-float/2addr v1, v4

    div-float/2addr v1, v5

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    goto :goto_2

    .line 1632
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v8, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    sub-long v8, v1, v8

    .line 1633
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_8

    .line 1634
    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    long-to-float v3, v8

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v3, v4, v10

    if-lez v3, :cond_6

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7

    .line 1637
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    goto :goto_4

    :cond_6
    cmpg-float v2, v2, v1

    if-gez v2, :cond_7

    .line 1641
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    .line 1644
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1648
    :cond_8
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    const v19, 0x3f333333    # 0.7f

    if-eqz v1, :cond_9

    .line 1649
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    sub-float v2, v15, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v1, v1, v19

    goto :goto_5

    .line 1651
    :cond_9
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    add-float v1, v1, v19

    .line 1653
    :goto_5
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadius:F

    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadiusAmplitude:F

    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float v2, v2, v16

    mul-float/2addr v2, v1

    .line 1655
    iput v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    .line 1660
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    cmpl-float v1, v1, v10

    const v20, 0x3ecccccd    # 0.4f

    const/high16 v21, 0x40000000    # 2.0f

    if-eqz v1, :cond_c

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    const v1, 0x3ec28f5c    # 0.38f

    const v4, 0x3ebd70a4    # 0.37f

    .line 1665
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    cmpl-float v23, v3, v1

    if-lez v23, :cond_a

    goto :goto_6

    :cond_a
    div-float v23, v3, v1

    move/from16 v15, v23

    :goto_6
    const v23, 0x3f2147ae    # 0.63f

    cmpl-float v23, v3, v23

    if-lez v23, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_b
    sub-float/2addr v3, v1

    div-float/2addr v3, v5

    .line 1666
    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1667
    :goto_7
    iget v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    sub-float/2addr v10, v1

    sub-float/2addr v10, v5

    div-float/2addr v10, v4

    const/4 v1, 0x0

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    .line 1669
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 1670
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    .line 1671
    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    const/16 v1, 0x10

    .line 1673
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    .line 1675
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v21

    sub-float/2addr v2, v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v15, v5, v3

    mul-float/2addr v2, v15

    add-float/2addr v2, v1

    move v10, v2

    move v15, v3

    move/from16 v26, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    goto/16 :goto_b

    .line 1677
    :cond_c
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_10

    const v3, 0x3f19999a    # 0.6f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_d

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_d
    div-float v4, v1, v3

    .line 1682
    :goto_8
    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    sub-float/2addr v1, v3

    div-float v1, v1, v20

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1684
    :goto_9
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 1685
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/16 v5, 0x10

    .line 1687
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v15, v5, v1

    mul-float/2addr v2, v15

    const v10, 0x81e0

    .line 1690
    invoke-static {v10}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v15

    if-eqz v15, :cond_f

    iget v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    cmpl-float v15, v10, v3

    if-lez v15, :cond_f

    sub-float/2addr v10, v3

    div-float v10, v10, v20

    sub-float v15, v5, v10

    const/4 v3, 0x0

    .line 1691
    invoke-static {v3, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move/from16 v25, v1

    move v10, v2

    move/from16 v26, v4

    goto :goto_a

    :cond_f
    move/from16 v25, v1

    move v10, v2

    move/from16 v26, v4

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_a
    const/4 v15, 0x0

    goto :goto_b

    :cond_10
    move v10, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 1695
    :goto_b
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    if-eqz v1, :cond_11

    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    cmpl-float v2, v1, v19

    if-lez v2, :cond_11

    sub-float v1, v1, v19

    const v2, 0x3e99999a    # 0.3f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v5, v1

    .line 1699
    :cond_11
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    .line 1700
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceBackground:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v3

    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_c

    .line 1702
    :cond_12
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_c
    const/4 v1, 0x0

    .line 1707
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->checkDrawables()V

    .line 1708
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v2

    const/high16 v27, 0x43160000    # 150.0f

    if-eqz v2, :cond_16

    .line 1709
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_15

    long-to-float v1, v8

    div-float v1, v1, v27

    add-float/2addr v2, v1

    .line 1710
    iput v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    cmpl-float v1, v2, v3

    if-lez v1, :cond_13

    .line 1712
    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    .line 1714
    :cond_13
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_d

    :cond_14
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1716
    :cond_15
    :goto_d
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_e
    move-object v3, v1

    move-object v4, v2

    goto :goto_f

    .line 1718
    :cond_16
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_17
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    .line 1720
    :goto_f
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/16 v28, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v12, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v30, v11

    sub-int v11, v0, v29

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v31, v10

    add-int v10, v12, v29

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v32, v5

    add-int v5, v0, v29

    invoke-virtual {v1, v2, v11, v10, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1721
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v3, :cond_18

    .line 1723
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v12, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v12

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v0, v10

    invoke-virtual {v3, v1, v2, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_18
    const/16 v0, 0x39

    .line 1726
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v14, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v10, v1, v0

    .line 1736
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->incIdle:Z

    if-eqz v0, :cond_19

    .line 1737
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v2

    iput v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    const/4 v0, 0x0

    .line 1739
    iput-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->incIdle:Z

    .line 1740
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    goto :goto_10

    .line 1743
    :cond_19
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    const v1, 0x3c23d70a    # 0.01f

    sub-float/2addr v0, v1

    iput v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    .line 1745
    iput-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->incIdle:Z

    .line 1746
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    :cond_1a
    :goto_10
    const v0, 0x81e0

    .line 1750
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1751
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0x2f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1752
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0x2f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0xf

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->FORM_SMALL_MAX:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1754
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1755
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->FORM_BIG_MAX:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1757
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Components/BlobDrawable;->updateAmplitude(J)V

    .line 1758
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v2, 0x3f8147ae    # 1.01f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    .line 1759
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Components/BlobDrawable;->updateAmplitude(J)V

    .line 1760
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v2, 0x3f828f5c    # 1.02f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    .line 1765
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    .line 1766
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    cmpl-float v1, v0, v19

    if-lez v1, :cond_1c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_1c
    div-float v0, v0, v19

    :goto_11
    const v1, 0x81e0

    .line 1768
    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v15, v1

    if-eqz v2, :cond_1e

    cmpg-float v2, v25, v20

    if-gez v2, :cond_1e

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_1e

    iget-boolean v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    if-nez v2, :cond_1e

    .line 1769
    iget-boolean v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves:Z

    if-eqz v2, :cond_1d

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    cmpl-float v5, v2, v1

    if-eqz v5, :cond_1d

    const v5, 0x3d23d70a    # 0.04f

    add-float/2addr v2, v5

    .line 1770
    iput v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1d

    .line 1772
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    .line 1775
    :cond_1d
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->voiceEnterTransitionInProgress:Z

    if-nez v1, :cond_1e

    .line 1776
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    .line 1777
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1778
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v11, v5, v26

    mul-float/2addr v2, v11

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    const v18, 0x3fb33333    # 1.4f

    move-object/from16 v22, v3

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, v3, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    mul-float v3, v3, v18

    add-float/2addr v5, v3

    mul-float/2addr v2, v5

    .line 1779
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v3, v12

    int-to-float v3, v3

    invoke-virtual {v7, v2, v2, v3, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1780
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget-object v5, v2, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v13, v7, v5}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1782
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    mul-float/2addr v2, v11

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    sget v0, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    const v1, 0x3fb33333    # 1.4f

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, v3, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    mul-float/2addr v2, v0

    .line 1783
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1784
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v0, v12

    int-to-float v0, v0

    invoke-virtual {v7, v2, v2, v0, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1785
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v13, v7, v2}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1786
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_12

    :cond_1e
    move-object/from16 v22, v3

    .line 1791
    :goto_12
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->voiceEnterTransitionInProgress:Z

    if-nez v0, :cond_23

    .line 1792
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paintAlpha:I

    int-to-float v1, v1

    mul-float v1, v1, v32

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1793
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_23

    .line 1794
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    .line 1795
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    add-float v0, v13, v31

    sub-float v1, v13, v31

    .line 1798
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int v3, v12, v2

    int-to-float v3, v3

    add-float v3, v3, v31

    add-int/2addr v2, v12

    int-to-float v2, v2

    sub-float v2, v2, v31

    .line 1804
    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object v5

    .line 1805
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    move-wide/from16 v32, v8

    move-object/from16 v9, v18

    const/4 v8, 0x0

    const/4 v11, 0x0

    move/from16 v18, v10

    .line 1806
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eq v9, v10, :cond_1f

    int-to-float v10, v11

    .line 1807
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v11, v10

    int-to-float v8, v8

    .line 1808
    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    .line 1809
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    goto :goto_13

    .line 1812
    :cond_1f
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v9

    int-to-float v10, v11

    add-float/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v11

    sub-float/2addr v9, v11

    .line 1813
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v11

    move/from16 v34, v14

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    add-float/2addr v11, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v10

    sub-float/2addr v11, v10

    .line 1814
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v10, v14

    int-to-float v8, v8

    add-float/2addr v10, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v14

    sub-float/2addr v10, v14

    iget-object v14, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v14

    sub-float/2addr v10, v14

    .line 1815
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v14

    add-float/2addr v14, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v8

    sub-float/2addr v14, v8

    iget-object v8, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    add-float/2addr v14, v8

    .line 1816
    iget-object v8, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v5, 0x0

    goto :goto_14

    :cond_20
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v21

    :goto_14
    sub-float/2addr v1, v9

    .line 1818
    iget v8, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v35, v24, v8

    mul-float v1, v1, v35

    add-float/2addr v9, v1

    sub-float/2addr v0, v11

    sub-float v1, v24, v8

    mul-float/2addr v0, v1

    add-float/2addr v11, v0

    sub-float/2addr v2, v14

    sub-float v0, v24, v8

    mul-float/2addr v2, v0

    add-float/2addr v14, v2

    sub-float/2addr v3, v10

    sub-float v0, v24, v8

    mul-float/2addr v3, v0

    add-float/2addr v10, v3

    sub-float v0, v31, v5

    sub-float v1, v24, v8

    mul-float/2addr v0, v1

    add-float/2addr v5, v0

    .line 1824
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v14, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1825
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v7, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move/from16 v8, v31

    goto :goto_15

    :cond_21
    move-wide/from16 v32, v8

    move/from16 v18, v10

    move/from16 v34, v14

    .line 1827
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v0, v12

    int-to-float v0, v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    move/from16 v8, v31

    invoke-virtual {v7, v0, v13, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_15

    :cond_22
    move-wide/from16 v32, v8

    move/from16 v18, v10

    move/from16 v34, v14

    move/from16 v8, v31

    .line 1830
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v0, v12

    int-to-float v0, v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v7, v0, v13, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1832
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v25

    .line 1834
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1835
    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    sub-float v2, v0, v15

    mul-float/2addr v2, v1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v10, v22

    move-object v3, v10

    move-object v11, v4

    move v4, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 1836
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_16

    :cond_23
    move-object v11, v4

    move-wide/from16 v32, v8

    move/from16 v18, v10

    move/from16 v34, v14

    move-object/from16 v10, v22

    move/from16 v8, v31

    .line 1840
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    const/16 v2, 0x24

    const/16 v3, 0x8

    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v0, :cond_25

    .line 1841
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v5, 0x3c

    .line 1842
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float v5, v5, v30

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v16, v14, v16

    mul-float v9, v9, v16

    add-float/2addr v5, v9

    sub-float v5, v5, v34

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    mul-float v9, v9, v18

    add-float/2addr v5, v9

    div-float v9, v0, v21

    add-float/2addr v9, v5

    .line 1844
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    sub-float v14, v9, v14

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    add-float v14, v14, v16

    .line 1845
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    sub-float v9, v9, v16

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    add-float v9, v9, v16

    cmpl-float v16, v18, v20

    if-lez v16, :cond_24

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_24
    div-float v16, v18, v20

    :goto_17
    const/high16 v20, 0x41100000    # 9.0f

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v24, v22, v18

    mul-float v24, v24, v20

    .line 1848
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    sub-float v30, v22, v1

    mul-float v30, v30, v24

    const/high16 v24, 0x41700000    # 15.0f

    mul-float v1, v1, v24

    sub-float v16, v22, v16

    mul-float v1, v1, v16

    sub-float v30, v30, v1

    move/from16 v1, v18

    move/from16 v4, v30

    goto :goto_18

    .line 1852
    :cond_25
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v18

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v1, 0x3c

    .line 1853
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v1, v1, v30

    const/16 v5, 0x1e

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v14, v9, v16

    mul-float/2addr v5, v14

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    move/from16 v5, v34

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    mul-float v5, v5, v18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v5, v9

    add-float/2addr v5, v1

    div-float v1, v0, v21

    add-float/2addr v1, v5

    .line 1854
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    sub-float v9, v1, v9

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    add-float/2addr v9, v14

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    mul-float v14, v14, v18

    add-float/2addr v14, v9

    const/high16 v9, 0x41800000    # 16.0f

    .line 1855
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    sub-float v1, v1, v16

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    add-float/2addr v1, v9

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    mul-float v9, v9, v18

    add-float/2addr v9, v1

    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v22, v16, v18

    mul-float v30, v22, v1

    const/4 v1, 0x0

    .line 1857
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    move/from16 v4, v30

    const/4 v1, 0x0

    .line 1861
    :goto_18
    iget-boolean v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    const/high16 v30, 0x40400000    # 3.0f

    const/high16 v31, 0x40800000    # 4.0f

    if-eqz v2, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move/from16 v36, v4

    iget-wide v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltipStartTime:J

    sub-long v34, v34, v3

    const-wide/16 v3, 0xc8

    cmp-long v3, v34, v3

    if-gtz v3, :cond_26

    goto :goto_19

    :cond_26
    const/4 v4, 0x0

    goto :goto_1a

    :cond_27
    move/from16 v36, v4

    :goto_19
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2c

    :goto_1a
    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v18, v3

    if-ltz v3, :cond_28

    .line 1862
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v3

    if-nez v3, :cond_28

    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_28

    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_29

    :cond_28
    const/4 v3, 0x0

    .line 1863
    iput-boolean v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    .line 1865
    :cond_29
    iget-boolean v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    if-eqz v3, :cond_2a

    .line 1866
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v24, v3, v4

    move/from16 v34, v5

    if-eqz v24, :cond_2b

    move-wide/from16 v4, v32

    long-to-float v4, v4

    div-float v4, v4, v27

    add-float/2addr v3, v4

    .line 1867
    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2b

    .line 1869
    iput v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    .line 1870
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseLockRecordAudioVideoHintShowed()V

    goto :goto_1b

    :cond_2a
    move/from16 v34, v5

    move-wide/from16 v4, v32

    .line 1874
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    long-to-float v4, v4

    div-float v4, v4, v27

    sub-float/2addr v3, v4

    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2b

    .line 1876
    iput v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    .line 1881
    :cond_2b
    :goto_1b
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1883
    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1884
    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1885
    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1887
    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_2d

    .line 1888
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1889
    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v32, v10

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v10, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1890
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    sub-float/2addr v2, v4

    const/16 v4, 0x2c

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1891
    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x8

    .line 1892
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    move-object/from16 v22, v11

    const/16 v20, 0x24

    .line 1893
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v2, v11

    float-to-int v2, v2

    iget-object v11, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v20

    add-float v11, v11, v20

    float-to-int v11, v11

    .line 1891
    invoke-virtual {v4, v5, v10, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1895
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1896
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1897
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1899
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v12

    const/high16 v4, 0x41880000    # 17.0f

    .line 1900
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v21

    add-float/2addr v4, v5

    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1901
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1902
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 1903
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1904
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1906
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1907
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1908
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1909
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1910
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1911
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1912
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1913
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1915
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1916
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1917
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v12, v3

    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1918
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v12

    iget-object v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 1916
    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1920
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1921
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1c

    :cond_2c
    move/from16 v34, v5

    :cond_2d
    move-object/from16 v32, v10

    move-object/from16 v22, v11

    .line 1925
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1926
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1928
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2e

    sub-float v23, v3, v2

    move/from16 v2, v23

    goto :goto_1d

    :cond_2e
    cmpl-float v2, v15, v5

    if-eqz v2, :cond_2f

    move v2, v15

    goto :goto_1d

    :cond_2f
    cmpl-float v2, v25, v5

    if-eqz v2, :cond_30

    move/from16 v2, v25

    goto :goto_1d

    :cond_30
    const/4 v2, 0x0

    .line 1935
    :goto_1d
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    cmpg-float v3, v3, v19

    if-ltz v3, :cond_32

    iget-boolean v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    if-eqz v3, :cond_31

    goto :goto_1e

    .line 1944
    :cond_31
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_33

    const v5, 0x3df5c28f    # 0.12f

    add-float/2addr v3, v5

    .line 1945
    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_33

    .line 1947
    iput v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    goto :goto_1f

    :cond_32
    :goto_1e
    const/4 v3, 0x0

    .line 1936
    iput-boolean v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    .line 1937
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_33

    const v5, 0x3df5c28f    # 0.12f

    sub-float/2addr v3, v5

    .line 1938
    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_33

    .line 1940
    iput v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    :cond_33
    :goto_1f
    const/high16 v3, 0x42900000    # 72.0f

    .line 1952
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    mul-float v4, v3, v2

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1953
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float v5, v5, v26

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v2, v10, v2

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    sub-float v2, v10, v2

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    cmpl-float v2, v4, v3

    if-lez v2, :cond_34

    goto :goto_20

    :cond_34
    move v3, v4

    :goto_20
    const/4 v2, 0x0

    .line 1957
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1958
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    sub-float v15, v10, v15

    mul-float/2addr v2, v15

    sub-float v15, v10, v25

    mul-float/2addr v2, v15

    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    mul-float/2addr v2, v4

    int-to-float v4, v12

    .line 1959
    invoke-virtual {v7, v2, v2, v4, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1961
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float v10, v4, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    add-float/2addr v11, v4

    add-float v0, v34, v0

    move/from16 v15, v34

    invoke-virtual {v2, v10, v15, v11, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1962
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 1963
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float/2addr v2, v10

    float-to-int v2, v2

    iget-object v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 1964
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    add-float/2addr v11, v15

    float-to-int v11, v11

    iget-object v15, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v17

    add-float v15, v15, v17

    float-to-int v15, v15

    .line 1962
    invoke-virtual {v0, v2, v10, v11, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1966
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1967
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget-object v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v2, v5, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1968
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1970
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x40c00000    # 6.0f

    .line 1971
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, v4, v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v15, v10, v1

    mul-float/2addr v5, v15

    sub-float/2addr v2, v5

    .line 1972
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float/2addr v5, v15

    sub-float v5, v14, v5

    const/4 v10, 0x6

    .line 1973
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v12

    int-to-float v10, v10

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    mul-float/2addr v11, v15

    add-float/2addr v10, v11

    const/16 v11, 0xc

    .line 1974
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v14, v11

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    mul-float/2addr v11, v15

    add-float/2addr v14, v11

    .line 1970
    invoke-virtual {v0, v2, v5, v10, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1976
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1977
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 1978
    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 1979
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1980
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v14, v11, v18

    mul-float/2addr v10, v14

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v10, v36

    .line 1981
    invoke-virtual {v7, v10, v0, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1982
    iget-object v11, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    move/from16 v17, v8

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    move/from16 v19, v13

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    move/from16 v20, v12

    iget-object v12, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v8, v13, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v11, v1, v8

    if-eqz v11, :cond_35

    .line 1985
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    mul-float/2addr v8, v15

    iget-object v12, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v5, v8, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_35
    if-eqz v11, :cond_37

    .line 1989
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1990
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1991
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float/2addr v2, v14

    add-float/2addr v3, v2

    invoke-virtual {v7, v5, v5, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1992
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    sub-float/2addr v4, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v0, v2

    mul-float v0, v0, v18

    sub-float/2addr v9, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    mul-float/2addr v0, v14

    sub-float/2addr v9, v0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v9, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    mul-float/2addr v0, v1

    add-float/2addr v9, v0

    invoke-virtual {v7, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    cmpl-float v1, v10, v0

    if-lez v1, :cond_36

    const/16 v0, 0x8

    .line 1994
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v10, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_36
    const/high16 v0, 0x41000000    # 8.0f

    .line 1996
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    mul-float/2addr v4, v15

    add-float/2addr v4, v0

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1997
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, -0x3ccc0000    # -180.0f

    const/4 v4, 0x0

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 1999
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const/4 v3, 0x0

    .line 2000
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    mul-float/2addr v4, v5

    mul-float v4, v4, v18

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v5

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v14

    add-float/2addr v4, v0

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    .line 1998
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2003
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2005
    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2006
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2008
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_39

    .line 2009
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int v12, v20, v0

    int-to-float v0, v12

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v2

    move/from16 v8, v17

    move/from16 v3, v19

    invoke-virtual {v7, v0, v3, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2010
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    if-eqz v0, :cond_38

    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    sub-float v15, v1, v0

    goto :goto_21

    :cond_38
    move v15, v1

    .line 2011
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2012
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2013
    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v15, v0

    float-to-int v5, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v32

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 2014
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_22

    :cond_39
    move/from16 v8, v17

    .line 2016
    :goto_22
    iput v8, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCircleRadius:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1574
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v0, 0xc2

    .line 1575
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1576
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastSize:I

    const/4 v2, 0x0

    if-eq v1, p2, :cond_1

    .line 1577
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastSize:I

    .line 1578
    new-instance p2, Landroid/text/StaticLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipMessage:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipPaint:Landroid/text/TextPaint;

    const/16 v1, 0xdc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    .line 1579
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v1, 0x0

    .line 1580
    iput v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    move v1, v2

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1582
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    .line 1583
    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 1584
    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1588
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    .line 1589
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p2

    :cond_2
    const/high16 p2, 0x40000000    # 2.0f

    .line 1591
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 1593
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3eb33333    # 0.35f

    mul-float/2addr p1, p2

    const/16 p2, 0x8c

    .line 1594
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    .line 1595
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    :cond_3
    neg-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1597
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    sub-float/2addr p2, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1546
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1550
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->pressed:Z

    return p1

    .line 1551
    :cond_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->pressed:Z

    if-eqz v3, :cond_3

    .line 1552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 1553
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1554
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1555
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_0

    .line 1557
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 1558
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 1560
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1561
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method public setAmplitude(D)V
    .locals 5

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const-wide v1, 0x409c200000000000L    # 1800.0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/BlobDrawable;->setValue(FZ)V

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/BlobDrawable;->setValue(FZ)V

    .line 1464
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    .line 1465
    iget p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    sub-float/2addr p1, p2

    const p2, 0x43bb8000    # 375.0f

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    .line 1467
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExitTransition(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2099
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    .line 2100
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLockAnimatedTranslation(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1482
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    .line 1483
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLockTranslation(F)I
    .locals 3

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p1, v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1508
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    .line 1509
    iput v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    .line 1510
    iput v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->startTranslation:F

    .line 1511
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 1512
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    .line 1513
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    .line 1514
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    .line 1516
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    .line 1517
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    .line 1518
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    .line 1519
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1520
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    .line 1521
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    .line 1522
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    return p1

    .line 1525
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    .line 1528
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 1529
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->startTranslation:F

    .line 1531
    :cond_2
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    .line 1532
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1533
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    const v1, 0x3f333333    # 0.7f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    goto :goto_0

    .line 1536
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->startTranslation:F

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    sub-float/2addr p1, v1

    const/16 v1, 0x39

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_4

    .line 1537
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public setMovingCords(FF)V
    .locals 3

    .line 2146
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingX:F

    sub-float v1, p1, v0

    sub-float v0, p1, v0

    mul-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingY:F

    sub-float v2, p2, v0

    sub-float v0, p2, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 2147
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingY:F

    .line 2148
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingX:F

    .line 2149
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->touchSlop:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    .line 2150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltipStartTime:J

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1476
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    .line 1477
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSendButtonInvisible()V
    .locals 1

    const/4 v0, 0x0

    .line 1502
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    .line 1503
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSlideToCancelProgress(F)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2132
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    .line 2133
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    const/16 v1, 0x8c

    .line 2134
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 2135
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :cond_0
    neg-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 2137
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    .line 2138
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSnapAnimationProgress(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1488
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    .line 1489
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTransformToSeekbar(F)V
    .locals 0

    .line 2084
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    .line 2085
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showTooltipIfNeed()V
    .locals 2

    .line 2119
    sget v0, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2120
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    .line 2121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltipStartTime:J

    :cond_0
    return-void
.end method

.method public showWaves(ZZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f000000    # 0.5f

    .line 2156
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    .line 2158
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves:Z

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 2104
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2105
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    const/16 v3, 0x26

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2106
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    const/16 v2, 0x4c

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x5

    .line 2108
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 2109
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2111
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockBackground:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2113
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2115
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paintAlpha:I

    return-void
.end method
