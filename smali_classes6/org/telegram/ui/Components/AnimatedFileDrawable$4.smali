.class Lorg/telegram/ui/Components/AnimatedFileDrawable$4;
.super Ljava/lang/Object;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v7

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v8

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v9

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3000(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v5

    iput-wide v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v3

    const/16 v5, 0xf00

    if-gt v0, v5, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v4

    if-le v0, v5, :cond_1

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3100(J)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iput-wide v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 320
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2702(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    .line 324
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    const/4 v6, 0x3

    if-eqz v5, :cond_8

    .line 325
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1402(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 328
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    if-nez v1, :cond_4

    .line 329
    new-instance v1, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    invoke-direct {v1}, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    .line 331
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3502(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    iget v1, v1, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;->frame:I

    .line 333
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/utils/BitmapsCache;->getFrame(Landroid/graphics/Bitmap;Lorg/telegram/messenger/utils/BitmapsCache$Metadata;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 334
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v5, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    iget v5, v5, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;->frame:I

    if-ge v5, v1, :cond_5

    .line 335
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1902(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    .line 337
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v5, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    iget v5, v5, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;->frame:I

    const/16 v7, 0x10

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v8

    const/4 v9, 0x4

    aget v8, v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v9, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    invoke-virtual {v9}, Lorg/telegram/messenger/utils/BitmapsCache;->getFrameCount()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/2addr v5, v4

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    move-result v3

    aput v3, v1, v6

    .line 339
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    invoke-virtual {v1}, Lorg/telegram/messenger/utils/BitmapsCache;->needGenCache()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_6
    if-ne v0, v2, :cond_7

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 345
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 350
    :cond_8
    iget-wide v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v0, v7, v1

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v3

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v4

    if-nez v0, :cond_9

    goto :goto_1

    .line 391
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 351
    :cond_a
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v3

    if-lez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-lez v0, :cond_b

    .line 353
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v5

    aget v5, v5, v3

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v7

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v7

    aget v7, v7, v4

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1402(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 355
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 357
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v0

    aget-object v0, v0, v3

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v0

    new-instance v5, Landroid/graphics/BitmapShader;

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    aput-object v5, v0, v3

    .line 362
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-ltz v0, :cond_d

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v1

    long-to-int v1, v1

    aput v1, v0, v6

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v0

    .line 365
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 366
    :try_start_3
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const-wide/16 v7, -0x1

    invoke-static {v3, v7, v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2502(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J

    .line 367
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    :try_start_4
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 370
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->reset()V

    .line 372
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v2, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v2, v3, v0, v1, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4200(JJZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v3, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 367
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 374
    :cond_d
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3502(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v10

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v11

    const/4 v12, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v13

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v14

    invoke-static/range {v7 .. v14}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4400(JLandroid/graphics/Bitmap;[IIZFF)I

    move-result v0

    if-nez v0, :cond_e

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 381
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v6

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1902(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    :cond_f
    if-eqz v3, :cond_10

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v1

    aget v1, v1, v6

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2102(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    .line 388
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v1

    aget v1, v1, v6

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 395
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 398
    :cond_11
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
