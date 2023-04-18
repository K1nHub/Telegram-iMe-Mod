.class public Lorg/telegram/ui/Components/CheckBoxBase;
.super Ljava/lang/Object;
.source "CheckBoxBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;
    }
.end annotation


# static fields
.field private static eraser:Landroid/graphics/Paint;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field public animationDuration:J

.field private attachedToWindow:Z

.field private background2ColorKey:Ljava/lang/String;

.field private backgroundAlpha:F

.field private backgroundColorKey:Ljava/lang/String;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundType:I

.field public bounds:Landroid/graphics/Rect;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkColorKey:Ljava/lang/String;

.field private checkPaint:Landroid/graphics/Paint;

.field private checkedText:Ljava/lang/String;

.field private circlePaintProvider:Lorg/telegram/messenger/GenericProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Void;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private drawUnchecked:Z

.field private enabled:Z

.field private isChecked:Z

.field private messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private parentView:Landroid/view/View;

.field private path:Landroid/graphics/Path;

.field private progress:F

.field private progressDelegate:Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private size:F

.field private textPaint:Landroid/text/TextPaint;

.field private useDefaultCheck:Z


# direct methods
.method public static synthetic $r8$lambda$jFKiHvrXngJtr_K49FnZYckkP-k(Ljava/lang/Void;)Landroid/graphics/Paint;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->lambda$new$0(Ljava/lang/Void;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->enabled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    iput v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    const-string v1, "checkboxCheck"

    .line 63
    iput-object v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    const-string v1, "chat_serviceBackground"

    .line 64
    iput-object v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    .line 81
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Components/CheckBoxBase$$ExternalSyntheticLambda0;

    iput-object v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

    const-wide/16 v1, 0xc8

    .line 192
    iput-wide v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->animationDuration:J

    .line 88
    iput-object p3, p0, Lorg/telegram/ui/Components/CheckBoxBase;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 89
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    int-to-float p1, p2

    .line 90
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    .line 91
    sget-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    .line 94
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->eraser:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 95
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    sget-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->eraser:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    .line 99
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 102
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    const p2, 0x3ff33333    # 1.9f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    .line 105
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const p2, 0x3f99999a    # 1.2f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/CheckBoxBase;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/CheckBoxBase;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/CheckBoxBase;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/CheckBoxBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    return-object p1
.end method

.method private animateToCheckedState(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    .line 194
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    .line 195
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxBase$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CheckBoxBase$1;-><init>(Lorg/telegram/ui/Components/CheckBoxBase;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->animationDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private invalidate()V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Void;)Landroid/graphics/Paint;
    .locals 0

    .line 81
    sget-object p0, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 262
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 264
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v7, 0xb

    const/16 v10, 0xd

    const/16 v11, 0xa

    const/16 v12, 0xc

    if-eq v2, v12, :cond_1

    if-ne v2, v10, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_2

    const v2, 0x3e4ccccd    # 0.2f

    .line 268
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    move v13, v1

    move v1, v2

    goto :goto_1

    .line 265
    :cond_1
    :goto_0
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :cond_2
    move v13, v1

    .line 272
    :goto_1
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    const/high16 v14, 0x3f000000    # 0.5f

    cmpl-float v3, v2, v14

    if-ltz v3, :cond_3

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    div-float/2addr v2, v14

    move/from16 v16, v2

    .line 274
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 275
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 277
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:Ljava/lang/String;

    const/high16 v17, 0x437f0000    # 255.0f

    const v4, 0xffffff

    const/16 v15, 0xe

    const/4 v9, 0x7

    const/4 v7, 0x0

    const/4 v14, 0x6

    if-eqz v2, :cond_c

    .line 278
    iget-boolean v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-eqz v3, :cond_a

    .line 279
    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    if-eq v3, v12, :cond_9

    if-ne v3, v10, :cond_4

    goto :goto_5

    :cond_4
    if-eq v3, v14, :cond_8

    if-ne v3, v9, :cond_5

    goto :goto_4

    :cond_5
    if-eq v3, v11, :cond_7

    if-ne v3, v15, :cond_6

    goto :goto_3

    .line 289
    :cond_6
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    move-result v3

    and-int/2addr v3, v4

    const/high16 v4, 0x28000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_8

    .line 287
    :cond_7
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_8

    .line 284
    :cond_8
    :goto_4
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_8

    .line 280
    :cond_9
    :goto_5
    sget-object v3, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    mul-float v3, v3, v17

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 282
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 293
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:Ljava/lang/String;

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    :goto_6
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    iget v9, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    iget v14, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    invoke-static {v4, v3, v9, v14}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 296
    :cond_c
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-eqz v2, :cond_e

    .line 297
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41c80000    # 25.0f

    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v3, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_d

    .line 299
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 301
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    iget v9, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    const/4 v14, -0x1

    invoke-static {v14, v3, v4, v9}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 304
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:Ljava/lang/String;

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    :goto_7
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    iget v9, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    iget v14, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    invoke-static {v4, v3, v9, v14}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    :goto_8
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    const/high16 v9, 0x3fc00000    # 1.5f

    const/4 v14, 0x1

    if-eqz v2, :cond_15

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    if-ltz v2, :cond_15

    if-eq v2, v12, :cond_15

    if-ne v2, v10, :cond_10

    goto :goto_b

    :cond_10
    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    if-eq v2, v11, :cond_14

    if-ne v2, v15, :cond_11

    goto :goto_a

    :cond_11
    const/4 v3, 0x6

    if-eq v2, v3, :cond_13

    const/4 v3, 0x7

    if-ne v2, v3, :cond_12

    goto :goto_9

    :cond_12
    int-to-float v2, v6

    int-to-float v3, v5

    .line 317
    sget-object v4, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_13
    :goto_9
    int-to-float v2, v6

    int-to-float v3, v5

    .line 314
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v13, v4

    sget-object v7, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 315
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v13, v4

    iget-object v7, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_14
    :goto_a
    int-to-float v2, v6

    int-to-float v3, v5

    .line 312
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v13, v4

    iget-object v7, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 320
    :cond_15
    :goto_b
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/4 v7, 0x0

    const/16 v4, 0x9

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1e

    if-eq v2, v4, :cond_1e

    if-eq v2, v11, :cond_1e

    if-eq v2, v15, :cond_1e

    if-eq v2, v12, :cond_1c

    if-ne v2, v10, :cond_16

    goto/16 :goto_10

    :cond_16
    if-eqz v2, :cond_1b

    const/16 v3, 0xb

    if-ne v2, v3, :cond_17

    goto/16 :goto_f

    .line 340
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    int-to-float v3, v6

    sub-float v4, v3, v1

    int-to-float v9, v5

    sub-float v10, v9, v1

    add-float/2addr v3, v1

    add-float/2addr v9, v1

    invoke-virtual {v2, v4, v10, v3, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 343
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_18

    const/high16 v2, -0x3c4c0000    # -360.0f

    .line 345
    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move v9, v2

    const/4 v2, 0x6

    const/4 v10, 0x0

    goto :goto_d

    :cond_18
    if-ne v1, v14, :cond_19

    const/16 v2, -0x5a

    const/high16 v3, -0x3c790000    # -270.0f

    .line 348
    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    goto :goto_c

    :cond_19
    const/16 v2, 0x5a

    const/high16 v3, 0x43870000    # 270.0f

    .line 351
    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    :goto_c
    mul-float/2addr v4, v3

    float-to-int v3, v4

    move v10, v2

    move v9, v3

    const/4 v2, 0x6

    :goto_d
    if-ne v1, v2, :cond_1a

    const-string v1, "dialogBackground"

    .line 355
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    .line 356
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 357
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    int-to-float v3, v10

    int-to-float v4, v9

    const/16 v20, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    const/4 v12, 0x0

    const/16 v15, 0x9

    move v11, v5

    move/from16 v5, v20

    move v15, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const-string v1, "chat_attachPhotoBackground"

    .line 360
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    .line 361
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 362
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_e

    :cond_1a
    move v11, v5

    move v15, v6

    const/4 v12, 0x0

    .line 365
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    int-to-float v3, v10

    int-to-float v4, v9

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_12

    :cond_1b
    :goto_f
    move v11, v5

    move v15, v6

    const/4 v12, 0x0

    int-to-float v1, v15

    int-to-float v2, v11

    .line 338
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v13, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_1c
    :goto_10
    move v11, v5

    move v15, v6

    const/4 v12, 0x0

    .line 323
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->hasGradient()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 325
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getGradientShader()Landroid/graphics/Shader;

    move-result-object v1

    .line 326
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 328
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    .line 329
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result v3

    neg-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v12, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 330
    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 331
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_11

    .line 333
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_11
    int-to-float v1, v15

    int-to-float v2, v11

    .line 335
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v13, v3

    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    mul-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 336
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_12

    :cond_1e
    move v11, v5

    move v15, v6

    const/4 v12, 0x0

    :goto_12
    cmpl-float v1, v16, v12

    if-lez v1, :cond_30

    .line 370
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1f

    move v9, v12

    goto :goto_13

    :cond_1f
    sub-float/2addr v1, v2

    div-float v3, v1, v2

    move v9, v3

    .line 372
    :goto_13
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_20

    .line 373
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_16

    :cond_20
    const/16 v2, 0xb

    if-eq v1, v2, :cond_24

    const/4 v2, 0x6

    if-eq v1, v2, :cond_24

    const/4 v2, 0x7

    if-eq v1, v2, :cond_24

    const/16 v2, 0xa

    if-eq v1, v2, :cond_24

    .line 374
    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-nez v2, :cond_21

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:Ljava/lang/String;

    if-nez v2, :cond_24

    :cond_21
    const/16 v2, 0xe

    if-ne v1, v2, :cond_22

    goto :goto_15

    .line 377
    :cond_22
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->enabled:Z

    if-eqz v2, :cond_23

    const-string v2, "checkbox"

    goto :goto_14

    :cond_23
    const-string v2, "checkboxDisabled"

    :goto_14
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_16

    .line 375
    :cond_24
    :goto_15
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    :goto_16
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->useDefaultCheck:Z

    if-nez v1, :cond_25

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 380
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_17

    .line 382
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    const-string v2, "checkboxCheck"

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    :goto_17
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 386
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v1, v2

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    int-to-float v1, v15

    sub-float/2addr v1, v10

    int-to-float v2, v11

    sub-float/2addr v2, v10

    .line 388
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 389
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v4, v1

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    const/16 v18, 0xff

    const/16 v19, 0x1f

    move-object/from16 v1, p1

    move v14, v6

    move/from16 v6, v18

    move-object v12, v7

    move/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 390
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

    invoke-interface {v1, v12}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    .line 391
    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_27

    const/16 v3, 0xd

    if-ne v2, v3, :cond_26

    goto :goto_18

    :cond_26
    const/high16 v2, 0x3f000000    # 0.5f

    .line 399
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v13, v2

    .line 400
    invoke-virtual {v8, v10, v10, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v16

    mul-float/2addr v13, v2

    .line 401
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v10, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_19

    .line 392
    :cond_27
    :goto_18
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    mul-float v3, v16, v17

    float-to-int v3, v3

    .line 393
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-float v13, v13, v16

    .line 394
    invoke-virtual {v8, v10, v10, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 395
    sget-object v3, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    if-eq v1, v3, :cond_28

    .line 396
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 403
    :cond_28
    :goto_19
    invoke-virtual {v8, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v1, 0x0

    goto :goto_1a

    :cond_29
    move v1, v12

    :goto_1a
    cmpl-float v1, v9, v1

    if-eqz v1, :cond_30

    .line 406
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 407
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    if-nez v1, :cond_2a

    .line 408
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    const-string v3, "fonts/rmedium.ttf"

    .line 409
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1b

    :cond_2a
    const/4 v2, 0x1

    .line 412
    :goto_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2c

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2b

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x417c0000    # 15.75f

    goto :goto_1c

    :cond_2b
    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41840000    # 16.5f

    goto :goto_1c

    :cond_2c
    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41900000    # 18.0f

    .line 427
    :goto_1c
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 428
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v15

    int-to-float v3, v11

    const/high16 v4, 0x3f800000    # 1.0f

    .line 430
    invoke-virtual {v8, v9, v4, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 431
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1e

    :cond_2d
    const/high16 v4, 0x3f800000    # 1.0f

    .line 434
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 436
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2e

    const v1, 0x3fb33333    # 1.4f

    goto :goto_1d

    :cond_2e
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2f

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_1d

    :cond_2f
    move v1, v4

    :goto_1d
    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v2, v1

    .line 441
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v1, v3

    .line 442
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 443
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v6, v15, v3

    const/4 v3, 0x4

    .line 444
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int v5, v11, v3

    mul-float/2addr v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-double v3, v1

    .line 445
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 446
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    int-to-float v4, v6

    sub-float v6, v4, v1

    int-to-float v5, v5

    sub-float v1, v5, v1

    invoke-virtual {v3, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 447
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float/2addr v2, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    float-to-double v1, v2

    .line 448
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 449
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    add-float/2addr v4, v1

    sub-float/2addr v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 450
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_30
    :goto_1e
    return-void
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 158
    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->attachedToWindow:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->attachedToWindow:Z

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0

    .line 227
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    return-void
.end method

.method public setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-void
.end method

.method public setBackgroundType(I)V
    .locals 4

    .line 170
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x5

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const v0, 0x3f99999a    # 1.2f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_5

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2

    .line 174
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const v3, 0x3ff33333    # 1.9f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-ne p1, v2, :cond_5

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2

    .line 172
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 123
    iput p2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    .line 124
    iput p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    .line 125
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setChecked(IZZ)V
    .locals 2

    if-ltz p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    .line 246
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    .line 248
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    if-ne p2, p1, :cond_1

    return-void

    .line 251
    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    .line 253
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->attachedToWindow:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 254
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CheckBoxBase;->animateToCheckedState(Z)V

    goto :goto_1

    .line 256
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->cancelCheckAnimator()V

    if-eqz p2, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 257
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CheckBoxBase;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    const/4 v0, -0x1

    .line 240
    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxBase;->setChecked(IZZ)V

    return-void
.end method

.method public setCirclePaintProvider(Lorg/telegram/messenger/GenericProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Void;",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 457
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

    return-void
.end method

.method public setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setDrawUnchecked(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->enabled:Z

    return-void
.end method

.method public setNum(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    .line 236
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 134
    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    .line 138
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progressDelegate:Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;->setProgress(F)V

    :cond_1
    return-void
.end method

.method public setProgressDelegate(Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progressDelegate:Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    int-to-float p1, p1

    .line 32
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    .line 33
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setUseDefaultCheck(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->useDefaultCheck:Z

    return-void
.end method
