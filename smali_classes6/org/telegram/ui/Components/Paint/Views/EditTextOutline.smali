.class public Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "EditTextOutline.java"


# instance fields
.field public framePadding:Landroid/graphics/RectF;

.field private isFrameDirty:Z

.field private lastFrameRoundRadius:F

.field private lines:[Landroid/graphics/RectF;

.field private mCache:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mFrameColor:I

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mUpdateCachedBitmap:Z

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;Z)V

    .line 34
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    .line 35
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    .line 42
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    .line 52
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p1

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 54
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 55
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    const/16 p1, 0x10

    .line 56
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameRoundRadius(F)V

    .line 57
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private setFrameRoundRadius(F)V
    .locals 2

    .line 62
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lastFrameRoundRadius:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lastFrameRoundRadius:F

    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    if-eqz v0, :cond_3

    .line 137
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    sub-int v7, v0, v3

    .line 139
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    .line 140
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 142
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 145
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeWidth:F

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    const/high16 v4, 0x41380000    # 11.5f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 146
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 147
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 148
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 149
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 150
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 153
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    :cond_1
    move-object v8, v3

    .line 156
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 158
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 159
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 160
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 164
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    if-eqz v0, :cond_18

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_4

    .line 174
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 177
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    array-length v3, v3

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-eq v3, v5, :cond_6

    .line 178
    :cond_5
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    new-array v3, v3, [Landroid/graphics/RectF;

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    .line 179
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    .line 181
    :cond_6
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    const/high16 v5, 0x40400000    # 3.0f

    if-eqz v3, :cond_d

    .line 182
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    move v3, v1

    .line 183
    :goto_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 184
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v6, v3

    if-nez v7, :cond_7

    .line 185
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    aput-object v7, v6, v3

    .line 187
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v6, v6, v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 189
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_8

    .line 190
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v6, v6, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v7

    neg-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v6, v7, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 191
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v6, v6, v3

    iget v7, v6, Landroid/graphics/RectF;->top:F

    const v8, 0x3f99999a    # 1.2f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 192
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v6, v6, v3

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 193
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v6, v6, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 194
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v6, v6, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 196
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v6, v3

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v7, Landroid/graphics/RectF;->left:F

    :goto_2
    if-lez v3, :cond_9

    .line 199
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_9

    .line 200
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v6, v7

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v7, Landroid/graphics/RectF;->bottom:F

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 203
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    if-nez v0, :cond_b

    .line 204
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    .line 206
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 209
    iput v2, v0, Landroid/graphics/RectF;->right:F

    move v0, v1

    .line 210
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    .line 211
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v8, v8, v0

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v3, Landroid/graphics/RectF;->left:F

    .line 212
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v8, v8, v0

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v3, Landroid/graphics/RectF;->top:F

    .line 213
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v8, v8, v0

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v3, Landroid/graphics/RectF;->right:F

    .line 214
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v8, v8, v0

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v3, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 216
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v7

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 217
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    .line 219
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 220
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    div-float/2addr v0, v5

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v0

    move v5, v4

    .line 221
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v7, v6

    if-ge v5, v7, :cond_15

    add-int/lit8 v7, v5, -0x1

    .line 222
    aget-object v7, v6, v7

    .line 223
    aget-object v6, v6, v5

    .line 224
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_14

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_e

    goto/16 :goto_8

    .line 228
    :cond_e
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v3

    if-gez v8, :cond_f

    .line 229
    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Landroid/graphics/RectF;->left:F

    iput v8, v6, Landroid/graphics/RectF;->left:F

    move v8, v4

    goto :goto_5

    :cond_f
    move v8, v1

    .line 232
    :goto_5
    iget v9, v7, Landroid/graphics/RectF;->right:F

    iget v10, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v9, v9, v3

    if-gez v9, :cond_10

    .line 233
    iget v8, v6, Landroid/graphics/RectF;->right:F

    iget v9, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    iput v8, v6, Landroid/graphics/RectF;->right:F

    move v8, v4

    :cond_10
    if-eqz v8, :cond_14

    move v6, v5

    :goto_6
    if-lt v6, v4, :cond_14

    .line 238
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    add-int/lit8 v8, v6, -0x1

    aget-object v8, v7, v8

    .line 239
    aget-object v7, v7, v6

    .line 240
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_13

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_11

    goto :goto_7

    .line 243
    :cond_11
    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v9, v9, v3

    if-gez v9, :cond_12

    .line 244
    iget v9, v7, Landroid/graphics/RectF;->left:F

    iget v10, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->left:F

    iput v9, v7, Landroid/graphics/RectF;->left:F

    .line 246
    :cond_12
    iget v9, v8, Landroid/graphics/RectF;->right:F

    iget v10, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v9, v9, v3

    if-gez v9, :cond_13

    .line 247
    iget v9, v7, Landroid/graphics/RectF;->right:F

    iget v10, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->right:F

    iput v9, v7, Landroid/graphics/RectF;->right:F

    :cond_13
    :goto_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_14
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 252
    :cond_15
    :goto_9
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v4, v3

    if-ge v1, v4, :cond_17

    .line 253
    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_16

    goto :goto_a

    .line 256
    :cond_16
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v4, v4, v1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 258
    :cond_17
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameRoundRadius(F)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    .line 264
    :goto_b
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextEffects;->onSizeChanged(IIII)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    const/4 p3, 0x1

    .line 76
    iput-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 77
    iput-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    .line 78
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    :cond_0
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextEffects;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 0

    .line 269
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setFrameColor(I)V
    .locals 6

    .line 102
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    const/4 v1, -0x1

    const/4 v2, 0x7

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x13

    .line 103
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p0, v3, v4, v0, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 104
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 107
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p0, v0, v3, v4, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 108
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 110
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 113
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    .line 115
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p1, v2

    :cond_2
    float-to-double v2, p1

    const-wide v4, 0x3febd70a3d70a3d7L    # 0.87

    cmpl-double p1, v2, v4

    if-lez p1, :cond_3

    const/high16 p1, -0x1000000

    .line 118
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 122
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    .line 124
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 125
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/widget/EditText;->setGravity(I)V

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 91
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    .line 92
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 96
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 98
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 129
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeWidth:F

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 131
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method
