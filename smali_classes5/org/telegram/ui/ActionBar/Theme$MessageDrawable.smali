.class public Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;
    }
.end annotation


# static fields
.field public static motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;


# instance fields
.field private alpha:I

.field private backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

.field private backgroundDrawableColor:[[I

.field private backupRect:Landroid/graphics/Rect;

.field private botButtonsBottom:Z

.field private crosfadeFromBitmap:Landroid/graphics/Bitmap;

.field private crosfadeFromBitmapShader:Landroid/graphics/Shader;

.field public crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field public crossfadeProgress:F

.field private currentAnimateGradient:Z

.field private currentBackgroundDrawableRadius:[[I

.field private currentBackgroundHeight:I

.field private currentColor:I

.field private currentGradientColor1:I

.field private currentGradientColor2:I

.field private currentGradientColor3:I

.field private currentShadowDrawableRadius:[I

.field private currentType:I

.field private drawFullBubble:Z

.field private gradientShader:Landroid/graphics/Shader;

.field private isBottomNear:Z

.field public isCrossfadeBackground:Z

.field private final isOut:Z

.field public isSelected:Z

.field private isTopNear:Z

.field public lastDrawWithShadow:Z

.field private matrix:Landroid/graphics/Matrix;

.field private overrideRoundRadius:I

.field private overrideRounding:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedPaint:Landroid/graphics/Paint;

.field private shadowDrawable:[Landroid/graphics/drawable/Drawable;

.field private shadowDrawableBitmap:[Landroid/graphics/Bitmap;

.field private shadowDrawableColor:[I

.field public themePreview:Z

.field private topY:I

.field transitionDrawable:Landroid/graphics/drawable/Drawable;

.field transitionDrawableColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 345
    sput-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 392
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 316
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    .line 324
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    .line 325
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    .line 334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 347
    fill-array-data v2, :array_0

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    new-array v2, v0, [Landroid/graphics/Bitmap;

    .line 348
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    new-array v2, v0, [Landroid/graphics/drawable/Drawable;

    .line 349
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    new-array v2, v0, [I

    .line 350
    fill-array-data v2, :array_1

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    new-array v2, v0, [[I

    new-array v3, v0, [I

    .line 352
    fill-array-data v3, :array_2

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v0, [I

    fill-array-data v3, :array_3

    aput-object v3, v2, v1

    new-array v3, v0, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-array v3, v0, [I

    fill-array-data v3, :array_5

    const/4 v6, 0x3

    aput-object v3, v2, v6

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    new-array v2, v5, [I

    .line 358
    fill-array-data v2, :array_6

    const-class v3, Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    new-array v2, v0, [[I

    new-array v3, v0, [I

    .line 359
    fill-array-data v3, :array_7

    aput-object v3, v2, v4

    new-array v3, v0, [I

    fill-array-data v3, :array_8

    aput-object v3, v2, v1

    new-array v3, v0, [I

    fill-array-data v3, :array_9

    aput-object v3, v2, v5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    aput-object v0, v2, v6

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    .line 393
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 394
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    .line 395
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    .line 396
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    .line 397
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    .line 398
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    .line 399
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_5
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_9
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private dp(F)I
    .locals 2

    .line 584
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 585
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1

    .line 587
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method

.method private static getByteBuffer(IIII)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x54

    .line 801
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 802
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    .line 803
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 804
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x9

    .line 805
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 807
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 808
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 810
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 811
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 812
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 813
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 815
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 817
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 818
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 820
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 821
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 823
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 824
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 825
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 826
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 827
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 828
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 829
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 830
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 831
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public applyMatrixScale()V
    .locals 6

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v0, v0, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_4

    .line 408
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 409
    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 410
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 411
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 412
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v1, v0

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_3

    .line 416
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 419
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    move v4, v2

    .line 421
    :goto_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 423
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 424
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v1, v0

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_4
    :goto_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 856
    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    .line 857
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/16 p1, 0xff

    .line 858
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    goto :goto_0

    .line 860
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 865
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 866
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v4, :cond_0

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-nez v4, :cond_0

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_0

    .line 867
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 869
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 870
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    .line 875
    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    .line 878
    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v8, 0x2

    if-eqz v6, :cond_1

    move v9, v6

    goto :goto_0

    .line 881
    :cond_1
    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpl-float v6, v6, v3

    const/4 v9, 0x6

    if-lez v6, :cond_2

    .line 882
    sget v6, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v6, v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    div-int/2addr v10, v8

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v6, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    .line 883
    sget v10, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    div-int/2addr v10, v8

    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    invoke-static {v9, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v9

    goto :goto_0

    .line 884
    :cond_2
    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v6, v8, :cond_3

    .line 885
    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    .line 886
    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    goto :goto_0

    .line 888
    :cond_3
    sget v6, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v6, v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    .line 889
    sget v10, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    .line 891
    :goto_0
    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    if-nez p2, :cond_4

    .line 893
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    move-object/from16 v10, p2

    :goto_1
    if-nez p2, :cond_5

    .line 895
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v11, :cond_5

    .line 896
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 897
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    .line 898
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v11, v3, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 899
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 902
    :cond_5
    iget v11, v2, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 904
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    const/4 v14, 0x1

    if-eqz v13, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v13, v15, :cond_6

    move v13, v14

    move v15, v13

    goto :goto_4

    .line 908
    :cond_6
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v13, v14, :cond_7

    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v15

    mul-int/lit8 v15, v7, 0x2

    sub-int/2addr v13, v15

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v13, v15, :cond_8

    goto :goto_2

    :cond_7
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v15

    sub-int/2addr v13, v6

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v13, v15, :cond_8

    :goto_2
    move v13, v14

    goto :goto_3

    :cond_8
    move v13, v12

    .line 909
    :goto_3
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    mul-int/lit8 v16, v6, 0x2

    add-int v15, v15, v16

    if-ltz v15, :cond_9

    move v15, v14

    goto :goto_4

    :cond_9
    move v15, v12

    .line 913
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    if-eqz v3, :cond_a

    .line 914
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->path:Landroid/graphics/Path;

    .line 915
    invoke-virtual {v3, v2, v13, v15}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->invalidatePath(Landroid/graphics/Rect;ZZ)Z

    move-result v3

    goto :goto_5

    .line 917
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    move v3, v14

    :goto_5
    if-nez v3, :cond_b

    .line 920
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-eqz v3, :cond_2c

    .line 921
    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 922
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v5

    shr-int/2addr v3, v14

    if-le v6, v3, :cond_c

    move v6, v3

    .line 926
    :cond_c
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    const/high16 v12, 0x41000000    # 8.0f

    if-eqz v3, :cond_1c

    .line 927
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_e

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v8, :cond_e

    if-nez p2, :cond_e

    if-eqz v13, :cond_d

    goto :goto_6

    .line 938
    :cond_d
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v12}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v18

    sub-int v3, v3, v18

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v8, v12

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 939
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v8, v12

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v20, v9

    goto :goto_9

    .line 928
    :cond_e
    :goto_6
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v3, :cond_f

    move v3, v9

    goto :goto_7

    :cond_f
    move v3, v6

    .line 929
    :goto_7
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v8, v14, :cond_10

    .line 930
    iget v8, v2, Landroid/graphics/Rect;->right:I

    const/high16 v12, 0x41000000    # 8.0f

    invoke-direct {v0, v12}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v18

    sub-int v8, v8, v18

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v5

    int-to-float v12, v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_8

    .line 932
    :cond_10
    iget v8, v2, Landroid/graphics/Rect;->right:I

    const v12, 0x40266666    # 2.6f

    invoke-direct {v0, v12}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    sub-int/2addr v8, v12

    int-to-float v8, v8

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v5

    int-to-float v12, v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 934
    :goto_8
    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    add-int/2addr v8, v3

    int-to-float v8, v8

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v5

    int-to-float v12, v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 935
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/Rect;->left:I

    add-int v14, v12, v5

    int-to-float v14, v14

    move/from16 v20, v9

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v18, v9, v5

    const/16 v19, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v1, v18, v3

    int-to-float v1, v1

    add-int/2addr v12, v5

    add-int/2addr v12, v3

    int-to-float v3, v12

    sub-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v8, v14, v1, v3, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 936
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    invoke-virtual {v4, v1, v3, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 941
    :goto_9
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v1, :cond_13

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_13

    if-nez p2, :cond_13

    if-eqz v15, :cond_11

    goto :goto_a

    .line 956
    :cond_11
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v3, v11, v3

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 957
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    .line 958
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v3, v11, v3

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 960
    :cond_12
    iget v1, v2, Landroid/graphics/Rect;->right:I

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v1, v9

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v3, v11, v3

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 942
    :cond_13
    :goto_a
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 943
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v8, v3, v5

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int v12, v9, v5

    int-to-float v12, v12

    add-int/2addr v3, v5

    mul-int/lit8 v14, v6, 0x2

    add-int/2addr v3, v14

    int-to-float v3, v3

    add-int/2addr v9, v5

    add-int/2addr v9, v14

    int-to-float v9, v9

    invoke-virtual {v1, v8, v12, v3, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 944
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v3, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 946
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    if-eqz v1, :cond_14

    move/from16 v1, v20

    goto :goto_b

    :cond_14
    move v1, v6

    .line 947
    :goto_b
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_15

    .line 948
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v5

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 949
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int v9, v8, v5

    const/4 v12, 0x2

    mul-int/2addr v1, v12

    sub-int/2addr v9, v1

    int-to-float v9, v9

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int v14, v12, v5

    int-to-float v14, v14

    sub-int/2addr v8, v5

    int-to-float v8, v8

    add-int/2addr v12, v5

    add-int/2addr v12, v1

    int-to-float v1, v12

    invoke-virtual {v3, v9, v14, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_c

    .line 951
    :cond_15
    iget v3, v2, Landroid/graphics/Rect;->right:I

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v3, v9

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 952
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    sub-int/2addr v9, v12

    const/4 v12, 0x2

    mul-int/2addr v1, v12

    sub-int/2addr v9, v1

    int-to-float v9, v9

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v5

    int-to-float v12, v12

    iget v14, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v8, v14

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v5

    add-int/2addr v14, v1

    int-to-float v1, v14

    invoke-virtual {v3, v9, v12, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 954
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v3, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 963
    :goto_d
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    if-nez p2, :cond_17

    if-eqz v13, :cond_16

    goto :goto_e

    .line 971
    :cond_16
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int/2addr v11, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v2

    int-to-float v2, v11

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1c

    .line 965
    :cond_17
    :goto_e
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v1, :cond_18

    move/from16 v9, v20

    goto :goto_f

    :cond_18
    move v9, v6

    .line 967
    :goto_f
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 968
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v3, v5

    const/4 v7, 0x2

    mul-int/2addr v9, v7

    sub-int/2addr v6, v9

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v2, v5

    sub-int/2addr v7, v9

    int-to-float v7, v7

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v6, v7, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 969
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_1c

    .line 974
    :cond_19
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_1b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1b

    if-nez p2, :cond_1b

    if-eqz v13, :cond_1a

    goto :goto_10

    .line 979
    :cond_1a
    iget v1, v2, Landroid/graphics/Rect;->right:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int/2addr v11, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v2

    int-to-float v2, v11

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1c

    .line 975
    :cond_1b
    :goto_10
    iget v1, v2, Landroid/graphics/Rect;->right:I

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v7

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 976
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    const/high16 v8, 0x41100000    # 9.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    iget v8, v2, Landroid/graphics/Rect;->right:I

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v8, v7

    int-to-float v7, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v3, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 977
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d5a0000    # -83.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_1c

    :cond_1c
    move/from16 v20, v9

    .line 983
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    const/high16 v3, -0x3d4c0000    # -90.0f

    if-nez v1, :cond_1e

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x2

    if-eq v1, v8, :cond_1e

    if-nez p2, :cond_1e

    if-eqz v13, :cond_1d

    goto :goto_11

    .line 995
    :cond_1d
    iget v1, v2, Landroid/graphics/Rect;->left:I

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    add-int/2addr v1, v9

    int-to-float v1, v1

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 996
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_14

    .line 984
    :cond_1e
    :goto_11
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v1, :cond_1f

    move/from16 v1, v20

    goto :goto_12

    :cond_1f
    move v1, v6

    .line 986
    :goto_12
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_20

    .line 987
    iget v8, v2, Landroid/graphics/Rect;->left:I

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    add-int/2addr v8, v12

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_13

    .line 989
    :cond_20
    iget v8, v2, Landroid/graphics/Rect;->left:I

    const v9, 0x40266666    # 2.6f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 991
    :goto_13
    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    sub-int/2addr v8, v1

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 992
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v12, v9, v5

    const/4 v14, 0x2

    mul-int/2addr v1, v14

    sub-int/2addr v12, v1

    int-to-float v12, v12

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v18, v14, v5

    sub-int v1, v18, v1

    int-to-float v1, v1

    sub-int/2addr v9, v5

    int-to-float v9, v9

    sub-int/2addr v14, v5

    int-to-float v14, v14

    invoke-virtual {v8, v12, v1, v9, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 993
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v8, v3, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 998
    :goto_14
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v1, :cond_23

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x2

    if-eq v1, v8, :cond_23

    if-nez p2, :cond_23

    if-eqz v15, :cond_21

    goto :goto_15

    .line 1013
    :cond_21
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    sub-int/2addr v8, v12

    int-to-float v8, v8

    invoke-virtual {v4, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1014
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_22

    .line 1015
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_18

    .line 1017
    :cond_22
    iget v1, v2, Landroid/graphics/Rect;->left:I

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    add-int/2addr v1, v12

    int-to-float v1, v1

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_18

    .line 999
    :cond_23
    :goto_15
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    int-to-float v8, v8

    invoke-virtual {v4, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int v9, v8, v5

    mul-int/lit8 v12, v6, 0x2

    sub-int/2addr v9, v12

    int-to-float v9, v9

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int v15, v14, v5

    int-to-float v15, v15

    sub-int/2addr v8, v5

    int-to-float v8, v8

    add-int/2addr v14, v5

    add-int/2addr v14, v12

    int-to-float v12, v14

    invoke-virtual {v1, v9, v15, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1001
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v8, v3, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1003
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    if-eqz v1, :cond_24

    move/from16 v1, v20

    goto :goto_16

    :cond_24
    move v1, v6

    .line 1004
    :goto_16
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_25

    .line 1005
    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1006
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    add-int v12, v9, v5

    int-to-float v12, v12

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int v15, v14, v5

    int-to-float v15, v15

    add-int/2addr v9, v5

    const/16 v17, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v9, v1

    int-to-float v9, v9

    add-int/2addr v14, v5

    add-int/2addr v14, v1

    int-to-float v1, v14

    invoke-virtual {v8, v12, v15, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_17

    .line 1008
    :cond_25
    iget v8, v2, Landroid/graphics/Rect;->left:I

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    add-int/2addr v8, v12

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v5

    int-to-float v12, v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1009
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v14

    add-int/2addr v12, v14

    int-to-float v12, v12

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v5

    int-to-float v14, v14

    iget v15, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v17

    add-int v15, v15, v17

    const/4 v9, 0x2

    mul-int/2addr v1, v9

    add-int/2addr v15, v1

    int-to-float v9, v15

    iget v15, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v5

    add-int/2addr v15, v1

    int-to-float v1, v15

    invoke-virtual {v8, v12, v14, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1011
    :goto_17
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v8, v3, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1020
    :goto_18
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_29

    if-nez p2, :cond_27

    if-eqz v13, :cond_26

    goto :goto_19

    .line 1028
    :cond_26
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int/2addr v11, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v2

    int-to-float v2, v11

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1c

    .line 1022
    :cond_27
    :goto_19
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v1, :cond_28

    move/from16 v9, v20

    goto :goto_1a

    :cond_28
    move v9, v6

    .line 1024
    :goto_1a
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1025
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int v7, v6, v5

    int-to-float v7, v7

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v5

    const/4 v11, 0x2

    mul-int/2addr v9, v11

    sub-int/2addr v8, v9

    int-to-float v8, v8

    add-int/2addr v6, v5

    add-int/2addr v6, v9

    int-to-float v6, v6

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v7, v8, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1026
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_1c

    .line 1031
    :cond_29
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_2b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2b

    if-nez p2, :cond_2b

    if-eqz v13, :cond_2a

    goto :goto_1b

    .line 1036
    :cond_2a
    iget v1, v2, Landroid/graphics/Rect;->left:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int/2addr v11, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v2

    int-to-float v2, v11

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1c

    .line 1032
    :cond_2b
    :goto_1b
    iget v1, v2, Landroid/graphics/Rect;->left:I

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v7

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1033
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    const/4 v6, 0x2

    mul-int/2addr v7, v6

    sub-int/2addr v3, v7

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v7

    const/high16 v7, 0x41100000    # 9.0f

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->left:I

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v3, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1034
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x42a60000    # 83.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1040
    :goto_1c
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    move-object/from16 v1, p1

    .line 1043
    :cond_2c
    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1044
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_2d

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v2, :cond_2d

    if-nez p2, :cond_2d

    .line 1045
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v2

    .line 1046
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v2, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1047
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2d
    return-void
.end method

.method public drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 849
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V
    .locals 1

    .line 837
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_0

    .line 839
    iput-object p2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    .line 841
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 842
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    .line 843
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz p2, :cond_1

    .line 844
    iput-object p1, p2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 788
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 792
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 795
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 22

    move-object/from16 v0, p0

    .line 601
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 606
    :cond_1
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 609
    :goto_0
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v8, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_1

    .line 613
    :cond_3
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v4, :cond_4

    move v4, v7

    goto :goto_1

    :cond_4
    move v4, v3

    .line 619
    :goto_1
    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v8, :cond_5

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_6

    move v5, v7

    goto :goto_2

    .line 623
    :cond_6
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_2

    :cond_7
    move v5, v3

    .line 630
    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v9, :cond_8

    if-nez v8, :cond_8

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    if-nez v8, :cond_8

    move v8, v7

    goto :goto_3

    :cond_8
    move v8, v3

    .line 631
    :goto_3
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v9, :cond_9

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    goto :goto_4

    :cond_9
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    :goto_4
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v9

    .line 632
    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->lastDrawWithShadow:Z

    if-ne v10, v8, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    aget-object v10, v10, v5

    aget v10, v10, v4

    if-ne v10, v1, :cond_a

    if-eqz v8, :cond_d

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aget v10, v10, v4

    if-eq v10, v9, :cond_d

    .line 633
    :cond_a
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    aget-object v10, v10, v5

    aput v1, v10, v4

    const/high16 v1, 0x42480000    # 50.0f

    .line 635
    :try_start_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    const/high16 v10, 0x42200000    # 40.0f

    invoke-direct {v0, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 636
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 638
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v12, -0x1

    if-eqz v8, :cond_c

    .line 641
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aput v9, v13, v4

    .line 643
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 645
    new-instance v15, Landroid/graphics/LinearGradient;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct {v0, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    int-to-float v10, v10

    new-array v14, v6, [I

    const v19, 0x155f6569

    aput v19, v14, v3

    const v19, 0x295f6569

    aput v19, v14, v7

    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v19, v14

    move-object v14, v15

    move-object v6, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v10

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 646
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 647
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 649
    invoke-virtual {v13, v6, v2, v9, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 650
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_b

    .line 651
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v0, v12, v12, v6, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    goto :goto_5

    .line 653
    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v0, v3, v3, v6, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 655
    :goto_5
    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 657
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_c

    .line 658
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    invoke-virtual {v13, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 660
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 661
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v3, v2, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 662
    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 666
    :cond_c
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 667
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 668
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v0, v3, v3, v6, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 669
    invoke-virtual {v0, v11, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 671
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    new-instance v6, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    const/4 v10, 0x2

    div-int/2addr v9, v10

    sub-int/2addr v9, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/2addr v11, v10

    add-int/2addr v11, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/2addr v12, v10

    sub-int/2addr v12, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/2addr v13, v10

    add-int/2addr v13, v7

    invoke-static {v9, v11, v12, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    invoke-direct {v6, v1, v9, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    aput-object v6, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 673
    :try_start_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move v3, v7

    .line 678
    :catchall_1
    :cond_d
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->lastDrawWithShadow:Z

    .line 680
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_f

    .line 681
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_e

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    goto :goto_6

    :cond_e
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    :goto_6
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    goto :goto_8

    .line 683
    :cond_f
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_10

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    goto :goto_7

    :cond_10
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_7
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    .line 685
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v6, v2, v5

    aget-object v6, v6, v4

    if-eqz v6, :cond_12

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    aget-object v6, v6, v5

    aget v6, v6, v4

    if-ne v6, v1, :cond_11

    if-eqz v3, :cond_12

    .line 686
    :cond_11
    aget-object v2, v2, v5

    aget-object v2, v2, v4

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 687
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    aget-object v2, v2, v5

    aput v1, v2, v4

    .line 689
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    aget-object v1, v1, v4

    return-object v1
.end method

.method protected getColor(I)I
    .locals 2

    .line 439
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 440
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 442
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    .line 443
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 445
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method protected getCurrentColor(I)I
    .locals 2

    .line 449
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 450
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getCurrentColor(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$300()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getGradientShader()Landroid/graphics/Shader;
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMotionBackgroundDrawable()Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 3

    .line 716
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 717
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v0, v0, v1

    return-object v0

    .line 719
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShadowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 18

    move-object/from16 v0, p0

    .line 723
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 726
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-nez v1, :cond_1

    return-object v2

    .line 729
    :cond_1
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 731
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v7, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_0

    .line 735
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_0

    :cond_4
    move v3, v5

    .line 741
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    aget v8, v7, v3

    if-eq v8, v1, :cond_8

    .line 742
    aput v1, v7, v3

    .line 743
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v1, v3

    if-eqz v7, :cond_5

    .line 744
    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/high16 v1, 0x42480000    # 50.0f

    .line 747
    :try_start_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    const/high16 v7, 0x42200000    # 40.0f

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 748
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 750
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 752
    new-instance v15, Landroid/graphics/LinearGradient;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    int-to-float v14, v7

    new-array v7, v4, [I

    const v10, 0x155f6569

    aput v10, v7, v5

    const v10, 0x295f6569

    aput v10, v7, v6

    const/16 v16, 0x0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v15

    move-object v2, v15

    move-object v15, v7

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 753
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v7, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 755
    invoke-virtual {v9, v2, v11, v10, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 756
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_6

    .line 757
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v0, v7, v7, v2, v12}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    goto :goto_1

    .line 759
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v5, v5, v2, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 761
    :goto_1
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 763
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_7

    .line 764
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 765
    invoke-virtual {v9, v11, v11, v11, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 766
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 767
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v5, v5, v2, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 768
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 771
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v3

    .line 772
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/2addr v8, v4

    sub-int/2addr v8, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    add-int/2addr v9, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/2addr v10, v4

    sub-int/2addr v10, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/2addr v11, v4

    add-int/2addr v11, v6

    invoke-static {v8, v9, v10, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    invoke-direct {v7, v1, v4, v8, v9}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    aput-object v7, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v6

    .line 778
    :catchall_0
    :cond_8
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_9

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    goto :goto_2

    :cond_9
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    .line 779
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v2, v3

    if-eqz v4, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aget v4, v4, v3

    if-ne v4, v1, :cond_a

    if-eqz v5, :cond_b

    .line 780
    :cond_a
    aget-object v2, v2, v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 781
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aput v1, v2, v3

    .line 783
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    return-object v1
.end method

.method public getShadowDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTopY()I
    .locals 1

    .line 580
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    return v0
.end method

.method public getTransitionDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    .line 694
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 695
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 697
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 699
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, -0x1

    .line 700
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 701
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 702
    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 704
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    invoke-static {v2, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 707
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawableColor:I

    if-eq v0, p1, :cond_1

    .line 708
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawableColor:I

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 712
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public hasGradient()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlpha(I)V
    .locals 4

    .line 1057
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1058
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1060
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1064
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v0, :cond_3

    .line 1065
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1066
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 1067
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-eq v1, p1, :cond_3

    .line 1068
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 1071
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setBotButtonsBottom(Z)V
    .locals 0

    .line 456
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->botButtonsBottom:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 1093
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDrawFullBubble(Z)V
    .locals 0

    .line 1052
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    return-void
.end method

.method public setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    .line 1100
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    return-void
.end method

.method public setRoundingRadius(F)V
    .locals 0

    .line 1104
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    return-void
.end method

.method public setTop(IIIIIIZZ)V
    .locals 33

    move-object/from16 v0, p0

    move/from16 v10, p3

    move/from16 v11, p5

    .line 464
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v1, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 465
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    .line 472
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 473
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    .line 474
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v4

    .line 475
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v5

    .line 476
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v6

    .line 477
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientAnimated:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(I)I

    move-result v7

    if-eqz v7, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    goto :goto_3

    .line 479
    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    move v12, v3

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_3
    if-eqz v12, :cond_5

    .line 486
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(I)I

    move-result v1

    .line 489
    :cond_5
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_6

    move/from16 v16, v5

    goto :goto_5

    .line 492
    :cond_6
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v4, v5, :cond_7

    move v4, v2

    goto :goto_4

    :cond_7
    move v4, v3

    :goto_4
    move/from16 v16, v4

    .line 494
    :goto_5
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v6, 0x3

    if-nez v4, :cond_8

    if-eqz v13, :cond_8

    if-eqz v15, :cond_8

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v7, v4, v16

    if-eqz v7, :cond_8

    .line 495
    aget-object v4, v4, v16

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getColors()[I

    move-result-object v4

    .line 496
    aget v7, v4, v3

    iput v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    .line 497
    aget v7, v4, v2

    iput v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    .line 498
    aget v7, v4, v5

    iput v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    .line 499
    aget v4, v4, v6

    iput v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    .line 501
    :cond_8
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v9, -0x1

    if-eqz v4, :cond_e

    if-eqz v13, :cond_e

    if-eqz v15, :cond_e

    .line 502
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ne v10, v4, :cond_a

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    if-eqz v4, :cond_a

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    if-ne v4, v1, :cond_a

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    if-ne v4, v12, :cond_a

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    if-ne v4, v13, :cond_a

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    if-ne v4, v14, :cond_a

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    if-eq v4, v15, :cond_9

    goto :goto_6

    :cond_9
    move v3, v9

    goto :goto_7

    .line 503
    :cond_a
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_b

    const/16 v4, 0x3c

    const/16 v6, 0x50

    .line 504
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    .line 505
    new-instance v4, Landroid/graphics/BitmapShader;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v6, v7, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    .line 507
    :cond_b
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v6, v4, v16

    if-nez v6, :cond_d

    .line 508
    new-instance v6, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    aput-object v6, v4, v16

    .line 509
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v4, v5, :cond_c

    .line 510
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v4, v16

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPostInvalidateParent(Z)V

    .line 512
    :cond_c
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v4, v16

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setRoundRadius(I)V

    .line 514
    :cond_d
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v2, v16

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    move v5, v1

    move v6, v12

    move v7, v13

    move v8, v14

    move v3, v9

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIILandroid/graphics/Bitmap;)V

    .line 515
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 517
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 518
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 519
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    .line 521
    iput-boolean v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    .line 522
    iput v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    .line 523
    iput v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    .line 524
    iput v14, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    goto/16 :goto_9

    :cond_e
    move v3, v9

    if-eqz v12, :cond_15

    .line 525
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v4, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ne v10, v4, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    if-ne v4, v1, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    if-ne v4, v12, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    if-ne v4, v13, :cond_f

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    if-ne v4, v14, :cond_f

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    if-eq v4, v15, :cond_15

    :cond_f
    if-eqz v13, :cond_12

    if-eqz v15, :cond_12

    .line 527
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v6, v4, v16

    if-nez v6, :cond_11

    .line 528
    new-instance v6, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    aput-object v6, v4, v16

    .line 529
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v4, v5, :cond_10

    .line 530
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v4, v16

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPostInvalidateParent(Z)V

    .line 532
    :cond_10
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v4, v4, v16

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setRoundRadius(I)V

    .line 534
    :cond_11
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v2, v16

    invoke-virtual {v2, v1, v12, v13, v14}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 535
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmapShader()Landroid/graphics/BitmapShader;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    goto/16 :goto_8

    :cond_12
    if-eqz v13, :cond_14

    if-eqz v14, :cond_13

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v7, 0x0

    aput v14, v4, v7

    aput v13, v4, v2

    aput v12, v4, v5

    aput v1, v4, v6

    .line 540
    new-instance v2, Landroid/graphics/LinearGradient;

    const/16 v18, 0x0

    int-to-float v5, v11

    const/16 v20, 0x0

    int-to-float v6, v10

    const/16 v23, 0x0

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v21, v6

    move-object/from16 v22, v4

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    goto :goto_8

    :cond_13
    new-array v4, v6, [I

    const/4 v6, 0x0

    aput v13, v4, v6

    aput v12, v4, v2

    aput v1, v4, v5

    .line 543
    new-instance v2, Landroid/graphics/LinearGradient;

    const/16 v26, 0x0

    int-to-float v5, v11

    const/16 v28, 0x0

    int-to-float v6, v10

    const/16 v31, 0x0

    sget-object v32, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v25, v2

    move/from16 v27, v5

    move/from16 v29, v6

    move-object/from16 v30, v4

    invoke-direct/range {v25 .. v32}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    goto :goto_8

    :cond_14
    new-array v4, v5, [I

    const/4 v5, 0x0

    aput v12, v4, v5

    aput v1, v4, v2

    .line 547
    new-instance v2, Landroid/graphics/LinearGradient;

    const/16 v18, 0x0

    int-to-float v5, v11

    const/16 v20, 0x0

    int-to-float v6, v10

    const/16 v23, 0x0

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v21, v6

    move-object/from16 v22, v4

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 550
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 551
    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    .line 552
    iput-boolean v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    .line 553
    iput v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    .line 554
    iput v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    .line 555
    iput v14, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    .line 556
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    :cond_15
    if-nez v12, :cond_17

    .line 558
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    .line 559
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 560
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 562
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    :cond_17
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v1, v1, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_18

    .line 565
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v1, v1, v16

    sub-int v2, v10, p4

    move/from16 v3, p2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v11, v3, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    .line 567
    :goto_a
    iput v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    .line 569
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v1, v1, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_19

    move/from16 v4, p4

    :cond_19
    sub-int v1, p1, v4

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    move/from16 v1, p7

    .line 570
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    move/from16 v1, p8

    .line 571
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    return-void
.end method

.method public setTop(IIIZZ)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v7, p4

    move v8, p5

    .line 460
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    return-void
.end method
