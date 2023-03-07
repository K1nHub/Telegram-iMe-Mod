.class public Lorg/telegram/ui/Components/voip/AcceptDeclineView;
.super Landroid/view/View;
.source "AcceptDeclineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;,
        Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;
    }
.end annotation


# instance fields
.field private acceptCirclePaint:Landroid/graphics/Paint;

.field private acceptDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

.field private acceptLayout:Landroid/text/StaticLayout;

.field acceptRect:Landroid/graphics/Rect;

.field private accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

.field arrowDrawable:Landroid/graphics/drawable/Drawable;

.field arrowProgress:F

.field bigRadius:F

.field private buttonWidth:I

.field private callDrawable:Landroid/graphics/drawable/Drawable;

.field private cancelDrawable:Landroid/graphics/drawable/Drawable;

.field captured:Z

.field private declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

.field private declineLayout:Landroid/text/StaticLayout;

.field declineRect:Landroid/graphics/Rect;

.field expandBigRadius:Z

.field expandSmallRadius:Z

.field leftAnimator:Landroid/animation/Animator;

.field leftDrag:Z

.field leftOffsetX:F

.field linePaint:Landroid/graphics/Paint;

.field listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

.field maxOffset:F

.field private retryLayout:Landroid/text/StaticLayout;

.field retryMod:Z

.field rightAnimator:Landroid/animation/Animator;

.field rigthOffsetX:F

.field rippleDrawable:Landroid/graphics/drawable/Drawable;

.field private screenWasWakeup:Z

.field smallRadius:F

.field startDrag:Z

.field startX:F

.field startY:F

.field touchSlop:F


# direct methods
.method public static synthetic $r8$lambda$XEKpzvhtApUfBXFcAbsBBZXtimc(Lorg/telegram/ui/Components/voip/AcceptDeclineView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->lambda$onTouchEvent$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lk93wO5tJWrNgRQERin5X2GqM8o(Lorg/telegram/ui/Components/voip/AcceptDeclineView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->lambda$onTouchEvent$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 87
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptCirclePaint:Landroid/graphics/Paint;

    .line 56
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandSmallRadius:Z

    .line 57
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandBigRadius:Z

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineRect:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->linePaint:Landroid/graphics/Paint;

    .line 88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->touchSlop:F

    const/16 v0, 0x3c

    .line 89
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const v2, -0xbf38b7

    .line 91
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 93
    new-instance v0, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const v2, -0xfe2d4

    .line 94
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    const/16 v1, 0xb

    .line 100
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, -0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 103
    sget v2, Lorg/telegram/messenger/R$string;->AcceptCall:I

    const-string v4, "AcceptCall"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 104
    sget v2, Lorg/telegram/messenger/R$string;->DeclineCall:I

    const-string v4, "DeclineCall"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 105
    sget v4, Lorg/telegram/messenger/R$string;->RetryCall:I

    const-string v6, "RetryCall"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 107
    new-instance v13, Landroid/text/StaticLayout;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v7, v4

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v13

    move-object v6, v0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptLayout:Landroid/text/StaticLayout;

    .line 108
    new-instance v13, Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v7, v4

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v4, v13

    move-object v5, v2

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineLayout:Landroid/text/StaticLayout;

    .line 110
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v7, v4

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v4, v2

    move-object v5, v12

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryLayout:Landroid/text/StaticLayout;

    .line 112
    sget v0, Lorg/telegram/messenger/R$drawable;->calls_decline:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->cancelDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v5, -0x1000000

    invoke-direct {v2, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptCirclePaint:Landroid/graphics/Paint;

    const v2, 0x3f45bc4d

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x34

    .line 117
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v2, 0x4c

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-static {v0, v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    sget v0, Lorg/telegram/messenger/R$drawable;->call_arrow_right:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)Landroid/text/StaticLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)Landroid/text/StaticLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)Landroid/text/StaticLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method private synthetic lambda$onTouchEvent$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 208
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private synthetic lambda$onTouchEvent$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 222
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rightAnimator:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 405
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p0, v1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$1;-><init>(Lorg/telegram/ui/Components/voip/AcceptDeclineView;Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

    .line 490
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 416
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 247
    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-nez v2, :cond_4

    .line 248
    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandSmallRadius:Z

    const v9, 0x3d23d70a    # 0.04f

    if-eqz v2, :cond_0

    .line 249
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v9

    add-float/2addr v2, v10

    iput v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    .line 250
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v2, v2, v9

    if-lez v2, :cond_1

    .line 251
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    .line 252
    iput-boolean v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandSmallRadius:Z

    goto :goto_0

    .line 255
    :cond_0
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v9

    sub-float/2addr v2, v10

    iput v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_1

    .line 257
    iput v7, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    .line 258
    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandSmallRadius:Z

    .line 262
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandBigRadius:Z

    const v9, 0x3cf5c28f    # 0.03f

    if-eqz v2, :cond_2

    .line 263
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v9

    add-float/2addr v2, v10

    iput v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    .line 264
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v2, v2, v9

    if-lez v2, :cond_3

    .line 265
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    .line 266
    iput-boolean v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandBigRadius:Z

    goto :goto_1

    .line 269
    :cond_2
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    const/4 v10, 0x5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v9

    sub-float/2addr v2, v11

    iput v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    .line 270
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v2, v2, v9

    if-gez v2, :cond_3

    .line 271
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    .line 272
    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandBigRadius:Z

    .line 275
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_4
    const v2, 0x3f19999a    # 0.6f

    .line 280
    iget-boolean v9, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->screenWasWakeup:Z

    const/16 v10, 0x28

    const/16 v11, 0x8

    const/16 v12, 0x2e

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v9, :cond_9

    iget-boolean v9, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    if-nez v9, :cond_9

    .line 282
    iget v9, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowProgress:F

    const v14, 0x3c2ec33e

    add-float/2addr v9, v14

    iput v9, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowProgress:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v14

    if-lez v9, :cond_5

    .line 284
    iput v7, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowProgress:F

    .line 287
    :cond_5
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v15, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v9, v15

    float-to-int v9, v9

    .line 288
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    iget v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    add-int/2addr v15, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v15, v4

    int-to-float v4, v15

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v15, v8

    .line 291
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const v8, 0x3e088888

    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x3

    if-ge v10, v11, :cond_8

    sub-float v11, v15, v4

    sub-float/2addr v11, v3

    const/high16 v16, 0x40400000    # 3.0f

    div-float v11, v11, v16

    int-to-float v13, v10

    mul-float v11, v11, v13

    add-float/2addr v11, v4

    float-to-int v7, v11

    mul-float v13, v13, v8

    .line 299
    iget v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowProgress:F

    const/high16 v17, 0x3f000000    # 0.5f

    cmpl-float v18, v8, v13

    if-lez v18, :cond_7

    add-float v18, v13, v2

    cmpg-float v18, v8, v18

    if-gez v18, :cond_7

    sub-float/2addr v8, v13

    div-float/2addr v8, v2

    move/from16 v18, v3

    float-to-double v2, v8

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    cmpl-double v21, v2, v19

    if-lez v21, :cond_6

    sub-float v8, v14, v8

    :cond_6
    add-float v17, v8, v17

    goto :goto_3

    :cond_7
    move/from16 v18, v3

    .line 304
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 305
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    div-int/2addr v3, v6

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    shr-int/2addr v8, v5

    int-to-float v8, v8

    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13, v3, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 306
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v17

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 307
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v6

    sub-int v3, v9, v3

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v7

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/2addr v13, v6

    add-int/2addr v13, v9

    invoke-virtual {v2, v7, v3, v8, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v11

    float-to-int v2, v2

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    shr-int/2addr v3, v5

    int-to-float v3, v3

    iget v7, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    div-int/2addr v8, v6

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v11, 0x0

    invoke-virtual {v1, v3, v11, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v7, v2

    .line 314
    iget-object v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    sub-float/2addr v7, v8

    int-to-float v8, v9

    invoke-virtual {v1, v3, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 315
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v7, v2, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/2addr v8, v6

    sub-int v8, v9, v8

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    div-int/2addr v11, v6

    add-int/2addr v11, v9

    invoke-virtual {v3, v7, v8, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 316
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v18

    const v2, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const v8, 0x3e088888

    const/high16 v13, 0x40000000    # 2.0f

    goto/16 :goto_2

    .line 319
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 321
    :cond_9
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v3, v4

    const v4, 0x3ba3d70a    # 0.005f

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v2, 0x28

    .line 323
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 325
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 329
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 330
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 331
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineRect:Landroid/graphics/Rect;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x28

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    add-int/2addr v7, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iget v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    add-int/2addr v8, v4

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 334
    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    if-eqz v2, :cond_a

    .line 335
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->cancelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 337
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    :goto_4
    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    if-eqz v2, :cond_b

    .line 341
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 342
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 345
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 348
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 349
    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    if-nez v2, :cond_c

    .line 350
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v6, v2

    div-float/2addr v6, v4

    int-to-float v2, v2

    div-float/2addr v2, v4

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v7, v8

    sub-float/2addr v2, v7

    iget v7, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    add-float/2addr v2, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 351
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v3, v2

    div-float/2addr v3, v4

    int-to-float v6, v2

    div-float/2addr v6, v4

    int-to-float v2, v2

    div-float/2addr v2, v4

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v4, v7

    sub-float/2addr v2, v4

    iget v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    add-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 353
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    sub-int/2addr v3, v4

    const/16 v4, 0x28

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    add-int/2addr v4, v8

    invoke-virtual {v2, v3, v6, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 356
    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    if-eqz v2, :cond_d

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 358
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 359
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 362
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 363
    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 364
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 368
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 369
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x3cf90000    # -135.0f

    .line 370
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 371
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 374
    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    if-nez v2, :cond_e

    .line 375
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v7, v3

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 376
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 379
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 427
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 126
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    const/16 p2, 0x2e

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v0, p2

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maxOffset:F

    .line 129
    iget p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    const/16 p2, 0x1c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->cancelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p1, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->linePaint:Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->linePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_8

    goto/16 :goto_3

    .line 165
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    if-eqz v0, :cond_12

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startX:F

    sub-float/2addr v0, v3

    .line 167
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startDrag:Z

    if-nez v3, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->touchSlop:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 168
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    if-nez v3, :cond_2

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startX:F

    .line 171
    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startDrag:Z

    .line 172
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 176
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    .line 179
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startDrag:Z

    if-eqz p1, :cond_7

    .line 180
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    if-eqz p1, :cond_5

    .line 181
    iput v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    cmpg-float p1, v0, v4

    if-gez p1, :cond_4

    .line 183
    iput v4, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    goto :goto_1

    .line 184
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maxOffset:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_7

    .line 185
    iput p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 189
    :cond_5
    iput v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    cmpl-float p1, v0, v4

    if-lez p1, :cond_6

    .line 191
    iput v4, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    goto :goto_1

    .line 192
    :cond_6
    iget p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maxOffset:F

    neg-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    neg-float p1, p1

    .line 193
    iput p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    :goto_1
    return v2

    .line 203
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startY:F

    sub-float/2addr p1, v0

    .line 204
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    if-eqz v0, :cond_e

    .line 205
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    const v5, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_b

    new-array v0, v3, [F

    .line 206
    iget v3, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    aput v3, v0, v1

    aput v4, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 207
    new-instance v2, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 213
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftAnimator:Landroid/animation/Animator;

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    if-eqz v0, :cond_e

    .line 215
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startDrag:Z

    if-nez v0, :cond_9

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->touchSlop:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->screenWasWakeup:Z

    if-eqz p1, :cond_a

    :cond_9
    iget p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maxOffset:F

    mul-float v0, v0, v5

    cmpl-float p1, p1, v0

    if-lez p1, :cond_e

    .line 216
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    invoke-interface {p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;->onDecline()V

    goto :goto_2

    :cond_b
    new-array v0, v3, [F

    .line 220
    iget v3, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    aput v3, v0, v1

    aput v4, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 221
    new-instance v2, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 227
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rightAnimator:Landroid/animation/Animator;

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    if-eqz v0, :cond_e

    .line 229
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startDrag:Z

    if-nez v0, :cond_c

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->touchSlop:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->screenWasWakeup:Z

    if-eqz p1, :cond_d

    :cond_c
    iget p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    neg-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maxOffset:F

    mul-float v0, v0, v5

    cmpl-float p1, p1, v0

    if-lez p1, :cond_e

    .line 230
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    invoke-interface {p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;->onAccept()V

    .line 235
    :cond_e
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 236
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    .line 237
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startDrag:Z

    .line 238
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_3

    .line 144
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startX:F

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startY:F

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftAnimator:Landroid/animation/Animator;

    const/16 v3, 0x34

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 147
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const v0, -0xc7ba

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    .line 149
    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    .line 150
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    return v2

    .line 153
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rightAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v4, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 154
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const v0, -0xb22eaa

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    .line 156
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    .line 157
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rightAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_11

    .line 159
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_11
    return v2

    :cond_12
    :goto_3
    return v1
.end method

.method public setListener(Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    return-void
.end method

.method public setRetryMod(Z)V
    .locals 1

    .line 394
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    const/4 p1, 0x0

    .line 397
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->screenWasWakeup:Z

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const v0, -0x19e1bc

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setScreenWasWakeup(Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->screenWasWakeup:Z

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

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
