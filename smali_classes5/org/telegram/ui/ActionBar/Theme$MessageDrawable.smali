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

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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

    .line 324
    sput-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 361
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 365
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 296
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    .line 304
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    .line 305
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    .line 314
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 326
    fill-array-data v2, :array_0

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    new-array v2, v0, [Landroid/graphics/Bitmap;

    .line 327
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    new-array v2, v0, [Landroid/graphics/drawable/Drawable;

    .line 328
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    new-array v2, v0, [I

    .line 329
    fill-array-data v2, :array_1

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    const/4 v2, 0x2

    new-array v3, v2, [[I

    new-array v4, v0, [I

    .line 331
    fill-array-data v4, :array_2

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_3

    aput-object v4, v3, v1

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    new-array v3, v2, [I

    .line 334
    fill-array-data v3, :array_4

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [[I

    new-array v3, v0, [I

    .line 335
    fill-array-data v3, :array_5

    aput-object v3, v2, v5

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    aput-object v0, v2, v1

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    .line 366
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 367
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    .line 368
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    .line 369
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    .line 370
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    .line 371
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    .line 372
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    return-void

    nop

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
        0x2
        0x4
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
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private dp(F)I
    .locals 2

    .line 561
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 562
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1

    .line 564
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method

.method private static getByteBuffer(IIII)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x54

    .line 769
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 770
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    .line 771
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 772
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x9

    .line 773
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 775
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 776
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 778
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 779
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 780
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 781
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 783
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 785
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 786
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 788
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 789
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 791
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 792
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 793
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 794
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 795
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 796
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 797
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 798
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 799
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public applyMatrixScale()V
    .locals 6

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v0, v0, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_4

    .line 381
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 382
    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 383
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

    .line 384
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

    .line 385
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v1, v0

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_3

    .line 389
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 392
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move v4, v2

    .line 394
    :goto_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 395
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

    .line 396
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

    .line 397
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v1, v0

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_4
    :goto_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 824
    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    .line 825
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/16 p1, 0xff

    .line 826
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    goto :goto_0

    .line 828
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 833
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 834
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v4, :cond_0

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-nez v4, :cond_0

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_0

    .line 835
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 837
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 838
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    .line 842
    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    .line 845
    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v8, 0x2

    if-eqz v6, :cond_1

    move v9, v6

    goto :goto_0

    .line 848
    :cond_1
    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    const/4 v9, 0x6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_2

    .line 849
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

    .line 850
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

    .line 851
    :cond_2
    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v6, v8, :cond_3

    .line 852
    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    .line 853
    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    goto :goto_0

    .line 855
    :cond_3
    sget v6, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v6, v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v6

    .line 856
    sget v10, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    .line 858
    :goto_0
    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    if-nez p2, :cond_4

    .line 860
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    move-object/from16 v10, p2

    :goto_1
    if-nez p2, :cond_5

    .line 862
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v11, :cond_5

    .line 863
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 864
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    .line 865
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v11, v3, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 866
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 869
    :cond_5
    iget v11, v2, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 871
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    const/4 v14, 0x1

    if-eqz v13, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v13, v15, :cond_6

    const/4 v13, 0x1

    :goto_2
    const/4 v15, 0x1

    goto :goto_5

    .line 875
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

    goto :goto_3

    :cond_7
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v15

    sub-int/2addr v13, v6

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ge v13, v15, :cond_8

    :goto_3
    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    .line 876
    :goto_4
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    mul-int/lit8 v16, v6, 0x2

    add-int v15, v15, v16

    if-ltz v15, :cond_9

    goto :goto_2

    :cond_9
    const/4 v15, 0x0

    .line 880
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    if-eqz v3, :cond_a

    .line 881
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->path:Landroid/graphics/Path;

    .line 882
    invoke-virtual {v3, v2, v13, v15}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->invalidatePath(Landroid/graphics/Rect;ZZ)Z

    move-result v3

    goto :goto_6

    .line 884
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->path:Landroid/graphics/Path;

    const/4 v3, 0x1

    :goto_6
    if-nez v3, :cond_b

    .line 887
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    if-eqz v3, :cond_29

    .line 888
    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 889
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    const/high16 v12, 0x41000000    # 8.0f

    if-eqz v3, :cond_1a

    .line 890
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_d

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v8, :cond_d

    if-nez p2, :cond_d

    if-eqz v13, :cond_c

    goto :goto_7

    .line 900
    :cond_c
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

    .line 901
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

    .line 891
    :cond_d
    :goto_7
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v3, v14, :cond_e

    .line 892
    iget v3, v2, Landroid/graphics/Rect;->right:I

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    sub-int/2addr v3, v12

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v5

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_8

    .line 894
    :cond_e
    iget v3, v2, Landroid/graphics/Rect;->right:I

    const v8, 0x40266666    # 2.6f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v5

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 896
    :goto_8
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v5

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 897
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int v12, v8, v5

    int-to-float v12, v12

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v18, v14, v5

    mul-int/lit8 v19, v6, 0x2

    move/from16 v20, v9

    sub-int v9, v18, v19

    int-to-float v9, v9

    add-int/2addr v8, v5

    add-int v8, v8, v19

    int-to-float v8, v8

    sub-int/2addr v14, v5

    int-to-float v14, v14

    invoke-virtual {v3, v12, v9, v8, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 898
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual {v4, v3, v8, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 903
    :goto_9
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_11

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x2

    if-eq v3, v8, :cond_11

    if-nez p2, :cond_11

    if-eqz v15, :cond_f

    goto :goto_a

    .line 918
    :cond_f
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    sub-int/2addr v8, v12

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 919
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_10

    .line 920
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 922
    :cond_10
    iget v3, v2, Landroid/graphics/Rect;->right:I

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    sub-int/2addr v3, v12

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 904
    :cond_11
    :goto_a
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 905
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int v9, v8, v5

    int-to-float v9, v9

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int v14, v12, v5

    int-to-float v14, v14

    add-int/2addr v8, v5

    mul-int/lit8 v15, v6, 0x2

    add-int/2addr v8, v15

    int-to-float v8, v8

    add-int/2addr v12, v5

    add-int/2addr v12, v15

    int-to-float v12, v12

    invoke-virtual {v3, v9, v14, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 906
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    invoke-virtual {v4, v3, v8, v9, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 908
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    if-eqz v3, :cond_12

    move/from16 v3, v20

    goto :goto_b

    :cond_12
    move v3, v6

    .line 909
    :goto_b
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 910
    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 911
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v12, v9, v5

    const/4 v14, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v12, v3

    int-to-float v12, v12

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int v15, v14, v5

    int-to-float v15, v15

    sub-int/2addr v9, v5

    int-to-float v9, v9

    add-int/2addr v14, v5

    add-int/2addr v14, v3

    int-to-float v3, v14

    invoke-virtual {v8, v12, v15, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_c

    .line 913
    :cond_13
    iget v8, v2, Landroid/graphics/Rect;->right:I

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    sub-int/2addr v8, v12

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v5

    int-to-float v12, v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 914
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v14

    sub-int/2addr v12, v14

    const/4 v14, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v12, v3

    int-to-float v12, v12

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v5

    int-to-float v14, v14

    iget v15, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v17

    sub-int v15, v15, v17

    int-to-float v9, v15

    iget v15, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v5

    add-int/2addr v15, v3

    int-to-float v3, v15

    invoke-virtual {v8, v12, v14, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 916
    :goto_c
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    invoke-virtual {v4, v3, v8, v9, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 925
    :goto_d
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_17

    if-nez p2, :cond_15

    if-eqz v13, :cond_14

    goto :goto_e

    .line 933
    :cond_14
    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int/2addr v11, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v3

    int-to-float v3, v11

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_19

    .line 927
    :cond_15
    :goto_e
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v3, :cond_16

    move/from16 v6, v20

    .line 929
    :cond_16
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v6

    int-to-float v7, v7

    invoke-virtual {v4, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 930
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v5

    const/4 v9, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v8, v6

    int-to-float v8, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v2, v5

    sub-int/2addr v9, v6

    int-to-float v6, v9

    sub-int/2addr v7, v5

    int-to-float v7, v7

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v3, v8, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 931
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_19

    .line 936
    :cond_17
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v6, :cond_19

    const/4 v6, 0x2

    if-eq v3, v6, :cond_19

    if-nez p2, :cond_19

    if-eqz v13, :cond_18

    goto :goto_f

    .line 941
    :cond_18
    iget v2, v2, Landroid/graphics/Rect;->right:I

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int/2addr v11, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v3

    int-to-float v3, v11

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_19

    .line 937
    :cond_19
    :goto_f
    iget v3, v2, Landroid/graphics/Rect;->right:I

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v7

    const/high16 v8, 0x40400000    # 3.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 938
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v5

    const/4 v9, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v8, v7

    const/high16 v9, 0x41100000    # 9.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-direct {v0, v11}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    add-int/2addr v9, v7

    int-to-float v7, v9

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v3, v6, v8, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 939
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d5a0000    # -83.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_19

    :cond_1a
    move/from16 v20, v9

    .line 945
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_1c

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v9, 0x2

    if-eq v3, v9, :cond_1c

    if-nez p2, :cond_1c

    if-eqz v13, :cond_1b

    goto :goto_10

    .line 955
    :cond_1b
    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v9, v11, v9

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v9, v12

    int-to-float v9, v9

    invoke-virtual {v4, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 956
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v9, v11, v9

    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v9, v12

    int-to-float v9, v9

    invoke-virtual {v4, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_12

    .line 946
    :cond_1c
    :goto_10
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_1d

    .line 947
    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    add-int/2addr v3, v12

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_11

    .line 949
    :cond_1d
    iget v3, v2, Landroid/graphics/Rect;->left:I

    const v9, 0x40266666    # 2.6f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    add-int/2addr v3, v9

    int-to-float v3, v3

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 951
    :goto_11
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 952
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v12, v9, v5

    mul-int/lit8 v14, v6, 0x2

    sub-int/2addr v12, v14

    int-to-float v12, v12

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v19, v8, v5

    sub-int v14, v19, v14

    int-to-float v14, v14

    sub-int/2addr v9, v5

    int-to-float v9, v9

    sub-int/2addr v8, v5

    int-to-float v8, v8

    invoke-virtual {v3, v12, v14, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 953
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    invoke-virtual {v4, v3, v9, v8, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 958
    :goto_12
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v3, :cond_20

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x2

    if-eq v3, v8, :cond_20

    if-nez p2, :cond_20

    if-eqz v15, :cond_1e

    goto :goto_13

    .line 973
    :cond_1e
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    sub-int/2addr v8, v12

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 974
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1f

    .line 975
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 977
    :cond_1f
    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int v8, v11, v8

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_16

    .line 959
    :cond_20
    :goto_13
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    int-to-float v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 960
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

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

    invoke-virtual {v3, v9, v15, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 961
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v3, v9, v8, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 963
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    if-eqz v3, :cond_21

    move/from16 v3, v20

    goto :goto_14

    :cond_21
    move v3, v6

    .line 964
    :goto_14
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_22

    .line 965
    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    add-int/2addr v8, v3

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 966
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    add-int v12, v9, v5

    int-to-float v12, v12

    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int v15, v14, v5

    int-to-float v15, v15

    add-int/2addr v9, v5

    const/16 v17, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v9, v3

    int-to-float v9, v9

    add-int/2addr v14, v5

    add-int/2addr v14, v3

    int-to-float v3, v14

    invoke-virtual {v8, v12, v15, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_15

    .line 968
    :cond_22
    iget v8, v2, Landroid/graphics/Rect;->left:I

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v12

    add-int/2addr v8, v12

    add-int/2addr v8, v3

    int-to-float v8, v8

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v5

    int-to-float v12, v12

    invoke-virtual {v4, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 969
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

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v15, v3

    int-to-float v9, v15

    iget v15, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v5

    add-int/2addr v15, v3

    int-to-float v3, v15

    invoke-virtual {v8, v12, v14, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 971
    :goto_15
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/4 v12, 0x0

    invoke-virtual {v4, v3, v8, v9, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 980
    :goto_16
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_26

    if-nez p2, :cond_24

    if-eqz v13, :cond_23

    goto :goto_17

    .line 988
    :cond_23
    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int/2addr v11, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v3

    int-to-float v3, v11

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_19

    .line 982
    :cond_24
    :goto_17
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v3, :cond_25

    move/from16 v6, v20

    .line 984
    :cond_25
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v6

    int-to-float v7, v7

    invoke-virtual {v4, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 985
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int v8, v7, v5

    int-to-float v8, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v2, v5

    const/4 v11, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v9, v6

    int-to-float v9, v9

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    int-to-float v6, v7

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v3, v8, v9, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 986
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto/16 :goto_19

    .line 991
    :cond_26
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    if-nez v6, :cond_28

    const/4 v6, 0x2

    if-eq v3, v6, :cond_28

    if-nez p2, :cond_28

    if-eqz v13, :cond_27

    goto :goto_18

    .line 996
    :cond_27
    iget v2, v2, Landroid/graphics/Rect;->left:I

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    sub-int/2addr v11, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    add-int/2addr v11, v3

    int-to-float v3, v11

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_19

    .line 992
    :cond_28
    :goto_18
    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v7

    const/high16 v8, 0x40400000    # 3.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 993
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v5

    sub-int/2addr v8, v7

    const/high16 v7, 0x41100000    # 9.0f

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    iget v8, v2, Landroid/graphics/Rect;->left:I

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v3, v6, v7, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 994
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x42a60000    # 83.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1000
    :goto_19
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1003
    :cond_29
    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1004
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_2a

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v2, :cond_2a

    if-nez p2, :cond_2a

    const-string v2, "chat_outBubbleGradientSelectedOverlay"

    .line 1005
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 1006
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    mul-int v5, v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v2, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1007
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2a
    return-void
.end method

.method public drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 817
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V
    .locals 1

    .line 805
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_0

    .line 807
    iput-object p2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    .line 809
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 810
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->pathDrawCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    .line 811
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz p2, :cond_1

    .line 812
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

    .line 756
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 760
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 22

    move-object/from16 v0, p0

    .line 578
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 583
    :cond_1
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 586
    :goto_0
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v7, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    .line 590
    :cond_3
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 595
    :goto_1
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    .line 598
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v8, :cond_5

    if-nez v7, :cond_5

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 599
    :goto_2
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v9, :cond_6

    const-string v9, "chat_outBubbleShadow"

    goto :goto_3

    :cond_6
    const-string v9, "chat_inBubbleShadow"

    :goto_3
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(Ljava/lang/String;)I

    move-result v9

    .line 600
    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->lastDrawWithShadow:Z

    if-ne v10, v8, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    aget-object v10, v10, v7

    aget v10, v10, v4

    if-ne v10, v1, :cond_7

    if-eqz v8, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aget v10, v10, v4

    if-eq v10, v9, :cond_a

    .line 601
    :cond_7
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundDrawableRadius:[[I

    aget-object v10, v10, v7

    aput v1, v10, v4

    const/high16 v1, 0x42480000    # 50.0f

    .line 603
    :try_start_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    const/high16 v10, 0x42200000    # 40.0f

    invoke-direct {v0, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 604
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 606
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v12, -0x1

    if-eqz v8, :cond_9

    .line 609
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aput v9, v13, v4

    .line 611
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 613
    new-instance v15, Landroid/graphics/LinearGradient;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct {v0, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v10

    int-to-float v10, v10

    new-array v14, v5, [I

    const v19, 0x155f6569

    aput v19, v14, v3

    const v19, 0x295f6569

    aput v19, v14, v6

    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v19, v14

    move-object v14, v15

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v10

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 614
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 615
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 617
    invoke-virtual {v13, v5, v2, v9, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 618
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_8

    .line 619
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v0, v12, v12, v5, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    goto :goto_4

    .line 621
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v0, v3, v3, v5, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 623
    :goto_4
    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 625
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_9

    .line 626
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    invoke-virtual {v13, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 628
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 629
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v3, v3, v2, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 630
    invoke-virtual {v0, v11, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 634
    :cond_9
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 635
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 636
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v0, v3, v3, v5, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 637
    invoke-virtual {v0, v11, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 639
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v7

    new-instance v5, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    const/4 v10, 0x2

    div-int/2addr v9, v10

    sub-int/2addr v9, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/2addr v11, v10

    add-int/2addr v11, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/2addr v12, v10

    sub-int/2addr v12, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/2addr v13, v10

    add-int/2addr v13, v6

    invoke-static {v9, v11, v12, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getByteBuffer(IIII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    invoke-direct {v5, v1, v9, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    aput-object v5, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 641
    :try_start_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 v3, 0x1

    goto :goto_5

    :catchall_1
    nop

    .line 646
    :cond_a
    :goto_5
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->lastDrawWithShadow:Z

    .line 648
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_c

    .line 649
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_b

    const-string v1, "chat_outBubbleSelected"

    goto :goto_6

    :cond_b
    const-string v1, "chat_inBubbleSelected"

    :goto_6
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    .line 651
    :cond_c
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_d

    const-string v1, "chat_outBubble"

    goto :goto_7

    :cond_d
    const-string v1, "chat_inBubble"

    :goto_7
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 653
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v7

    aget-object v5, v5, v4

    if-eqz v5, :cond_f

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    aget-object v5, v5, v7

    aget v5, v5, v4

    if-ne v5, v1, :cond_e

    if-eqz v3, :cond_f

    .line 654
    :cond_e
    aget-object v2, v2, v7

    aget-object v2, v2, v4

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 655
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawableColor:[[I

    aget-object v2, v2, v7

    aput v1, v2, v4

    .line 657
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backgroundDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v7

    aget-object v1, v1, v4

    return-object v1
.end method

.method protected getColor(Ljava/lang/String;)I
    .locals 2

    .line 412
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 413
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method protected getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 420
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 421
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$300()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    :goto_0
    return-object p1
.end method

.method public getGradientShader()Landroid/graphics/Shader;
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMotionBackgroundDrawable()Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 3

    .line 684
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 685
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v0, v0, v1

    return-object v0

    .line 687
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

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShadowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 18

    move-object/from16 v0, p0

    .line 691
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 694
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-nez v1, :cond_1

    return-object v2

    .line 697
    :cond_1
    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 699
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

    const/4 v3, 0x2

    goto :goto_0

    .line 703
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isBottomNear:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 709
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentShadowDrawableRadius:[I

    aget v8, v7, v3

    if-eq v8, v1, :cond_8

    .line 710
    aput v1, v7, v3

    .line 711
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v1, v3

    if-eqz v7, :cond_5

    .line 712
    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/high16 v1, 0x42480000    # 50.0f

    .line 715
    :try_start_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    const/high16 v7, 0x42200000    # 40.0f

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 716
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 718
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 720
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

    .line 721
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v7, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 723
    invoke-virtual {v9, v2, v11, v10, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 724
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_6

    .line 725
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v0, v7, v7, v2, v12}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    goto :goto_1

    .line 727
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v5, v5, v2, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 729
    :goto_1
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 731
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_7

    .line 732
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 733
    invoke-virtual {v9, v11, v11, v11, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 734
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 735
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v5, v5, v2, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 736
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 739
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableBitmap:[Landroid/graphics/Bitmap;

    aput-object v1, v2, v3

    .line 740
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

    const/4 v5, 0x1

    goto :goto_2

    :catchall_0
    nop

    .line 746
    :cond_8
    :goto_2
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v1, :cond_9

    const-string v1, "chat_outBubbleShadow"

    goto :goto_3

    :cond_9
    const-string v1, "chat_inBubbleShadow"

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 747
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v2, v3

    if-eqz v4, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aget v4, v4, v3

    if-ne v4, v1, :cond_a

    if-eqz v5, :cond_b

    .line 748
    :cond_a
    aget-object v2, v2, v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 749
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawableColor:[I

    aput v1, v2, v3

    .line 751
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    return-object v1
.end method

.method public getShadowDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->shadowDrawable:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTopY()I
    .locals 1

    .line 557
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    return v0
.end method

.method public getTransitionDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    .line 662
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->dp(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 663
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 665
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 667
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, -0x1

    .line 668
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 670
    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 672
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

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->backupRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 675
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawableColor:I

    if-eq v0, p1, :cond_1

    .line 676
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawableColor:I

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 680
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->transitionDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public hasGradient()Z
    .locals 1

    .line 376
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

    .line 1017
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    if-eq v0, p1, :cond_0

    .line 1018
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->alpha:I

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1020
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->selectedPaint:Landroid/graphics/Paint;

    const-string v1, "chat_outBubbleGradientSelectedOverlay"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1024
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v0, :cond_2

    .line 1025
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1026
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 1027
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 1028
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 1031
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 1053
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_0

    .line 1055
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

    .line 1012
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawFullBubble:Z

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    .line 1060
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRoundRadius:I

    return-void
.end method

.method public setRoundingRadius(F)V
    .locals 0

    .line 1064
    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->overrideRounding:F

    return-void
.end method

.method public setTop(IIIIIIZZ)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v10, p3

    move/from16 v11, p5

    .line 431
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

    .line 432
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    .line 439
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isOut:Z

    const-string v2, "chat_outBubble"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 440
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_1

    const-string v1, "chat_outBubbleSelected"

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v6, "chat_outBubbleGradient"

    .line 441
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "chat_outBubbleGradient2"

    .line 442
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outBubbleGradient3"

    .line 443
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "chat_outBubbleGradientAnimated"

    .line 444
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 445
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    .line 447
    :cond_2
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isSelected:Z

    if-eqz v1, :cond_3

    const-string v1, "chat_inBubbleSelected"

    goto :goto_1

    :cond_3
    const-string v1, "chat_inBubble"

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(Ljava/lang/String;)I

    move-result v1

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v6, :cond_5

    .line 454
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getColor(Ljava/lang/String;)I

    move-result v1

    :cond_5
    if-nez v6, :cond_6

    .line 457
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_6
    if-nez v7, :cond_7

    .line 460
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_7
    if-nez v8, :cond_8

    .line 463
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 466
    :cond_8
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    const/4 v12, 0x2

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    goto :goto_3

    .line 469
    :cond_9
    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-ne v2, v12, :cond_a

    const/4 v2, 0x1

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    .line 471
    :goto_3
    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v14, 0x3

    if-nez v13, :cond_b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v9, :cond_b

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v15, v13, v2

    if-eqz v15, :cond_b

    .line 472
    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getColors()[I

    move-result-object v13

    .line 473
    aget v15, v13, v5

    iput v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    .line 474
    aget v15, v13, v4

    iput v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    .line 475
    aget v15, v13, v12

    iput v15, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    .line 476
    aget v13, v13, v14

    iput v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    .line 478
    :cond_b
    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    const/4 v15, -0x1

    if-eqz v13, :cond_11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_11

    if-eqz v9, :cond_11

    .line 479
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ne v10, v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    if-eqz v3, :cond_d

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    if-ne v3, v1, :cond_d

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v3, v13, :cond_d

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v3, v13, :cond_d

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v3, v13, :cond_d

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    if-eq v3, v9, :cond_c

    goto :goto_4

    :cond_c
    const/4 v5, -0x1

    goto :goto_5

    .line 480
    :cond_d
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_e

    const/16 v3, 0x3c

    const/16 v13, 0x50

    .line 481
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    .line 482
    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v13, v14, v14}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    .line 484
    :cond_e
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v13, v3, v2

    if-nez v13, :cond_10

    .line 485
    new-instance v13, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    aput-object v13, v3, v2

    .line 486
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v12, :cond_f

    .line 487
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPostInvalidateParent(Z)V

    .line 489
    :cond_f
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setRoundRadius(I)V

    .line 491
    :cond_10
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v12, v3, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmap:Landroid/graphics/Bitmap;

    move v13, v1

    const/4 v5, -0x1

    move v15, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIILandroid/graphics/Bitmap;)V

    .line 492
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 494
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crosfadeFromBitmapShader:Landroid/graphics/Shader;

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 495
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 496
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    .line 498
    iput-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    .line 499
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    .line 500
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    .line 501
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    goto/16 :goto_7

    :cond_11
    const/4 v5, -0x1

    .line 502
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_18

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v13, :cond_12

    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    if-ne v10, v13, :cond_12

    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    if-ne v13, v1, :cond_12

    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v13, v15, :cond_12

    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v13, v15, :cond_12

    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v13, v15, :cond_12

    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    if-eq v13, v9, :cond_18

    .line 503
    :cond_12
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_15

    if-eqz v9, :cond_15

    .line 504
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v13, v3, v2

    if-nez v13, :cond_14

    .line 505
    new-instance v13, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    aput-object v13, v3, v2

    .line 506
    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentType:I

    if-eq v3, v12, :cond_13

    .line 507
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPostInvalidateParent(Z)V

    .line 509
    :cond_13
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setRoundRadius(I)V

    .line 511
    :cond_14
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v3, v1, v4, v12, v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 512
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmapShader()Landroid/graphics/BitmapShader;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    goto/16 :goto_6

    .line 514
    :cond_15
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_17

    .line 515
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 516
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x0

    aput v13, v3, v15

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v3, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v12

    aput v1, v3, v14

    .line 517
    new-instance v4, Landroid/graphics/LinearGradient;

    const/16 v16, 0x0

    int-to-float v12, v11

    const/16 v18, 0x0

    int-to-float v13, v10

    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v15, v4

    move/from16 v17, v12

    move/from16 v19, v13

    move-object/from16 v20, v3

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    goto :goto_6

    :cond_16
    new-array v3, v14, [I

    .line 519
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    aput v13, v3, v14

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v3, v4

    aput v1, v3, v12

    .line 520
    new-instance v4, Landroid/graphics/LinearGradient;

    const/16 v24, 0x0

    int-to-float v12, v11

    const/16 v26, 0x0

    int-to-float v13, v10

    const/16 v29, 0x0

    sget-object v30, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v23, v4

    move/from16 v25, v12

    move/from16 v27, v13

    move-object/from16 v28, v3

    invoke-direct/range {v23 .. v30}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    goto :goto_6

    :cond_17
    new-array v3, v12, [I

    .line 523
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    aput v12, v3, v13

    aput v1, v3, v4

    .line 524
    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v15, 0x0

    int-to-float v12, v11

    const/16 v17, 0x0

    int-to-float v13, v10

    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v4

    move/from16 v16, v12

    move/from16 v18, v13

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 527
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 528
    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentColor:I

    .line 529
    iput-boolean v9, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentAnimateGradient:Z

    .line 530
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor1:I

    .line 531
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor2:I

    .line 532
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentGradientColor3:I

    .line 533
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    .line 534
    :cond_18
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1a

    .line 535
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    if-eqz v4, :cond_19

    .line 536
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 537
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 539
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    :cond_1a
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v1, v1, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_1b

    .line 542
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->motionBackground:[Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    aget-object v1, v1, v2

    sub-int v2, v10, p4

    move/from16 v3, p2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v11, v3, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    goto :goto_8

    :cond_1b
    const/4 v4, 0x0

    .line 544
    :goto_8
    iput v10, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->currentBackgroundHeight:I

    .line 546
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->gradientShader:Landroid/graphics/Shader;

    instance-of v1, v1, Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_1c

    move/from16 v4, p4

    :cond_1c
    sub-int v1, p1, v4

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->topY:I

    move/from16 v1, p7

    .line 547
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isTopNear:Z

    move/from16 v1, p8

    .line 548
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

    .line 427
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    return-void
.end method
