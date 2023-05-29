.class public Lorg/telegram/ui/Components/WallpaperCheckBoxView;
.super Landroid/view/View;
.source "WallpaperCheckBoxView.java"


# instance fields
.field public final PROGRESS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/Components/WallpaperCheckBoxView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundPaint:Landroid/graphics/Paint;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkPaint:Landroid/graphics/Paint;

.field private colors:[I

.field private currentText:Ljava/lang/String;

.field private currentTextSize:I

.field private drawBitmap:Landroid/graphics/Bitmap;

.field private drawCanvas:Landroid/graphics/Canvas;

.field private eraserPaint:Landroid/graphics/Paint;

.field private isChecked:Z

.field private maxTextSize:I

.field private parentView:Landroid/view/View;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 39
    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->colors:[I

    .line 43
    new-instance p1, Lorg/telegram/ui/Components/WallpaperCheckBoxView$1;

    const-string p4, "progress"

    invoke-direct {p1, p0, p4}, Lorg/telegram/ui/Components/WallpaperCheckBoxView$1;-><init>(Lorg/telegram/ui/Components/WallpaperCheckBoxView;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->PROGRESS_PROPERTY:Landroid/util/Property;

    .line 59
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    if-eqz p2, :cond_0

    const/16 p1, 0x12

    .line 62
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawBitmap:Landroid/graphics/Bitmap;

    .line 63
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawCanvas:Landroid/graphics/Canvas;

    .line 66
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->parentView:Landroid/view/View;

    .line 68
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->textPaint:Landroid/text/TextPaint;

    const/16 p3, 0xe

    .line 69
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 70
    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->textPaint:Landroid/text/TextPaint;

    const-string p3, "fonts/rmedium.ttf"

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkPaint:Landroid/graphics/Paint;

    .line 73
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkPaint:Landroid/graphics/Paint;

    const/4 p3, 0x2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkPaint:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 79
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->eraserPaint:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->eraserPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/WallpaperCheckBoxView;)F
    .locals 0

    .line 18
    iget p0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->progress:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/WallpaperCheckBoxView;F)F
    .locals 0

    .line 18
    iput p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->progress:F

    return p1
.end method

.method private animateToCheckedState(Z)V
    .locals 3

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->PROGRESS_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 199
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 228
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private setProgress(F)V
    .locals 1

    .line 184
    iget v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->progress:F

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->parentView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrixForView(Landroid/view/View;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v4, v4

    const-string v5, "paintChatActionBackground"

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->textPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    iget-object v4, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->currentTextSize:I

    sub-int/2addr v0, v4

    const/16 v4, 0x1c

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v0, v5

    div-int/2addr v0, v2

    .line 122
    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->currentText:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v4, v4

    const/16 v6, 0x15

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/4 v4, 0x7

    .line 125
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawBitmap:Landroid/graphics/Bitmap;

    const/16 v5, 0x12

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v0, :cond_5

    .line 129
    iget v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->progress:F

    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v10, v0, v9

    const/high16 v11, 0x3f800000    # 1.0f

    if-gtz v10, :cond_2

    div-float/2addr v0, v9

    move v10, v0

    goto :goto_1

    :cond_2
    div-float/2addr v0, v9

    sub-float v0, v8, v0

    move v10, v11

    .line 136
    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    .line 137
    iget-object v12, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v6

    invoke-virtual {v12, v6, v6, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 139
    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 140
    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v8

    iget-object v12, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float/2addr v12, v8

    iget-object v13, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    cmpl-float v1, v10, v11

    if-eqz v1, :cond_3

    .line 144
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 145
    iget-object v4, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    invoke-virtual {v4, v5, v2, v7, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 146
    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 149
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->progress:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_4

    const v1, 0x40e9999a    # 7.3f

    .line 150
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40200000    # 2.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v11, v0

    mul-float/2addr v5, v11

    sub-float/2addr v2, v5

    float-to-int v0, v2

    const/16 v2, 0xd

    .line 151
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    sub-float/2addr v5, v4

    float-to-int v4, v5

    .line 152
    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawCanvas:Landroid/graphics/Canvas;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v0

    int-to-float v9, v4

    iget-object v10, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 154
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    sub-float/2addr v5, v4

    float-to-int v4, v5

    .line 155
    iget-object v5, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawCanvas:Landroid/graphics/Canvas;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v6, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v7, v1

    int-to-float v8, v0

    int-to-float v9, v4

    iget-object v10, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->checkPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 157
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 159
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->colors:[I

    const/4 v1, 0x3

    aget v3, v0, v1

    if-eqz v3, :cond_6

    :goto_2
    const/4 v0, 0x4

    if-ge v7, v0, :cond_9

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->colors:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v9, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    mul-int/lit8 v0, v7, 0x5a

    add-int/lit8 v0, v0, -0x5a

    int-to-float v10, v0

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x1

    iget-object v13, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 165
    :cond_6
    aget v3, v0, v2

    if-eqz v3, :cond_7

    :goto_3
    if-ge v7, v1, :cond_9

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->colors:[I

    aget v2, v2, v7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v9, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    mul-int/lit8 v0, v7, 0x78

    add-int/lit8 v0, v0, -0x5a

    int-to-float v10, v0

    const/high16 v11, 0x42f00000    # 120.0f

    const/4 v12, 0x1

    iget-object v13, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 170
    :cond_7
    aget v1, v0, v6

    if-eqz v1, :cond_8

    :goto_4
    if-ge v7, v2, :cond_9

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->colors:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v9, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    mul-int/lit16 v0, v7, 0xb4

    add-int/lit8 v0, v0, -0x5a

    int-to-float v10, v0

    const/high16 v11, 0x43340000    # 180.0f

    const/4 v12, 0x1

    iget-object v13, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 176
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    aget v0, v0, v7

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v8

    iget-object v2, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v8

    iget-object v3, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 180
    :cond_9
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 205
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 106
    iget p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->maxTextSize:I

    const/16 p2, 0x38

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 212
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked:Z

    if-eqz p2, :cond_1

    .line 214
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->animateToCheckedState(Z)V

    goto :goto_1

    .line 216
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->cancelCheckAnimator()V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 217
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->progress:F

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method public setColor(II)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->colors:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 94
    iput-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->colors:[I

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->colors:[I

    aput p2, v0, p1

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;II)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->currentText:Ljava/lang/String;

    .line 88
    iput p2, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->currentTextSize:I

    .line 89
    iput p3, p0, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->maxTextSize:I

    return-void
.end method
