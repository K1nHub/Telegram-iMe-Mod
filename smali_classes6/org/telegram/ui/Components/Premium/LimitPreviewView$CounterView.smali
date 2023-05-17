.class Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;
.super Landroid/view/View;
.source "LimitPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/LimitPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;
    }
.end annotation


# instance fields
.field animatedLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;",
            ">;"
        }
    .end annotation
.end field

.field animatedStableLayout:Landroid/text/StaticLayout;

.field animationInProgress:Z

.field arrowCenter:F

.field invalidatePath:Z

.field path:Landroid/graphics/Path;

.field pathEffect:Landroid/graphics/PathEffect;

.field text:Ljava/lang/CharSequence;

.field textLayout:Landroid/text/StaticLayout;

.field textPaint:Landroid/text/TextPaint;

.field textWidth:F

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;


# direct methods
.method public static synthetic $r8$lambda$uO_XHt7dov2zPkGa0azEfsmFQCg(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->lambda$createAnimationLayouts$0(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    .line 350
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 334
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    .line 335
    new-instance p1, Landroid/graphics/CornerPathEffect;

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p1, p2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->pathEffect:Landroid/graphics/PathEffect;

    .line 336
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    .line 342
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    .line 351
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    const/16 p2, 0x16

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;)V
    .locals 0

    .line 332
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->checkAnimationComplete()V

    return-void
.end method

.method private checkAnimationComplete()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 512
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 513
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 518
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animationInProgress:Z

    .line 519
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createAnimationLayouts$0(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 494
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->progress:F

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updatePath()V
    .locals 12

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 366
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->arrowCenter:F

    mul-float/2addr v2, v3

    .line 367
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    const/16 v4, 0xa

    .line 368
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    .line 370
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 371
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v2, v7

    int-to-float v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v8, v9

    sub-float v9, v8, v9

    const/4 v10, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v9, v11

    invoke-virtual {v5, v7, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 372
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 373
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 374
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 375
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->arrowCenter:F

    const v1, 0x3f333333    # 0.7f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 378
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v9, v1

    invoke-virtual {v0, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method createAnimationLayouts()V
    .locals 22

    move-object/from16 v0, p0

    .line 455
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 456
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v10, 0x1

    move v2, v1

    move v5, v2

    move v4, v10

    .line 460
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 461
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 462
    new-instance v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;)V

    .line 463
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v2}, Landroid/text/StaticLayout;->getSecondaryHorizontal(I)F

    move-result v7

    iput v7, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->x:F

    .line 465
    iput-boolean v4, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->direction:Z

    if-lt v5, v10, :cond_0

    xor-int/lit8 v4, v4, 0x1

    move v5, v1

    :cond_0
    add-int/2addr v5, v10

    .line 472
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    const/16 v8, 0xa

    if-nez v7, :cond_1

    move v7, v8

    :cond_1
    move v9, v10

    :goto_1
    if-gt v9, v7, :cond_3

    if-ne v9, v8, :cond_2

    move v11, v1

    goto :goto_2

    :cond_2
    move v11, v9

    .line 481
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 482
    new-instance v11, Landroid/text/StaticLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    iget v13, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textWidth:F

    float-to-int v13, v13

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v11

    move-object/from16 v16, v12

    move/from16 v17, v13

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 483
    iget-object v12, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 485
    :cond_3
    new-instance v6, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v6, v2, v7, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 488
    :cond_5
    new-instance v11, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    iget v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textWidth:F

    float-to-int v2, v2

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v2

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedStableLayout:Landroid/text/StaticLayout;

    .line 489
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 490
    iput-boolean v10, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animationInProgress:Z

    .line 491
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 492
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 493
    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 497
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$1;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 505
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 506
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v10

    sub-int/2addr v4, v1

    int-to-long v4, v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 507
    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 385
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 386
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$200(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 388
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v11

    sub-float v11, v2, v11

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v12, v2

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 389
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v6, 0x3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v0, v6

    int-to-float v6, v6

    invoke-virtual {v2, v4, v7, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float v6, v0

    div-float/2addr v6, v3

    .line 390
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getPremiumLocakedPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v2, v6, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 392
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->invalidatePath:Z

    if-eqz v2, :cond_1

    .line 393
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->invalidatePath:Z

    .line 394
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->updatePath()V

    .line 396
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v11

    sub-float v11, v2, v11

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v12, v2

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 397
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    invoke-virtual {v2, v4, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    div-float/2addr v7, v3

    .line 398
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v2, v7, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 399
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->pathEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 401
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 405
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getWidth()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 406
    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 407
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animationInProgress:Z

    if-nez v3, :cond_2

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 410
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 412
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    .line 415
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v7, v1

    invoke-virtual {p1, v5, v5, v3, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 417
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedStableLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 419
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 420
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    move v1, v5

    .line 423
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 424
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 426
    iget-boolean v7, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->direction:Z

    if-eqz v7, :cond_4

    .line 427
    iget v7, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->x:F

    add-float/2addr v7, v2

    mul-int/lit8 v8, v0, 0xa

    int-to-float v8, v8

    iget v9, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->progress:F

    mul-float/2addr v8, v9

    sub-float v8, v6, v8

    iget-object v9, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rsub-int/lit8 v9, v9, 0xa

    mul-int/2addr v9, v0

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    move v7, v5

    .line 428
    :goto_2
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    int-to-float v8, v0

    .line 429
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 430
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/StaticLayout;

    invoke-virtual {v8, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 433
    :cond_4
    iget v7, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->x:F

    add-float/2addr v7, v2

    mul-int/lit8 v8, v0, 0xa

    int-to-float v8, v8

    iget v9, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->progress:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    iget-object v9, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rsub-int/lit8 v9, v9, 0xa

    mul-int/2addr v9, v0

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    move v7, v5

    .line 434
    :goto_3
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    neg-int v8, v0

    int-to-float v8, v8

    .line 435
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 436
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/StaticLayout;

    invoke-virtual {v8, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 439
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 442
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textWidth:F

    .line 359
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textWidth:F

    float-to-int p2, p2

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int v3, p2, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    .line 360
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    const/16 p2, 0x2c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 361
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->updatePath()V

    return-void
.end method

.method public setArrowCenter(F)V
    .locals 1

    .line 527
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->arrowCenter:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 528
    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->arrowCenter:F

    const/4 p1, 0x1

    .line 529
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->invalidatePath:Z

    .line 530
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 449
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
