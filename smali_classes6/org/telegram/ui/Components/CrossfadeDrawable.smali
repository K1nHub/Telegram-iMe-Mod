.class public Lorg/telegram/ui/Components/CrossfadeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CrossfadeDrawable.java"


# instance fields
.field private final bottomDrawable:Landroid/graphics/drawable/Drawable;

.field globalAlpha:F

.field private progress:F

.field private final topDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$f1cC1B-c_BHxEQf9VJVIbrx70NU(Lorg/telegram/ui/Components/CrossfadeDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->lambda$setProgress$0()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 21
    iput v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->globalAlpha:F

    .line 24
    iput-object p1, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object p2, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 28
    new-instance v0, Lorg/telegram/ui/Components/CrossfadeDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CrossfadeDrawable$1;-><init>(Lorg/telegram/ui/Components/CrossfadeDrawable;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 50
    new-instance p1, Lorg/telegram/ui/Components/CrossfadeDrawable$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/CrossfadeDrawable$2;-><init>(Lorg/telegram/ui/Components/CrossfadeDrawable;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/CrossfadeDrawable;)F
    .locals 0

    .line 15
    iget p0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->progress:F

    return p0
.end method

.method private synthetic lambda$setProgress$0()V
    .locals 0

    .line 124
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->topDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->globalAlpha:F

    iget v2, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->progress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->globalAlpha:F

    iget v3, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->progress:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-lez v1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->topDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-lez v2, :cond_1

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->topDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->topDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 118
    iget v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->progress:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->topDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    int-to-float p1, p1

    .line 94
    iput p1, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->globalAlpha:F

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->topDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 122
    iput p1, p0, Lorg/telegram/ui/Components/CrossfadeDrawable;->progress:F

    .line 123
    new-instance p1, Lorg/telegram/ui/Components/CrossfadeDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/CrossfadeDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/CrossfadeDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
