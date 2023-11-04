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
.method public static synthetic $r8$lambda$4W3SBw0ctaPjapwYAZ5OmTujoMs(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->lambda$createAnimationLayoutsDiff$1(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uO_XHt7dov2zPkGa0azEfsmFQCg(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->lambda$createAnimationLayouts$0(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    .line 506
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 490
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    .line 491
    new-instance p1, Landroid/graphics/CornerPathEffect;

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p1, p2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->pathEffect:Landroid/graphics/PathEffect;

    .line 492
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    .line 498
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    const/16 p2, 0x16

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;)V
    .locals 0

    .line 488
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->checkAnimationComplete()V

    return-void
.end method

.method private checkAnimationComplete()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 733
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 734
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

    .line 738
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 739
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animationInProgress:Z

    .line 740
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createAnimationLayouts$0(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 663
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->progress:F

    .line 664
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createAnimationLayoutsDiff$1(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 714
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->progress:F

    .line 715
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updatePath()V
    .locals 12

    .line 521
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->arrowCenter:F

    mul-float/2addr v2, v3

    .line 523
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

    .line 524
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/16 v7, 0x18

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v6, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    .line 525
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    .line 526
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v2, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    .line 528
    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 529
    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    int-to-float v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v8, v9

    sub-float v9, v8, v9

    const/4 v10, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v9, v11

    invoke-virtual {v7, v6, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 530
    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 531
    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 532
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 533
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->arrowCenter:F

    const v1, 0x3f333333    # 0.7f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v9, v1

    invoke-virtual {v0, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method createAnimationLayouts()V
    .locals 22

    move-object/from16 v0, p0

    .line 621
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 622
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$700(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 625
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v10, 0x1

    move v2, v1

    move v5, v2

    move v4, v10

    .line 629
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 630
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 631
    new-instance v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;)V

    .line 632
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v2}, Landroid/text/StaticLayout;->getSecondaryHorizontal(I)F

    move-result v7

    iput v7, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->x:F

    .line 634
    iput-boolean v4, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->direction:Z

    if-lt v5, v10, :cond_1

    xor-int/lit8 v4, v4, 0x1

    move v5, v1

    :cond_1
    add-int/2addr v5, v10

    .line 641
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    const/16 v8, 0xa

    if-nez v7, :cond_2

    move v7, v8

    :cond_2
    move v9, v10

    :goto_1
    if-gt v9, v7, :cond_4

    if-ne v9, v8, :cond_3

    move v11, v1

    goto :goto_2

    :cond_3
    move v11, v9

    .line 650
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 651
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

    .line 652
    iget-object v12, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 654
    :cond_4
    new-instance v6, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v6, v2, v7, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 657
    :cond_6
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

    .line 658
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 659
    iput-boolean v10, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animationInProgress:Z

    .line 660
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 661
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 662
    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 666
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$1;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 673
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 674
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 675
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

    .line 676
    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method createAnimationLayoutsDiff(Ljava/lang/CharSequence;)V
    .locals 20

    move-object/from16 v0, p0

    .line 682
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_0

    return-void

    .line 685
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 686
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    const/4 v11, 0x0

    move v2, v11

    :goto_0
    if-ltz v1, :cond_4

    .line 689
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    move-object/from16 v4, p1

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    const/16 v5, 0x20

    .line 690
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 691
    new-instance v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;)V

    .line 692
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v1}, Landroid/text/StaticLayout;->getSecondaryHorizontal(I)F

    move-result v7

    iput v7, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->x:F

    .line 694
    iput-boolean v10, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->replace:Z

    if-lt v2, v10, :cond_2

    move v2, v11

    :cond_2
    add-int/2addr v2, v10

    .line 700
    new-instance v7, Landroid/text/StaticLayout;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textWidth:F

    float-to-int v15, v5

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v7

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 701
    iget-object v5, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    new-instance v5, Landroid/text/StaticLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    iget v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textWidth:F

    float-to-int v15, v7

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v12, v5

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 704
    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v5, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v5}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v5, v1, v6, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 708
    :cond_4
    new-instance v1, Landroid/text/StaticLayout;

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

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedStableLayout:Landroid/text/StaticLayout;

    .line 709
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_5

    .line 710
    iput-boolean v10, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animationInProgress:Z

    .line 711
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 712
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 713
    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 717
    iget-object v2, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$2;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$2;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 724
    iget-object v2, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 725
    iget-object v2, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 726
    iget-object v2, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    sub-int/2addr v3, v11

    int-to-long v3, v3

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 727
    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
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

    .line 543
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 544
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$600(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 546
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

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$200(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v11

    sub-float v11, v2, v11

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v12, v2

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 547
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

    .line 548
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getPremiumLocakedPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v2, v6, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 550
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->invalidatePath:Z

    if-eqz v2, :cond_1

    .line 551
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->invalidatePath:Z

    .line 552
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->updatePath()V

    .line 554
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

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$200(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v11

    sub-float v11, v2, v11

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v12, v2

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 555
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    invoke-virtual {v2, v4, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    div-float/2addr v7, v3

    .line 556
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v2, v7, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 557
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->pathEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 558
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->path:Landroid/graphics/Path;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 559
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 560
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->invalidationEnabled:Z

    if-eqz v2, :cond_2

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 565
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getWidth()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 566
    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 567
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animationInProgress:Z

    if-nez v3, :cond_3

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_9

    .line 569
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 570
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 572
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 575
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 576
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v7, v1

    invoke-virtual {p1, v5, v5, v3, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 577
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedStableLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_4

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 579
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 580
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    move v1, v5

    .line 583
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 584
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->animatedLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;

    .line 585
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 586
    iget-boolean v7, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->replace:Z

    if-eqz v7, :cond_5

    .line 587
    iget v7, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->x:F

    add-float/2addr v7, v2

    int-to-float v8, v0

    iget v9, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->progress:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    iget-object v9, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rsub-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v0

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    move v7, v5

    .line 588
    :goto_2
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    neg-int v8, v0

    int-to-float v8, v8

    .line 589
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 590
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/StaticLayout;

    invoke-virtual {v8, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 592
    :cond_5
    iget-boolean v7, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->direction:Z

    if-eqz v7, :cond_6

    .line 593
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

    .line 594
    :goto_3
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    int-to-float v8, v0

    .line 595
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 596
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/StaticLayout;

    invoke-virtual {v8, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 599
    :cond_6
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

    .line 600
    :goto_4
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    neg-int v8, v0

    int-to-float v8, v8

    .line 601
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 602
    iget-object v8, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView$AnimatedLayout;->staticLayouts:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/StaticLayout;

    invoke-virtual {v8, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 605
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 608
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 514
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->textWidth:F

    .line 515
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

    .line 516
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

    .line 517
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->updatePath()V

    return-void
.end method

.method public setArrowCenter(F)V
    .locals 1

    .line 754
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->arrowCenter:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 755
    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->arrowCenter:F

    const/4 p1, 0x1

    .line 756
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->invalidatePath:Z

    .line 757
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 745
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    goto :goto_0

    .line 747
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    .line 748
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->text:Ljava/lang/CharSequence;

    .line 749
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->createAnimationLayoutsDiff(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 614
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 615
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 616
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
