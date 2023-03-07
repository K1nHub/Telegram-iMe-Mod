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

.field private final currentDialogType:Lorg/fork/enums/DialogType;

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

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    .line 75
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->xRefPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    .line 87
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 110
    new-instance v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;-><init>(Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 111
    iput-object v2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->params:[I

    .line 119
    iput-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    .line 120
    iput p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    .line 121
    iput-wide p3, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialog:J

    .line 122
    iput p5, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->folderId:I

    .line 123
    iput p6, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->filterId:I

    .line 124
    iput-object p7, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 125
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p3, p4, p1}, Lorg/fork/enums/DialogType;->getDialogType(JLorg/telegram/messenger/MessagesController;)Lorg/fork/enums/DialogType;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lorg/fork/enums/DialogType;

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    const p2, 0x40333333    # 2.8f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput v0, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    .line 130
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setType(I)V

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput-boolean v1, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->addServiceGradient:Z

    const-string p2, "paintChatActionBackground"

    .line 132
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    iput-object p2, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    const/16 p1, 0xd

    .line 135
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    const/16 p2, 0xe

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->xRefPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->xRefPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateDialog()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatPullingDownDrawable;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFF)V
    .locals 7

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41c00000    # 24.0f

    .line 532
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    div-float/2addr p4, v0

    const/16 v0, 0x14

    .line 533
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p3, v0

    invoke-virtual {p1, p4, p4, p2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 p4, 0x41400000    # 12.0f

    .line 534
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

    .line 535
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

    .line 536
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

    .line 537
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

    .line 538
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 415
    iget-boolean v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->drawFolderBackground:Z

    const-string v4, "paintChatActionBackground"

    if-eqz v3, :cond_0

    .line 416
    iget-object v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v5

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float v5, v5, v6

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    const v7, 0x3cf5c28f    # 0.03f

    mul-float v6, v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v5, v7

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v9, v5

    .line 424
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    iget v11, v2, Landroid/graphics/RectF;->right:F

    iget v12, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v3

    add-float/2addr v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 425
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    neg-float v11, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11, v11, v11}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 426
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

    .line 427
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    neg-float v8, v8

    div-float v13, v8, v7

    mul-float v8, v8, v7

    neg-float v2, v5

    div-float/2addr v2, v7

    invoke-virtual {v10, v13, v12, v8, v2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 428
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v10, v13, v2, v8, v2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 429
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v14

    neg-float v8, v8

    div-float/2addr v8, v7

    add-float/2addr v8, v15

    add-float/2addr v8, v6

    invoke-virtual {v2, v8, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 430
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v11, v12, v11, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 431
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    add-float/2addr v5, v9

    sub-float/2addr v5, v14

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 432
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v12, v3, v3, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 433
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v5, v14

    invoke-virtual {v2, v5, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 434
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v12, v3, v11}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 435
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    sub-float/2addr v9, v14

    neg-float v3, v9

    invoke-virtual {v2, v12, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 436
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 437
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    invoke-direct {v0, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 438
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatPullingDownDrawable;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->path:Landroid/graphics/Path;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 442
    :cond_0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    invoke-direct {v0, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 443
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatPullingDownDrawable;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
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

    .line 387
    iget-boolean v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateCheck:Z

    if-nez v1, :cond_0

    return-void

    .line 390
    :cond_0
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v8

    if-gez v2, :cond_1

    const v2, 0x3d94f209

    add-float/2addr v1, v2

    .line 391
    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_1

    .line 393
    iput v8, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    .line 396
    :cond_1
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    div-float v3, v1, v2

    :goto_0
    const/4 v9, 0x0

    cmpg-float v4, v1, v2

    if-gez v4, :cond_3

    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    sub-float/2addr v1, v2

    div-float/2addr v1, v2

    move v10, v1

    .line 398
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 399
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/16 v1, 0x18

    .line 400
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

    .line 401
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    const/16 v1, 0x1a

    .line 402
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v4, v1

    const/16 v1, 0x16

    .line 403
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v11, v1

    const/16 v1, 0x20

    .line 404
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v12, v5

    .line 405
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v13, v1

    const/16 v1, 0x14

    .line 406
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v14, v1

    sub-float v1, v8, v3

    mul-float v5, v2, v1

    mul-float v6, v11, v3

    add-float/2addr v5, v6

    mul-float v1, v1, v4

    mul-float v3, v3, v12

    add-float v6, v1, v3

    .line 407
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

    mul-float v13, v13, v10

    add-float v4, v1, v13

    mul-float v8, v8, v12

    mul-float v14, v14, v10

    add-float v5, v8, v14

    .line 409
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 411
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static getNextUnreadDialog(JIIZ[I)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 17

    move-wide/from16 v6, p0

    move/from16 v8, p2

    move/from16 v9, p3

    .line 572
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz p5, :cond_0

    .line 574
    aput v12, p5, v12

    .line 575
    aput v8, p5, v11

    const/4 v0, 0x2

    .line 576
    aput v9, p5, v0

    :cond_0
    const/4 v13, 0x0

    if-eqz v9, :cond_4

    .line 583
    invoke-static {v12, v9}, Lorg/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->sortingDialogFiltersById:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    goto :goto_0

    .line 585
    :cond_1
    invoke-static {v11, v9}, Lorg/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFiltersById:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->dialogFiltersById:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    :goto_0
    if-nez v0, :cond_3

    return-object v13

    .line 594
    :cond_3
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->dialogs:Ljava/util/ArrayList;

    goto :goto_1

    .line 596
    :cond_4
    invoke-virtual {v10, v8}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    return-object v13

    .line 602
    :cond_5
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v14

    .line 604
    invoke-static/range {p0 .. p1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 605
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/fork/enums/DialogType;->getDialogType(Lorg/telegram/tgnet/TLObject;)Lorg/fork/enums/DialogType;

    move-result-object v1

    goto :goto_2

    :cond_6
    neg-long v1, v6

    .line 607
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/fork/enums/DialogType;->getDialogType(Lorg/telegram/tgnet/TLObject;)Lorg/fork/enums/DialogType;

    move-result-object v1

    :goto_2
    const/4 v2, 0x0

    .line 610
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 611
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 614
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

    .line 615
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

    .line 617
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

    cmp-long v16, v13, v6

    if-eqz v16, :cond_c

    iget v13, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v13, :cond_c

    if-eqz v5, :cond_a

    move-object v13, v5

    goto :goto_6

    :cond_a
    move-object v13, v4

    :goto_6
    invoke-static {v13}, Lorg/fork/enums/DialogType;->getDialogType(Lorg/telegram/tgnet/TLObject;)Lorg/fork/enums/DialogType;

    move-result-object v13

    if-ne v1, v13, :cond_c

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v10, v13, v14, v12}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v5, :cond_b

    return-object v3

    .line 623
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

    const/4 v13, 0x0

    .line 632
    :goto_7
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_10

    .line 633
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

    .line 635
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatPullingDownDrawable;->getNextUnreadDialog(JIIZ[I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p5, :cond_e

    .line 638
    aput v11, p5, v12

    :cond_e
    return-object v0

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 647
    :cond_10
    invoke-virtual {v15}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v9, 0x0

    .line 648
    :goto_8
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->dialogsByFolder:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_13

    .line 649
    iget-object v0, v10, Lorg/telegram/messenger/MessagesController;->dialogsByFolder:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eq v8, v2, :cond_12

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v5, p5

    .line 651
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatPullingDownDrawable;->getNextUnreadDialog(JIIZ[I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v0

    if-eqz v0, :cond_12

    if-eqz p5, :cond_11

    .line 654
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

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 782
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

    .line 786
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

    .line 787
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private hasGradientService()Z
    .locals 1

    .line 791
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

    .line 741
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    .line 742
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 743
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$runOnAnimationFinish$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 749
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    .line 750
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 751
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showReleaseState$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 457
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showReleaseState$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 469
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showReleaseState$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 478
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showReleaseState$3(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 487
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showReleaseState$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 517
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    .line 518
    iget-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showReleaseState(ZLandroid/view/View;)V
    .locals 9

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    new-array p1, v3, [F

    .line 455
    iget v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    aput v4, p1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 456
    new-instance v4, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 462
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    .line 463
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 465
    iput v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    new-array v0, v3, [F

    .line 467
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 468
    new-instance v4, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 473
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xb4

    .line 474
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v3, [F

    .line 476
    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 477
    new-instance v6, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 482
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x78

    .line 483
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v6, v3, [F

    .line 485
    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 486
    new-instance v7, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 491
    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x64

    .line 492
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    .line 495
    new-instance v7, Lorg/telegram/ui/ChatPullingDownDrawable$1;

    invoke-direct {v7, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$1;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 509
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v2

    aput-object v5, v4, v1

    aput-object v6, v4, v3

    .line 510
    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    new-array p1, v3, [F

    .line 515
    iget v3, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    aput v3, p1, v2

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 516
    new-instance v0, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 522
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xdc

    .line 523
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 524
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object p1, v0, v2

    .line 525
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 526
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

    .line 728
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

    .line 555
    iget-wide p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextDialogId:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 556
    iget p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextDialogId:J

    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz p1, :cond_0

    .line 558
    iget-object p2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 559
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 560
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

    .line 248
    iput-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->parentView:Landroid/view/View;

    .line 249
    iget-object v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setParent(Landroid/view/View;)V

    const/16 v3, 0x6e

    .line 251
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    const/16 v4, 0x8

    .line 252
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

    mul-float v5, v5, v2

    mul-float v5, v5, p4

    goto :goto_0

    :cond_1
    move/from16 v5, p4

    .line 259
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

    .line 261
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    const-string v7, "chat_serviceText"

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 262
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    const-string v7, "chat_messagePanelHint"

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    const-string v9, "paintChatActionBackground"

    .line 265
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 266
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    .line 267
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getAlpha()I

    move-result v13

    .line 268
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    .line 269
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v7, v12

    mul-float v7, v7, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 270
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v6

    int-to-float v7, v11

    mul-float v7, v7, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 271
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    int-to-float v15, v13

    mul-float v15, v15, v5

    float-to-int v15, v15

    invoke-virtual {v6, v15}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 272
    iget-object v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v16, v2, v5

    if-ltz v16, :cond_3

    .line 274
    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastProgress:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v18, v11

    goto :goto_3

    :cond_3
    :goto_2
    cmpg-float v4, v2, v5

    if-gez v4, :cond_5

    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastProgress:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    goto :goto_1

    .line 275
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 276
    iget-wide v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastHapticTime:J

    sub-long v4, v10, v5

    const-wide/16 v20, 0x64

    cmp-long v6, v4, v20

    if-lez v6, :cond_4

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 277
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 278
    iput-wide v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastHapticTime:J

    .line 280
    :cond_4
    iput v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastProgress:F

    goto :goto_4

    :cond_5
    move/from16 v18, v11

    :goto_4
    const/4 v4, 0x1

    if-nez v16, :cond_6

    .line 283
    iget-boolean v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    if-nez v5, :cond_6

    .line 284
    iput-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    .line 285
    iput-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateCheck:Z

    .line 286
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseState(ZLandroid/view/View;)V

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastShowingReleaseTime:J

    goto :goto_5

    :cond_6
    if-eqz v16, :cond_7

    .line 288
    iget-boolean v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    .line 289
    iput-boolean v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    .line 290
    invoke-direct {v0, v5, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseState(ZLandroid/view/View;)V

    .line 293
    :cond_7
    :goto_5
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    int-to-float v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v1, v10

    .line 294
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float v1, v1, v6

    .line 296
    iget-boolean v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v6, :cond_8

    sub-float/2addr v3, v1

    .line 301
    :cond_8
    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    div-float v16, v3, v10

    const/16 v20, 0x10

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    sub-float v4, v16, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v4, v10

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 302
    iget v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    mul-float v10, v10, v2

    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    sub-float v5, v16, v5

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x41800000    # 16.0f

    .line 303
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v6, v10, v6

    mul-float v5, v5, v6

    const/16 v6, 0x38

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float v10, v10, v6

    add-float/2addr v5, v10

    const/16 v22, 0x24

    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v19

    if-ltz v6, :cond_a

    .line 305
    iget-boolean v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v16, v12

    move/from16 v23, v13

    const/4 v6, 0x2

    goto/16 :goto_8

    :cond_a
    :goto_6
    const/16 v6, 0x8

    .line 306
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v6, v10

    int-to-float v6, v6

    iget v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    sub-float v10, v19, v10

    mul-float v6, v6, v10

    neg-float v10, v3

    move/from16 v23, v13

    const/16 v16, 0x38

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v10

    move/from16 v16, v12

    iget v12, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float v13, v13, v12

    add-float/2addr v6, v13

    .line 307
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v13, v11, v4

    add-float/2addr v4, v11

    invoke-virtual {v12, v13, v10, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 308
    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_b

    iget-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-nez v4, :cond_b

    .line 309
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float v4, v4, v6

    .line 310
    invoke-virtual {v12, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 312
    :cond_b
    invoke-direct {v0, v8, v12}, Lorg/telegram/ui/ChatPullingDownDrawable;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    const/16 v4, 0x18

    .line 314
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v10

    const/16 v13, 0x8

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v24, v13, v2

    mul-float v4, v4, v24

    add-float/2addr v6, v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v13, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float v4, v4, v13

    sub-float/2addr v6, v4

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x1

    .line 316
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v12, v13, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 317
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 318
    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v12, 0x0

    cmpl-float v13, v4, v12

    if-lez v13, :cond_c

    .line 319
    iget-object v12, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v4, v13, v4

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float v4, v4, v13

    float-to-int v4, v4

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_c
    const/16 v4, 0x18

    .line 321
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    invoke-direct {v0, v8, v11, v6, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->drawArrow(Landroid/graphics/Canvas;FFF)V

    .line 323
    iget-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v4, :cond_d

    const/16 v4, 0x8

    .line 324
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v12

    int-to-float v6, v12

    mul-float v6, v6, v2

    sub-float/2addr v4, v6

    sub-float/2addr v4, v5

    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v6, v12, v6

    mul-float v4, v4, v6

    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v10, v12

    iget v12, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float v10, v10, v12

    add-float/2addr v4, v10

    add-float/2addr v4, v1

    .line 325
    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v10, 0x1c

    .line 327
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v4

    invoke-virtual {v8, v2, v2, v11, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 328
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v4, v10

    invoke-direct {v0, v8, v11, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->drawCheck(Landroid/graphics/Canvas;FF)V

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_d
    const/4 v6, 0x2

    .line 331
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 334
    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_f

    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_f

    .line 335
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 336
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v15}, Landroid/text/TextPaint;->setAlpha(I)V

    const/16 v4, 0x14

    .line 338
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v7, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v7, v10, v7

    mul-float v4, v4, v7

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float v7, v7, v10

    sub-float/2addr v4, v7

    add-float/2addr v4, v1

    .line 339
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    iget v12, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameWidth:I

    sub-int v13, v10, v12

    int-to-float v13, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v13, v15

    int-to-float v6, v10

    sub-int/2addr v10, v12

    int-to-float v10, v10

    div-float/2addr v10, v15

    sub-float/2addr v6, v10

    iget-object v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    invoke-virtual {v7, v13, v4, v6, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v6, 0x8

    .line 340
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v6, v10

    int-to-float v6, v6

    const/4 v10, 0x4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v10, v12

    int-to-float v10, v10

    invoke-virtual {v7, v6, v10}, Landroid/graphics/RectF;->inset(FF)V

    const/16 v6, 0xf

    .line 341
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v8, v7, v10, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 342
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatPullingDownDrawable;->hasGradientService()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 343
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v10, v6, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 346
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 347
    iget v6, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    iget v7, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v8, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 348
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 352
    :cond_f
    iget-boolean v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-nez v4, :cond_11

    const/4 v4, 0x0

    cmpl-float v6, v5, v4

    if-lez v6, :cond_11

    const/16 v4, 0x8

    .line 353
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    sub-float/2addr v4, v6

    sub-float/2addr v4, v5

    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v2, v6, v2

    mul-float v4, v4, v2

    neg-float v2, v3

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    mul-float v2, v2, v3

    add-float/2addr v4, v2

    add-float v10, v4, v1

    .line 354
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v5, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 355
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sub-float v2, v11, v3

    invoke-virtual {v1, v2, v10, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 357
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    .line 358
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

    const/16 v7, 0xff

    const/16 v12, 0x1f

    move-object/from16 v1, p1

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x2

    move v6, v7

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 359
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 360
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v11

    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getCenterX()F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v10, v5

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v8, v1, v1, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 361
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v10, v3

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 362
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateBackgroundRect()V

    .line 363
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 364
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget-object v7, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object v7, v7, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v5

    iget-object v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v3, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 368
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v11

    iget-object v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getCenterX()F

    move-result v5

    add-float/2addr v3, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v10, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v8, v1, v1, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 369
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v11, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v10, v1

    invoke-virtual {v8, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 370
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    :cond_10
    const/high16 v13, 0x3f800000    # 1.0f

    .line 374
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_9

    :cond_11
    const/high16 v13, 0x3f800000    # 1.0f

    .line 378
    :goto_9
    invoke-direct {v0, v9}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    move/from16 v2, v18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    move/from16 v2, v23

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 381
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 382
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    return-void
.end method

.method public drawBottomPanel(Landroid/graphics/Canvas;III)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 670
    iget-boolean v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel:Z

    const v2, 0x3dda740e

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    iget v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    cmpl-float v4, v3, v11

    if-eqz v4, :cond_1

    add-float/2addr v3, v2

    .line 671
    iput v3, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    cmpl-float v1, v3, v11

    if-lez v1, :cond_0

    .line 673
    iput v11, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    goto :goto_0

    .line 675
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    .line 677
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    cmpl-float v3, v1, v10

    if-eqz v3, :cond_3

    sub-float/2addr v1, v2

    .line 678
    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    cmpg-float v1, v1, v10

    if-gez v1, :cond_2

    .line 680
    iput v10, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    goto :goto_0

    .line 682
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 686
    :cond_3
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    const-string v2, "chat_messagePanelHint"

    invoke-direct {v0, v2}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    const-string v1, "paintChatComposeBackground"

    .line 687
    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v12

    .line 688
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    .line 689
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v14

    int-to-float v1, v13

    .line 691
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    mul-float v1, v1, v2

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

    .line 692
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 694
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1:Landroid/text/StaticLayout;

    const/16 v2, 0xa

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    cmpg-float v4, v1, v11

    if-gez v4, :cond_4

    .line 695
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    int-to-float v5, v14

    sub-float v1, v11, v1

    mul-float v5, v5, v1

    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    mul-float v5, v5, v1

    float-to-int v1, v5

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    sub-int v1, v9, v8

    .line 696
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

    mul-float v4, v4, v5

    sub-float/2addr v1, v4

    .line 697
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 698
    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    iget v5, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1Width:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 699
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 703
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2:Landroid/text/StaticLayout;

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    cmpl-float v4, v1, v10

    if-lez v4, :cond_5

    .line 704
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    int-to-float v5, v14

    mul-float v5, v5, v1

    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    mul-float v5, v5, v1

    float-to-int v1, v5

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    sub-int v1, v9, v8

    .line 705
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

    mul-float v1, v1, v11

    add-float/2addr v15, v1

    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 707
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2Width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v7, v1, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 708
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 712
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 713
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getChatId()J
    .locals 2

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0
.end method

.method public needDrawBottomPanel()Z
    .locals 2

    .line 724
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

    invoke-static {v0}, Lorg/fork/controller/ToolsController;->getInstance(I)Lorg/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

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

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 543
    iget v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 547
    iget v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 549
    iput v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastProgress:F

    const-wide/16 v0, 0x0

    .line 550
    iput-wide v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastHapticTime:J

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 776
    iput v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->checkProgress:F

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateCheck:Z

    return-void
.end method

.method public runOnAnimationFinish(Ljava/lang/Runnable;)V
    .locals 6

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 736
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->onAnimationFinishRunnable:Ljava/lang/Runnable;

    .line 737
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 739
    iget v1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->swipeToReleaseProgress:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 740
    new-instance v1, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, p1, [F

    .line 747
    iget v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->bounceProgress:F

    aput v4, v1, v2

    const/4 v4, 0x0

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 748
    new-instance v4, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatPullingDownDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 754
    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/ChatPullingDownDrawable$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChatPullingDownDrawable$2;-><init>(Lorg/telegram/ui/ChatPullingDownDrawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 769
    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v2

    aput-object v1, p1, v3

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 770
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 771
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 772
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showReleaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setWidth(I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 181
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    if-eq v1, v2, :cond_8

    const/16 v2, 0x38

    .line 182
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    .line 183
    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    .line 185
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->SwipeToGoNextChannelEnd:I

    const-string v2, "SwipeToGoNextChannelEnd"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 187
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    .line 188
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    .line 189
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

    .line 190
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

    .line 192
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 194
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lorg/fork/enums/DialogType;

    sget-object v4, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    if-eq v2, v4, :cond_4

    .line 195
    invoke-virtual {v2}, Lorg/fork/enums/DialogType;->getNoUnreadDialogsResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    move-object v5, v1

    .line 198
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameWidth:I

    .line 199
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    const/16 v12, 0x3c

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->chatNameWidth:I

    .line 200
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

    .line 205
    iget-boolean v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->drawFolderBackground:Z

    if-eqz v1, :cond_5

    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->dialogFolderId:I

    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->folderId:I

    if-eq v2, v4, :cond_5

    if-eqz v2, :cond_5

    .line 206
    sget v1, Lorg/telegram/messenger/R$string;->SwipeToGoNextArchive:I

    const-string v2, "SwipeToGoNextArchive"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 207
    sget v2, Lorg/telegram/messenger/R$string;->ReleaseToGoNextArchive:I

    const-string v4, "ReleaseToGoNextArchive"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 209
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lorg/fork/enums/DialogType;

    sget-object v5, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    if-eq v4, v5, :cond_7

    .line 210
    invoke-virtual {v4}, Lorg/fork/enums/DialogType;->getPullToGoToUnreadArchivedDialogsResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lorg/fork/enums/DialogType;

    invoke-virtual {v2}, Lorg/fork/enums/DialogType;->getReleaseToGoToUnreadArchivedDialogsResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 215
    sget v1, Lorg/telegram/messenger/R$string;->SwipeToGoNextFolder:I

    const-string v2, "SwipeToGoNextFolder"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 216
    sget v2, Lorg/telegram/messenger/R$string;->ReleaseToGoNextFolder:I

    const-string v4, "ReleaseToGoNextFolder"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 218
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->SwipeToGoNextChannel:I

    const-string v2, "SwipeToGoNextChannel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 219
    sget v2, Lorg/telegram/messenger/R$string;->ReleaseToGoNextChannel:I

    const-string v4, "ReleaseToGoNextChannel"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 221
    iget-object v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lorg/fork/enums/DialogType;

    sget-object v5, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    if-eq v4, v5, :cond_7

    .line 222
    invoke-virtual {v4}, Lorg/fork/enums/DialogType;->getPullToGoToNextUnreadDialogResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    iget-object v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentDialogType:Lorg/fork/enums/DialogType;

    invoke-virtual {v2}, Lorg/fork/enums/DialogType;->getReleaseToGoToNextUnreadDialogResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    :goto_2
    move-object v5, v1

    move-object v14, v2

    .line 227
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1Width:I

    .line 228
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout1Width:I

    .line 229
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

    .line 232
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2Width:I

    .line 233
    iget v2, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->layout2Width:I

    .line 234
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

    .line 237
    iget v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/16 v2, 0xc

    .line 238
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->circleRadius:F

    add-float/2addr v2, v4

    .line 239
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

    .line 240
    iget-object v1, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 242
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

    .line 719
    iput-boolean p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel:Z

    .line 720
    iget-object p1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateDialog()V
    .locals 12

    .line 146
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

    .line 148
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iput-wide v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextDialogId:J

    .line 149
    iget-object v6, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->params:[I

    aget v7, v6, v3

    if-ne v7, v2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->drawFolderBackground:Z

    .line 150
    aget v7, v6, v2

    iput v7, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->dialogFolderId:I

    const/4 v7, 0x2

    .line 151
    aget v6, v6, v7

    iput v6, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->dialogFilterId:I

    .line 152
    iput-boolean v3, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    .line 154
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
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

    .line 157
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

    .line 163
    :goto_1
    new-instance v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v8}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_2

    .line 166
    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_2

    .line 168
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 169
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

    .line 170
    iget v2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v2, v4, v5, v3, v1}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)V

    .line 171
    iget-object v1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    goto :goto_4

    .line 173
    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 174
    iput-object v1, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->nextChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 175
    iput-boolean v3, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->drawFolderBackground:Z

    .line 176
    iput-boolean v2, p0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    :goto_4
    return-void
.end method
