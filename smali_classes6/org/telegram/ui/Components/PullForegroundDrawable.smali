.class public Lorg/telegram/ui/Components/PullForegroundDrawable;
.super Ljava/lang/Object;
.source "PullForegroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;
    }
.end annotation


# instance fields
.field private accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

.field private accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

.field private accentRevalProgress:F

.field private accentRevalProgressOut:F

.field private animateOut:Z

.field private animateToColorize:Z

.field private animateToEndText:Z

.field private animateToTextIn:Z

.field private arrowAnimateTo:Z

.field private final arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

.field private arrowRotateAnimator:Landroid/animation/ValueAnimator;

.field private arrowRotateProgress:F

.field private avatarBackgroundColorKey:Ljava/lang/String;

.field private backgroundActiveColorKey:Ljava/lang/String;

.field private backgroundColorKey:Ljava/lang/String;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private bounceIn:Z

.field private bounceProgress:F

.field private cell:Landroid/view/View;

.field private changeAvatarColor:Z

.field private final circleClipPath:Landroid/graphics/Path;

.field private generalTopicDrawable:Landroid/graphics/drawable/Drawable;

.field private isOut:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private outAnimator:Landroid/animation/AnimatorSet;

.field public outCx:F

.field public outCy:F

.field public outImageSize:F

.field public outProgress:F

.field public outRadius:F

.field private final paintBackgroundAccent:Landroid/graphics/Paint;

.field private final paintSecondary:Landroid/graphics/Paint;

.field private final paintWhite:Landroid/graphics/Paint;

.field public pullProgress:F

.field private pullTooltipLayout:Landroid/text/StaticLayout;

.field private pullTooltipLayoutWidth:F

.field private final rectF:Landroid/graphics/RectF;

.field private releaseTooltipLayout:Landroid/text/StaticLayout;

.field private releaseTooltipLayoutWidth:F

.field public scrollDy:I

.field private textInProgress:F

.field textInRunnable:Ljava/lang/Runnable;

.field private textInUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private textIntAnimator:Landroid/animation/ValueAnimator;

.field private textSwappingProgress:F

.field private textSwappingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private textSwipingAnimator:Landroid/animation/ValueAnimator;

.field private final tooltipTextPaint:Landroid/text/TextPaint;

.field private touchSlop:F

.field wasSendCallback:Z

.field private willDraw:Z


# direct methods
.method public static synthetic $r8$lambda$04lsCO8A1PGOQU9hwbdMNhzLQDc(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$43iXSN4icjdCQ7ssMG5Jpb4AKDo(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$colorize$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8PSmAeFifP4Y_TYsv0YaGzxQXgo(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$updateTextProgress$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ml3rqy0e8kUYOIUYndBSozG_Ugg(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$colorize$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n7QmVLZtjmhjAgyH4kRACoKfvls(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$startOutAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t7j2EC0uQLSx7uH4K56ftagwQCg(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tJ1F75Iv7YM3v4I8GWhLK25yG4Q(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$startOutAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xf5hyMs11CjeunmW-eXQfe9DKUs(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$startOutAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 13

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "chats_archivePullDownBackground"

    .line 44
    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundColorKey:Ljava/lang/String;

    const-string v0, "chats_archivePullDownBackgroundActive"

    .line 45
    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundActiveColorKey:Ljava/lang/String;

    const-string v0, "avatar_backgroundArchivedHidden"

    .line 46
    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->changeAvatarColor:Z

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    .line 54
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    .line 55
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    .line 61
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    .line 68
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    .line 69
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    .line 104
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 111
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 479
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$1;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    const-string v2, "fonts/rmedium.ttf"

    .line 119
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v2, 0x10

    .line 121
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 123
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->touchSlop:F

    .line 126
    new-instance v12, Landroid/text/StaticLayout;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v2, Landroid/graphics/Point;->x:I

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v12

    move-object v3, p1

    move-object v6, v1

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    .line 127
    invoke-virtual {v12, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    .line 128
    new-instance p1, Landroid/text/StaticLayout;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v2, Landroid/graphics/Point;->x:I

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    .line 129
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    .line 132
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_filled_general:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->generalTopicDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/PullForegroundDrawable;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PullForegroundDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/PullForegroundDrawable;F)F
    .locals 0

    .line 35
    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PullForegroundDrawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static getMaxOverscroll()I
    .locals 1

    const/16 v0, 0x48

    .line 137
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$colorize$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 444
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 448
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    .line 449
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$colorize$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 464
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    .line 465
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 468
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    .line 469
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 112
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOutAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 526
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setOutProgress(F)V

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOutAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 537
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    const/4 p1, 0x1

    .line 538
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 540
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOutAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 549
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    const/4 p1, 0x0

    .line 550
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTextProgress$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 421
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setOutProgress(F)V
    .locals 3

    .line 576
    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    .line 577
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundActiveColorKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-static {p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->changeAvatarColor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->isDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 581
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v1, "Arrow1.**"

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 582
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v1, "Arrow2.**"

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 583
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    const/4 p1, 0x1

    .line 584
    sput-boolean p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    :cond_0
    return-void
.end method

.method private textIn()V
    .locals 4

    .line 498
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    if-nez v0, :cond_1

    .line 499
    iget v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->scrollDy:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->touchSlop:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    const/4 v2, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 500
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 501
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    .line 502
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    goto :goto_0

    .line 505
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTextProgress(F)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x3f59999a    # 0.85f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 395
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToEndText:Z

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eq v2, p1, :cond_6

    .line 396
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToEndText:Z

    .line 397
    iget v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    .line 398
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 399
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 401
    :goto_1
    iput v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    goto :goto_3

    .line 403
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_4

    .line 404
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    new-array v2, v3, [F

    .line 406
    iget v6, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    aput v6, v2, v1

    if-eqz p1, :cond_5

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_2
    aput v6, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    .line 407
    iget-object v6, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 408
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 409
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xaa

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 410
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 414
    :cond_6
    :goto_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    if-eq p1, v2, :cond_9

    .line 415
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    .line 417
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    new-array p1, v3, [F

    .line 419
    iget v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    aput v2, p1, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    if-eqz v1, :cond_8

    const/4 v4, 0x0

    :cond_8
    aput v4, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    .line 420
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 426
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 427
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 428
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    return-void
.end method


# virtual methods
.method public colorize(Z)V
    .locals 8

    .line 433
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    if-eq v0, p1, :cond_3

    .line 434
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    const/4 v0, 0x0

    const-wide/16 v1, 0xe6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 438
    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    .line 441
    :cond_0
    iput v7, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    new-array p1, v6, [F

    aput v7, p1, v5

    aput v3, p1, v4

    .line 442
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    .line 443
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 452
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 454
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 456
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 457
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 458
    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    .line 461
    :cond_2
    iput v7, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    new-array p1, v6, [F

    aput v7, p1, v5

    aput v3, p1, v4

    .line 462
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    .line 463
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 474
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public doNotShow()V
    .locals 4

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 592
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 595
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 596
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 598
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 599
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 601
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    .line 602
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    const/4 v1, 0x0

    .line 603
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToEndText:Z

    .line 604
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    .line 605
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    .line 606
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    const/4 v2, 0x0

    .line 607
    iput v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    const/4 v3, 0x1

    .line 608
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    .line 609
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setOutProgress(F)V

    .line 610
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    .line 611
    iput v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 181
    iget-boolean v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->willDraw:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    if-nez v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz v1, :cond_1f

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v2, :cond_0

    goto/16 :goto_c

    .line 184
    :cond_0
    instance-of v9, v1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v9, :cond_1

    const/16 v1, 0xf

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    .line 185
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v10, 0x8

    .line 186
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/16 v2, 0x9

    .line 187
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/16 v2, 0x12

    .line 188
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getViewOffset()F

    move-result v3

    float-to-int v3, v3

    .line 191
    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 193
    iget-boolean v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    if-eqz v6, :cond_2

    const v6, 0x3d8f5c29    # 0.07f

    iget v7, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    mul-float v7, v7, v6

    const v6, 0x3d4ccccd    # 0.05f

    sub-float/2addr v7, v6

    goto :goto_1

    :cond_2
    const v6, 0x3ca3d70a    # 0.02f

    iget v7, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    mul-float v7, v7, v6

    :goto_1
    move v13, v7

    .line 195
    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/PullForegroundDrawable;->updateTextProgress(F)V

    .line 197
    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v5, v5, v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v15

    if-lez v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 202
    :cond_3
    iget v7, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 203
    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    if-eqz p2, :cond_4

    int-to-float v10, v3

    add-float/2addr v6, v10

    :cond_4
    move v10, v6

    add-int v6, v1, v12

    .line 209
    iget-object v14, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v14, v11

    sub-int/2addr v14, v12

    if-eqz p2, :cond_5

    add-int/2addr v14, v3

    :cond_5
    mul-int/lit8 v16, v11, 0x2

    add-int v15, v2, v16

    move/from16 v16, v9

    if-le v4, v15, :cond_6

    move/from16 v18, v12

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    int-to-float v9, v4

    move/from16 v18, v12

    int-to-float v12, v15

    div-float/2addr v9, v12

    .line 216
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_7

    .line 219
    iget-object v12, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    move/from16 v19, v2

    add-int/lit8 v2, v3, 0x1

    move/from16 v20, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v3, v12, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3

    :cond_7
    move/from16 v19, v2

    move/from16 v20, v3

    .line 221
    :goto_3
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/4 v12, 0x0

    cmpl-float v2, v2, v12

    if-nez v2, :cond_9

    .line 222
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    .line 223
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_8
    move/from16 v22, v11

    move/from16 v21, v13

    goto :goto_4

    .line 226
    :cond_9
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    mul-float v3, v2, v13

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v12, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    sub-float/2addr v3, v12

    iget v12, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v12, v17, v12

    mul-float v3, v3, v12

    add-float/2addr v2, v3

    .line 228
    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_a

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_a

    .line 229
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v10, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 232
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 233
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    sub-float v12, v7, v2

    move/from16 v21, v13

    sub-float v13, v10, v2

    move/from16 v22, v11

    add-float v11, v7, v2

    add-float/2addr v2, v10

    invoke-virtual {v3, v12, v13, v11, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 234
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 235
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 238
    :goto_4
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    if-eqz v2, :cond_c

    .line 239
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    .line 241
    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v3, v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float v13, v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 242
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    mul-float v3, v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 245
    :cond_b
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    .line 247
    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v3, v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float v13, v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    mul-float v3, v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 252
    :cond_c
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    .line 254
    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v3, v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float v13, v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    mul-float v3, v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 258
    :cond_d
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    .line 260
    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v3, v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float v13, v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    mul-float v3, v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    :goto_5
    const/high16 v11, 0x437f0000    # 255.0f

    if-le v4, v15, :cond_10

    .line 267
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v3, v5

    const v3, 0x3ecccccd    # 0.4f

    mul-float v5, v5, v3

    mul-float v5, v5, v9

    mul-float v5, v5, v11

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz p2, :cond_f

    .line 269
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v1

    move/from16 v12, v22

    int-to-float v4, v12

    add-int v1, v1, v19

    int-to-float v1, v1

    add-int v5, v12, v20

    add-int v5, v5, v18

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_6

    :cond_f
    move/from16 v12, v22

    .line 271
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/2addr v5, v12

    sub-int v5, v5, v20

    int-to-float v4, v5

    add-int v1, v1, v19

    int-to-float v1, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v12

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 273
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    move/from16 v13, v18

    int-to-float v2, v13

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_10
    move/from16 v13, v18

    move/from16 v12, v22

    :goto_7
    if-eqz p2, :cond_11

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_11
    if-eqz v16, :cond_12

    int-to-float v1, v14

    .line 282
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x29

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v14, v1

    .line 284
    :cond_12
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/16 v18, 0x1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_14

    if-eqz v16, :cond_13

    goto :goto_8

    :cond_13
    move/from16 v20, v7

    goto/16 :goto_a

    .line 285
    :cond_14
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    mul-float v3, v9, v11

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v1, v6

    int-to-float v2, v14

    int-to-float v3, v13

    .line 286
    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 288
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->getIntrinsicHeight()I

    move-result v3

    .line 289
    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->getIntrinsicWidth()I

    move-result v4

    .line 291
    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    shr-int/lit8 v4, v4, 0x1

    sub-int v11, v6, v4

    shr-int/lit8 v3, v3, 0x1

    move/from16 v20, v7

    sub-int v7, v14, v3

    add-int/2addr v4, v6

    add-int/2addr v14, v3

    invoke-virtual {v5, v11, v7, v4, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 293
    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    const/4 v5, 0x0

    cmpg-float v7, v3, v5

    if-gez v7, :cond_15

    const/4 v3, 0x0

    :cond_15
    sub-float v3, v4, v3

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v5, 0x43340000    # 180.0f

    mul-float v5, v5, v3

    .line 299
    invoke-virtual {v8, v5, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 300
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    mul-float v1, v1, v4

    sub-float/2addr v1, v3

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    if-eqz v2, :cond_16

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    goto :goto_9

    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundColorKey:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    :goto_9
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->setColor(I)V

    .line 302
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->setAlpha(I)V

    .line 303
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 307
    :goto_a
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    .line 308
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIn()V

    .line 311
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v15

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float v11, v1, v2

    .line 312
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v14, v1, v2

    .line 314
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const v15, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_18

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_18

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v1, 0x3e4ccccd    # 0.2f

    .line 316
    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    mul-float v3, v3, v1

    add-float/2addr v3, v15

    const/16 v1, 0x10

    .line 317
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    sub-float v4, v2, v4

    mul-float v1, v1, v4

    add-float/2addr v1, v11

    invoke-virtual {v8, v3, v3, v14, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 319
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v1, v1, v7

    mul-float v1, v1, v9

    iget v7, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    mul-float v1, v1, v7

    float-to-int v7, v1

    const/16 v22, 0x1f

    move-object/from16 v1, p1

    move/from16 v23, v6

    move v6, v7

    move/from16 v24, v20

    move/from16 v7, v22

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 320
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v14, v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v11

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 324
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_19

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1a

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :cond_19
    const/high16 v3, 0x3f800000    # 1.0f

    .line 328
    :cond_1a
    :goto_b
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1b

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1b

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3dcccccd    # 0.1f

    .line 330
    iget v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    sub-float v4, v3, v4

    mul-float v4, v4, v2

    add-float/2addr v4, v1

    const/16 v1, 0x8

    .line 331
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    mul-float v1, v1, v2

    sub-float v1, v11, v1

    invoke-virtual {v8, v4, v4, v14, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 333
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v1, v6, v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v1, v1, v6

    mul-float v1, v1, v9

    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    mul-float v1, v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 334
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v14, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    mul-float v1, v1, v2

    add-float/2addr v11, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    sub-float/2addr v11, v1

    invoke-virtual {v8, v14, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 338
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1c

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1c

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 341
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-nez v16, :cond_1f

    .line 343
    iget-boolean v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->changeAvatarColor:Z

    if-eqz v1, :cond_1f

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1f

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 345
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 347
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v2, :cond_1d

    int-to-float v1, v1

    mul-float v1, v1, v15

    float-to-int v1, v1

    .line 353
    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v12

    sub-int/2addr v2, v13

    const/16 v3, 0x18

    .line 355
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v15, v4, v3

    .line 356
    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v15, v15, v5

    add-float/2addr v3, v15

    add-float v3, v3, v21

    move/from16 v6, v23

    int-to-float v6, v6

    move/from16 v7, v24

    sub-float/2addr v6, v7

    sub-float v15, v4, v5

    mul-float v6, v6, v15

    int-to-float v2, v2

    sub-float/2addr v2, v10

    sub-float v15, v4, v5

    mul-float v2, v2, v15

    .line 360
    invoke-virtual {v8, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 361
    invoke-virtual {v8, v3, v3, v7, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 363
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 364
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-nez v2, :cond_1e

    .line 365
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 366
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Arrow1.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 367
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Arrow2.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 368
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 369
    sput-boolean v18, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    .line 372
    :cond_1e
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float v3, v7, v1

    float-to-int v3, v3

    sub-float v4, v10, v1

    float-to-int v4, v4

    add-float/2addr v7, v1

    float-to-int v5, v7

    add-float/2addr v10, v1

    float-to-int v1, v10

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 373
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1f
    :goto_c
    return-void
.end method

.method public drawOverScroll(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x1

    .line 169
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method protected getViewOffset()F
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public isDraw()Z
    .locals 1

    .line 636
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->willDraw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetText()V
    .locals 2

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 648
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 649
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    .line 651
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    const/4 v0, 0x0

    .line 652
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    .line 653
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    return-void
.end method

.method public setCell(Landroid/view/View;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    .line 149
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->updateColors()V

    return-void
.end method

.method public setListView(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method public setWillDraw(Z)V
    .locals 0

    .line 641
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->willDraw:Z

    return-void
.end method

.method public showHidden()V
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 619
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setOutProgress(F)V

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    .line 621
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateOut:Z

    return-void
.end method

.method public startOutAnimation()V
    .locals 8

    .line 513
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateOut:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 516
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateOut:Z

    .line 521
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    const/4 v1, 0x0

    .line 522
    iput v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    .line 523
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    const/16 v1, 0x64

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 524
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 525
    new-instance v3, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 532
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xfa

    .line 533
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v3, v1, [F

    .line 535
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 536
    new-instance v4, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 544
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x96

    .line 545
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v1, [F

    .line 547
    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 548
    new-instance v6, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 556
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x87

    .line 557
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 559
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    .line 560
    new-instance v6, Lorg/telegram/ui/Components/PullForegroundDrawable$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$2;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 567
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v1, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v5, v6, v0

    .line 568
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    const-wide/16 v5, 0xb4

    .line 569
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 571
    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v7

    aput-object v4, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public updateColors()V
    .locals 4

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundColorKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 156
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 157
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->setColor(I)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
