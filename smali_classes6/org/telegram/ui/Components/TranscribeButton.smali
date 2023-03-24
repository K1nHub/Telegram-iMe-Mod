.class public Lorg/telegram/ui/Components/TranscribeButton;
.super Ljava/lang/Object;
.source "TranscribeButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;,
        Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsSpan;
    }
.end annotation


# static fields
.field private static final pressedState:[I

.field private static transcribeOperationsByDialogPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private static transcribeOperationsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private static videoTranscriptionsOpen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:F

.field private backgroundBack:F

.field private backgroundColor:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private bounds:Landroid/graphics/Rect;

.field private boundsPath:Landroid/graphics/Path;

.field private clickedToOpen:Z

.field private color:I

.field private diameter:I

.field private iconColor:I

.field private inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private inIconDrawableAlpha:I

.field private final interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field private isForkTranscribe:Z

.field private isOpen:Z

.field private loading:Z

.field private loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field private outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private outIconDrawableAlpha:I

.field private parent:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private premium:Z

.field private pressBounds:Landroid/graphics/Rect;

.field private pressed:Z

.field private progressClipPath:Landroid/graphics/Path;

.field private radius:I

.field private rippleColor:I

.field private seekBar:Lorg/telegram/ui/Components/SeekBarWaveform;

.field private segments:[F

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private shouldBeOpen:Z

.field private start:J

.field private strokePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$12LT7_oxnyon_N9x7oShWqI5zmE(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/TranscribeButton;->lambda$showOffTranscribe$8(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F2uj462SuJREH7QNZVkwEGmlskg(Lorg/telegram/ui/Components/TranscribeButton;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TranscribeButton;->lambda$onTap$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$NMvfnCtG0CciLXI6TwbthcE07-Y(Lorg/telegram/ui/Components/TranscribeButton;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TranscribeButton;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$VVEcGWTGf7jSWl1sRcpwrFiX22g(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranscribeButton;->lambda$transcribePressed$4(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a5NOErz9gJxpPv2xd0cuvEsguX8(ILorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/TranscribeButton;->lambda$transcribePressed$3(ILorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iAOJi3WUwcTErp3VgjHEY-fh3lQ(ILorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/TranscribeButton;->lambda$transcribePressed$6(ILorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbUzo-KtjzfZiMijeVX88XAF4VQ(Lorg/telegram/messenger/MessageObject;JIJILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/Components/TranscribeButton;->lambda$transcribePressed$5(Lorg/telegram/messenger/MessageObject;JIJILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBBLilaw1o8NbLDt-xATkg5HtCI(Lorg/telegram/ui/Components/TranscribeButton;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TranscribeButton;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$sgtzD9SbvShVPIhZUYeLudZY5lE(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TranscribeButton;->lambda$finishTranscription$7(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 71
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/TranscribeButton;->pressedState:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/SeekBarWaveform;)V
    .locals 7

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->clickedToOpen:Z

    .line 188
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->pressed:Z

    .line 297
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->start:J

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 100
    iput-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->seekBar:Lorg/telegram/ui/Components/SeekBarWaveform;

    .line 101
    new-instance p2, Landroid/graphics/Rect;

    const/16 v1, 0x1e

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {p2, v0, v0, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    .line 102
    new-instance p2, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-direct {p2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->pressBounds:Landroid/graphics/Rect;

    const/16 v1, 0x8

    .line 103
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 105
    new-instance p2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v1, Lorg/telegram/messenger/R$raw;->transcribe_out:I

    const/16 v2, 0x1a

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const-string v5, "transcribe_out"

    invoke-direct {p2, v1, v5, v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 106
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 107
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 108
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/TranscribeButton;)V

    const/16 v3, 0x13

    invoke-virtual {p2, v1, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    .line 114
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 116
    new-instance p2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/messenger/R$raw;->transcribe_in:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v6, "transcribe_in"

    invoke-direct {p2, v4, v6, v5, v2}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 117
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 118
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 119
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 120
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/TranscribeButton;)V

    invoke-virtual {p2, v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    .line 126
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 128
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->isOpen:Z

    .line 129
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->shouldBeOpen:Z

    .line 130
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->premium:Z

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isAllowForkTranscribe()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 133
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->isForkTranscribe:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->premium:Z

    .line 137
    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v0, 0xfa

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {p2, p1, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method private addCorner(Landroid/graphics/Path;IIIIFF)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 485
    invoke-static {p6, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p6

    .line 486
    invoke-static {p7, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p7

    sub-float/2addr p7, p6

    cmpg-float v0, p7, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 491
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-int v1, p2, p4

    int-to-float v1, v1

    int-to-float v2, p3

    int-to-float p2, p2

    add-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p5, v0, :cond_2

    .line 493
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-int v1, p2, p4

    int-to-float v1, v1

    sub-int p4, p3, p4

    int-to-float p4, p4

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v1, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p5, v0, :cond_3

    .line 495
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v1, p2

    sub-int v2, p3, p4

    int-to-float v2, v2

    add-int/2addr p2, p4

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p5, v0, :cond_4

    .line 497
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 499
    :cond_4
    :goto_0
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    mul-int/lit8 p5, p5, 0x5a

    add-int/lit16 p5, p5, -0xb4

    int-to-float p3, p5

    const/high16 p4, 0x42b40000    # 90.0f

    mul-float/2addr p6, p4

    add-float/2addr p3, p6

    mul-float/2addr p7, p4

    invoke-virtual {p1, p2, p3, p7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private addCorner(Landroid/graphics/Path;IIIIFFFF)V
    .locals 19

    move/from16 v0, p7

    move/from16 v1, p9

    cmpl-float v2, p6, v0

    if-lez v2, :cond_0

    sub-float v2, p6, p8

    sub-float v1, v1, p8

    div-float v9, v2, v1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 469
    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/TranscribeButton;->addCorner(Landroid/graphics/Path;IIIIFF)V

    const/16 v17, 0x0

    sub-float v0, v0, p8

    div-float v18, v0, v1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    .line 470
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/Components/TranscribeButton;->addCorner(Landroid/graphics/Path;IIIIFF)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    sub-float v3, p6, p8

    .line 472
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v3, v1, p8

    div-float v10, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v0, p8

    div-float v11, v0, v3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Components/TranscribeButton;->addCorner(Landroid/graphics/Path;IIIIFF)V

    :goto_0
    return-void
.end method

.method private addLine(Landroid/graphics/Path;IIIIFF)V
    .locals 2

    if-ne p2, p4, :cond_0

    if-ne p3, p5, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 444
    invoke-static {p6, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p6

    .line 445
    invoke-static {p7, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p7

    sub-float v1, p7, p6

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    return-void

    .line 450
    :cond_1
    invoke-static {p2, p4, p6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 451
    invoke-static {p3, p5, p6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p6

    int-to-float p6, p6

    .line 449
    invoke-virtual {p1, v0, p6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 454
    invoke-static {p2, p4, p7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p2

    int-to-float p2, p2

    .line 455
    invoke-static {p3, p5, p7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p3

    int-to-float p3, p3

    .line 453
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private addLine(Landroid/graphics/Path;IIIIFFFF)V
    .locals 14

    move/from16 v0, p7

    move/from16 v9, p2

    move/from16 v10, p4

    move/from16 v1, p9

    move/from16 v11, p3

    move/from16 v12, p5

    if-ne v9, v10, :cond_0

    if-ne v11, v12, :cond_0

    return-void

    :cond_0
    cmpl-float v2, p6, v0

    if-lez v2, :cond_1

    sub-float v2, p6, p8

    sub-float v13, v1, p8

    div-float v7, v2, v13

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 425
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/TranscribeButton;->addLine(Landroid/graphics/Path;IIIIFF)V

    const/4 v6, 0x0

    sub-float v0, v0, p8

    div-float v7, v0, v13

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 426
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TranscribeButton;->addLine(Landroid/graphics/Path;IIIIFF)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    sub-float v3, p6, p8

    .line 428
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v3, v1, p8

    div-float v6, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v0, p8

    div-float v7, v0, v3

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TranscribeButton;->addLine(Landroid/graphics/Path;IIIIFF)V

    :goto_0
    return-void
.end method

.method public static finishTranscription(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/TranscribeButton;->finishTranscription(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static finishTranscription(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;Z)Z
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 694
    :try_start_0
    sget-object v2, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsById:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsById:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    :cond_0
    if-nez p0, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, p0

    :goto_0
    if-eqz v3, :cond_6

    .line 700
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_2

    goto :goto_2

    .line 704
    :cond_2
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsByDialogPosition:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 705
    invoke-static {v3}, Lorg/telegram/ui/Components/TranscribeButton;->reqInfoHash(Lorg/telegram/messenger/MessageObject;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :cond_3
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v8, 0x1

    iput-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    if-eqz p4, :cond_4

    if-nez p3, :cond_4

    move v7, v8

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    if-nez v7, :cond_5

    .line 711
    iget v0, v3, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    iget-object v14, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v13, p3

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/messenger/MessagesStorage;->updateMessageVoiceTranscription(JILjava/lang/String;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 712
    :cond_5
    new-instance v0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda4;

    move-object v2, v0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    :cond_6
    :goto_2
    return v1
.end method

.method private getSegments(J)[F
    .locals 11

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->segments:[F

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 400
    iput-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->segments:[F

    :cond_0
    const-wide/16 v0, 0x1518

    .line 402
    rem-long/2addr p1, v0

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->segments:[F

    const-wide/16 v1, 0x5f0

    mul-long/2addr v1, p1

    long-to-float v1, v1

    const v2, 0x45a8c000    # 5400.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v2, v1, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    .line 404
    aput v1, v0, v2

    move v0, v3

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 406
    iget-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->segments:[F

    aget v4, v1, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/TranscribeButton;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    mul-int/lit16 v6, v0, 0x546

    int-to-long v7, v6

    sub-long v7, p1, v7

    long-to-float v7, v7

    const v8, 0x4426c000    # 667.0f

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v5

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    aput v4, v1, v2

    .line 407
    iget-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->segments:[F

    aget v4, v1, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/TranscribeButton;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    add-int/lit16 v6, v6, 0x29b

    int-to-long v9, v6

    sub-long v9, p1, v9

    long-to-float v6, v9

    div-float/2addr v6, v8

    invoke-virtual {v5, v6}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->segments:[F

    return-object p1
.end method

.method public static isTranscribing(Lorg/telegram/messenger/MessageObject;)Z
    .locals 3

    .line 604
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsByDialogPosition:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsByDialogPosition:Ljava/util/HashMap;

    invoke-static {p0}, Lorg/telegram/ui/Components/TranscribeButton;->reqInfoHash(Lorg/telegram/messenger/MessageObject;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsById:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p0, :cond_2

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    .line 606
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoTranscriptionOpen(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 594
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->videoTranscriptionsOpen:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->videoTranscriptionsOpen:Ljava/util/ArrayList;

    invoke-static {p0}, Lorg/telegram/ui/Components/TranscribeButton;->reqInfoHash(Lorg/telegram/messenger/MessageObject;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$finishTranscription$7(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;Z)V
    .locals 4

    .line 713
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->voiceTranscriptionUpdate:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const/4 p0, 0x2

    aput-object p3, v2, p0

    if-eqz p4, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const/4 p1, 0x3

    aput-object p0, v2, p1

    const/4 p0, 0x4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->shouldBeOpen:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->isOpen:Z

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->shouldBeOpen:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->isOpen:Z

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    return-void
.end method

.method private synthetic lambda$onTap$2()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TranscribeButton;->onTap(Z)V

    return-void
.end method

.method private static synthetic lambda$showOffTranscribe$8(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 733
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->voiceTranscriptionUpdate:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$transcribePressed$3(ILorg/telegram/messenger/MessageObject;)V
    .locals 3

    .line 625
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->voiceTranscriptionUpdate:I

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, p1

    const/4 p1, 0x2

    aput-object v2, v1, p1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$transcribePressed$4(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;)V
    .locals 0

    .line 675
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranscribeButton;->finishTranscription(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;)Z

    return-void
.end method

.method private static synthetic lambda$transcribePressed$5(Lorg/telegram/messenger/MessageObject;JIJILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    .line 646
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 647
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;

    .line 648
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->text:Ljava/lang/String;

    .line 649
    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->transcription_id:J

    .line 650
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->pending:Z

    xor-int/2addr v1, v6

    .line 651
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 654
    :cond_1
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsById:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 655
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsById:Ljava/util/HashMap;

    .line 657
    :cond_2
    sget-object v2, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsById:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    move-wide v13, v7

    goto :goto_1

    :cond_3
    move-wide v13, v4

    move v1, v6

    .line 665
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v15, v7, p1

    .line 666
    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/Components/TranscribeButton;->openVideoTranscription(Lorg/telegram/messenger/MessageObject;)V

    .line 667
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    .line 668
    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    .line 669
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_4

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transcription request sent, received final="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " text="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 673
    :cond_4
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget-object v12, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move-object v11, v3

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/MessagesStorage;->updateMessageVoiceTranscription(JILjava/lang/String;Lorg/telegram/tgnet/TLRPC$Message;)V

    if-eqz v1, :cond_5

    .line 675
    new-instance v1, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, v13, v14, v3}, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MessageObject;JLjava/lang/String;)V

    const-wide/16 v2, 0x15e

    sub-long/2addr v2, v15

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$transcribePressed$6(ILorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 686
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->voiceTranscriptionUpdate:I

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, p1

    const/4 p1, 0x2

    aput-object v2, v1, p1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x3

    aput-object p1, v1, v3

    const/4 p1, 0x4

    aput-object v2, v1, p1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static openVideoTranscription(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 584
    invoke-static {p0}, Lorg/telegram/ui/Components/TranscribeButton;->isVideoTranscriptionOpen(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->videoTranscriptionsOpen:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/TranscribeButton;->videoTranscriptionsOpen:Ljava/util/ArrayList;

    .line 590
    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->videoTranscriptionsOpen:Ljava/util/ArrayList;

    invoke-static {p0}, Lorg/telegram/ui/Components/TranscribeButton;->reqInfoHash(Lorg/telegram/messenger/MessageObject;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static reqInfoHash(Lorg/telegram/messenger/MessageObject;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 576
    iget v2, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static resetVideoTranscriptionsOpen()V
    .locals 1

    .line 598
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->videoTranscriptionsOpen:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public static showOffTranscribe(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x1

    .line 721
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/TranscribeButton;->showOffTranscribe(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method public static showOffTranscribe(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 5

    if-eqz p0, :cond_1

    .line 725
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 729
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    .line 730
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->updateMessageVoiceTranscriptionOpen(JILorg/telegram/tgnet/TLRPC$Message;)V

    if-eqz p1, :cond_1

    .line 732
    new-instance p1, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static transcribePressed(Lorg/telegram/messenger/MessageObject;ZLorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 9

    if-eqz p0, :cond_7

    .line 611
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 614
    :cond_0
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    .line 615
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 616
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    .line 617
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v6

    .line 618
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-eqz p1, :cond_5

    .line 620
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    if-eqz p1, :cond_1

    .line 621
    invoke-static {p0}, Lorg/telegram/ui/Components/TranscribeButton;->openVideoTranscription(Lorg/telegram/messenger/MessageObject;)V

    .line 622
    iget-object p1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    .line 623
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v6, v7, v8, p2}, Lorg/telegram/messenger/MessagesStorage;->updateMessageVoiceTranscriptionOpen(JILorg/telegram/tgnet/TLRPC$Message;)V

    .line 624
    new-instance p1, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, v5, p0}, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda0;-><init>(ILorg/telegram/messenger/MessageObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 628
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 629
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending Transcription request, msg_id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dialog_id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 631
    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribeAudio;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribeAudio;-><init>()V

    .line 632
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribeAudio;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 633
    iput v8, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribeAudio;->msg_id:I

    .line 634
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsByDialogPosition:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsByDialogPosition:Ljava/util/HashMap;

    .line 637
    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsByDialogPosition:Ljava/util/HashMap;

    invoke-static {p0}, Lorg/telegram/ui/Components/TranscribeButton;->reqInfoHash(Lorg/telegram/messenger/MessageObject;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 640
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressForkTranscribeButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_0

    .line 642
    :cond_4
    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda8;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MessageObject;JIJI)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 680
    :cond_5
    sget-object p1, Lorg/telegram/ui/Components/TranscribeButton;->transcribeOperationsByDialogPosition:Ljava/util/HashMap;

    if-eqz p1, :cond_6

    .line 681
    invoke-static {p0}, Lorg/telegram/ui/Components/TranscribeButton;->reqInfoHash(Lorg/telegram/messenger/MessageObject;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_6
    iget-object p1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    .line 684
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v6, v7, v8, p2}, Lorg/telegram/messenger/MessagesStorage;->updateMessageVoiceTranscriptionOpen(JILorg/telegram/tgnet/TLRPC$Message;)V

    .line 685
    new-instance p1, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda1;

    invoke-direct {p1, v5, p0}, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda1;-><init>(ILorg/telegram/messenger/MessageObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;F)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 322
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->pressBounds:Landroid/graphics/Rect;

    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 323
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->boundsPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->boundsPath:Landroid/graphics/Path;

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 328
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 329
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->boundsPath:Landroid/graphics/Path;

    iget v2, v10, Lorg/telegram/ui/Components/TranscribeButton;->radius:I

    int-to-float v3, v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 331
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->boundsPath:Landroid/graphics/Path;

    invoke-virtual {v11, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 332
    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->backgroundBack:F

    mul-float v1, v0, p2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 333
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    mul-float v0, v0, p2

    invoke-virtual {v10, v11, v1, v0}, Lorg/telegram/ui/Components/TranscribeButton;->drawGradientBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 335
    :cond_1
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 337
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    mul-float v3, v3, p2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 338
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget-object v3, v10, Lorg/telegram/ui/Components/TranscribeButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 339
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 341
    :cond_2
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 342
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 343
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 345
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 347
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->loading:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_9

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v10, Lorg/telegram/ui/Components/TranscribeButton;->start:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v1, v4

    float-to-long v4, v1

    invoke-direct {v10, v4, v5}, Lorg/telegram/ui/Components/TranscribeButton;->getSegments(J)[F

    move-result-object v1

    .line 351
    iget-object v4, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    if-nez v4, :cond_5

    .line 352
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    goto :goto_2

    .line 354
    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    :goto_2
    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v4, v0

    const/4 v5, 0x1

    .line 356
    aget v5, v1, v5

    const/4 v6, 0x0

    aget v7, v1, v6

    sub-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 357
    aget v1, v1, v6

    sub-float v5, v3, v0

    mul-float/2addr v5, v4

    iget-boolean v6, v10, Lorg/telegram/ui/Components/TranscribeButton;->loading:Z

    if-eqz v6, :cond_6

    move v3, v2

    :cond_6
    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    const/high16 v12, 0x43b40000    # 360.0f

    rem-float/2addr v1, v12

    rem-float/2addr v4, v12

    cmpg-float v0, v1, v2

    if-gez v0, :cond_7

    add-float/2addr v1, v12

    :cond_7
    move v13, v1

    cmpg-float v0, v4, v2

    if-gez v0, :cond_8

    add-float/2addr v4, v12

    :cond_8
    move v14, v4

    .line 366
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, v10, Lorg/telegram/ui/Components/TranscribeButton;->radius:I

    sub-int v4, v0, v3

    const/4 v8, 0x0

    iget v9, v10, Lorg/telegram/ui/Components/TranscribeButton;->a:F

    move-object/from16 v0, p0

    move v3, v5

    move v6, v13

    move v7, v14

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranscribeButton;->addLine(Landroid/graphics/Path;IIIIFFFF)V

    .line 367
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v10, Lorg/telegram/ui/Components/TranscribeButton;->diameter:I

    const/4 v5, 0x1

    iget v8, v10, Lorg/telegram/ui/Components/TranscribeButton;->a:F

    iget v9, v10, Lorg/telegram/ui/Components/TranscribeButton;->b:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranscribeButton;->addCorner(Landroid/graphics/Path;IIIIFFFF)V

    .line 368
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v10, Lorg/telegram/ui/Components/TranscribeButton;->radius:I

    add-int v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v0, v3

    iget v8, v10, Lorg/telegram/ui/Components/TranscribeButton;->b:F

    const/high16 v15, 0x43340000    # 180.0f

    sub-float v9, v15, v8

    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move v5, v6

    move v6, v13

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranscribeButton;->addLine(Landroid/graphics/Path;IIIIFFFF)V

    .line 369
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v10, Lorg/telegram/ui/Components/TranscribeButton;->diameter:I

    const/4 v5, 0x2

    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->b:F

    sub-float v8, v15, v0

    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->a:F

    sub-float v9, v15, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranscribeButton;->addCorner(Landroid/graphics/Path;IIIIFFFF)V

    .line 370
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v10, Lorg/telegram/ui/Components/TranscribeButton;->radius:I

    sub-int/2addr v2, v3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v4, v0, v3

    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->a:F

    sub-float v8, v15, v0

    add-float v9, v0, v15

    move-object/from16 v0, p0

    move v3, v5

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranscribeButton;->addLine(Landroid/graphics/Path;IIIIFFFF)V

    .line 371
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v10, Lorg/telegram/ui/Components/TranscribeButton;->diameter:I

    const/4 v5, 0x3

    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->a:F

    add-float v8, v0, v15

    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->b:F

    add-float v9, v0, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranscribeButton;->addCorner(Landroid/graphics/Path;IIIIFFFF)V

    .line 372
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v10, Lorg/telegram/ui/Components/TranscribeButton;->radius:I

    sub-int v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v6, v0, v3

    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->b:F

    add-float v8, v0, v15

    sub-float v9, v12, v0

    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move v5, v6

    move v6, v13

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranscribeButton;->addLine(Landroid/graphics/Path;IIIIFFFF)V

    .line 373
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v10, Lorg/telegram/ui/Components/TranscribeButton;->diameter:I

    const/4 v5, 0x4

    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->b:F

    sub-float v8, v12, v0

    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->a:F

    sub-float v9, v12, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranscribeButton;->addCorner(Landroid/graphics/Path;IIIIFFFF)V

    .line 374
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v10, Lorg/telegram/ui/Components/TranscribeButton;->radius:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->a:F

    sub-float v8, v12, v0

    const/high16 v9, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/TranscribeButton;->addLine(Landroid/graphics/Path;IIIIFFFF)V

    .line 376
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->strokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 377
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 378
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->strokePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    mul-float v2, v2, p2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->progressClipPath:Landroid/graphics/Path;

    iget-object v2, v10, Lorg/telegram/ui/Components/TranscribeButton;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 380
    iget-object v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 382
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 385
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 386
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    const/16 v1, -0xd

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, v10, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 387
    iget-boolean v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->isOpen:Z

    if-eqz v0, :cond_a

    .line 388
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawableAlpha:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 389
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 391
    :cond_a
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v1, v10, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawableAlpha:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 392
    iget-object v0, v10, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 394
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawGradientBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public height()I
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method protected onOpen()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onTap()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TranscribeButton;->onTap(Z)V

    return-void
.end method

.method public onTap(Z)V
    .locals 5

    .line 215
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->isForkTranscribe:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TranscribeButton$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/TranscribeButton;)V

    invoke-interface {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->runWithActivationCheck(Lorg/fork/utils/Callbacks$Callback;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->clickedToOpen:Z

    .line 221
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->shouldBeOpen:Z

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 223
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->loading:Z

    xor-int/2addr v0, v2

    .line 224
    iget-boolean v3, p0, Lorg/telegram/ui/Components/TranscribeButton;->premium:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {p0, v2, v2}, Lorg/telegram/ui/Components/TranscribeButton;->setLoading(ZZ)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Components/TranscribeButton;->setOpen(ZZ)V

    .line 230
    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Components/TranscribeButton;->setLoading(ZZ)V

    move v0, v2

    .line 232
    :cond_2
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/TranscribeButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_3

    .line 233
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 234
    iget-object v3, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 236
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->pressed:Z

    if-eqz v0, :cond_7

    .line 238
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->premium:Z

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->needShowPremiumBulletin(I)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 244
    iput-boolean v2, p0, Lorg/telegram/ui/Components/TranscribeButton;->clickedToOpen:Z

    .line 246
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->isForkTranscribe:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v1, v0}, Lorg/telegram/ui/Components/TranscribeButton;->transcribePressed(Lorg/telegram/messenger/MessageObject;ZLorg/telegram/ui/Cells/ChatMessageCell;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onTouch(IFF)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/TranscribeButton;->pressBounds:Landroid/graphics/Rect;

    float-to-int v3, p2

    float-to-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    .line 203
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->pressed:Z

    .line 205
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->pressed:Z

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object p2, Lorg/telegram/ui/Components/TranscribeButton;->pressedState:[I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_3
    return v1

    .line 192
    :cond_4
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->pressed:Z

    if-eqz p2, :cond_5

    if-ne p1, v1, :cond_5

    .line 193
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranscribeButton;->onTap()V

    return v1

    .line 196
    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->pressed:Z

    return v0
.end method

.method public setBounds(IIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 304
    iget-object v6, v0, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v3, v6, :cond_0

    iget-object v6, v0, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eq v4, v6, :cond_1

    :cond_0
    int-to-float v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    int-to-float v8, v5

    sub-float v9, v6, v8

    int-to-float v10, v4

    div-float/2addr v10, v7

    div-float/2addr v9, v10

    float-to-double v11, v9

    .line 305
    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v11, v13

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v11, v15

    double-to-float v7, v11

    iput v7, v0, Lorg/telegram/ui/Components/TranscribeButton;->a:F

    sub-float/2addr v10, v8

    div-float/2addr v6, v10

    float-to-double v6, v6

    .line 306
    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double/2addr v6, v13

    div-double/2addr v6, v15

    double-to-float v6, v6

    iput v6, v0, Lorg/telegram/ui/Components/TranscribeButton;->b:F

    .line 308
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    add-int v7, v1, v3

    add-int v8, v2, v4

    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 309
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/TranscribeButton;->radius:I

    mul-int/lit8 v1, v1, 0x2

    .line 310
    iput v1, v0, Lorg/telegram/ui/Components/TranscribeButton;->diameter:I

    return-void
.end method

.method public setColor(IIZF)V
    .locals 4

    .line 261
    iget p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->color:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    .line 262
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->color:I

    iput p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->iconColor:I

    .line 263
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e1fbe77    # 0.156f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->backgroundColor:I

    .line 264
    iput p4, p0, Lorg/telegram/ui/Components/TranscribeButton;->backgroundBack:F

    .line 265
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_1
    const v3, 0x3e4ccccd    # 0.2f

    :goto_1
    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->rippleColor:I

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 267
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->backgroundPaint:Landroid/graphics/Paint;

    .line 269
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/TranscribeButton;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p4

    mul-float/2addr v2, v3

    float-to-int p4, v2

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    if-nez p2, :cond_3

    .line 271
    iget-object p4, p0, Lorg/telegram/ui/Components/TranscribeButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_4

    :cond_3
    const/16 p4, 0x8

    .line 272
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    iget v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->rippleColor:I

    invoke-static {p4, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/Components/TranscribeButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 276
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 277
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget p4, p0, Lorg/telegram/ui/Components/TranscribeButton;->iconColor:I

    const-string v1, "Artboard Outlines.**"

    invoke-virtual {p2, v1, p4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 278
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 279
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 280
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p4

    iput p4, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawableAlpha:I

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 282
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 283
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget p4, p0, Lorg/telegram/ui/Components/TranscribeButton;->iconColor:I

    invoke-virtual {p2, v1, p4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 284
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 285
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 286
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    .line 287
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p4

    iput p4, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawableAlpha:I

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 289
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->strokePaint:Landroid/graphics/Paint;

    if-nez p2, :cond_6

    .line 290
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->strokePaint:Landroid/graphics/Paint;

    .line 291
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->strokePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 294
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLoading(ZZ)V
    .locals 1

    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->loading:Z

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->seekBar:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setLoading(Z)V

    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 144
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->loading:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_0

    .line 146
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/TranscribeButton;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result p2

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->start:J

    .line 150
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p1, :cond_3

    .line 151
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_3
    return-void
.end method

.method public setOpen(ZZ)V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->shouldBeOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->clickedToOpen:Z

    if-eqz v0, :cond_0

    .line 159
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->clickedToOpen:Z

    .line 160
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranscribeButton;->onOpen()V

    .line 162
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->shouldBeOpen:Z

    .line 163
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->shouldBeOpen:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 166
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TranscribeButton;->isOpen:Z

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 169
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->isOpen:Z

    .line 172
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 173
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_0

    .line 177
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->isOpen:Z

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->inIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->outIconDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 183
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton;->parent:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p1, :cond_4

    .line 184
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_4
    return-void
.end method

.method public width()I
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method
