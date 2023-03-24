.class public Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "EditTextOutline.java"


# instance fields
.field private isFrameDirty:Z

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

    .line 28
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;Z)V

    .line 33
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    .line 34
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    .line 41
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    .line 50
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p1

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 52
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 53
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    .line 54
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 125
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    if-eqz v2, :cond_3

    .line 126
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v6

    sub-int v10, v2, v6

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 131
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    iget v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeWidth:F

    cmpl-float v7, v6, v5

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v6

    const/high16 v7, 0x41380000    # 11.5f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 135
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 136
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    iget v7, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 137
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 138
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 139
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    :cond_1
    move-object v11, v6

    .line 145
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 147
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v7

    sub-int/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 149
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v2, v9

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 151
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 153
    iput-boolean v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 155
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    if-eqz v2, :cond_1b

    .line 159
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_4

    .line 162
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 165
    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    array-length v6, v6

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    if-eq v6, v8, :cond_6

    .line 166
    :cond_5
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    new-array v6, v6, [Landroid/graphics/RectF;

    iput-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    .line 167
    iput-boolean v7, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    .line 169
    :cond_6
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    const/4 v8, 0x6

    if-eqz v6, :cond_9

    .line 170
    iput-boolean v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    move v6, v4

    .line 171
    :goto_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    if-ge v6, v9, :cond_9

    .line 172
    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v10, v9, v6

    if-nez v10, :cond_7

    .line 173
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    aput-object v10, v9, v6

    .line 175
    :cond_7
    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v9, v9, v6

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 177
    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 178
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 179
    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v10, v10, v6

    iget v11, v10, Landroid/graphics/RectF;->right:F

    const/16 v12, 0x20

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 180
    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v10, v10, v6

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v9

    add-float/2addr v11, v9

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 182
    :cond_8
    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v10, v9, v6

    aget-object v9, v9, v6

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iput v9, v10, Landroid/graphics/RectF;->left:F

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 186
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    const/16 v2, 0x10

    .line 188
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v6, 0x8

    .line 189
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v4

    .line 191
    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v12, v11

    if-ge v10, v12, :cond_11

    .line 192
    aget-object v11, v11, v10

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    cmpl-float v11, v11, v5

    if-nez v11, :cond_a

    goto/16 :goto_5

    .line 196
    :cond_a
    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v12, v11

    sub-int/2addr v12, v7

    const/high16 v13, -0x3d4c0000    # -90.0f

    const/high16 v14, 0x42b40000    # 90.0f

    if-eq v10, v12, :cond_b

    aget-object v12, v11, v10

    iget v12, v12, Landroid/graphics/RectF;->left:F

    add-int/lit8 v15, v10, 0x1

    aget-object v8, v11, v15

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v12, v8

    if-lez v8, :cond_b

    .line 197
    aget-object v8, v11, v10

    iget v8, v8, Landroid/graphics/RectF;->left:F

    aget-object v12, v11, v15

    iget v12, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v12

    add-float v12, v2, v9

    cmpl-float v8, v8, v12

    if-lez v8, :cond_b

    .line 198
    aget-object v8, v11, v15

    iget v8, v8, Landroid/graphics/RectF;->top:F

    .line 199
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    aget-object v15, v11, v10

    iget v15, v15, Landroid/graphics/RectF;->left:F

    mul-float v16, v2, v3

    sub-float v15, v15, v16

    sub-float v4, v8, v16

    aget-object v11, v11, v10

    iget v11, v11, Landroid/graphics/RectF;->left:F

    invoke-virtual {v12, v15, v4, v11, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 200
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v8, v12, Landroid/graphics/RectF;->left:F

    iget v11, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 201
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v12, v14, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 202
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v8, v12, Landroid/graphics/RectF;->right:F

    iget v11, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v8, v12, Landroid/graphics/RectF;->left:F

    iget v11, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v8, v4

    sub-int/2addr v8, v7

    if-eq v10, v8, :cond_c

    aget-object v8, v4, v10

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-int/lit8 v11, v10, 0x1

    aget-object v12, v4, v11

    iget v12, v12, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v8, v12

    if-gez v8, :cond_c

    .line 208
    aget-object v8, v4, v11

    iget v8, v8, Landroid/graphics/RectF;->right:F

    aget-object v12, v4, v10

    iget v12, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v12

    add-float v12, v2, v9

    cmpl-float v8, v8, v12

    if-lez v8, :cond_c

    .line 209
    aget-object v8, v4, v11

    iget v8, v8, Landroid/graphics/RectF;->top:F

    .line 210
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    aget-object v12, v4, v10

    iget v12, v12, Landroid/graphics/RectF;->right:F

    mul-float v15, v2, v3

    sub-float v7, v8, v15

    aget-object v4, v4, v10

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v15

    invoke-virtual {v11, v12, v7, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 211
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v7, v11, Landroid/graphics/RectF;->right:F

    iget v8, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 212
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v11, v14, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 213
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v7, v11, Landroid/graphics/RectF;->left:F

    iget v8, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v7, v11, Landroid/graphics/RectF;->right:F

    iget v8, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_c
    if-eqz v10, :cond_e

    .line 218
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v4, v10

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-int/lit8 v8, v10, -0x1

    aget-object v11, v4, v8

    iget v11, v11, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_e

    .line 219
    aget-object v7, v4, v10

    iget v7, v7, Landroid/graphics/RectF;->left:F

    aget-object v11, v4, v8

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v11

    add-float v11, v2, v9

    cmpl-float v7, v7, v11

    if-lez v7, :cond_d

    .line 220
    aget-object v7, v4, v8

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    .line 221
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    aget-object v11, v4, v10

    iget v11, v11, Landroid/graphics/RectF;->left:F

    mul-float v12, v2, v3

    sub-float/2addr v11, v12

    aget-object v4, v4, v10

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v7

    invoke-virtual {v8, v11, v7, v4, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 222
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v7, v8, Landroid/graphics/RectF;->left:F

    iget v11, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 223
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v8, v13, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 224
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v7, v8, Landroid/graphics/RectF;->right:F

    iget v11, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v7, v8, Landroid/graphics/RectF;->left:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    .line 227
    :cond_d
    aget-object v7, v4, v10

    aget-object v4, v4, v8

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iput v4, v7, Landroid/graphics/RectF;->left:F

    :cond_e
    :goto_4
    if-eqz v10, :cond_10

    .line 230
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v4, v10

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-int/lit8 v8, v10, -0x1

    aget-object v11, v4, v8

    iget v11, v11, Landroid/graphics/RectF;->right:F

    cmpg-float v7, v7, v11

    if-gez v7, :cond_10

    .line 231
    aget-object v7, v4, v8

    iget v7, v7, Landroid/graphics/RectF;->right:F

    aget-object v11, v4, v10

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v11

    add-float v11, v2, v9

    cmpl-float v7, v7, v11

    if-lez v7, :cond_f

    .line 232
    aget-object v7, v4, v8

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    .line 233
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    aget-object v11, v4, v10

    iget v11, v11, Landroid/graphics/RectF;->right:F

    aget-object v4, v4, v10

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float v12, v2, v3

    add-float/2addr v4, v12

    add-float/2addr v12, v7

    invoke-virtual {v8, v11, v7, v4, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 234
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v7, v8, Landroid/graphics/RectF;->right:F

    iget v11, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 235
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v8, v13, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 236
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v7, v8, Landroid/graphics/RectF;->left:F

    iget v11, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget v7, v8, Landroid/graphics/RectF;->right:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    .line 239
    :cond_f
    aget-object v7, v4, v10

    aget-object v4, v4, v8

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iput v4, v7, Landroid/graphics/RectF;->right:F

    :cond_10
    :goto_5
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x6

    goto/16 :goto_3

    :cond_11
    new-array v3, v6, [F

    const/4 v4, 0x0

    .line 245
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v6, v6

    if-ge v4, v6, :cond_1a

    .line 246
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([FF)V

    if-eqz v4, :cond_13

    .line 248
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v6, v4

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-int/lit8 v8, v4, -0x1

    aget-object v9, v6, v8

    iget v9, v9, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_13

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v6, v5

    if-nez v6, :cond_12

    goto :goto_7

    :cond_12
    const/4 v6, 0x0

    goto :goto_8

    :cond_13
    :goto_7
    const/4 v6, 0x1

    aput v2, v3, v6

    const/4 v6, 0x0

    aput v2, v3, v6

    :goto_8
    if-eqz v4, :cond_14

    .line 251
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v8, v7, v4

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-int/lit8 v9, v4, -0x1

    aget-object v10, v7, v9

    iget v10, v10, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v8, v10

    if-gtz v8, :cond_14

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpl-float v7, v7, v5

    if-nez v7, :cond_15

    :cond_14
    const/4 v7, 0x2

    const/4 v8, 0x3

    aput v2, v3, v8

    aput v2, v3, v7

    .line 254
    :cond_15
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v8, v7

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-eq v4, v8, :cond_17

    add-int/lit8 v8, v4, 0x1

    aget-object v9, v7, v8

    iget v9, v9, Landroid/graphics/RectF;->left:F

    aget-object v10, v7, v4

    iget v10, v10, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_17

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpl-float v7, v7, v5

    if-nez v7, :cond_16

    goto :goto_9

    :cond_16
    const/4 v7, 0x6

    goto :goto_a

    :cond_17
    :goto_9
    const/4 v7, 0x7

    aput v2, v3, v7

    const/4 v7, 0x6

    aput v2, v3, v7

    .line 257
    :goto_a
    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v9, v8

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-eq v4, v9, :cond_18

    add-int/lit8 v9, v4, 0x1

    aget-object v11, v8, v9

    iget v11, v11, Landroid/graphics/RectF;->right:F

    aget-object v12, v8, v4

    iget v12, v12, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_18

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    cmpl-float v8, v8, v5

    if-nez v8, :cond_19

    :cond_18
    const/4 v8, 0x4

    const/4 v9, 0x5

    aput v2, v3, v9

    aput v2, v3, v8

    .line 261
    :cond_19
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 262
    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v8, v3, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 264
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 266
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 268
    :cond_1b
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextEffects;->onSizeChanged(IIII)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    const/4 p3, 0x1

    .line 66
    iput-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 67
    iput-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    .line 68
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    .line 69
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    :cond_0
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextEffects;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    return-void
.end method

.method public setFrameColor(I)V
    .locals 7

    .line 92
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x7

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x13

    .line 93
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p0, v4, v5, v0, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 94
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 96
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p0, v0, v4, v5, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 97
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 99
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 102
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_2

    .line 104
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr p1, v3

    :cond_2
    float-to-double v3, p1

    const-wide v5, 0x3febd70a3d70a3d7L    # 0.87

    cmpl-double p1, v3, v5

    if-lez p1, :cond_3

    .line 107
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 111
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    .line 113
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 114
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/widget/EditText;->setGravity(I)V

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    .line 82
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 86
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 88
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 118
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeWidth:F

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    .line 120
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method
