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
    .locals 5

    .line 1345
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 1346
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1297
    new-instance v0, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    .line 1298
    new-instance v0, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    .line 1305
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x42240000    # 41.0f

    .line 1310
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadius:F

    const/16 v0, 0x1e

    .line 1311
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadiusAmplitude:F

    .line 1313
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockBackgroundPaint:Landroid/graphics/Paint;

    .line 1314
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockPaint:Landroid/graphics/Paint;

    .line 1315
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    .line 1316
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    .line 1317
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 1334
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    .line 1335
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves:Z

    .line 1337
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    .line 1347
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->input_mic_pressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4102(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1348
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chat_messagePanelVoicePressed"

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1350
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->input_video_pressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4202(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1351
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1353
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4302(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1354
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1356
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->input_mic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4402(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1357
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chat_messagePanelIcons"

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1359
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->input_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4502(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1360
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1362
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

    .line 1363
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0x2f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v2, 0x37

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1368
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1376
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    const v1, 0x3fd9999a    # 1.7f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1378
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->lock_round_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4602(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1379
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "key_chat_messagePanelVoiceLockShadow"

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v0, 0x5

    .line 1380
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v1, "chat_gifSaveHintBackground"

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 1382
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipPaint:Landroid/text/TextPaint;

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1383
    sget p1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1384
    sget p1, Lorg/telegram/messenger/R$string;->SlideUpToLock:I

    const-string v0, "SlideUpToLock"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipMessage:Ljava/lang/String;

    .line 1387
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 1388
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->touchSlop:F

    mul-float p1, p1, p1

    .line 1389
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->touchSlop:F

    .line 1391
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->updateColors()V

    return-void
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;)F
    .locals 0

    .line 1278
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->startTranslation:F

    return p0
.end method

.method static synthetic access$13602(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;Z)Z
    .locals 0

    .line 1278
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    return p1
.end method

.method static synthetic access$16100(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;)F
    .locals 0

    .line 1278
    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    return p0
.end method

.method private drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p4, v0

    if-eqz v2, :cond_1

    cmpl-float v2, p4, v1

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1993
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1994
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p4, p4, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    int-to-float p5, p5

    mul-float v0, p5, p4

    float-to-int v0, v0

    .line 1995
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1996
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1997
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1999
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v1, p4

    .line 2000
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

    invoke-virtual {p1, v1, v1, p4, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    mul-float p5, p5, v1

    float-to-int p2, p5

    .line 2001
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2002
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2003
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 1972
    :cond_1
    :goto_0
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    if-eqz p3, :cond_2

    iget p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    cmpl-float p4, p4, v1

    if-nez p4, :cond_2

    .line 1973
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    .line 1974
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 p1, 0x8

    .line 1975
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    if-eqz p3, :cond_5

    .line 1978
    iget p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    cmpg-float p4, p4, v1

    if-gez p4, :cond_5

    .line 1979
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 1980
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1981
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

    .line 1982
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1983
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 p5, 0xff

    .line 1984
    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sub-int/2addr p5, p4

    .line 1986
    invoke-virtual {p2, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1987
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_5
    if-nez p3, :cond_6

    .line 1989
    invoke-virtual {p2, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1990
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public canceledByGesture()V
    .locals 1

    const/4 v0, 0x1

    .line 2071
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2009
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

    .line 1953
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1954
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 1955
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 1957
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    move-object v4, v0

    move-object v5, v1

    goto :goto_2

    .line 1959
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 1961
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

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

    .line 1962
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v5, :cond_4

    .line 1964
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

    .line 1967
    :cond_4
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p4, p4, p2

    float-to-int v7, p4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    return-void
.end method

.method public drawWaves(Landroid/graphics/Canvas;FFF)V
    .locals 6

    .line 2091
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2092
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    const v2, 0x3f333333    # 0.7f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float/2addr v1, v2

    .line 2093
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2094
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    mul-float v2, v2, v1

    mul-float v2, v2, v0

    sget v3, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v4, v4, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v5, 0x3fb33333    # 1.4f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    mul-float v2, v2, p4

    .line 2095
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2096
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v3, v2, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, p3, p1, v3}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2097
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2098
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    mul-float v2, v2, v1

    mul-float v2, v2, v0

    sget v0, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v1, v1, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    mul-float v1, v1, v5

    add-float/2addr v0, v1

    mul-float v2, v2, v0

    mul-float v2, v2, p4

    .line 2099
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2100
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2101
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, p4, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, p3, p1, v0}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getExitTransition()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2023
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    return v0
.end method

.method public getLockAnimatedTranslation()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1428
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1405
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    return v0
.end method

.method public getSlideToCancelProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2056
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    return v0
.end method

.method public getTransformToSeekbarProgressStep3()F
    .locals 1

    .line 2018
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    return v0
.end method

.method public isSendButtonVisible()Z
    .locals 1

    .line 1432
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 38

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1534
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->skipDraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 1538
    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, v8, :cond_1

    .line 1539
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
    const/4 v11, 0x0

    .line 1541
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v1

    sub-int v12, v0, v1

    const/16 v0, 0xaa

    .line 1542
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    .line 1545
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCx:F

    int-to-float v13, v0

    .line 1546
    iput v13, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCy:F

    .line 1548
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    const v2, 0x461c4000    # 10000.0f

    const/16 v3, 0x39

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    .line 1549
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->startTranslation:F

    sub-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1550
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 1551
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :cond_2
    move v14, v1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    .line 1557
    :goto_1
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_4

    div-float/2addr v1, v4

    :goto_2
    move/from16 v16, v1

    goto :goto_3

    :cond_4
    const/high16 v5, 0x3f400000    # 0.75f

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_5

    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v4

    sub-float v1, v15, v1

    goto :goto_2

    :cond_5
    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f400000    # 0.75f

    sub-float/2addr v1, v5

    div-float/2addr v1, v2

    const v5, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v5

    add-float/2addr v1, v4

    goto :goto_2

    .line 1564
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    sub-long v8, v4, v8

    .line 1565
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_8

    .line 1566
    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    long-to-float v3, v8

    mul-float v3, v3, v5

    add-float/2addr v4, v3

    iput v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v3, v5, v10

    if-lez v3, :cond_6

    cmpl-float v3, v4, v1

    if-lez v3, :cond_7

    .line 1569
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    goto :goto_4

    :cond_6
    cmpg-float v3, v4, v1

    if-gez v3, :cond_7

    .line 1573
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    .line 1576
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1580
    :cond_8
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    const v19, 0x3f333333    # 0.7f

    if-eqz v1, :cond_9

    .line 1581
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    sub-float v3, v15, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v1, v1, v19

    goto :goto_5

    .line 1583
    :cond_9
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    const v3, 0x3e99999a    # 0.3f

    mul-float v1, v1, v3

    add-float v1, v1, v19

    .line 1585
    :goto_5
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadius:F

    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadiusAmplitude:F

    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, v16

    mul-float v3, v3, v1

    .line 1587
    iput v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    .line 1592
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    const v20, 0x3ecccccd    # 0.4f

    const/high16 v21, 0x40000000    # 2.0f

    cmpl-float v4, v1, v10

    if-eqz v4, :cond_c

    const v4, 0x3ec28f5c    # 0.38f

    const v5, 0x3ebd70a4    # 0.37f

    cmpl-float v22, v1, v4

    if-lez v22, :cond_a

    goto :goto_6

    :cond_a
    div-float v22, v1, v4

    move/from16 v15, v22

    :goto_6
    const v22, 0x3f2147ae    # 0.63f

    cmpl-float v22, v1, v22

    if-lez v22, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_b
    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    .line 1598
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1599
    :goto_7
    iget v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    sub-float/2addr v10, v4

    sub-float/2addr v10, v2

    div-float/2addr v10, v5

    const/4 v2, 0x0

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    .line 1601
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 1602
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    .line 1603
    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    iput v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    const/16 v2, 0x10

    .line 1605
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    add-float/2addr v3, v2

    .line 1607
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v21

    sub-float/2addr v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v15, v5, v1

    mul-float v3, v3, v15

    add-float/2addr v3, v2

    move v15, v1

    move v10, v3

    move/from16 v25, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    goto/16 :goto_b

    .line 1609
    :cond_c
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_10

    const v2, 0x3f19999a    # 0.6f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_d

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_d
    div-float v4, v1, v2

    .line 1614
    :goto_8
    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    sub-float/2addr v1, v2

    div-float v1, v1, v20

    const/4 v5, 0x0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1616
    :goto_9
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 1617
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/16 v5, 0x10

    .line 1619
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v15, v5, v1

    mul-float v3, v3, v15

    .line 1622
    iget-object v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    cmpl-float v15, v10, v2

    if-lez v15, :cond_f

    sub-float/2addr v10, v2

    div-float v10, v10, v20

    sub-float v15, v5, v10

    const/4 v2, 0x0

    .line 1623
    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move/from16 v24, v1

    move v10, v3

    move/from16 v25, v4

    goto :goto_a

    :cond_f
    move/from16 v24, v1

    move v10, v3

    move/from16 v25, v4

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_a
    const/4 v15, 0x0

    goto :goto_b

    :cond_10
    move v10, v3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 1627
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

    mul-float v5, v5, v1

    .line 1631
    :cond_11
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    .line 1632
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v3, "chat_messagePanelVoiceBackground"

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v4, "chat_recordedVoiceBackground"

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v3

    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_c

    .line 1634
    :cond_12
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v3, "chat_messagePanelVoiceBackground"

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_c
    const/4 v1, 0x0

    .line 1639
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v2

    const/high16 v26, 0x43160000    # 150.0f

    if-eqz v2, :cond_16

    .line 1640
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_15

    long-to-float v1, v8

    div-float v1, v1, v26

    add-float/2addr v2, v1

    .line 1641
    iput v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    cmpl-float v1, v2, v3

    if-lez v1, :cond_13

    .line 1643
    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    .line 1645
    :cond_13
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_d

    :cond_14
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1647
    :cond_15
    :goto_d
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_e
    move-object v3, v1

    move-object v4, v2

    goto :goto_f

    .line 1649
    :cond_16
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    :cond_17
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_e

    .line 1651
    :goto_f
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/16 v27, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v12, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v29, v11

    sub-int v11, v0, v28

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v30, v10

    add-int v10, v12, v28

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v31, v5

    add-int v5, v0, v28

    invoke-virtual {v1, v2, v11, v10, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1652
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v3, :cond_18

    .line 1654
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

    .line 1657
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v14, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v10, v1, v0

    .line 1667
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->incIdle:Z

    if-eqz v0, :cond_19

    .line 1668
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v2

    iput v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    const/4 v0, 0x0

    .line 1670
    iput-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->incIdle:Z

    .line 1671
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    goto :goto_10

    .line 1674
    :cond_19
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    const v1, 0x3c23d70a    # 0.01f

    sub-float/2addr v0, v1

    iput v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    .line 1676
    iput-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->incIdle:Z

    .line 1677
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    .line 1681
    :cond_1a
    :goto_10
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1682
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0x2f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1683
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

    mul-float v2, v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1685
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v1, 0x32

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1686
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

    mul-float v2, v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1688
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Components/BlobDrawable;->updateAmplitude(J)V

    .line 1689
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v2, 0x3f8147ae    # 1.01f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    .line 1690
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Components/BlobDrawable;->updateAmplitude(J)V

    .line 1691
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v2, 0x3f828f5c    # 1.02f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    .line 1696
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    .line 1697
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    cmpl-float v1, v0, v19

    if-lez v1, :cond_1c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_1c
    div-float v0, v0, v19

    .line 1699
    :goto_11
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v15, v1

    if-eqz v2, :cond_1e

    cmpg-float v2, v24, v20

    if-gez v2, :cond_1e

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_1e

    iget-boolean v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    if-nez v2, :cond_1e

    .line 1700
    iget-boolean v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves:Z

    if-eqz v2, :cond_1d

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    cmpl-float v5, v2, v1

    if-eqz v5, :cond_1d

    const v5, 0x3d23d70a    # 0.04f

    add-float/2addr v2, v5

    .line 1701
    iput v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1d

    .line 1703
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    .line 1706
    :cond_1d
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->voiceEnterTransitionInProgress:Z

    if-nez v1, :cond_1e

    .line 1707
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    .line 1708
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1709
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v11, v5, v25

    mul-float v2, v2, v11

    mul-float v2, v2, v0

    mul-float v2, v2, v1

    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    const v18, 0x3fb33333    # 1.4f

    move-object/from16 v28, v3

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, v3, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    mul-float v3, v3, v18

    add-float/2addr v5, v3

    mul-float v2, v2, v5

    .line 1710
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v3, v12

    int-to-float v3, v3

    invoke-virtual {v7, v2, v2, v3, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1711
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget-object v5, v2, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v13, v7, v5}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1712
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1713
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    mul-float v2, v2, v11

    mul-float v2, v2, v0

    mul-float v2, v2, v1

    sget v0, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    const v1, 0x3fb33333    # 1.4f

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v3, v3, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    mul-float v3, v3, v1

    add-float/2addr v0, v3

    mul-float v2, v2, v0

    .line 1714
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1715
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v0, v12

    int-to-float v0, v0

    invoke-virtual {v7, v2, v2, v0, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1716
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v13, v7, v2}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1717
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_12

    :cond_1e
    move-object/from16 v28, v3

    .line 1722
    :goto_12
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->voiceEnterTransitionInProgress:Z

    if-nez v0, :cond_23

    .line 1723
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paintAlpha:I

    int-to-float v1, v1

    mul-float v1, v1, v31

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1724
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_23

    .line 1725
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    .line 1726
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    add-float v0, v13, v30

    sub-float v1, v13, v30

    .line 1729
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int v3, v12, v2

    int-to-float v3, v3

    add-float v3, v3, v30

    add-int/2addr v2, v12

    int-to-float v2, v2

    sub-float v2, v2, v30

    .line 1735
    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object v5

    .line 1736
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    move-wide/from16 v32, v8

    move-object/from16 v11, v18

    const/16 v18, 0x0

    const/16 v31, 0x0

    .line 1737
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v11, v8, :cond_1f

    .line 1738
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v8

    add-int v18, v18, v8

    .line 1739
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int v31, v31, v8

    .line 1740
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroid/view/View;

    goto :goto_13

    .line 1743
    :cond_1f
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    add-int v8, v8, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1744
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int v9, v9, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v9, v11

    .line 1745
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v11

    add-int v11, v11, v31

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v18

    sub-int v11, v11, v18

    .line 1746
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v18

    add-int v18, v18, v31

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v31

    move/from16 v34, v10

    sub-int v10, v18, v31

    move/from16 v18, v14

    .line 1747
    iget-object v14, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v14

    if-eqz v14, :cond_20

    const/4 v5, 0x0

    goto :goto_14

    :cond_20
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v21

    :goto_14
    int-to-float v8, v8

    sub-float/2addr v1, v8

    .line 1749
    iget v14, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v31, v23, v14

    mul-float v1, v1, v31

    add-float/2addr v8, v1

    int-to-float v1, v9

    sub-float/2addr v0, v1

    sub-float v9, v23, v14

    mul-float v0, v0, v9

    add-float/2addr v1, v0

    int-to-float v0, v10

    sub-float/2addr v2, v0

    sub-float v9, v23, v14

    mul-float v2, v2, v9

    add-float/2addr v0, v2

    int-to-float v2, v11

    sub-float/2addr v3, v2

    sub-float v9, v23, v14

    mul-float v3, v3, v9

    add-float/2addr v2, v3

    sub-float v10, v30, v5

    sub-float v3, v23, v14

    mul-float v10, v10, v3

    add-float/2addr v5, v10

    .line 1755
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v8, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1756
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v7, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move/from16 v8, v30

    goto :goto_15

    :cond_21
    move-wide/from16 v32, v8

    move/from16 v34, v10

    move/from16 v18, v14

    .line 1758
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v0, v12

    int-to-float v0, v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    move/from16 v8, v30

    invoke-virtual {v7, v0, v13, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_15

    :cond_22
    move-wide/from16 v32, v8

    move/from16 v34, v10

    move/from16 v18, v14

    move/from16 v8, v30

    .line 1761
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v0, v12

    int-to-float v0, v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v7, v0, v13, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1763
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v24

    .line 1765
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1766
    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    sub-float v2, v0, v15

    mul-float v2, v2, v1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v2, v2, v0

    float-to-int v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v10, v28

    move-object v3, v10

    move-object v11, v4

    move v4, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 1767
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_16

    :cond_23
    move-object v11, v4

    move-wide/from16 v32, v8

    move/from16 v34, v10

    move/from16 v18, v14

    move-object/from16 v10, v28

    move/from16 v8, v30

    .line 1771
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    const/16 v2, 0x24

    const/16 v3, 0x8

    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v0, :cond_25

    .line 1772
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v5, 0x3c

    .line 1773
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float v5, v5, v29

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v16, v14, v16

    mul-float v9, v9, v16

    add-float/2addr v5, v9

    sub-float v5, v5, v18

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    mul-float v9, v9, v34

    add-float/2addr v5, v9

    div-float v9, v0, v21

    add-float/2addr v9, v5

    .line 1775
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    sub-float v14, v9, v14

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    add-float v14, v14, v16

    .line 1776
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    sub-float v9, v9, v16

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    add-float v9, v9, v16

    cmpl-float v16, v34, v20

    if-lez v16, :cond_24

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_24
    div-float v16, v34, v20

    :goto_17
    const/high16 v18, 0x41100000    # 9.0f

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v23, v20, v34

    mul-float v23, v23, v18

    .line 1779
    iget v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    sub-float v18, v20, v1

    mul-float v18, v18, v23

    const/high16 v23, 0x41700000    # 15.0f

    mul-float v1, v1, v23

    sub-float v16, v20, v16

    mul-float v1, v1, v16

    sub-float v18, v18, v1

    move/from16 v1, v18

    move/from16 v16, v34

    goto :goto_18

    .line 1783
    :cond_25
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v34

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v1, 0x3c

    .line 1784
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v1, v1, v29

    const/16 v5, 0x1e

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v14, v9, v16

    mul-float v5, v5, v14

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    move/from16 v5, v18

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    mul-float v5, v5, v34

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    mul-float v5, v5, v9

    add-float/2addr v5, v1

    div-float v1, v0, v21

    add-float/2addr v1, v5

    .line 1785
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    sub-float v9, v1, v9

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    add-float/2addr v9, v14

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    mul-float v14, v14, v34

    add-float/2addr v14, v9

    const/high16 v9, 0x41800000    # 16.0f

    .line 1786
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    sub-float v1, v1, v16

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    add-float/2addr v1, v9

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    mul-float v9, v9, v34

    add-float/2addr v9, v1

    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v18, v16, v34

    mul-float v18, v18, v1

    const/4 v1, 0x0

    .line 1788
    iput v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    move/from16 v1, v18

    const/16 v16, 0x0

    .line 1792
    :goto_18
    iget-boolean v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    const/high16 v20, 0x41a00000    # 20.0f

    const/high16 v29, 0x40400000    # 3.0f

    const/high16 v30, 0x40800000    # 4.0f

    if-eqz v4, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    iget-wide v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltipStartTime:J

    sub-long v35, v35, v2

    const-wide/16 v2, 0xc8

    cmp-long v37, v35, v2

    if-gtz v37, :cond_26

    goto :goto_19

    :cond_26
    const/4 v3, 0x0

    goto :goto_1a

    :cond_27
    :goto_19
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2c

    :goto_1a
    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v2, v34, v2

    if-ltz v2, :cond_28

    .line 1793
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v2

    if-nez v2, :cond_28

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_28

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_29

    :cond_28
    const/4 v2, 0x0

    .line 1794
    iput-boolean v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    .line 1796
    :cond_29
    iget-boolean v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    if-eqz v2, :cond_2a

    .line 1797
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v23, v2, v3

    move/from16 v35, v5

    if-eqz v23, :cond_2b

    move-wide/from16 v4, v32

    long-to-float v4, v4

    div-float v4, v4, v26

    add-float/2addr v2, v4

    .line 1798
    iput v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2b

    .line 1800
    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    .line 1801
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseLockRecordAudioVideoHintShowed()V

    goto :goto_1b

    :cond_2a
    move/from16 v35, v5

    move-wide/from16 v4, v32

    .line 1805
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    long-to-float v3, v4

    div-float v3, v3, v26

    sub-float/2addr v2, v3

    iput v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2b

    .line 1807
    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    .line 1812
    :cond_2b
    :goto_1b
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 1814
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1815
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1816
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1818
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_2d

    .line 1819
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1820
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v26, v10

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v10, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1821
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    sub-float/2addr v3, v4

    const/16 v4, 0x2c

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1822
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x8

    .line 1823
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v4, v5

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    iget v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    move-object/from16 v32, v11

    const/16 v28, 0x24

    .line 1824
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v28

    add-float v11, v11, v28

    float-to-int v11, v11

    .line 1822
    invoke-virtual {v3, v4, v5, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1826
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1827
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1828
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1830
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v12

    const/high16 v4, 0x41880000    # 17.0f

    .line 1831
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v21

    add-float/2addr v4, v5

    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    mul-float v5, v5, v10

    sub-float/2addr v4, v5

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1832
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1833
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 1834
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1835
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1837
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1838
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1839
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1840
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1841
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1842
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1843
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->path:Landroid/graphics/Path;

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1844
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1846
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1847
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1848
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v12, v3

    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1849
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v12

    iget-object v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 1847
    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1851
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1852
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1c

    :cond_2c
    move/from16 v35, v5

    :cond_2d
    move-object/from16 v26, v10

    move-object/from16 v32, v11

    .line 1856
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1857
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1859
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2e

    sub-float v22, v3, v2

    move/from16 v2, v22

    goto :goto_1d

    :cond_2e
    cmpl-float v2, v15, v5

    if-eqz v2, :cond_2f

    move v2, v15

    goto :goto_1d

    :cond_2f
    cmpl-float v2, v24, v5

    if-eqz v2, :cond_30

    move/from16 v2, v24

    goto :goto_1d

    :cond_30
    const/4 v2, 0x0

    .line 1866
    :goto_1d
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    cmpg-float v3, v3, v19

    if-ltz v3, :cond_32

    iget-boolean v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    if-eqz v3, :cond_31

    goto :goto_1e

    .line 1875
    :cond_31
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_33

    const v5, 0x3df5c28f    # 0.12f

    add-float/2addr v3, v5

    .line 1876
    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_33

    .line 1878
    iput v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    goto :goto_1f

    :cond_32
    :goto_1e
    const/4 v3, 0x0

    .line 1867
    iput-boolean v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    .line 1868
    iget v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_33

    const v5, 0x3df5c28f    # 0.12f

    sub-float/2addr v3, v5

    .line 1869
    iput v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_33

    .line 1871
    iput v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    :cond_33
    :goto_1f
    const/high16 v3, 0x42900000    # 72.0f

    .line 1883
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    mul-float v4, v3, v2

    .line 1884
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float v5, v5, v25

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v2, v10, v2

    mul-float v5, v5, v2

    sub-float/2addr v4, v5

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    sub-float v2, v10, v2

    mul-float v2, v2, v3

    add-float/2addr v4, v2

    cmpl-float v2, v4, v3

    if-lez v2, :cond_34

    goto :goto_20

    :cond_34
    move v3, v4

    :goto_20
    const/4 v2, 0x0

    .line 1888
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1889
    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    sub-float v15, v10, v15

    mul-float v2, v2, v15

    sub-float v15, v10, v24

    mul-float v2, v2, v15

    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    mul-float v2, v2, v4

    int-to-float v4, v12

    .line 1890
    invoke-virtual {v7, v2, v2, v4, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1892
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float v10, v4, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    add-float/2addr v11, v4

    add-float v0, v35, v0

    move/from16 v15, v35

    invoke-virtual {v2, v10, v15, v11, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1893
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 1894
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float/2addr v2, v10

    float-to-int v2, v2

    iget-object v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 1895
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    add-float/2addr v11, v15

    float-to-int v11, v11

    iget-object v15, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v17

    add-float v15, v15, v17

    float-to-int v15, v15

    .line 1893
    invoke-virtual {v0, v2, v10, v11, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1897
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1898
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget-object v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v2, v5, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1899
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1901
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x40c00000    # 6.0f

    .line 1902
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, v4, v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v15, v10, v16

    mul-float v5, v5, v15

    sub-float/2addr v2, v5

    .line 1903
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float v5, v5, v15

    sub-float v5, v14, v5

    const/4 v10, 0x6

    .line 1904
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v12

    int-to-float v10, v10

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    mul-float v11, v11, v15

    add-float/2addr v10, v11

    const/16 v11, 0xc

    .line 1905
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v14, v11

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    mul-float v11, v11, v15

    add-float/2addr v14, v11

    .line 1901
    invoke-virtual {v0, v2, v5, v10, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1907
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1908
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 1909
    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 1910
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1911
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v14, v11, v34

    mul-float v10, v10, v14

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1912
    invoke-virtual {v7, v1, v0, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1913
    iget-object v10, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    move/from16 v17, v8

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    move/from16 v19, v13

    iget-object v13, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v11, v8, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v10, v16, v8

    if-eqz v10, :cond_35

    .line 1916
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    mul-float v8, v8, v15

    iget-object v11, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v5, v8, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_35
    if-eqz v10, :cond_37

    .line 1920
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1921
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1922
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float v2, v2, v14

    add-float/2addr v3, v2

    invoke-virtual {v7, v5, v5, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1923
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    sub-float/2addr v4, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v0, v0, v2

    mul-float v0, v0, v34

    sub-float/2addr v9, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    mul-float v0, v0, v14

    sub-float/2addr v9, v0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    mul-float v0, v0, v16

    add-float/2addr v9, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    mul-float v0, v0, v2

    add-float/2addr v9, v0

    invoke-virtual {v7, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_36

    const/16 v0, 0x8

    .line 1925
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v1, v2, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_36
    const/high16 v0, 0x41000000    # 8.0f

    .line 1927
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    mul-float v4, v4, v15

    add-float/2addr v4, v0

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1928
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, -0x3ccc0000    # -180.0f

    const/4 v4, 0x0

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 1930
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const/4 v3, 0x0

    .line 1931
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->idleProgress:F

    mul-float v4, v4, v5

    mul-float v4, v4, v34

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v5

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    mul-float v4, v4, v5

    mul-float v4, v4, v14

    add-float/2addr v4, v0

    iget-object v5, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    .line 1929
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1934
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1936
    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1937
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1939
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_39

    .line 1940
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    add-int/2addr v12, v0

    int-to-float v0, v12

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v2

    move/from16 v8, v17

    move/from16 v3, v19

    invoke-virtual {v7, v0, v3, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1941
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    if-eqz v0, :cond_38

    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    sub-float v15, v1, v0

    goto :goto_21

    :cond_38
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1942
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1943
    iget v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1944
    iget v4, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v15, v15, v0

    float-to-int v5, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 1945
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_22

    :cond_39
    move/from16 v8, v17

    .line 1947
    :goto_22
    iput v8, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCircleRadius:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1506
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v0, 0xc2

    .line 1507
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1508
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastSize:I

    const/4 v2, 0x0

    if-eq v1, p2, :cond_1

    .line 1509
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastSize:I

    .line 1510
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

    .line 1511
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v1, 0x0

    .line 1512
    iput v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1514
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    .line 1515
    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 1516
    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipWidth:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1520
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipLayout:Landroid/text/StaticLayout;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    .line 1521
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

    .line 1523
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 1525
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3eb33333    # 0.35f

    mul-float p1, p1, p2

    const/16 p2, 0x8c

    .line 1526
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    .line 1527
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    :cond_3
    neg-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1529
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1480
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1484
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->pressed:Z

    return p1

    .line 1485
    :cond_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->pressed:Z

    if-eqz v3, :cond_3

    .line 1486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 1487
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1488
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1489
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_0

    .line 1491
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 1492
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 1494
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method public setAmplitude(D)V
    .locals 5

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const-wide v1, 0x409c200000000000L    # 1800.0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/BlobDrawable;->setValue(FZ)V

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/BlobDrawable;->setValue(FZ)V

    .line 1398
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    .line 1399
    iget p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    sub-float/2addr p1, p2

    const p2, 0x43bb8000    # 375.0f

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    .line 1401
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExitTransition(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2028
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    .line 2029
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLockAnimatedTranslation(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1416
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    .line 1417
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLockTranslation(F)I
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    const v1, 0x461c4000    # 10000.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 1442
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    .line 1443
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    .line 1444
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->startTranslation:F

    .line 1445
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 1446
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    .line 1447
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    .line 1448
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->exitTransition:F

    .line 1450
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    .line 1451
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    .line 1452
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    .line 1453
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1454
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    .line 1455
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelLockProgress:F

    .line 1456
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    return p1

    .line 1459
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    return v2

    .line 1462
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    .line 1463
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->startTranslation:F

    .line 1465
    :cond_2
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockAnimatedTranslation:F

    .line 1466
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1467
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->canceledByGesture:Z

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    const v1, 0x3f333333    # 0.7f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    goto :goto_0

    .line 1470
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

    .line 1471
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public setMovingCords(FF)V
    .locals 3

    .line 2075
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingX:F

    sub-float v1, p1, v0

    sub-float v0, p1, v0

    mul-float v1, v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingY:F

    sub-float v2, p2, v0

    sub-float v0, p2, v0

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 2076
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingY:F

    .line 2077
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingX:F

    .line 2078
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipAlpha:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->touchSlop:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    .line 2079
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

    .line 1410
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    .line 1411
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSendButtonInvisible()V
    .locals 1

    const/4 v0, 0x0

    .line 1436
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->sendButtonVisible:Z

    .line 1437
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSlideToCancelProgress(F)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2061
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideToCancelProgress:F

    .line 2062
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float v0, v0, v1

    const/16 v1, 0x8c

    .line 2063
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 2064
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :cond_0
    neg-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    float-to-int p1, v0

    .line 2066
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->slideDelta:I

    .line 2067
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSnapAnimationProgress(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1422
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->snapAnimationProgress:F

    .line 1423
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTransformToSeekbar(F)V
    .locals 0

    .line 2013
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->transformToSeekbar:F

    .line 2014
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showTooltipIfNeed()V
    .locals 2

    .line 2048
    sget v0, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2049
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showTooltip:Z

    .line 2050
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

    .line 2085
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    .line 2087
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves:Z

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 2033
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, "chat_messagePanelVoiceBackground"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2034
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x26

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2035
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x4c

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2036
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, "chat_gifSaveHintText"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x5

    .line 2037
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, "chat_gifSaveHintBackground"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 2038
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2040
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, "key_chat_messagePanelVoiceLockBackground"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2041
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, "key_chat_messagePanelVoiceLock"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2042
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lockOutlinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2044
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paintAlpha:I

    return-void
.end method
