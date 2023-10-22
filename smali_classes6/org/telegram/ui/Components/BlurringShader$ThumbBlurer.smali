.class public Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;
.super Ljava/lang/Object;
.source "BlurringShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BlurringShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbBlurer"
.end annotation


# instance fields
.field private final clearPaint:Landroid/graphics/Paint;

.field private generate:Ljava/lang/Runnable;

.field private final invalidate:Ljava/lang/Runnable;

.field private final padding:I

.field private thumbBitmap:Landroid/graphics/Bitmap;

.field private thumbKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$k5wKtXF9mGfzAVF7K3GKnXpanss(Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;Landroid/graphics/Bitmap;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->lambda$getBitmap$1(Landroid/graphics/Bitmap;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z3wqWsm0xRZqo2kh_WqPybcJr-A(Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->lambda$getBitmap$0(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 2

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->clearPaint:Landroid/graphics/Paint;

    .line 590
    iput p1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->padding:I

    .line 591
    iput-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->invalidate:Ljava/lang/Runnable;

    .line 592
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;)Landroid/graphics/Bitmap;
    .locals 0

    .line 568
    iget-object p0, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private synthetic lambda$getBitmap$0(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 658
    iput-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->generate:Ljava/lang/Runnable;

    .line 659
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 662
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->invalidate:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 664
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 667
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$getBitmap$1(Landroid/graphics/Bitmap;IILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43a20000    # 324.0f

    mul-float v5, v3, v4

    float-to-double v5, v5

    .line 625
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    div-float/2addr v4, v3

    float-to-double v3, v4

    .line 626
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_1

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v6, v3

    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    move v6, v5

    .line 635
    :goto_1
    iget v7, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->padding:I

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v4

    const/4 v9, 0x2

    mul-int/2addr v7, v9

    add-int/2addr v7, v6

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 636
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 637
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    invoke-direct {v10, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 638
    new-instance v11, Landroid/graphics/Rect;

    iget v12, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->padding:I

    add-int v13, v12, v5

    add-int v14, v12, v3

    invoke-direct {v11, v12, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 639
    iget v12, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->padding:I

    int-to-float v13, v12

    int-to-float v4, v4

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v4, v14

    add-float/2addr v13, v4

    int-to-float v4, v12

    int-to-float v6, v6

    div-float/2addr v6, v14

    add-float/2addr v4, v6

    invoke-virtual {v8, v13, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    if-ne v2, v4, :cond_2

    .line 641
    invoke-virtual {v8, v12, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2

    :cond_2
    if-ne v2, v9, :cond_3

    .line 643
    invoke-virtual {v8, v6, v12}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    :goto_2
    int-to-float v1, v1

    .line 645
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 646
    iget v1, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->padding:I

    neg-int v2, v1

    int-to-float v2, v2

    int-to-float v4, v5

    div-float/2addr v4, v14

    sub-float/2addr v2, v4

    neg-int v1, v1

    int-to-float v1, v1

    int-to-float v4, v3

    div-float/2addr v4, v14

    sub-float/2addr v1, v4

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 647
    invoke-virtual {v8, v2, v10, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v1, 0x6

    .line 648
    invoke-static {v7, v1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 649
    iget v1, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->padding:I

    if-lez v1, :cond_4

    const/4 v11, 0x0

    const/4 v12, 0x0

    add-int v2, v5, v1

    int-to-float v13, v2

    int-to-float v14, v1

    .line 651
    iget-object v15, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->clearPaint:Landroid/graphics/Paint;

    move-object v10, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 652
    iget v1, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->padding:I

    int-to-float v12, v1

    int-to-float v13, v1

    add-int/2addr v1, v3

    int-to-float v14, v1

    iget-object v15, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 653
    iget v1, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->padding:I

    add-int v2, v1, v5

    int-to-float v11, v2

    int-to-float v12, v1

    add-int v2, v1, v5

    add-int/2addr v2, v1

    int-to-float v13, v2

    add-int/2addr v1, v3

    int-to-float v14, v1

    iget-object v15, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 654
    iget v1, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->padding:I

    add-int v2, v1, v3

    int-to-float v12, v2

    add-int/2addr v5, v1

    add-int/2addr v5, v1

    int-to-float v13, v5

    add-int/2addr v3, v1

    add-int/2addr v3, v1

    int-to-float v14, v3

    iget-object v15, v0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 656
    :cond_4
    new-instance v1, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer$$ExternalSyntheticLambda1;

    move-object/from16 v2, p4

    invoke-direct {v1, v0, v2, v7}, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 596
    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbKey:Ljava/lang/String;

    .line 597
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->generate:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 598
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->generate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 600
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 601
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 603
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 610
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbKey:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    return-object v1

    .line 613
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->generate:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    return-object v0

    .line 617
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->generate:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 618
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->generate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 620
    :cond_3
    iput-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbKey:Ljava/lang/String;

    .line 621
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;Landroid/graphics/Bitmap;IILjava/lang/String;)V

    iput-object v7, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->generate:Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 671
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->thumbBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getBitmap(Lorg/telegram/messenger/ImageReceiver$BitmapHolder;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 685
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->getKey()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->orientation:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->getBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 678
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getInvert()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/telegram/ui/Components/BlurringShader$ThumbBlurer;->getBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
