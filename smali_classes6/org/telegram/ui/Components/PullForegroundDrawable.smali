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

.field private avatarBackgroundColorKey:I

.field private backgroundActiveColorKey:I

.field private backgroundColorKey:I

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private bounceIn:Z

.field private bounceProgress:F

.field private cell:Landroid/view/View;

.field private changeAvatarColor:Z

.field private final circleClipPath:Landroid/graphics/Path;

.field private generalTopicDrawable:Landroid/graphics/drawable/Drawable;

.field private isOut:Z

.field private lastWidth:I

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

.field private pullTooltipLayoutLeft:F

.field private pullTooltipLayoutScale:F

.field private pullTooltipLayoutWidth:F

.field private final pullTooltipText:Ljava/lang/CharSequence;

.field private final rectF:Landroid/graphics/RectF;

.field private releaseTooltipLayout:Landroid/text/StaticLayout;

.field private releaseTooltipLayoutLeft:F

.field private releaseTooltipLayoutScale:F

.field private releaseTooltipLayoutWidth:F

.field private final releaseTooltipText:Ljava/lang/CharSequence;

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
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundColorKey:I

    .line 46
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackgroundActive:I

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundActiveColorKey:I

    .line 47
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchivedHidden:I

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->changeAvatarColor:Z

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    .line 55
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    .line 56
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    .line 62
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    .line 69
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    .line 70
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    .line 97
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    .line 102
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    .line 110
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 117
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 539
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$1;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    const-string v0, "fonts/rmedium.ttf"

    .line 125
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v0, 0x10

    .line 127
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 129
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->touchSlop:F

    .line 132
    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipText:Ljava/lang/CharSequence;

    .line 133
    iput-object p2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipText:Ljava/lang/CharSequence;

    .line 136
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

    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PullForegroundDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/PullForegroundDrawable;F)F
    .locals 0

    .line 36
    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PullForegroundDrawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method private checkTextLayouts(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 142
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->lastWidth:I

    if-eq v1, v2, :cond_6

    .line 147
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipText:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->x:I

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    .line 149
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 150
    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    int-to-float v4, v1

    div-float v6, v4, v5

    const/high16 v7, 0x3f800000    # 1.0f

    .line 152
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    float-to-double v5, v5

    .line 153
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 154
    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    const v8, 0x3f4ccccd    # 0.8f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    .line 155
    iput v8, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    .line 156
    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipText:Ljava/lang/CharSequence;

    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v5

    .line 158
    :cond_1
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipText:Ljava/lang/CharSequence;

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v6

    move v12, v5

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    int-to-float v5, v5

    .line 159
    iput v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    .line 160
    iput v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    move v5, v2

    .line 161
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 162
    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    iget-object v9, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v5}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    .line 163
    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    iget-object v9, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 166
    :cond_2
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipText:Ljava/lang/CharSequence;

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v6, Landroid/graphics/Point;->x:I

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    move v5, v2

    move v6, v3

    .line 168
    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 169
    iget-object v9, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    div-float/2addr v4, v6

    .line 171
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    float-to-double v4, v6

    .line 172
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 173
    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_4

    .line 174
    iput v8, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    .line 175
    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipText:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    invoke-static {v4, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v4

    .line 177
    :cond_4
    new-instance v13, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipText:Ljava/lang/CharSequence;

    iget-object v7, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v13

    move v8, v4

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    int-to-float v4, v4

    .line 178
    iput v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    .line 179
    iput v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    .line 180
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 181
    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    .line 182
    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 185
    :cond_5
    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->lastWidth:I

    :cond_6
    return-void
.end method

.method public static getMaxOverscroll()I
    .locals 1

    const/16 v0, 0x48

    .line 190
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$colorize$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 504
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    .line 505
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 508
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$colorize$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 524
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 528
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    .line 529
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 111
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOutAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 586
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setOutProgress(F)V

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOutAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 597
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    const/4 p1, 0x1

    .line 598
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    .line 599
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOutAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 609
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    const/4 p1, 0x0

    .line 610
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTextProgress$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 481
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    .line 482
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setOutProgress(F)V
    .locals 3

    .line 636
    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    .line 637
    iget p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundActiveColorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-static {p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->changeAvatarColor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->isDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 641
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v1, "Arrow1.**"

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 642
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v1, "Arrow2.**"

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 643
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    const/4 p1, 0x1

    .line 644
    sput-boolean p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    :cond_0
    return-void
.end method

.method private textIn()V
    .locals 4

    .line 558
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    if-nez v0, :cond_1

    .line 559
    iget v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->scrollDy:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->touchSlop:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 560
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 561
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    .line 562
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    goto :goto_0

    .line 565
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 567
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

    const v0, 0x3f59999a    # 0.85f

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 455
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToEndText:Z

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eq v2, p1, :cond_6

    .line 456
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToEndText:Z

    .line 457
    iget v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    .line 458
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    .line 461
    :goto_1
    iput v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    goto :goto_3

    .line 463
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_4

    .line 464
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    new-array v2, v3, [F

    .line 466
    iget v6, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    aput v6, v2, v1

    if-eqz p1, :cond_5

    move v6, v5

    goto :goto_2

    :cond_5
    move v6, v4

    :goto_2
    aput v6, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    .line 467
    iget-object v6, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xaa

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 470
    iget-object v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 474
    :cond_6
    :goto_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    if-eq p1, v2, :cond_9

    .line 475
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    .line 477
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    new-array p1, v3, [F

    .line 479
    iget v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    aput v2, p1, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    if-eqz v1, :cond_8

    move v4, v5

    :cond_8
    aput v4, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    .line 480
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    return-void
.end method


# virtual methods
.method public colorize(Z)V
    .locals 8

    .line 493
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    if-eq v0, p1, :cond_3

    .line 494
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    const/4 v0, 0x0

    const-wide/16 v1, 0xe6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    .line 496
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 498
    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    .line 501
    :cond_0
    iput v7, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    new-array p1, v6, [F

    aput v7, p1, v5

    aput v3, p1, v4

    .line 502
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    .line 503
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 514
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 516
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 517
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 518
    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    .line 521
    :cond_2
    iput v7, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    new-array p1, v6, [F

    aput v7, p1, v5

    aput v3, p1, v4

    .line 522
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    .line 523
    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 532
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public doNotShow()V
    .locals 4

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 655
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 656
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 658
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 659
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 661
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    .line 662
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    const/4 v1, 0x0

    .line 663
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToEndText:Z

    .line 664
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    .line 665
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    .line 666
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    const/4 v2, 0x0

    .line 667
    iput v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    const/4 v3, 0x1

    .line 668
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    .line 669
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setOutProgress(F)V

    .line 670
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    .line 671
    iput v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 234
    iget-boolean v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->willDraw:Z

    if-eqz v1, :cond_20

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz v1, :cond_20

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v2, :cond_0

    goto/16 :goto_d

    .line 237
    :cond_0
    instance-of v9, v1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v9, :cond_1

    const/16 v1, 0xf

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    .line 238
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v10, 0x8

    .line 239
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/16 v2, 0x9

    .line 240
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/16 v2, 0x12

    .line 241
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 243
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getViewOffset()F

    move-result v3

    float-to-int v3, v3

    .line 244
    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 246
    iget-boolean v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    if-eqz v5, :cond_2

    const v5, 0x3d8f5c29    # 0.07f

    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    mul-float/2addr v6, v5

    const v5, 0x3d4ccccd    # 0.05f

    sub-float/2addr v6, v5

    goto :goto_1

    :cond_2
    const v5, 0x3ca3d70a    # 0.02f

    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    mul-float/2addr v6, v5

    :goto_1
    move v13, v6

    .line 248
    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v1, 0x4

    sub-int/2addr v5, v6

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v5, v7

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/PullForegroundDrawable;->checkTextLayouts(I)V

    .line 250
    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/PullForegroundDrawable;->updateTextProgress(F)V

    .line 252
    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v5, v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v15

    if-lez v7, :cond_3

    move v5, v15

    .line 257
    :cond_3
    iget v7, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 258
    iget v10, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    if-eqz p2, :cond_4

    int-to-float v6, v3

    add-float/2addr v10, v6

    :cond_4
    add-int v6, v1, v12

    .line 264
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

    .line 271
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_7

    const/16 v19, 0x4

    .line 274
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v12, v12

    move/from16 v19, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    move/from16 v20, v11

    add-int/lit8 v11, v3, 0x1

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v12, v2, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3

    :cond_7
    move/from16 v19, v2

    move/from16 v21, v3

    move/from16 v20, v11

    const/4 v3, 0x0

    .line 276
    :goto_3
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-nez v2, :cond_9

    .line 277
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_8

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_8

    .line 278
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_8
    move/from16 v22, v13

    goto :goto_4

    .line 281
    :cond_9
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    mul-float v12, v2, v13

    add-float/2addr v2, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    sub-float/2addr v12, v3

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v3, v17, v3

    mul-float/2addr v12, v3

    add-float/2addr v2, v12

    .line 283
    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_a

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_a

    .line 284
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v10, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 287
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 288
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    sub-float v12, v7, v2

    sub-float v11, v10, v2

    move/from16 v22, v13

    add-float v13, v7, v2

    add-float/2addr v2, v10

    invoke-virtual {v3, v12, v11, v13, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 289
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 290
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 293
    :goto_4
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    if-eqz v2, :cond_c

    .line 294
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    .line 296
    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float/2addr v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float/2addr v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    mul-float/2addr v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 300
    :cond_b
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    .line 302
    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float/2addr v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float/2addr v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 303
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    mul-float/2addr v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 307
    :cond_c
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    .line 309
    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float/2addr v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float/2addr v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    mul-float/2addr v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 313
    :cond_d
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    .line 315
    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float/2addr v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float/2addr v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    mul-float/2addr v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    :goto_5
    const/high16 v11, 0x437f0000    # 255.0f

    if-le v4, v15, :cond_10

    .line 322
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v3, v5

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v3

    mul-float/2addr v5, v9

    mul-float/2addr v5, v11

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz p2, :cond_f

    .line 324
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v1

    move/from16 v12, v20

    int-to-float v4, v12

    add-int v5, v1, v19

    int-to-float v5, v5

    add-int v13, v12, v21

    add-int v13, v13, v18

    int-to-float v13, v13

    invoke-virtual {v2, v3, v4, v5, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_6

    :cond_f
    move/from16 v12, v20

    .line 326
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/2addr v5, v12

    sub-int v5, v5, v21

    int-to-float v4, v5

    add-int v5, v1, v19

    int-to-float v5, v5

    iget-object v13, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int/2addr v13, v12

    int-to-float v13, v13

    invoke-virtual {v2, v3, v4, v5, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 328
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    move/from16 v13, v18

    int-to-float v3, v13

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_10
    move/from16 v13, v18

    move/from16 v12, v20

    :goto_7
    if-eqz p2, :cond_11

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_11
    if-eqz v16, :cond_12

    int-to-float v2, v14

    .line 337
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/16 v4, 0x29

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v14, v2

    .line 339
    :cond_12
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/16 v18, 0x1

    if-eqz v4, :cond_14

    if-eqz v16, :cond_13

    goto :goto_8

    :cond_13
    move/from16 v20, v7

    move/from16 v21, v10

    goto/16 :goto_a

    .line 340
    :cond_14
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    mul-float v4, v9, v11

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v6

    int-to-float v3, v14

    int-to-float v4, v13

    .line 341
    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 343
    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 344
    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->getIntrinsicWidth()I

    move-result v5

    .line 346
    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    shr-int/lit8 v5, v5, 0x1

    move/from16 v20, v7

    sub-int v7, v6, v5

    shr-int/lit8 v4, v4, 0x1

    move/from16 v21, v10

    sub-int v10, v14, v4

    add-int/2addr v5, v6

    add-int/2addr v14, v4

    invoke-virtual {v11, v7, v10, v5, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    iget v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    const/4 v7, 0x0

    cmpg-float v10, v4, v7

    if-gez v10, :cond_15

    const/4 v4, 0x0

    :cond_15
    sub-float v4, v5, v4

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v7, 0x43340000    # 180.0f

    mul-float/2addr v7, v4

    .line 354
    invoke-virtual {v8, v7, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 355
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 356
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    goto :goto_9

    :cond_16
    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundColorKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    :goto_9
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->setColor(I)V

    .line 357
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->setAlpha(I)V

    .line 358
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 362
    :goto_a
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_17

    .line 363
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIn()V

    .line 366
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v15

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float v10, v2, v3

    .line 367
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v16, :cond_18

    mul-int/lit8 v1, v1, 0x2

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 369
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    const v14, 0x3f4ccccd    # 0.8f

    if-eqz v1, :cond_1a

    .line 370
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_19

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_19

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v1, 0x3e4ccccd    # 0.2f

    .line 372
    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    mul-float/2addr v3, v1

    add-float/2addr v3, v14

    const/16 v1, 0x10

    .line 373
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    sub-float v15, v2, v4

    mul-float/2addr v1, v15

    add-float/2addr v1, v10

    invoke-virtual {v8, v3, v3, v11, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_19
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 375
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

    mul-float/2addr v1, v7

    mul-float/2addr v1, v9

    iget v7, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    mul-float/2addr v1, v7

    float-to-int v7, v1

    const/16 v15, 0x1f

    move-object/from16 v1, p1

    move/from16 v23, v6

    move v6, v7

    move/from16 v24, v20

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 376
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    sub-float v1, v11, v1

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v15, v4, v3

    mul-float/2addr v2, v15

    add-float/2addr v2, v10

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 377
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 378
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 379
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 380
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1b

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :cond_1a
    move/from16 v23, v6

    move/from16 v24, v20

    .line 385
    :cond_1b
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1d

    .line 386
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1c

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1c

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v1, 0x3f666666    # 0.9f

    const v3, 0x3dcccccd    # 0.1f

    .line 388
    iget v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    sub-float v15, v2, v4

    mul-float/2addr v15, v3

    add-float/2addr v15, v1

    const/16 v1, 0x8

    .line 389
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    mul-float/2addr v1, v2

    sub-float v1, v10, v1

    invoke-virtual {v8, v15, v15, v11, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 391
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

    sub-float v15, v6, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v15, v1

    mul-float/2addr v15, v9

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    mul-float/2addr v15, v1

    float-to-int v6, v15

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 392
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    sub-float/2addr v11, v1

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v11, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v10, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v10, v1

    invoke-virtual {v8, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 393
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 394
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 396
    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1d

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1d

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 401
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-nez v16, :cond_20

    .line 403
    iget-boolean v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->changeAvatarColor:Z

    if-eqz v1, :cond_20

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_20

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 405
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 407
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v2, :cond_1e

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    .line 413
    :cond_1e
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v12

    sub-int/2addr v2, v13

    const/16 v3, 0x18

    .line 415
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v15, v4, v3

    .line 416
    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float/2addr v15, v5

    add-float/2addr v3, v15

    add-float v3, v3, v22

    move/from16 v6, v23

    int-to-float v6, v6

    move/from16 v7, v24

    sub-float/2addr v6, v7

    sub-float v15, v4, v5

    mul-float/2addr v6, v15

    int-to-float v2, v2

    sub-float v2, v2, v21

    sub-float v15, v4, v5

    mul-float/2addr v2, v15

    .line 420
    invoke-virtual {v8, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v10, v21

    .line 421
    invoke-virtual {v8, v3, v3, v7, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 423
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 424
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-nez v2, :cond_1f

    .line 425
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 426
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v3

    const-string v4, "Arrow1.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 427
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v3

    const-string v4, "Arrow2.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 428
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 429
    sput-boolean v18, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    .line 432
    :cond_1f
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

    .line 433
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_20
    :goto_d
    return-void
.end method

.method public drawOverScroll(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x1

    .line 222
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

    .line 696
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

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 708
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 709
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    .line 711
    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    const/4 v0, 0x0

    .line 712
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    .line 713
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    return-void
.end method

.method public setCell(Landroid/view/View;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    .line 202
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->updateColors()V

    return-void
.end method

.method public setListView(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method public setWillDraw(Z)V
    .locals 0

    .line 701
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->willDraw:Z

    return-void
.end method

.method public showHidden()V
    .locals 1

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 679
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setOutProgress(F)V

    const/4 v0, 0x0

    .line 680
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    .line 681
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateOut:Z

    return-void
.end method

.method public startOutAnimation()V
    .locals 8

    .line 573
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateOut:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateOut:Z

    .line 581
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    const/4 v1, 0x0

    .line 582
    iput v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    .line 583
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    const/16 v1, 0x64

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 584
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 585
    new-instance v3, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 592
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xfa

    .line 593
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v3, v1, [F

    .line 595
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 596
    new-instance v4, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 604
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x96

    .line 605
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v1, [F

    .line 607
    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 608
    new-instance v6, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 616
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x87

    .line 617
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 619
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    .line 620
    new-instance v6, Lorg/telegram/ui/Components/PullForegroundDrawable$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$2;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v1, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v5, v6, v0

    .line 628
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    const-wide/16 v5, 0xb4

    .line 629
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 631
    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v7

    aput-object v4, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 632
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

    .line 207
    iget v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundColorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->setColor(I)V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
