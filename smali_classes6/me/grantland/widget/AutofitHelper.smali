.class public Lme/grantland/widget/AutofitHelper;
.super Ljava/lang/Object;
.source "AutofitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;,
        Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;,
        Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mIsAutofitting:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPaint:Landroid/text/TextPaint;

.field private mPrecision:F

.field private mTextSize:F

.field private mTextView:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;-><init>(Lme/grantland/widget/AutofitHelper;Lme/grantland/widget/AutofitHelper$1;)V

    iput-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    .line 242
    new-instance v0, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;

    invoke-direct {v0, p0, v1}, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;-><init>(Lme/grantland/widget/AutofitHelper;Lme/grantland/widget/AutofitHelper$1;)V

    iput-object v0, p0, Lme/grantland/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 246
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 249
    iput-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 250
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lme/grantland/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    .line 251
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v1}, Lme/grantland/widget/AutofitHelper;->setRawTextSize(F)V

    .line 253
    invoke-static {p1}, Lme/grantland/widget/AutofitHelper;->getMaxLines(Landroid/widget/TextView;)I

    move-result p1

    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    const/high16 p1, 0x41000000    # 8.0f

    mul-float/2addr v0, p1

    .line 254
    iput v0, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    .line 255
    iget p1, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 256
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    return-void
.end method

.method static synthetic access$200(Lme/grantland/widget/AutofitHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    return-void
.end method

.method private autofit()V
    .locals 8

    .line 495
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/4 v1, 0x1

    .line 498
    iput-boolean v1, p0, Lme/grantland/widget/AutofitHelper;->mIsAutofitting:Z

    .line 499
    iget-object v2, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lme/grantland/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    iget v4, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    iget v5, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    iget v6, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    iget v7, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    invoke-static/range {v2 .. v7}, Lme/grantland/widget/AutofitHelper;->autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFIF)V

    const/4 v1, 0x0

    .line 500
    iput-boolean v1, p0, Lme/grantland/widget/AutofitHelper;->mIsAutofitting:Z

    .line 502
    iget-object v1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v2, v1, v0

    if-eqz v2, :cond_0

    .line 504
    invoke-direct {p0, v1, v0}, Lme/grantland/widget/AutofitHelper;->sendTextSizeChange(FF)V

    :cond_0
    return-void
.end method

.method private static autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFIF)V
    .locals 11

    move-object v0, p0

    move-object v2, p1

    move v6, p3

    move v4, p4

    if-lez v4, :cond_8

    const v1, 0x7fffffff

    if-ne v4, v1, :cond_0

    goto/16 :goto_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    if-gtz v1, :cond_1

    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 104
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 106
    invoke-interface {v5, v3, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 109
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    .line 118
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 120
    :cond_3
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 123
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v5, 0x1

    const/4 v10, 0x0

    if-ne v4, v5, :cond_4

    .line 125
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {p1, v3, v10, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    int-to-float v7, v1

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_5

    :cond_4
    int-to-float v5, v1

    invoke-static {v3, p1, p3, v5, v9}, Lme/grantland/widget/AutofitHelper;->getLineCount(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFLandroid/util/DisplayMetrics;)I

    move-result v5

    if-le v5, v4, :cond_6

    :cond_5
    int-to-float v5, v1

    move-object v1, v3

    move-object v2, p1

    move v3, v5

    move v4, p4

    move v5, v8

    move v6, p3

    move/from16 v7, p5

    move-object v8, v9

    .line 127
    invoke-static/range {v1 .. v8}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v6

    :goto_0
    cmpg-float v2, v1, p2

    if-gez v2, :cond_7

    move v1, p2

    .line 135
    :cond_7
    invoke-virtual {p0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;
    .locals 6

    .line 62
    new-instance v0, Lme/grantland/widget/AutofitHelper;

    invoke-direct {v0, p0}, Lme/grantland/widget/AutofitHelper;-><init>(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 66
    invoke-virtual {v0}, Lme/grantland/widget/AutofitHelper;->getMinTextSize()F

    move-result v2

    float-to-int v2, v2

    .line 67
    invoke-virtual {v0}, Lme/grantland/widget/AutofitHelper;->getPrecision()F

    move-result v3

    .line 69
    sget-object v4, Lme/grantland/widget/R$styleable;->AutofitTextView:[I

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 74
    sget p1, Lme/grantland/widget/R$styleable;->AutofitTextView_sizeToFit:I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 75
    sget p1, Lme/grantland/widget/R$styleable;->AutofitTextView_minTextSize:I

    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 77
    sget p2, Lme/grantland/widget/R$styleable;->AutofitTextView_precision:I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 78
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    int-to-float p0, p1

    .line 80
    invoke-virtual {v0, v5, p0}, Lme/grantland/widget/AutofitHelper;->setMinTextSize(IF)Lme/grantland/widget/AutofitHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lme/grantland/widget/AutofitHelper;->setPrecision(F)Lme/grantland/widget/AutofitHelper;

    .line 83
    :cond_0
    invoke-virtual {v0, v1}, Lme/grantland/widget/AutofitHelper;->setEnabled(Z)Lme/grantland/widget/AutofitHelper;

    return-object v0
.end method

.method private static getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F
    .locals 16

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    add-float v0, p4, p5

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    const/4 v12, 0x0

    move-object/from16 v13, p7

    .line 148
    invoke-static {v12, v11, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v14, 0x1

    if-eq v10, v14, :cond_0

    .line 152
    new-instance v15, Landroid/text/StaticLayout;

    float-to-int v3, v9

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 154
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    move v0, v14

    :goto_0
    if-le v0, v10, :cond_2

    sub-float v0, p5, p4

    cmpg-float v0, v0, p6

    if-gez v0, :cond_1

    return p4

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v11

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 165
    invoke-static/range {v0 .. v7}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_2
    if-ge v0, v10, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v11

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 169
    invoke-static/range {v0 .. v7}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_3
    const/4 v1, 0x0

    if-ne v10, v14, :cond_4

    .line 175
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move-object/from16 v2, p0

    invoke-virtual {v8, v2, v12, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_2

    :cond_4
    move-object/from16 v2, p0

    :goto_1
    if-ge v12, v0, :cond_6

    .line 178
    invoke-virtual {v15, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 179
    invoke-virtual {v15, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_2
    sub-float v1, p5, p4

    cmpg-float v1, v1, p6

    if-gez v1, :cond_7

    return p4

    :cond_7
    cmpl-float v1, v0, v9

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v11

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 187
    invoke-static/range {v0 .. v7}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_8
    cmpg-float v0, v0, v9

    if-gez v0, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v11

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 190
    invoke-static/range {v0 .. v7}, Lme/grantland/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_9
    return v11
.end method

.method private static getLineCount(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFLandroid/util/DisplayMetrics;)I
    .locals 8

    const/4 v0, 0x0

    .line 200
    invoke-static {v0, p2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 202
    new-instance p2, Landroid/text/StaticLayout;

    float-to-int v3, p3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 204
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p0

    return p0
.end method

.method private static getMaxLines(Landroid/widget/TextView;)I
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    instance-of v0, v0, Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 216
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private sendTextSizeChange(FF)V
    .locals 2

    .line 509
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;

    .line 514
    invoke-interface {v1, p1, p2}, Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;->onTextSizeChange(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setRawMaxTextSize(F)V
    .locals 1

    .line 394
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 395
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    .line 397
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    :cond_0
    return-void
.end method

.method private setRawMinTextSize(F)V
    .locals 1

    .line 346
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 347
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    .line 349
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    :cond_0
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1

    .line 489
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 490
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnTextSizeChangeListener(Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;)Lme/grantland/widget/AutofitHelper;
    .locals 1

    .line 264
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    .line 267
    :cond_0
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMaxTextSize()F
    .locals 1

    .line 357
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .line 309
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMinTextSize:F

    return v0
.end method

.method public getPrecision()F
    .locals 1

    .line 287
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    return v0
.end method

.method public setEnabled(Z)Lme/grantland/widget/AutofitHelper;
    .locals 2

    .line 431
    iget-boolean v0, p0, Lme/grantland/widget/AutofitHelper;->mEnabled:Z

    if-eq v0, p1, :cond_1

    .line 432
    iput-boolean p1, p0, Lme/grantland/widget/AutofitHelper;->mEnabled:Z

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 436
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 438
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 441
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 443
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iget v1, p0, Lme/grantland/widget/AutofitHelper;->mTextSize:F

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setMaxLines(I)Lme/grantland/widget/AutofitHelper;
    .locals 1

    .line 412
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    if-eq v0, p1, :cond_0

    .line 413
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mMaxLines:I

    .line 415
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    :cond_0
    return-object p0
.end method

.method public setMaxTextSize(F)Lme/grantland/widget/AutofitHelper;
    .locals 1

    const/4 v0, 0x2

    .line 369
    invoke-virtual {p0, v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxTextSize(IF)Lme/grantland/widget/AutofitHelper;

    move-result-object p1

    return-object p1
.end method

.method public setMaxTextSize(IF)Lme/grantland/widget/AutofitHelper;
    .locals 2

    .line 382
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 383
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 389
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lme/grantland/widget/AutofitHelper;->setRawMaxTextSize(F)V

    return-object p0
.end method

.method public setMinTextSize(IF)Lme/grantland/widget/AutofitHelper;
    .locals 2

    .line 334
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 335
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 341
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lme/grantland/widget/AutofitHelper;->setRawMinTextSize(F)V

    return-object p0
.end method

.method public setPrecision(F)Lme/grantland/widget/AutofitHelper;
    .locals 1

    .line 297
    iget v0, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 298
    iput p1, p0, Lme/grantland/widget/AutofitHelper;->mPrecision:F

    .line 300
    invoke-direct {p0}, Lme/grantland/widget/AutofitHelper;->autofit()V

    :cond_0
    return-object p0
.end method

.method public setTextSize(IF)V
    .locals 2

    .line 473
    iget-boolean v0, p0, Lme/grantland/widget/AutofitHelper;->mIsAutofitting:Z

    if-eqz v0, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lme/grantland/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 485
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lme/grantland/widget/AutofitHelper;->setRawTextSize(F)V

    return-void
.end method
