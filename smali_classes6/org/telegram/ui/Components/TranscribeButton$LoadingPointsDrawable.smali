.class Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TranscribeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TranscribeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingPointsDrawable"
.end annotation


# instance fields
.field private lastColor:I

.field private lottie:Lorg/telegram/ui/Components/RLottieDrawable;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 7

    .line 615
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 616
    iput-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->paint:Landroid/graphics/Paint;

    .line 617
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    const v0, 0x3f63d70a    # 0.89f

    mul-float/2addr p1, v0

    .line 618
    new-instance v6, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable$1;

    sget v2, Lorg/telegram/messenger/R$raw;->dots_loading:I

    float-to-int v4, p1

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float/2addr p1, v0

    float-to-int v5, p1

    const-string v3, "dots_loading"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable$1;-><init>(Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;ILjava/lang/String;II)V

    iput-object v6, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p1, 0x1

    .line 624
    invoke-virtual {v6, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42700000    # 60.0f

    rem-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 641
    iget v1, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lastColor:I

    if-eq v0, v1, :cond_0

    .line 642
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->setColor(I)V

    .line 643
    iput v0, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lastColor:I

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 3

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v1, "Comp 1.**"

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/Components/TranscribeButton$LoadingPointsDrawable;->lottie:Lorg/telegram/ui/Components/RLottieDrawable;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
