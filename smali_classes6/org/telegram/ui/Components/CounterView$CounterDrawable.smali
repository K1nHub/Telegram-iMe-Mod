.class public Lorg/telegram/ui/Components/CounterView$CounterDrawable;
.super Ljava/lang/Object;
.source "CounterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/CounterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CounterDrawable"
.end annotation


# instance fields
.field public addServiceGradient:Z

.field animationType:I

.field private circleColor:I

.field private circleColorKey:Ljava/lang/String;

.field public circlePaint:Landroid/graphics/Paint;

.field public circleScale:F

.field private countAnimationInLayout:Landroid/text/StaticLayout;

.field private countAnimationIncrement:Z

.field private countAnimationStableLayout:Landroid/text/StaticLayout;

.field private countAnimator:Landroid/animation/ValueAnimator;

.field public countChangeProgress:F

.field private countLayout:Landroid/text/StaticLayout;

.field countLeft:F

.field private countOldLayout:Landroid/text/StaticLayout;

.field private countWidth:I

.field private countWidthOld:I

.field currentCount:I

.field private cx:F

.field private cy:F

.field private drawBackground:Z

.field public gravity:I

.field public horizontalPadding:F

.field lastH:I

.field private mute:Z

.field private parent:Landroid/view/View;

.field public radius:F

.field private recentChatsMode:Z

.field public rectF:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private reverseAnimation:Z

.field public shortFormat:Z

.field private textColor:I

.field private textColorKey:Ljava/lang/String;

.field public textPaint:Landroid/text/TextPaint;

.field type:I

.field public updateVisibility:Z

.field width:I

.field x:F


# direct methods
.method public static synthetic $r8$lambda$47SImKvumXB_zaackpGgbe5grY0(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lambda$setCount$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    .line 112
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    .line 113
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    .line 119
    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const-string v0, "chat_goDownButtonCounter"

    .line 130
    iput-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColorKey:Ljava/lang/String;

    const-string v0, "chat_goDownButtonCounterBackground"

    .line 131
    iput-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColorKey:Ljava/lang/String;

    const/16 v0, 0x11

    .line 135
    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    const/high16 v0, 0x41380000    # 11.5f

    .line 138
    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    .line 142
    iput-boolean v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawBackground:Z

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->type:I

    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    .line 157
    iput-object p3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 158
    iput-boolean p2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawBackground:Z

    if-eqz p2, :cond_0

    .line 160
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    .line 161
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 165
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->recentChatsMode:Z

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    const/16 p2, 0xd

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColorKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColorKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->reverseAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationStableLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationInLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)Landroid/view/View;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    return-object p0
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 7

    .line 183
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 184
    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 185
    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    .line 187
    iget-boolean v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->recentChatsMode:Z

    if-eqz v1, :cond_0

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->cx:F

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->cy:F

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->cy:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v6, v4

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 191
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawBackground:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 193
    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 195
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v0, 0x1

    .line 198
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 199
    iget-boolean v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->addServiceGradient:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 206
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->recentChatsMode:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    .line 210
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->cx:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->cy:F

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 212
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 213
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method private getStringOfCCount(I)Ljava/lang/String;
    .locals 1

    .line 330
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->shortFormat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 331
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 333
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$setCount$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 256
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateX(F)V
    .locals 5

    .line 475
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawBackground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40b00000    # 5.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 476
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    const/4 v3, 0x5

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_2

    .line 477
    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->width:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    .line 478
    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->horizontalPadding:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_1

    div-float v1, p1, v4

    add-float/2addr v3, v1

    .line 479
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr v2, p1

    iput v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    goto :goto_1

    :cond_1
    sub-float/2addr v2, p1

    .line 481
    iput v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v2, v1, :cond_3

    .line 484
    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    goto :goto_1

    .line 486
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->width:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    float-to-int p1, v1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    .line 488
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 337
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColorKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 339
    iget-object v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColorKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    .line 341
    iget-boolean v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->recentChatsMode:Z

    if-eqz v3, :cond_1

    .line 342
    iget-boolean v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->mute:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 345
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColor:I

    if-eq v3, v0, :cond_2

    .line 346
    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColor:I

    .line 347
    iget-object v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 349
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColor:I

    if-eq v3, v2, :cond_3

    .line 350
    iput v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColor:I

    .line 351
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_16

    .line 355
    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_14

    if-ne v3, v1, :cond_4

    goto/16 :goto_a

    :cond_4
    mul-float/2addr v0, v4

    cmpl-float v3, v0, v2

    if-lez v3, :cond_5

    move v0, v2

    .line 370
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    mul-float/2addr v5, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 372
    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    iget v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidthOld:I

    if-ne v5, v6, :cond_6

    int-to-float v5, v5

    goto :goto_1

    :cond_6
    int-to-float v5, v5

    mul-float/2addr v5, v0

    int-to-float v6, v6

    sub-float v7, v2, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 377
    :goto_1
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    .line 380
    iget-boolean v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationIncrement:Z

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v6, :cond_8

    .line 381
    iget v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    cmpg-float v8, v6, v7

    const v9, 0x3dcccccd    # 0.1f

    if-gtz v8, :cond_7

    .line 382
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    mul-float/2addr v6, v4

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    goto :goto_2

    .line 384
    :cond_7
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    sub-float v6, v2, v6

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    :goto_2
    mul-float/2addr v6, v9

    add-float/2addr v6, v2

    goto :goto_3

    :cond_8
    move v6, v2

    .line 388
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v9, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    add-float/2addr v5, v9

    iget v10, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sub-float/2addr v10, v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v7, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    mul-float/2addr v7, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v8, v9, v3, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 389
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 390
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 392
    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    cmpl-float v4, v4, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 395
    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    iget-object v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {p1, v4, v4, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v4, v1

    goto :goto_4

    :cond_9
    move v4, v5

    .line 397
    :goto_4
    iget-boolean v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawBackground:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_a

    .line 398
    iget-object v7, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v8, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v10, v8, v9

    mul-float/2addr v8, v9

    invoke-virtual {p1, v7, v10, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 399
    iget-boolean v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->addServiceGradient:Z

    if-eqz v6, :cond_a

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 400
    iget-object v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v7, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v9, v7, v8

    mul-float/2addr v7, v8

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_a
    if-eqz v4, :cond_b

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 406
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 408
    iget-boolean v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->reverseAnimation:Z

    iget-boolean v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationIncrement:Z

    if-eq v4, v6, :cond_c

    goto :goto_5

    :cond_c
    move v1, v5

    .line 409
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationInLayout:Landroid/text/StaticLayout;

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v6, 0x4

    const/16 v7, 0xd

    if-eqz v4, :cond_e

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 411
    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    neg-int v9, v9

    :goto_6
    int-to-float v9, v9

    sub-float v10, v2, v0

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    mul-float v8, v0, v5

    float-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 413
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    .line 415
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_10

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 417
    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    neg-int v9, v9

    :goto_7
    int-to-float v9, v9

    sub-float v10, v2, v0

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    mul-float v8, v0, v5

    float-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 419
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 423
    :cond_10
    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_12

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 425
    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    if-eqz v1, :cond_11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    goto :goto_9

    :cond_11
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_9
    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v8, v1

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    sub-float/2addr v2, v0

    mul-float/2addr v2, v5

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 431
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationStableLayout:Landroid/text/StaticLayout;

    const/16 v1, 0xff

    if-eqz v0, :cond_13

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 433
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 438
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 439
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    .line 356
    :cond_14
    :goto_a
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    .line 357
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 358
    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 360
    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    if-nez v3, :cond_15

    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    goto :goto_b

    :cond_15
    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    sub-float/2addr v2, v3

    .line 361
    :goto_b
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 362
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawInternal(Landroid/graphics/Canvas;)V

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    .line 442
    :cond_16
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawInternal(Landroid/graphics/Canvas;)V

    :goto_c
    return-void
.end method

.method public getCenterX()F
    .locals 3

    .line 492
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    .line 493
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 3

    .line 510
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public setCount(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 219
    iget v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    if-ne v1, v2, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 225
    iget-boolean v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateVisibility:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 226
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_2
    iget v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x63

    if-le v3, v4, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move/from16 v3, p2

    :goto_0
    const/16 v4, 0xc

    if-nez v3, :cond_7

    .line 232
    iput v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    if-nez v1, :cond_5

    .line 234
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateVisibility:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    .line 239
    :cond_5
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getStringOfCCount(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    .line 241
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    iget v6, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    move-object v4, v1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    .line 242
    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void

    .line 247
    :cond_7
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getStringOfCCount(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_10

    .line 250
    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_8

    .line 251
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    const/4 v3, 0x0

    .line 253
    iput v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const/4 v3, 0x2

    new-array v6, v3, [F

    .line 254
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    .line 255
    new-instance v7, Lorg/telegram/ui/Components/CounterView$CounterDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    iget-object v6, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;-><init>(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    iget v6, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    const/4 v7, 0x1

    if-gtz v6, :cond_9

    .line 278
    iput v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    .line 279
    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xdc

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_9
    if-nez v1, :cond_a

    .line 282
    iput v7, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    .line 283
    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 284
    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 286
    :cond_a
    iput v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    .line 287
    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x1ae

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 288
    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 290
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_e

    .line 291
    iget v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getStringOfCCount(I)Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v6, v8, :cond_d

    .line 294
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v9, v2

    .line 297
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_c

    .line 298
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v11, v12, :cond_b

    .line 299
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v10, v11, v9, v12, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 300
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v6, v11, v9, v12, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 302
    :cond_b
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v8, v11, v9, v12, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 306
    :cond_c
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget-object v11, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v3, v11

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 307
    new-instance v15, Landroid/text/StaticLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v15

    move v12, v3

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    .line 308
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v13, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v2

    move-object v12, v8

    move v14, v3

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationStableLayout:Landroid/text/StaticLayout;

    .line 309
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v13, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v11, v2

    move-object v12, v6

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationInLayout:Landroid/text/StaticLayout;

    goto :goto_4

    .line 311
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    iput-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    .line 314
    :cond_e
    :goto_4
    iget v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    iput v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidthOld:I

    .line 315
    iget v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    if-le v1, v2, :cond_f

    move v2, v7

    goto :goto_5

    :cond_f
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationIncrement:Z

    .line 316
    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_10
    if-lez v1, :cond_11

    .line 319
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    .line 320
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    iget v6, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v2, v10

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v11

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    .line 323
    :cond_11
    iput v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz v1, :cond_12

    .line 325
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_12
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setCountResentChats(ZZFF)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->recentChatsMode:Z

    .line 94
    iput-boolean p2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->mute:Z

    .line 95
    iput p3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->cx:F

    .line 96
    iput p4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->cy:F

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 172
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    if-eq p1, v0, :cond_1

    .line 173
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    const/4 v1, -0x1

    .line 174
    iput v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    .line 175
    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 176
    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    .line 178
    :cond_1
    iput p2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->width:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 497
    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->type:I

    return-void
.end method

.method public updateBackgroundRect()V
    .locals 7

    .line 447
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/16 v3, 0x17

    const/16 v4, 0xb

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_4

    .line 448
    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    goto :goto_1

    :cond_0
    mul-float/2addr v0, v5

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    .line 457
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    iget v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    mul-float/2addr v6, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    div-float/2addr v2, v5

    .line 459
    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    iget v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidthOld:I

    if-ne v5, v6, :cond_2

    int-to-float v0, v5

    goto :goto_0

    :cond_2
    int-to-float v5, v5

    mul-float/2addr v5, v0

    int-to-float v6, v6

    sub-float/2addr v1, v0

    mul-float/2addr v6, v1

    add-float v0, v5, v6

    .line 464
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    add-float/2addr v0, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v1, v5, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 449
    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    .line 450
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    mul-float/2addr v1, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 468
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    .line 469
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    mul-float/2addr v1, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 470
    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    return-void
.end method
