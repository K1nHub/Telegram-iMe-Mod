.class Lorg/telegram/ui/PhotoViewer$PhotoCountView;
.super Landroid/view/View;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoCountView"
.end annotation


# instance fields
.field backgroundPaint:Landroid/graphics/Paint;

.field center:Landroid/text/StaticLayout;

.field centerTop:F

.field centerWidth:F

.field left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private lng:Ljava/lang/String;

.field private marginTop:I

.field private nextNotAnimate:Z

.field paint:Landroid/text/TextPaint;

.field right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private showT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private shown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 875
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 866
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->backgroundPaint:Landroid/graphics/Paint;

    .line 868
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->paint:Landroid/text/TextPaint;

    const/4 p1, 0x0

    .line 945
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->shown:Z

    .line 946
    new-instance v8, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x15e

    move-object v1, v8

    move-object v2, p0

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->showT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 877
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 879
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1, p1, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v5, 0x140

    .line 880
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 881
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 882
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v10, 0xe

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 883
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 884
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 885
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v12, "0"

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 888
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 889
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->paint:Landroid/text/TextPaint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 890
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->paint:Landroid/text/TextPaint;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 891
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->setCenterText()V

    .line 893
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1, p1, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v2, 0x3e99999a    # 0.3f

    .line 894
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 895
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 896
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 897
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 898
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 899
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    return-void
.end method

.method private getOf()Ljava/lang/String;
    .locals 3

    .line 915
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->lng:Ljava/lang/String;

    const-string v0, "Of"

    .line 916
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%1$d"

    const-string v2, ""

    .line 917
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%2$d"

    .line 918
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCenterText()V
    .locals 9

    .line 904
    new-instance v8, Landroid/text/StaticLayout;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->getOf()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->paint:Landroid/text/TextPaint;

    const/16 v0, 0xc8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->center:Landroid/text/StaticLayout;

    .line 905
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->center:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->centerWidth:F

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->center:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->centerTop:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 909
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->centerWidth:F

    .line 910
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->centerTop:F

    :goto_0
    return-void
.end method


# virtual methods
.method public isShown()Z
    .locals 1

    .line 963
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->shown:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 970
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->showT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->shown:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    cmpg-float v1, v0, v3

    if-gtz v1, :cond_1

    return-void

    .line 978
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->centerWidth:F

    add-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v4

    add-float/2addr v1, v4

    const/16 v4, 0x12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 979
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->marginTop:I

    int-to-float v4, v4

    sub-float/2addr v2, v0

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    .line 981
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 982
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v7, 0x41200000    # 10.0f

    .line 983
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    add-float/2addr v7, v4

    .line 984
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    div-float/2addr v8, v6

    const/high16 v9, 0x42040000    # 33.0f

    .line 985
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    add-float/2addr v9, v4

    .line 981
    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 987
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    .line 988
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v8, v5

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v7, 0x41400000    # 12.0f

    .line 991
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    .line 992
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->backgroundPaint:Landroid/graphics/Paint;

    .line 989
    invoke-virtual {p1, v2, v8, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 995
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 997
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 998
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v6

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 999
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v2

    float-to-int v2, v2

    const/16 v4, 0x17

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v7, v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 1000
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 1001
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1003
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1004
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1005
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->center:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->centerWidth:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->center:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->centerTop:F

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    div-float/2addr v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1006
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1007
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->center:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1008
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1010
    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->centerWidth:F

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1011
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v7, v7, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 1012
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1014
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1019
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1020
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->marginTop:I

    .line 1021
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 1022
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 1024
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->marginTop:I

    const/16 v1, 0x2b

    .line 1025
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1023
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public set(II)V
    .locals 1

    const/4 v0, 0x1

    .line 923
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->set(IIZ)V

    return-void
.end method

.method public set(IIZ)V
    .locals 6

    const/4 v0, 0x0

    .line 927
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 928
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 930
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->lng:Ljava/lang/String;

    .line 931
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 933
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->setCenterText()V

    .line 935
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_1

    move v4, p2

    goto :goto_0

    :cond_1
    move v4, p1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_2

    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->nextNotAnimate:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 936
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-array v3, v2, [Ljava/lang/Object;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_4

    iget-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->nextNotAnimate:Z

    if-nez p2, :cond_4

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p2, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    xor-int/lit8 p1, p3, 0x1

    .line 937
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->nextNotAnimate:Z

    return-void
.end method

.method public updateShow(ZZ)V
    .locals 1

    .line 950
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->shown:Z

    if-eq v0, p1, :cond_3

    .line 951
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->shown:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 953
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->nextNotAnimate:Z

    :cond_0
    if-nez p2, :cond_2

    .line 956
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->showT:Lorg/telegram/ui/Components/AnimatedFloat;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 958
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->left:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoCountView;->right:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

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
