.class public Lorg/telegram/ui/FilterCreateActivity$NewSpan;
.super Landroid/text/style/ReplacementSpan;
.source "FilterCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilterCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewSpan"
.end annotation


# instance fields
.field bgPaint:Landroid/graphics/Paint;

.field private color:I

.field height:F

.field layout:Landroid/text/StaticLayout;

.field private outline:Z

.field textPaint:Landroid/text/TextPaint;

.field width:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 2280
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2253
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    .line 2254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->bgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 2281
    iput-boolean v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->outline:Z

    .line 2282
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2283
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->bgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2284
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2261
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2253
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    .line 2254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->bgPaint:Landroid/graphics/Paint;

    .line 2262
    iput-boolean p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->outline:Z

    .line 2264
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz p1, :cond_0

    .line 2266
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->bgPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2267
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->bgPaint:Landroid/graphics/Paint;

    const v0, 0x3faa3d71    # 1.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2268
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2269
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2270
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 2271
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 2272
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    const v0, 0x3cf5c28f    # 0.03f

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_0

    .line 2275
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->bgPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2276
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 2308
    invoke-virtual {p0}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->makeLayout()Landroid/text/StaticLayout;

    .line 2310
    iget p2, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->color:I

    if-nez p2, :cond_0

    .line 2312
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    .line 2314
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2315
    iget-boolean p3, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->outline:Z

    if-eqz p3, :cond_1

    .line 2316
    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 2318
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    const p4, 0x3f389375    # 0.721f

    cmpl-float p2, p2, p4

    if-lez p2, :cond_2

    const/high16 p2, -0x1000000

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1
    const/4 p2, 0x2

    .line 2321
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p5, p2

    int-to-float p2, p7

    iget p3, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->height:F

    sub-float/2addr p2, p3

    const/4 p3, 0x1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    .line 2322
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget p4, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->width:F

    add-float/2addr p4, p5

    iget p6, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->height:F

    add-float/2addr p6, p2

    invoke-virtual {p3, p5, p2, p4, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2324
    iget-boolean p4, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->outline:Z

    if-eqz p4, :cond_3

    const p4, 0x406a3d71    # 3.66f

    .line 2325
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    .line 2326
    iget p7, p3, Landroid/graphics/RectF;->left:F

    const/4 p8, 0x4

    invoke-static {p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p8

    int-to-float p8, p8

    sub-float/2addr p7, p8

    iput p7, p3, Landroid/graphics/RectF;->left:F

    .line 2327
    iget p7, p3, Landroid/graphics/RectF;->top:F

    const p8, 0x40151eb8    # 2.33f

    invoke-static {p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p8

    int-to-float p8, p8

    sub-float/2addr p7, p8

    iput p7, p3, Landroid/graphics/RectF;->top:F

    .line 2328
    iget p7, p3, Landroid/graphics/RectF;->right:F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p7, p4

    iput p7, p3, Landroid/graphics/RectF;->right:F

    .line 2329
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    const p7, 0x3faa3d71    # 1.33f

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p7

    int-to-float p7, p7

    add-float/2addr p4, p7

    iput p4, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_3
    const p4, 0x408ccccd    # 4.4f

    .line 2331
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p6, p4

    const/4 p4, -0x4

    .line 2332
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    const p7, -0x3feae148    # -2.33f

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p7

    int-to-float p7, p7

    invoke-virtual {p3, p4, p7}, Landroid/graphics/RectF;->inset(FF)V

    .line 2334
    :goto_2
    iget-object p4, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p6, p6, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2337
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2338
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 2302
    invoke-virtual {p0}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->makeLayout()Landroid/text/StaticLayout;

    const/16 p1, 0xa

    .line 2303
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->width:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public makeLayout()Landroid/text/StaticLayout;
    .locals 9

    .line 2292
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->layout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 2293
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "NEW"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->layout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    .line 2294
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->width:F

    .line 2295
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->height:F

    .line 2297
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->layout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public setColor(I)V
    .locals 0

    .line 2288
    iput p1, p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->color:I

    return-void
.end method
