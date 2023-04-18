.class public Lorg/telegram/ui/ChatPullingDownDrawable;
.super Ljava/lang/Object;
.source "ChatPullingDownDrawable.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field animateCheck:Z

.field public animateSwipeToRelease:Z

.field arrowPaint:Landroid/graphics/Paint;

.field bounceProgress:F

.field chatNameLayout:Landroid/text/StaticLayout;

.field chatNameWidth:I

.field checkProgress:F

.field circleRadius:F

.field counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

.field private final currentAccount:I

.field private final currentDialog:J

.field private final currentDialogType:Lcom/iMe/fork/enums/DialogType;

.field public dialogFilterId:I

.field public dialogFolderId:I

.field drawFolderBackground:Z

.field emptyStub:Z

.field private final filterId:I

.field private final folderId:I

.field private final fragmentView:Landroid/view/View;

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field lastHapticTime:J

.field lastProgress:F

.field public lastShowingReleaseTime:J

.field lastWidth:I

.field layout1:Landroid/text/StaticLayout;

.field layout1Width:I

.field layout2:Landroid/text/StaticLayout;

.field layout2Width:I

.field nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public nextDialogId:J

.field public nextUser:Lorg/telegram/tgnet/TLRPC$User;

.field onAnimationFinishRunnable:Ljava/lang/Runnable;

.field params:[I

.field parentView:Landroid/view/View;

.field path:Landroid/graphics/Path;

.field progressToBottomPanel:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field showBottomPanel:Z

.field showReleaseAnimator:Landroid/animation/AnimatorSet;

.field swipeToReleaseProgress:F

.field textPaint:Landroid/text/TextPaint;

.field textPaint2:Landroid/text/TextPaint;

.field private xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$CA3xXyghw5UwB3MR96nvwIJm8fA(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->lambda$showReleaseState$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HIpffEtSfdgrLgK44aXCC5sNl_Q(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->lambda$showReleaseState$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HoRgVeZafYsLGGOyFeEHq3N5zPo(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->lambda$showReleaseState$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NcODdPO7-7q3zFRLnmChdgaVynI(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatPullingDownDrawable;->lambda$runOnAnimationFinish$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$evWaMTTx11DHIUERiuZAuOLchoI(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->lambda$showReleaseState$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$taaLEldqHEDN_frbicTIZR_XHms(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatPullingDownDrawable;->lambda$runOnAnimationFinish$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zoyWq1S0OAWyiao8Rl9TbXc5Ogs(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->lambda$showReleaseState$3(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/View;JIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    .line 79
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->xRefPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    .line 91
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 114
    new-instance v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;-><init>(Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 115
    iput-object v2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->params:[I

    .line 123
    iput-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    .line 124
    iput p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    .line 125
    iput-wide p3, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialog:J

    .line 126
    iput p5, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->folderId:I

    .line 127
    iput p6, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->filterId:I

    .line 128
    iput-object p7, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 129
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p3, p4, p1}, Lcom/iMe/fork/enums/DialogType;->getDialogType(JLorg/telegram/messenger/MessagesController;)Lcom/iMe/fork/enums/DialogType;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    const p2, 0x40333333    # 2.8f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput v0, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    .line 134
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setType(I)V

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput-boolean v1, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->addServiceGradient:Z

    const-string p2, "paintChatActionBackground"

    .line 136
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    iput-object p2, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    const/16 p1, 0xd

    .line 139
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    const/16 p2, 0xe

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 143
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->xRefPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->xRefPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 146
    invoke-virtual {p0}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateDialog()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatPullingDownDrawable;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFF)V
    .locals 7

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41c00000    # 24.0f

    .line 536
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    div-float/2addr p4, v0

    const/16 v0, 0x14

    .line 537
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p3, v0

    invoke-virtual {p1, p4, p4, p2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 p4, 0x41400000    # 12.0f

    .line 538
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, 0x41480000    # 12.5f

    .line 539
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 p3, 0x41b00000    # 22.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 p3, 0x40600000    # 3.5f

    .line 540
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x41ac0000    # 21.5f

    .line 541
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 542
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 419
    iget-boolean v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->drawFolderBackground:Z

    const-string v4, "paintChatActionBackground"

    if-eqz v3, :cond_0

    .line 420
    iget-object v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v5

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    const v7, 0x3cf5c28f    # 0.03f

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v5, v7

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v9, v5

    .line 428
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    iget v11, v2, Landroid/graphics/RectF;->right:F

    iget v12, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v3

    add-float/2addr v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 429
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    neg-float v11, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11, v11, v11}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 430
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float v14, v3, v7

    sub-float/2addr v13, v14

    neg-float v13, v13

    div-float/2addr v13, v7

    mul-float v15, v8, v7

    add-float/2addr v13, v15

    sub-float/2addr v13, v6

    invoke-virtual {v10, v13, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 431
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    neg-float v8, v8

    div-float v13, v8, v7

    mul-float/2addr v8, v7

    neg-float v2, v5

    div-float/2addr v2, v7

    invoke-virtual {v10, v13, v12, v8, v2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 432
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v10, v13, v2, v8, v2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 433
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v14

    neg-float v8, v8

    div-float/2addr v8, v7

    add-float/2addr v8, v15

    add-float/2addr v8, v6

    invoke-virtual {v2, v8, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 434
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v11, v12, v11, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 435
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    add-float/2addr v5, v9

    sub-float/2addr v5, v14

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 436
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v12, v3, v3, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 437
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v5, v14

    invoke-virtual {v2, v5, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 438
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v12, v3, v11}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 439
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    sub-float/2addr v9, v14

    neg-float v3, v9

    invoke-virtual {v2, v12, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 440
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 441
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-direct {v0, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 442
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatPullingDownDrawable;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 446
    :cond_0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    invoke-direct {v0, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 447
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatPullingDownDrawable;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    iget v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawCheck(Landroid/graphics/Canvas;FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 391
    iget-boolean v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateCheck:Z

    if-nez v1, :cond_0

    return-void

    .line 394
    :cond_0
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v8

    if-gez v2, :cond_1

    const v2, 0x3d94f209

    add-float/2addr v1, v2

    .line 395
    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_1

    .line 397
    iput v8, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    .line 400
    :cond_1
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    move v3, v8

    goto :goto_0

    :cond_2
    div-float v3, v1, v2

    :goto_0
    cmpg-float v4, v1, v2

    const/4 v9, 0x0

    if-gez v4, :cond_3

    move v10, v9

    goto :goto_1

    :cond_3
    sub-float/2addr v1, v2

    div-float/2addr v1, v2

    move v10, v1

    .line 402
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 403
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/16 v1, 0x18

    .line 404
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/16 v1, 0x10

    .line 405
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    const/16 v1, 0x1a

    .line 406
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v4, v1

    const/16 v1, 0x16

    .line 407
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v11, v1

    const/16 v1, 0x20

    .line 408
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v12, v5

    .line 409
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v13, v1

    const/16 v1, 0x14

    .line 410
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v14, v1

    sub-float v1, v8, v3

    mul-float v5, v2, v1

    mul-float v6, v11, v3

    add-float/2addr v5, v6

    mul-float/2addr v1, v4

    mul-float/2addr v3, v12

    add-float v6, v1, v3

    .line 411
    iget-object v15, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    cmpl-float v1, v10, v9

    if-lez v1, :cond_4

    sub-float/2addr v8, v10

    mul-float v1, v11, v8

    mul-float/2addr v13, v10

    add-float v4, v1, v13

    mul-float/2addr v8, v12

    mul-float/2addr v14, v10

    add-float v5, v8, v14

    .line 413
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 415
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static getNextUnreadDialog(JIIZ[I)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 16

    move-wide/from16 v6, p0

    move/from16 v8, p2

    move/from16 v9, p3

    .line 576
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz p5, :cond_0

    .line 578
    aput v12, p5, v12

    .line 579
    aput v8, p5, v11

    const/4 v0, 0x2

    .line 580
    aput v9, p5, v0

    :cond_0
    const/4 v13, 0x0

    if-eqz v9, :cond_4

    .line 587
    invoke-static {v12, v9}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->sortingDialogFiltersById:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    goto :goto_0

    .line 589
    :cond_1
    invoke-static {v11, v9}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFiltersById:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    goto :goto_0

    .line 592
    :cond_2
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->dialogFiltersById:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    :goto_0
    if-nez v0, :cond_3

    return-object v13

    .line 598
    :cond_3
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->dialogs:Ljava/util/ArrayList;

    goto :goto_1

    .line 600
    :cond_4
    invoke-virtual {v10, v8}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    return-object v13

    .line 606
    :cond_5
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v14

    .line 608
    invoke-static/range {p0 .. p1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 609
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/fork/enums/DialogType;->getDialogType(Lorg/telegram/tgnet/TLObject;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v1

    goto :goto_2

    :cond_6
    neg-long v1, v6

    .line 611
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/fork/enums/DialogType;->getDialogType(Lorg/telegram/tgnet/TLObject;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v1

    :goto_2
    move v2, v12

    .line 614
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 615
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 618
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v13

    :goto_4
    move-object v15, v14

    .line 619
    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    if-nez v4, :cond_9

    if-eqz v5, :cond_c

    .line 621
    iget-boolean v13, v5, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v13, :cond_c

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isLive(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_9
    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v13, v13, v6

    if-eqz v13, :cond_c

    iget v13, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v13, :cond_c

    if-eqz v5, :cond_a

    move-object v13, v5

    goto :goto_6

    :cond_a
    move-object v13, v4

    :goto_6
    invoke-static {v13}, Lcom/iMe/fork/enums/DialogType;->getDialogType(Lorg/telegram/tgnet/TLObject;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v13

    if-ne v1, v13, :cond_c

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v10, v13, v14, v12}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v5, :cond_b

    return-object v3

    .line 627
    :cond_b
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    return-object v3

    :cond_c
    add-int/lit8 v2, v2, 0x1

    move-object v14, v15

    const/4 v13, 0x0

    goto :goto_3

    :cond_d
    move-object v15, v14

    if-eqz p4, :cond_13

    if-eqz v9, :cond_10

    move v13, v12

    .line 636
    :goto_7
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_10

    .line 637
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    if-eq v9, v3, :cond_f

    const/4 v4, 0x0

    move-wide/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v5, p5

    .line 639
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatPullingDownDrawable;->getNextUnreadDialog(JIIZ[I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p5, :cond_e

    .line 642
    aput v11, p5, v12

    :cond_e
    return-object v0

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 651
    :cond_10
    invoke-virtual {v15}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    move v9, v12

    .line 652
    :goto_8
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->dialogsByFolder:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_13

    .line 653
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->dialogsByFolder:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eq v8, v2, :cond_12

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v5, p5

    .line 655
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatPullingDownDrawable;->getNextUnreadDialog(JIIZ[I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v0

    if-eqz v0, :cond_12

    if-eqz p5, :cond_11

    .line 658
    aput v11, p5, v12

    :cond_11
    return-object v0

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 786
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 791
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private hasGradientService()Z
    .locals 1

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private synthetic lambda$runOnAnimationFinish$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 745
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    .line 746
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 747
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 748
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$runOnAnimationFinish$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 753
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    .line 754
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 755
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showReleaseState$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 461
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showReleaseState$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 473
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showReleaseState$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 482
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showReleaseState$3(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 491
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showReleaseState$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 521
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    .line 522
    iget-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showReleaseState(ZLandroid/view/View;)V
    .locals 9

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    new-array p1, v3, [F

    .line 459
    iget v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    aput v4, p1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 460
    new-instance v4, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 466
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    .line 467
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 469
    iput v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    new-array v0, v3, [F

    .line 471
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 472
    new-instance v4, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 477
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xb4

    .line 478
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v3, [F

    .line 480
    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 481
    new-instance v6, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x78

    .line 487
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v6, v3, [F

    .line 489
    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 490
    new-instance v7, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 495
    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x64

    .line 496
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 498
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    .line 499
    new-instance v7, Lorg/telegram/ui/ChatPullingDownDrawable$1;

    invoke-direct {v7, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$1;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 513
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v2

    aput-object v5, v4, v1

    aput-object v6, v4, v3

    .line 514
    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 517
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    new-array p1, v3, [F

    .line 519
    iget v3, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    aput v3, p1, v2

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 520
    new-instance v0, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 526
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xdc

    .line 527
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 528
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object p1, v0, v2

    .line 529
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        -0x41000000    # -0.5f
    .end array-data

    :array_2
    .array-data 4
        -0x41000000    # -0.5f
        0x0
    .end array-data
.end method


# virtual methods
.method public animationIsRunning()Z
    .locals 2

    .line 732
    iget v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 559
    iget-wide p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextDialogId:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 560
    iget p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextDialogId:J

    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz p1, :cond_0

    .line 562
    iget-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;FF)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 252
    iput-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->parentView:Landroid/view/View;

    .line 253
    iget-object v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setParent(Landroid/view/View;)V

    const/16 v3, 0x6e

    .line 255
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/16 v4, 0x8

    .line 256
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    return-void

    :cond_0
    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v5, v2

    mul-float v5, v5, p4

    goto :goto_0

    :cond_1
    move/from16 v5, p4

    .line 263
    :goto_0
    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v3

    const/4 v10, 0x0

    invoke-static {v6, v7, v10, v9}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 265
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    const-string v7, "chat_serviceText"

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 266
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    const-string v7, "chat_messagePanelHint"

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    const-string v9, "paintChatActionBackground"

    .line 269
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 270
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    .line 271
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getAlpha()I

    move-result v13

    .line 272
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    .line 273
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v7, v12

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 274
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v6

    int-to-float v7, v11

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 275
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    int-to-float v15, v13

    mul-float/2addr v15, v5

    float-to-int v15, v15

    invoke-virtual {v6, v15}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 276
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v6

    if-ltz v5, :cond_3

    .line 278
    iget v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastProgress:F

    cmpg-float v10, v10, v6

    if-ltz v10, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v10, v7

    goto :goto_3

    :cond_3
    :goto_2
    cmpg-float v10, v2, v6

    if-gez v10, :cond_5

    iget v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastProgress:F

    cmpl-float v10, v10, v6

    if-nez v10, :cond_5

    goto :goto_1

    .line 279
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move/from16 v18, v5

    .line 280
    iget-wide v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastHapticTime:J

    sub-long v4, v6, v4

    const-wide/16 v19, 0x64

    cmp-long v4, v4, v19

    if-lez v4, :cond_4

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 281
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 282
    iput-wide v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastHapticTime:J

    .line 284
    :cond_4
    iput v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastProgress:F

    goto :goto_4

    :cond_5
    move/from16 v18, v5

    move v10, v7

    :goto_4
    const/4 v4, 0x1

    if-nez v18, :cond_6

    .line 287
    iget-boolean v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    if-nez v5, :cond_6

    .line 288
    iput-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    .line 289
    iput-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateCheck:Z

    .line 290
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseState(ZLandroid/view/View;)V

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastShowingReleaseTime:J

    goto :goto_5

    :cond_6
    if-eqz v18, :cond_7

    .line 292
    iget-boolean v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    .line 293
    iput-boolean v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    .line 294
    invoke-direct {v0, v5, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseState(ZLandroid/view/View;)V

    .line 297
    :cond_7
    :goto_5
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    int-to-float v1, v1

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v1, v18

    .line 298
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v1, v6

    .line 300
    iget-boolean v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v6, :cond_8

    sub-float/2addr v3, v1

    .line 305
    :cond_8
    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    div-float v19, v3, v18

    const/16 v20, 0x10

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float v4, v19, v4

    move/from16 v21, v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v4, v13

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 306
    iget v13, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    mul-float/2addr v13, v2

    const/16 v16, 0x8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float v5, v19, v5

    invoke-static {v13, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v5, v5, v18

    const/high16 v6, 0x41800000    # 16.0f

    .line 307
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v6, v13, v6

    mul-float/2addr v5, v6

    const/16 v6, 0x38

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float/2addr v13, v6

    add-float/2addr v5, v13

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v13

    const/16 v22, 0x24

    if-ltz v6, :cond_a

    .line 309
    iget-boolean v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v19, v11

    move/from16 v23, v12

    const/4 v6, 0x2

    goto/16 :goto_8

    :cond_a
    :goto_6
    const/16 v6, 0x8

    .line 310
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    neg-int v6, v13

    int-to-float v6, v6

    iget v13, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v13, v17, v13

    mul-float/2addr v6, v13

    neg-float v13, v3

    move/from16 v23, v12

    const/16 v19, 0x38

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v13

    move/from16 v19, v11

    iget v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float/2addr v12, v11

    add-float/2addr v6, v12

    .line 311
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v12, v7, v4

    add-float/2addr v4, v7

    invoke-virtual {v11, v12, v13, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_b

    iget-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-nez v4, :cond_b

    .line 313
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float/2addr v4, v6

    .line 314
    invoke-virtual {v11, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 316
    :cond_b
    invoke-direct {v0, v8, v11}, Lorg/telegram/ui/ChatPullingDownDrawable;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    const/16 v4, 0x18

    .line 318
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v13

    const/16 v12, 0x8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v24, v12, v2

    mul-float v4, v4, v24

    add-float/2addr v6, v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v12, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float/2addr v4, v12

    sub-float/2addr v6, v4

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x1

    .line 320
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v11, v12, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 321
    invoke-virtual {v8, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 322
    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v11, 0x0

    cmpl-float v12, v4, v11

    if-lez v12, :cond_c

    .line 323
    iget-object v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v4, v12, v4

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_c
    const/16 v4, 0x18

    .line 325
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-direct {v0, v8, v7, v6, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->drawArrow(Landroid/graphics/Canvas;FFF)V

    .line 327
    iget-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v4, :cond_d

    const/16 v4, 0x8

    .line 328
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v11

    int-to-float v6, v11

    mul-float/2addr v6, v2

    sub-float/2addr v4, v6

    sub-float/2addr v4, v5

    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v6, v11, v6

    mul-float/2addr v4, v6

    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v13, v11

    iget v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float/2addr v13, v11

    add-float/2addr v4, v13

    add-float/2addr v4, v1

    .line 329
    iget-object v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v11, 0x1c

    .line 331
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v4

    invoke-virtual {v8, v2, v2, v7, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 332
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    invoke-direct {v0, v8, v7, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->drawCheck(Landroid/graphics/Canvas;FF)V

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_d
    const/4 v6, 0x2

    .line 335
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 338
    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_f

    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v11, 0x0

    cmpl-float v4, v4, v11

    if-lez v4, :cond_f

    .line 339
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 340
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v15}, Landroid/text/TextPaint;->setAlpha(I)V

    const/16 v4, 0x14

    .line 342
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    mul-float/2addr v4, v10

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float/2addr v10, v11

    sub-float/2addr v4, v10

    add-float/2addr v4, v1

    .line 343
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    iget v12, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameWidth:I

    sub-int v13, v11, v12

    int-to-float v13, v13

    div-float v13, v13, v18

    int-to-float v15, v11

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float v11, v11, v18

    sub-float/2addr v15, v11

    iget-object v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v4

    invoke-virtual {v10, v13, v4, v15, v11}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v11, 0x8

    .line 344
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v11, v12

    int-to-float v11, v11

    const/4 v12, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    neg-int v12, v13

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->inset(FF)V

    const/16 v11, 0xf

    .line 345
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v15

    invoke-virtual {v8, v10, v12, v13, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 346
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatPullingDownDrawable;->hasGradientService()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 347
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v12, v11, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 350
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 351
    iget v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    iget v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v10, v10, v18

    invoke-virtual {v8, v10, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 352
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 356
    :cond_f
    iget-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-nez v4, :cond_11

    const/4 v4, 0x0

    cmpl-float v10, v5, v4

    if-lez v10, :cond_11

    const/16 v4, 0x8

    .line 357
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    sub-float/2addr v4, v10

    sub-float/2addr v4, v5

    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v2, v10, v2

    mul-float/2addr v4, v2

    neg-float v2, v3

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    add-float v11, v4, v1

    .line 358
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    div-float v2, v5, v18

    float-to-int v3, v2

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 359
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sub-float v2, v7, v2

    invoke-virtual {v1, v2, v11, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 361
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    .line 362
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v4

    add-float/2addr v4, v1

    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v1

    iget-object v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v5

    add-float/2addr v5, v1

    const/16 v12, 0xff

    const/16 v13, 0x1f

    move-object/from16 v1, p1

    move v15, v6

    move v6, v12

    move v12, v7

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 363
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 364
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float v7, v12, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getCenterX()F

    move-result v3

    add-float/2addr v7, v3

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v11, v4

    const/16 v5, 0xe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-virtual {v8, v1, v1, v7, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 365
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v12, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v11, v1

    invoke-virtual {v8, v7, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 366
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateBackgroundRect()V

    .line 367
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 368
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v4, v4, v18

    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object v6, v6, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v6, v6, v18

    iget-object v7, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v4, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 372
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float v7, v12, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getCenterX()F

    move-result v4

    add-float/2addr v7, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v11, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v8, v1, v1, v7, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 373
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v12, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v11, v1

    invoke-virtual {v8, v7, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 374
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    .line 378
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_9

    :cond_11
    const/high16 v10, 0x3f800000    # 1.0f

    .line 382
    :goto_9
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    move/from16 v2, v19

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 383
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    move/from16 v2, v23

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 384
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    move/from16 v2, v21

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 385
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 386
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    return-void
.end method

.method public drawBottomPanel(Landroid/graphics/Canvas;III)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 674
    iget-boolean v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel:Z

    const v2, 0x3dda740e

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    iget v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    cmpl-float v4, v3, v11

    if-eqz v4, :cond_1

    add-float/2addr v3, v2

    .line 675
    iput v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    cmpl-float v1, v3, v11

    if-lez v1, :cond_0

    .line 677
    iput v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    goto :goto_0

    .line 679
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    .line 681
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    cmpl-float v3, v1, v10

    if-eqz v3, :cond_3

    sub-float/2addr v1, v2

    .line 682
    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    cmpg-float v1, v1, v10

    if-gez v1, :cond_2

    .line 684
    iput v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    goto :goto_0

    .line 686
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 690
    :cond_3
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    const-string v2, "chat_messagePanelHint"

    invoke-direct {v0, v2}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    const-string v1, "paintChatComposeBackground"

    .line 691
    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v12

    .line 692
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    .line 693
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v14

    int-to-float v1, v13

    .line 695
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    int-to-float v15, v8

    move/from16 v1, p4

    int-to-float v4, v1

    int-to-float v5, v9

    move-object/from16 v1, p1

    move v3, v15

    move-object v6, v12

    .line 696
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 698
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1:Landroid/text/StaticLayout;

    const/16 v2, 0xa

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    cmpg-float v4, v1, v11

    if-gez v4, :cond_4

    .line 699
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    int-to-float v5, v14

    sub-float v1, v11, v1

    mul-float/2addr v5, v1

    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    mul-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    sub-int v1, v9, v8

    .line 700
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v1, v15

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 702
    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    iget v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1Width:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 703
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 704
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 707
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2:Landroid/text/StaticLayout;

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    cmpl-float v4, v1, v10

    if-lez v4, :cond_5

    .line 708
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    int-to-float v5, v14

    mul-float/2addr v5, v1

    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    mul-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    sub-int v1, v9, v8

    .line 709
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v15, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    sub-float/2addr v11, v2

    mul-float/2addr v1, v11

    add-float/2addr v15, v1

    .line 710
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 711
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2Width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 712
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 716
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 717
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getChatId()J
    .locals 2

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0
.end method

.method public needDrawBottomPanel()Z
    .locals 2

    .line 728
    iget-boolean v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/ToolsController;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 547
    iget v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 551
    iget v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 553
    iput v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastProgress:F

    const-wide/16 v0, 0x0

    .line 554
    iput-wide v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastHapticTime:J

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 780
    iput v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    const/4 v0, 0x0

    .line 781
    iput-boolean v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateCheck:Z

    return-void
.end method

.method public runOnAnimationFinish(Ljava/lang/Runnable;)V
    .locals 6

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 740
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->onAnimationFinishRunnable:Ljava/lang/Runnable;

    .line 741
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 743
    iget v1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 744
    new-instance v1, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, p1, [F

    .line 751
    iget v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    aput v4, v1, v2

    const/4 v4, 0x0

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 752
    new-instance v4, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 758
    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/ChatPullingDownDrawable$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChatPullingDownDrawable$2;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v2

    aput-object v1, p1, v3

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 774
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 775
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setWidth(I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 185
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    if-eq v1, v2, :cond_8

    const/16 v2, 0x38

    .line 186
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    .line 187
    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    .line 189
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->SwipeToGoNextChannelEnd:I

    const-string v2, "SwipeToGoNextChannelEnd"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 191
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    .line 192
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    .line 193
    iget-object v2, v1, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 196
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 198
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    sget-object v4, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    if-eq v2, v4, :cond_4

    .line 199
    invoke-virtual {v2}, Lcom/iMe/fork/enums/DialogType;->getNoUnreadDialogsResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    move-object v5, v1

    .line 202
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameWidth:I

    .line 203
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    const/16 v12, 0x3c

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameWidth:I

    .line 204
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    iget v7, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameWidth:I

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameLayout:Landroid/text/StaticLayout;

    .line 209
    iget-boolean v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->drawFolderBackground:Z

    if-eqz v1, :cond_5

    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->dialogFolderId:I

    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->folderId:I

    if-eq v2, v4, :cond_5

    if-eqz v2, :cond_5

    .line 210
    sget v1, Lorg/telegram/messenger/R$string;->SwipeToGoNextArchive:I

    const-string v2, "SwipeToGoNextArchive"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 211
    sget v2, Lorg/telegram/messenger/R$string;->ReleaseToGoNextArchive:I

    const-string v4, "ReleaseToGoNextArchive"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 213
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    sget-object v5, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    if-eq v4, v5, :cond_7

    .line 214
    invoke-virtual {v4}, Lcom/iMe/fork/enums/DialogType;->getPullToGoToUnreadArchivedDialogsResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v2}, Lcom/iMe/fork/enums/DialogType;->getReleaseToGoToUnreadArchivedDialogsResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 219
    sget v1, Lorg/telegram/messenger/R$string;->SwipeToGoNextFolder:I

    const-string v2, "SwipeToGoNextFolder"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 220
    sget v2, Lorg/telegram/messenger/R$string;->ReleaseToGoNextFolder:I

    const-string v4, "ReleaseToGoNextFolder"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 222
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->SwipeToGoNextChannel:I

    const-string v2, "SwipeToGoNextChannel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 223
    sget v2, Lorg/telegram/messenger/R$string;->ReleaseToGoNextChannel:I

    const-string v4, "ReleaseToGoNextChannel"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    sget-object v5, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    if-eq v4, v5, :cond_7

    .line 226
    invoke-virtual {v4}, Lcom/iMe/fork/enums/DialogType;->getPullToGoToNextUnreadDialogResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v2}, Lcom/iMe/fork/enums/DialogType;->getReleaseToGoToNextUnreadDialogResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    :goto_2
    move-object v5, v1

    move-object v14, v2

    .line 231
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1Width:I

    .line 232
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1Width:I

    .line 233
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    iget v7, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1Width:I

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1:Landroid/text/StaticLayout;

    .line 236
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2Width:I

    .line 237
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2Width:I

    .line 238
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v15, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2Width:I

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v1

    move/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2:Landroid/text/StaticLayout;

    .line 241
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/16 v2, 0xc

    .line 242
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    add-float/2addr v2, v4

    .line 243
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v5, 0x28

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    sub-float/2addr v1, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    sub-float/2addr v2, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v1, v2, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 244
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 246
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/16 v2, 0x1c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setSize(II)V

    :cond_8
    return-void
.end method

.method public showBottomPanel(Z)V
    .locals 0

    .line 723
    iput-boolean p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel:Z

    .line 724
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateDialog()V
    .locals 12

    .line 150
    iget-wide v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialog:J

    iget v2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->folderId:I

    iget v3, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->filterId:I

    iget-object v5, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->params:[I

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatPullingDownDrawable;->getNextUnreadDialog(JIIZ[I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 152
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iput-wide v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextDialogId:J

    .line 153
    iget-object v6, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->params:[I

    aget v7, v6, v3

    if-ne v7, v2, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    iput-boolean v7, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->drawFolderBackground:Z

    .line 154
    aget v7, v6, v2

    iput v7, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->dialogFolderId:I

    const/4 v7, 0x2

    .line 155
    aget v6, v6, v7

    iput v6, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->dialogFilterId:I

    .line 156
    iput-boolean v3, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    .line 158
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    iget v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1

    .line 161
    :cond_1
    iget v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 167
    :goto_1
    new-instance v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v8}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 169
    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_2

    .line 170
    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_2

    .line 172
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 173
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_3
    invoke-static {v4, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    const/4 v11, 0x0

    const-string v7, "50_50"

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 174
    iget v2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v2, v4, v5, v3, v1}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)V

    .line 175
    iget-object v1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    goto :goto_4

    .line 177
    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 178
    iput-object v1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 179
    iput-boolean v3, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->drawFolderBackground:Z

    .line 180
    iput-boolean v2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    :goto_4
    return-void
.end method
