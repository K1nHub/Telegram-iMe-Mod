.class public Lorg/telegram/ui/Stories/recorder/HintView2;
.super Landroid/view/View;
.source "HintView2.java"


# instance fields
.field private arrowHalfWidth:F

.field private arrowHeight:F

.field private arrowX:F

.field private arrowY:F

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private bounceAnimator:Landroid/animation/ValueAnimator;

.field private bounceT:F

.field private final bounds:Landroid/graphics/RectF;

.field private closeButton:Z

.field private closeButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private closeButtonMargin:F

.field private direction:I

.field private duration:J

.field private firstDraw:Z

.field private hideByTouch:Z

.field private final hideRunnable:Ljava/lang/Runnable;

.field private final innerPadding:Landroid/graphics/RectF;

.field private joint:F

.field private jointTranslate:F

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private multiline:Z

.field private onHidden:Ljava/lang/Runnable;

.field private onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field private onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field private final path:Landroid/graphics/Path;

.field private pathLastHeight:F

.field private pathLastWidth:F

.field private pathSet:Z

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/ui/Components/LinkSpanDrawable<",
            "Landroid/text/style/ClickableSpan;",
            ">;"
        }
    .end annotation
.end field

.field private repeatedBounce:Z

.field private rounding:F

.field private show:Lorg/telegram/ui/Components/AnimatedFloat;

.field private shown:Z

.field private textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private textLayout:Landroid/text/StaticLayout;

.field private textLayoutAlignment:Landroid/text/Layout$Alignment;

.field private textLayoutLeft:F

.field private textLayoutWidth:F

.field private textMaxWidth:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textToSet:Ljava/lang/CharSequence;

.field private textX:F

.field private textY:F

.field private useAlpha:Z

.field private useScale:Z


# direct methods
.method public static synthetic $r8$lambda$mvTt6QRgn4wiKU3Cj3aNQkk0__0(Lorg/telegram/ui/Stories/recorder/HintView2;Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->lambda$checkTouchLinks$1(Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uhQmip_-SkN0FM4cckOtoyo7QZ4(Lorg/telegram/ui/Stories/recorder/HintView2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->lambda$bounceShow$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    .line 95
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 58
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    const-wide/16 v0, 0xdac

    .line 60
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale:Z

    .line 63
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useAlpha:Z

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    const/16 v1, 0x8

    .line 69
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    .line 70
    new-instance v1, Landroid/graphics/RectF;

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v1, v3, v5, v2, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    const/4 v1, 0x2

    .line 71
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    .line 72
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    .line 73
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    .line 82
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 85
    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 88
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    .line 89
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->repeatedBounce:Z

    .line 92
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x15e

    invoke-direct {v2, p0, v3, v4, v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 326
    new-instance v2, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 347
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    .line 452
    new-instance v2, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;F)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 455
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    .line 456
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    .line 460
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    .line 96
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const p2, -0x33d7d7d8    # -4.4081312E7f

    .line 98
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance p2, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {p2, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 101
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v4, 0x3ecccccd    # 0.4f

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x140

    .line 102
    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 103
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 p1, 0xe

    .line 105
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextSize(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 106
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/HintView2;F)F
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    return p1
.end method

.method private bounceShow()V
    .locals 3

    .line 349
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->repeatedBounce:Z

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 356
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    .line 357
    new-instance v1, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/HintView2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$1;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkTouchLinks(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hitLink(II)Landroid/text/style/ClickableSpan;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 681
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v3, v0, v2, v4, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    .line 682
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 683
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 684
    new-instance p1, Landroid/text/SpannableString;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 686
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 687
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v4

    .line 688
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 689
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v2, p1, v4}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 690
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 691
    new-instance p1, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v3, v0}, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V

    .line 697
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    .line 691
    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 698
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->pause()V

    return v1

    .line 702
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 703
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 704
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 705
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->unpause()V

    .line 706
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz p1, :cond_1

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 712
    :cond_2
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return v1

    .line 715
    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 717
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 718
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 719
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 720
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->unpause()V

    .line 721
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 724
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private checkTouchTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->containsTouch(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1

    .line 661
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 662
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1

    .line 665
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 666
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1

    :cond_2
    return v2
.end method

.method private static contains(Ljava/lang/CharSequence;C)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 193
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 194
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 216
    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p1

    int-to-float p1, p1

    .line 217
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    if-lez v0, :cond_5

    const/16 v2, 0xa

    .line 218
    invoke-static {p0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->contains(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v3, v1, 0x1

    :goto_0
    if-ltz v2, :cond_4

    if-ge v3, v0, :cond_4

    .line 224
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    move v1, v2

    goto :goto_1

    .line 228
    :cond_2
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const p0, 0x3e99999a    # 0.3f

    mul-float/2addr p0, p1

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    sub-int v1, v0, v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    .line 235
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float/2addr v1, p1

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    :goto_2
    double-to-int p0, p0

    return p0

    :cond_5
    :goto_3
    float-to-double p0, p1

    .line 219
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_2
.end method

.method private getTextMaxWidth()I
    .locals 3

    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    float-to-int v1, v2

    sub-int/2addr v0, v1

    .line 410
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    if-lez v1, :cond_0

    .line 411
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 413
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .locals 9

    .line 202
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Landroid/text/StaticLayout;

    const v4, 0x1869f

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 204
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p0

    const/4 p1, 0x0

    if-lez p0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    :cond_0
    return p1

    .line 208
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private hitLink(II)Landroid/text/style/ClickableSpan;
    .locals 5

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    int-to-float p1, p1

    .line 731
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    .line 732
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    .line 733
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v0

    .line 734
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    int-to-float p1, p1

    invoke-virtual {v2, v0, p1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 735
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    cmpg-float v4, v3, p1

    if-gtz v4, :cond_1

    .line 736
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    add-float/2addr v3, v0

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_1

    .line 737
    new-instance p1, Landroid/text/SpannableString;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 738
    const-class p2, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v2, v2, p2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 739
    array-length p2, p1

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 740
    aget-object p1, p1, p2

    return-object p1

    :cond_1
    return-object v1
.end method

.method private synthetic lambda$bounceShow$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 358
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkTouchLinks$1(Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V
    .locals 2

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne v1, p1, :cond_0

    .line 693
    invoke-interface {v0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    const/4 p1, 0x0

    .line 694
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 695
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    :cond_0
    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;I)V
    .locals 9

    .line 442
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutAlignment:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    int-to-float p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x0

    move v1, p2

    .line 444
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 445
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 446
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-float/2addr v1, p1

    .line 448
    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutWidth:F

    .line 449
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutLeft:F

    return-void
.end method

.method private rewindPath(FF)V
    .locals 8

    .line 557
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/4 v1, 0x3

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 571
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    add-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 572
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    div-float v2, p2, v2

    sub-float v2, v0, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, p2

    .line 573
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float p2, v2, p2

    .line 575
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    sub-float v5, v2, v4

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v5, v6

    add-float/2addr v4, p2

    add-float/2addr v4, v6

    invoke-static {v0, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 576
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-nez v4, :cond_1

    .line 577
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v6, v7

    add-float/2addr v6, p1

    invoke-virtual {v4, v5, p2, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 579
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v5, v6

    sub-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr p1, v6

    int-to-float p1, p1

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p1, v6

    invoke-virtual {v4, v5, p2, p1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 558
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 559
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    add-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 560
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    div-float v2, p1, v2

    sub-float v2, v0, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, p1

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float p1, v2, p1

    .line 563
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    sub-float v5, v2, v4

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v5, v6

    add-float/2addr v4, p1

    add-float/2addr v4, v6

    invoke-static {v0, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 564
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne v4, v3, :cond_3

    .line 565
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v6, v7

    add-float/2addr v6, p2

    invoke-virtual {v4, p1, v5, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 567
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sub-float/2addr v5, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p2, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr p2, v6

    invoke-virtual {v4, p1, v5, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 583
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 584
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 585
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/4 p2, 0x2

    if-nez p1, :cond_4

    .line 586
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v4, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float v4, p1, v2

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    .line 590
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    .line 591
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    sub-float/2addr p1, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v4, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v4, v0, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v4, v0, v4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 595
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 596
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne p1, v3, :cond_5

    .line 597
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v2, v0, v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 598
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v2, v0, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 599
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 600
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    .line 601
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 603
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v2, v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v2, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 606
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 607
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne p1, p2, :cond_6

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v4, v0, v4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v4, v0, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 610
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float v4, p1, v2

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    .line 612
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    .line 613
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    add-float/2addr p1, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v4, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 615
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v4, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 617
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 618
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne p1, v1, :cond_7

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v1, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 620
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 622
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    .line 624
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v1, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v0, v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v0, p2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 628
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 629
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    return-void
.end method


# virtual methods
.method public containsTouch(Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, p3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 464
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    .line 469
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    if-eqz v1, :cond_2

    .line 470
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    const/4 v1, 0x0

    cmpg-float v4, v0, v1

    if-gtz v4, :cond_3

    return-void

    .line 477
    :cond_3
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutWidth:F

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v4

    .line 478
    :goto_1
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    :goto_2
    int-to-float v2, v2

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v2

    .line 479
    :goto_3
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    const v7, 0x7dffffff

    if-eqz v5, :cond_8

    .line 480
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_7

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_close_tooltip:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 482
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 484
    :cond_7
    iget v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 485
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 488
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v4

    iget v8, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v8

    .line 489
    iget v8, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v2

    iget v2, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v2

    .line 490
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastWidth:F

    sub-float v2, v6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v5, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_9

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastHeight:F

    sub-float v2, v8, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 491
    :cond_9
    iput v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastWidth:F

    iput v8, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastHeight:F

    invoke-direct {p0, v6, v8}, Lorg/telegram/ui/Stories/recorder/HintView2;->rewindPath(FF)V

    .line 494
    :cond_a
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useAlpha:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_b

    move v9, v0

    goto :goto_4

    :cond_b
    move v9, v5

    .line 495
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    cmpg-float v2, v0, v5

    if-gez v2, :cond_c

    .line 496
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale:Z

    if-eqz v2, :cond_c

    const/high16 v2, 0x3f000000    # 0.5f

    .line 497
    invoke-static {v2, v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 498
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-virtual {p1, v0, v0, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 500
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3ccccccd    # 0.025f

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    cmpl-float v2, v0, v5

    if-eqz v2, :cond_d

    .line 503
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-virtual {p1, v0, v0, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 505
    :cond_d
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_14

    .line 506
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/4 v2, -0x1

    const/16 v6, 0x18

    const/4 v10, 0x3

    if-eq v0, v10, :cond_11

    if-ne v0, v3, :cond_e

    goto :goto_6

    :cond_e
    if-nez v0, :cond_f

    .line 510
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 511
    :goto_5
    iget v10, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    sub-float/2addr v10, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v10, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-nez v0, :cond_10

    move v3, v2

    :cond_10
    int-to-float v0, v3

    mul-float/2addr v10, v0

    invoke-virtual {p1, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_8

    :cond_11
    :goto_6
    if-ne v0, v10, :cond_12

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 508
    :goto_7
    iget v10, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    sub-float/2addr v10, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v10, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne v0, v3, :cond_13

    move v3, v2

    :cond_13
    int-to-float v0, v3

    mul-float/2addr v10, v0

    invoke-virtual {p1, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 515
    :cond_14
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 516
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 517
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 518
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 520
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    const/high16 v10, 0x437f0000    # 255.0f

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 521
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v0, v9, v10

    float-to-int v5, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutLeft:F

    sub-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textX:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textY:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 526
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    .line 529
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    .line 530
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    .line 533
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    add-float v6, v2, v5

    float-to-int v6, v6

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget v11, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v11

    float-to-int v8, v8

    add-float/2addr v2, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v6, v8, v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v1, v9, v10

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 538
    :goto_9
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    if-eqz v0, :cond_19

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_18

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_close_tooltip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 541
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v7, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 543
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v9, v10

    float-to-int v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const v3, 0x3f28f5c3    # 0.66f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 545
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    .line 546
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 548
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 544
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 552
    :cond_19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    .line 142
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 319
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 374
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 3

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 380
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    if-nez p1, :cond_1

    .line 384
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 386
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 387
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 390
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 418
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    .line 419
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    .line 421
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextMaxWidth()I

    move-result p2

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 423
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_3

    .line 425
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_2

    .line 428
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 432
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_4

    .line 433
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->makeLayout(Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_2
    return-void

    .line 435
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 438
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 639
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->checkTouchLinks(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 644
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->checkTouchTap(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public pause()V
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAnimatedTextHacks(ZZZ)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    return-object p0
.end method

.method public setBgColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setBounce(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 284
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->repeatedBounce:Z

    return-object p0
.end method

.method public setCloseButton(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    .line 172
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    .line 173
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-nez p1, :cond_1

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    const/16 v0, 0xb

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    if-eqz v3, :cond_0

    const/16 v0, 0xf

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    return-object p0
.end method

.method public setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 250
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    return-object p0
.end method

.method public setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p0
.end method

.method public setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 3

    .line 309
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 313
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    .line 314
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    return-object p0
.end method

.method public setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 180
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    return-object p0
.end method

.method public setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 185
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    return-object p0
.end method

.method public setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 5

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    const/4 v0, 0x6

    const/16 v1, 0xf

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    goto :goto_1

    .line 122
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x2

    .line 123
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    :goto_1
    return-object p0
.end method

.method public setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 110
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    .line 111
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gez v0, :cond_0

    .line 130
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    goto :goto_0

    .line 131
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextMaxWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->makeLayout(Ljava/lang/CharSequence;I)V

    :goto_0
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gez v0, :cond_0

    .line 152
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    goto :goto_1

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :goto_1
    return-object p0
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setTextColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-object p0
.end method

.method public setTextSize(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-object p0
.end method

.method public show()Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    .line 329
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceShow()V

    :cond_0
    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 336
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 337
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 339
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 340
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-object p0
.end method

.method public shown()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    return v0
.end method

.method public unpause()V
    .locals 4

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 399
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
