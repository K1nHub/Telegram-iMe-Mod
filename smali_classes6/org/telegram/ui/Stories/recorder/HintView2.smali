.class public Lorg/telegram/ui/Stories/recorder/HintView2;
.super Landroid/view/View;
.source "HintView2.java"


# instance fields
.field private arrowHalfWidth:F

.field private arrowHeight:F

.field private arrowX:F

.field private arrowY:F

.field protected final backgroundPaint:Landroid/graphics/Paint;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private bounceAnimator:Landroid/animation/ValueAnimator;

.field private bounceT:F

.field private final bounds:Landroid/graphics/RectF;

.field private final boundsWithArrow:Landroid/graphics/Rect;

.field private closeButton:Z

.field private closeButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private closeButtonMargin:F

.field private cutSelectorPaint:Landroid/graphics/Paint;

.field private direction:I

.field private duration:J

.field private firstDraw:Z

.field private hideByTouch:Z

.field private final hideRunnable:Ljava/lang/Runnable;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconHeight:I

.field private iconLeft:Z

.field private iconMargin:I

.field private iconTx:F

.field private iconTy:F

.field private iconWidth:I

.field private final innerPadding:Landroid/graphics/RectF;

.field private joint:F

.field private jointTranslate:F

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private multiline:Z

.field private onHidden:Ljava/lang/Runnable;

.field private onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field private onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field protected final path:Landroid/graphics/Path;

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

.field protected rounding:F

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private show:Lorg/telegram/ui/Components/AnimatedFloat;

.field private shown:Z

.field private textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private textLayout:Landroid/text/StaticLayout;

.field private textLayoutAlignment:Landroid/text/Layout$Alignment;

.field private textLayoutHeight:F

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
    .locals 11

    .line 118
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 72
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    const-wide/16 v0, 0xdac

    .line 74
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale:Z

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useAlpha:Z

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    const/16 v1, 0x8

    .line 83
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    .line 84
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

    .line 85
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    .line 86
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    .line 87
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    .line 89
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    .line 95
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    .line 96
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 99
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 102
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->repeatedBounce:Z

    .line 106
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x15e

    invoke-direct {v3, p0, v4, v5, v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 113
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconMargin:I

    .line 466
    new-instance v1, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 487
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    .line 593
    new-instance v1, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {v1, p0, v3, v4}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;FF)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 596
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    .line 597
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    .line 598
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    .line 602
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    .line 119
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const p2, -0x19d7d7d8

    .line 121
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    new-instance p2, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {p2, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 124
    new-instance v4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 p2, 0x0

    invoke-direct {v4, p1, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v5, 0x3ecccccd    # 0.4f

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x140

    .line 125
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 126
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 p1, 0xe

    .line 128
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextSize(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 129
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/HintView2;)Landroid/graphics/Paint;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->cutSelectorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/HintView2;F)F
    .locals 0

    .line 60
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    return p1
.end method

.method private bounceShow()V
    .locals 3

    .line 489
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->repeatedBounce:Z

    if-nez v0, :cond_0

    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 496
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    .line 497
    new-instance v1, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/HintView2$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$2;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 510
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

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 887
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

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 889
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v3, v0, v2, v4, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    .line 890
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 891
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 892
    new-instance p1, Landroid/text/SpannableString;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 894
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 895
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v4

    .line 896
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 897
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v2, p1, v4}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 898
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 899
    new-instance p1, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v3, v0}, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V

    .line 905
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    .line 899
    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 906
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->pause()V

    return v1

    .line 910
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 911
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 913
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->unpause()V

    .line 914
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 915
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz p1, :cond_1

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    goto :goto_0

    .line 917
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 918
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 920
    :cond_2
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return v1

    .line 923
    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 925
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 926
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 927
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 928
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->unpause()V

    .line 929
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 932
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
    .locals 5

    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 850
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->containsTouch(Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 853
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 854
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    .line 855
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 856
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return v3

    .line 859
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_5

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 861
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 862
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    if-eqz p1, :cond_3

    .line 863
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 865
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 866
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    new-array v0, v1, [I

    .line 867
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return v3

    .line 870
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 871
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 872
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    new-array v0, v1, [I

    .line 873
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    return v3

    :cond_7
    return v1

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public static cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .locals 10

    .line 280
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move v7, v1

    move v8, v2

    move v5, v3

    move v6, v4

    move v4, v5

    :goto_0
    const/16 v9, 0xa

    if-ge v7, v9, :cond_4

    :goto_1
    if-lez v0, :cond_0

    .line 288
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    add-int/2addr v0, v8

    goto :goto_1

    .line 293
    :cond_0
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->measureCorrectly(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    .line 294
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p0, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->measureCorrectly(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v5

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    cmpl-float v3, v5, v6

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    cmpg-float v3, v4, v5

    if-gez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    move v8, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move v8, v2

    :goto_2
    if-lez v0, :cond_4

    .line 317
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    move v3, v4

    move v6, v5

    goto :goto_0

    .line 323
    :cond_4
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private getTextMaxWidth()I
    .locals 3

    .line 549
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

    .line 550
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    if-lez v1, :cond_0

    .line 551
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 553
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private hitLink(II)Landroid/text/style/ClickableSpan;
    .locals 5

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    int-to-float p1, p1

    .line 939
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    .line 940
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    .line 941
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v0

    .line 942
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    int-to-float p1, p1

    invoke-virtual {v2, v0, p1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 943
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    cmpg-float v4, v3, p1

    if-gtz v4, :cond_1

    .line 944
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

    .line 945
    new-instance p1, Landroid/text/SpannableString;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 946
    const-class p2, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v2, v2, p2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 947
    array-length p2, p1

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 948
    aget-object p1, p1, p2

    return-object p1

    :cond_1
    return-object v1
.end method

.method private synthetic lambda$bounceShow$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 498
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkTouchLinks$1(Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V
    .locals 2

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne v1, p1, :cond_0

    .line 901
    invoke-interface {v0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    const/4 p1, 0x0

    .line 902
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 903
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    :cond_0
    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;I)V
    .locals 9

    .line 582
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

    .line 584
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 585
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 586
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-float/2addr v1, p1

    .line 588
    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutWidth:F

    .line 589
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutHeight:F

    .line 590
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutLeft:F

    return-void
.end method

.method private static measureCorrectly(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 243
    :cond_0
    instance-of v1, p0, Landroid/text/Spanned;

    if-nez v1, :cond_1

    .line 244
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 246
    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    .line 247
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/TypefaceSpan;

    if-eqz v2, :cond_7

    .line 248
    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 253
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 254
    aget-object v5, v2, v4

    invoke-interface {v1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 255
    aget-object v6, v2, v4

    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 257
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v7, v5, v3

    if-lez v7, :cond_3

    .line 259
    invoke-virtual {p1, v1, v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    add-float/2addr v0, v3

    .line 262
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v6, v3, v5

    if-lez v6, :cond_4

    .line 264
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    .line 265
    aget-object v7, v2, v4

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TypefaceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 266
    invoke-virtual {p1, v1, v5, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    add-float/2addr v0, v5

    .line 267
    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int v2, p0, v3

    if-lez v2, :cond_6

    .line 273
    invoke-virtual {p1, v1, v3, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    add-float/2addr v0, p0

    :cond_6
    return v0

    .line 249
    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private rewindPath(FF)V
    .locals 8

    .line 746
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/4 v1, 0x3

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 759
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

    .line 760
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

    .line 761
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    div-float v2, p2, v2

    sub-float v2, v0, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, p2

    .line 762
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float p2, v2, p2

    .line 764
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    sub-float v5, v2, v4

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v5, v6

    add-float/2addr v4, p2

    add-float/2addr v4, v6

    invoke-static {v0, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 765
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-nez v4, :cond_1

    .line 766
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

    .line 768
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

    .line 747
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

    .line 748
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

    .line 749
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    div-float v2, p1, v2

    sub-float v2, v0, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, p1

    .line 750
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float p1, v2, p1

    .line 752
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    sub-float v5, v2, v4

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v5, v6

    add-float/2addr v4, p1

    add-float/2addr v4, v6

    invoke-static {v0, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 753
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne v4, v3, :cond_3

    .line 754
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

    .line 756
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

    .line 771
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {p1, v2, v4, v5, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 773
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 774
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 775
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/4 p2, 0x2

    if-nez p1, :cond_4

    .line 776
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

    .line 777
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 778
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

    .line 779
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float v4, p1, v2

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    .line 780
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    .line 781
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    sub-float/2addr p1, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v4, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 782
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v4, v0, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 783
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

    .line 784
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 786
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 787
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne p1, v3, :cond_5

    .line 788
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

    .line 789
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v2, v0, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 790
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

    .line 791
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    .line 792
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    .line 793
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

    .line 794
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v2, v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 795
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

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 798
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 799
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne p1, p2, :cond_6

    .line 800
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

    .line 801
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v4, v0, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 802
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

    .line 803
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float v4, p1, v2

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    .line 804
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    .line 805
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    add-float/2addr p1, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v4, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 806
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 807
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

    .line 808
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 810
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 811
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne p1, v1, :cond_7

    .line 812
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

    .line 813
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 814
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

    .line 815
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    .line 816
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    .line 817
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

    .line 818
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v1, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 819
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

    .line 820
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 822
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 823
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    return-void
.end method


# virtual methods
.method public containsTouch(Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 845
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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 610
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    .line 615
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    if-eqz v2, :cond_2

    .line 616
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    .line 617
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_2
    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_3

    return-void

    .line 623
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutWidth:F

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v3

    .line 624
    :goto_1
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v5, :cond_5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutHeight:F

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v5

    .line 625
    :goto_2
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    const v9, 0x7dffffff

    if-eqz v6, :cond_7

    .line 626
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    .line 627
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_mini_close_tooltip:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 628
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 630
    :cond_6
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 631
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 633
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_8

    .line 634
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconMargin:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 635
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconHeight:I

    int-to-float v6, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 638
    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v3

    iget v10, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v10

    .line 639
    iget v10, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v5

    iget v5, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v5

    .line 640
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    if-eqz v5, :cond_9

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastWidth:F

    sub-float v5, v7, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_9

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastHeight:F

    sub-float v5, v10, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 641
    :cond_9
    iput v7, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastWidth:F

    iput v10, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastHeight:F

    invoke-direct {v0, v7, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->rewindPath(FF)V

    .line 644
    :cond_a
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->useAlpha:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_b

    move v11, v1

    goto :goto_3

    :cond_b
    move v11, v6

    .line 645
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    cmpg-float v5, v1, v6

    if-gez v5, :cond_c

    .line 646
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale:Z

    if-eqz v5, :cond_c

    const/high16 v5, 0x3f000000    # 0.5f

    .line 647
    invoke-static {v5, v6, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 648
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-virtual {v8, v1, v1, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 650
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v5, 0x3ccccccd    # 0.025f

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    cmpl-float v5, v1, v6

    if-eqz v5, :cond_d

    .line 653
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-virtual {v8, v1, v1, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 655
    :cond_d
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_14

    .line 656
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/4 v5, -0x1

    const/16 v7, 0x18

    const/4 v12, 0x3

    if-eq v1, v12, :cond_11

    if-ne v1, v4, :cond_e

    goto :goto_5

    :cond_e
    if-nez v1, :cond_f

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    goto :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 661
    :goto_4
    iget v12, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    sub-float/2addr v12, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v12, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-nez v1, :cond_10

    move v4, v5

    :cond_10
    int-to-float v1, v4

    mul-float/2addr v12, v1

    invoke-virtual {v8, v12, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_11
    :goto_5
    if-ne v1, v12, :cond_12

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    goto :goto_6

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 658
    :goto_6
    iget v12, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    sub-float/2addr v12, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v12, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne v1, v4, :cond_13

    move v4, v5

    :cond_13
    int-to-float v1, v4

    mul-float/2addr v12, v1

    invoke-virtual {v8, v2, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 665
    :cond_14
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 666
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 667
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    neg-float v6, v5

    neg-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 669
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v8, v4, v5, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;F)Z

    move-result v4

    if-eqz v4, :cond_15

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v11

    goto :goto_8

    :cond_15
    move v4, v11

    .line 672
    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v6, v1

    mul-float/2addr v6, v4

    float-to-int v4, v6

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 673
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->drawBgPath(Landroid/graphics/Canvas;)V

    .line 674
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 676
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v12, 0x437f0000    # 255.0f

    if-eqz v1, :cond_16

    mul-float v4, v11, v12

    float-to-int v4, v4

    .line 677
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 678
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 679
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 682
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v7, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v4, v13

    .line 684
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_18

    .line 685
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconLeft:Z

    if-eqz v6, :cond_17

    .line 686
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTx:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v7, v6, v1

    iget v5, v5, Landroid/graphics/RectF;->left:F

    div-float v15, v5, v13

    add-float/2addr v7, v15

    float-to-int v7, v7

    iget v15, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTy:F

    add-float v16, v15, v14

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconHeight:I

    int-to-float v12, v9

    div-float/2addr v12, v13

    sub-float v12, v16, v12

    float-to-int v12, v12

    add-float/2addr v6, v1

    div-float/2addr v5, v13

    add-float/2addr v6, v5

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    int-to-float v1, v1

    add-float/2addr v6, v1

    float-to-int v1, v6

    add-float/2addr v15, v14

    int-to-float v5, v9

    div-float/2addr v5, v13

    add-float/2addr v15, v5

    float-to-int v5, v15

    invoke-virtual {v4, v7, v12, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 692
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconMargin:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v2, v1

    goto :goto_9

    .line 694
    :cond_17
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTx:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v7, v6, v1

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float v9, v5, v13

    sub-float/2addr v7, v9

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTy:F

    add-float v12, v9, v14

    iget v15, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconHeight:I

    int-to-float v2, v15

    div-float/2addr v2, v13

    sub-float/2addr v12, v2

    float-to-int v2, v12

    add-float/2addr v6, v1

    div-float/2addr v5, v13

    sub-float/2addr v6, v5

    float-to-int v1, v6

    add-float/2addr v9, v14

    int-to-float v5, v15

    div-float/2addr v5, v13

    add-float/2addr v9, v5

    float-to-int v5, v9

    invoke-virtual {v4, v7, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x0

    .line 701
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v12, v11, v4

    float-to-int v4, v12

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 702
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v16, v2

    goto :goto_a

    :cond_18
    const/16 v16, 0x0

    .line 705
    :goto_a
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v1, :cond_1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 706
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v12, v11, v1

    float-to-int v6, v12

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 707
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v16, v16, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v16, v16, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutLeft:F

    sub-float v1, v16, v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textX:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutHeight:F

    div-float/2addr v2, v13

    sub-float/2addr v14, v2

    iput v14, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textY:F

    invoke-virtual {v8, v1, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 708
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 711
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 712
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    .line 714
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b

    .line 715
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v1, 0x0

    .line 716
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    .line 718
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v16, v16, v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float v5, v16, v4

    float-to-int v5, v5

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutHeight:F

    div-float v7, v6, v13

    sub-float v7, v14, v7

    float-to-int v7, v7

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-float/2addr v6, v13

    add-float/2addr v14, v6

    float-to-int v3, v14

    invoke-virtual {v1, v5, v7, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 719
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v12, v11, v2

    float-to-int v2, v12

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 720
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 723
    :goto_b
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    if-eqz v1, :cond_1d

    .line 724
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1c

    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_close_tooltip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 726
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v4, 0x7dffffff

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 728
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v11, v2

    float-to-int v2, v11

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 729
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const v4, 0x3f28f5c3    # 0.66f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 730
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    .line 731
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v13

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 733
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v13

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 729
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 735
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 737
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawBgPath(Landroid/graphics/Canvas;)V
    .locals 2

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 170
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 459
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    return-object v0

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 514
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 3

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 520
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    if-nez p1, :cond_1

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 526
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 528
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

    .line 530
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 558
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    .line 559
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    .line 561
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextMaxWidth()I

    move-result p2

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 563
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_3

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_2

    .line 568
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 572
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_4

    .line 573
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->makeLayout(Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_2
    return-void

    .line 575
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 833
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 836
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->checkTouchLinks(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    .line 838
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->checkTouchTap(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public pause()V
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAnimatedTextHacks(ZZZ)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    return-object p0
.end method

.method public setBgColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setBounce(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 414
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->repeatedBounce:Z

    return-object p0
.end method

.method public setCloseButton(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    .line 198
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    .line 199
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-nez p1, :cond_1

    .line 200
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

    .line 338
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    return-object p0
.end method

.method public setHideByTouch(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 378
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    return-object p0
.end method

.method public setIcon(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    .line 216
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    .line 217
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 218
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIcon(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 223
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 225
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 227
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 228
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    .line 229
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    .line 232
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconHeight:I

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconLeft:Z

    :cond_2
    return-object p0
.end method

.method public setIconMargin(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 356
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconMargin:I

    return-object p0
.end method

.method public setIconTranslate(FF)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 361
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTx:F

    .line 362
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTy:F

    return-object p0
.end method

.method public setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 351
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

    .line 439
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

    .line 440
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    .line 441
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 443
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    .line 444
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    return-object p0
.end method

.method public setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 449
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 453
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    .line 454
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    return-object p0
.end method

.method public setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 206
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    return-object p0
.end method

.method public setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 211
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    return-object p0
.end method

.method public setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 5

    .line 143
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    const/4 v0, 0x6

    const/16 v1, 0xf

    if-eqz p1, :cond_0

    .line 145
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

    .line 146
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    goto :goto_1

    .line 148
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

    .line 149
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    :goto_1
    return-object p0
.end method

.method public setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 431
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 133
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->cutSelectorPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 136
    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    return-object p0
.end method

.method public setSelectorColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 5

    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-object p0

    .line 386
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->cutSelectorPaint:Landroid/graphics/Paint;

    .line 387
    new-instance v2, Landroid/graphics/CornerPathEffect;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 388
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v1, [[I

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [I

    aput p1, v1, v4

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 392
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/HintView2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$1;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 409
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gez v0, :cond_0

    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    goto :goto_0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextMaxWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->makeLayout(Ljava/lang/CharSequence;I)V

    :goto_0
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gez v0, :cond_0

    .line 178
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    goto :goto_1

    .line 180
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

    .line 420
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setTextColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-object p0
.end method

.method public setTextSize(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-object p0
.end method

.method public show()Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    .line 469
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    if-eqz v0, :cond_0

    .line 470
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceShow()V

    :cond_0
    const/4 v0, 0x1

    .line 472
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    .line 473
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 476
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 477
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 479
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 480
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-object p0
.end method

.method public shown()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    return v0
.end method

.method public unpause()V
    .locals 4

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 539
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 540
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public useScale(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 327
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale:Z

    return-object p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 828
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

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
