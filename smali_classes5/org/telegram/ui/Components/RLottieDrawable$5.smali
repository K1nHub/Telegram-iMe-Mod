.class Lorg/telegram/ui/Components/RLottieDrawable$5;
.super Ljava/lang/Object;
.source "RLottieDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RLottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RLottieDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 313
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_1

    goto/16 :goto_9

    .line 323
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 325
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 327
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 330
    :cond_2
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 332
    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$300(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 333
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$300(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 334
    iget-object v6, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v6, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v6, v7, v8, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$400(JLjava/lang/String;I)V

    goto :goto_1

    .line 336
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$300(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 341
    :cond_4
    :goto_2
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$500(Lorg/telegram/ui/Components/RLottieDrawable;)[I

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$500(Lorg/telegram/ui/Components/RLottieDrawable;)[I

    move-result-object v0

    invoke-static {v6, v7, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$600(J[I)V

    .line 343
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$502(Lorg/telegram/ui/Components/RLottieDrawable;[I)[I

    .line 347
    :cond_5
    :try_start_2
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 348
    iget-wide v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    :cond_6
    :goto_3
    move-wide v10, v8

    goto :goto_4

    :cond_7
    if-ne v6, v5, :cond_8

    .line 350
    iget-wide v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    .line 351
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->setLastFrame:Z

    if-eqz v0, :cond_6

    .line 352
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    sub-int/2addr v6, v7

    iput v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    goto :goto_3

    .line 355
    :cond_8
    iget-wide v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    goto :goto_3

    .line 358
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$700(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v6, 0x2

    goto :goto_5

    :cond_9
    const/4 v6, 0x1

    .line 359
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v8, :cond_a

    .line 361
    :try_start_3
    iget v10, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    div-int/2addr v10, v6

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v10, v0}, Lorg/telegram/messenger/utils/BitmapsCache;->getFrame(ILandroid/graphics/Bitmap;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 363
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6

    .line 366
    :cond_a
    iget v12, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iget-object v13, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v14, v0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v15, v0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v16

    const/16 v17, 0x1

    invoke-static/range {v10 .. v17}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-result v0

    .line 368
    :goto_6
    iget-object v8, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v8, v8, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    const/4 v10, -0x1

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lorg/telegram/messenger/utils/BitmapsCache;->needGenCache()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 369
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$800(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 370
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->access$802(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z

    .line 371
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v8, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v8}, Lorg/telegram/ui/Components/RLottieDrawable;->access$900(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    const/4 v0, -0x1

    :cond_c
    if-ne v0, v10, :cond_e

    .line 376
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_d

    .line 378
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_d
    return-void

    .line 383
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 385
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    if-ne v8, v7, :cond_12

    .line 386
    iget v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int v8, v7, v6

    iget v11, v0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    if-ne v11, v10, :cond_f

    iget-object v10, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v11, v10, v9

    :cond_f
    if-ge v8, v11, :cond_10

    add-int/2addr v7, v6

    .line 387
    iput v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    goto/16 :goto_8

    .line 389
    :cond_10
    iput v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 390
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 391
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_11

    .line 392
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iput v5, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    .line 394
    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1000(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 395
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1102(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 396
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1002(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z

    goto/16 :goto_8

    :cond_12
    if-ne v8, v5, :cond_14

    .line 400
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int v3, v2, v6

    iget v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    if-ge v3, v4, :cond_13

    add-int/2addr v2, v6

    .line 401
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    goto/16 :goto_8

    .line 403
    :cond_13
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 404
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    goto/16 :goto_8

    .line 407
    :cond_14
    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    if-ltz v3, :cond_18

    iget-boolean v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;->playInDirectionOfCustomEndFrame:Z

    if-eqz v4, :cond_18

    .line 408
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-le v2, v3, :cond_16

    sub-int v4, v2, v6

    if-lt v4, v3, :cond_15

    sub-int/2addr v2, v6

    .line 410
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 411
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    goto/16 :goto_8

    .line 413
    :cond_15
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 414
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1200(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto/16 :goto_8

    :cond_16
    add-int v4, v2, v6

    if-ge v4, v3, :cond_17

    add-int/2addr v2, v6

    .line 418
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 419
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    goto/16 :goto_8

    .line 421
    :cond_17
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 422
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1200(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto/16 :goto_8

    .line 426
    :cond_18
    iget v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int v8, v4, v6

    if-ltz v3, :cond_19

    goto :goto_7

    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v3, v3, v9

    :goto_7
    if-ge v8, v3, :cond_1b

    .line 427
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    .line 428
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 429
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    goto :goto_8

    :cond_1a
    add-int/2addr v4, v6

    .line 431
    iput v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 432
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    goto :goto_8

    .line 434
    :cond_1b
    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-ne v3, v7, :cond_1d

    .line 435
    iput v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 436
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 437
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1000(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 438
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1102(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 439
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1002(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z

    .line 441
    :cond_1c
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    if-lez v2, :cond_1f

    sub-int/2addr v2, v7

    .line 442
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    goto :goto_8

    :cond_1d
    if-ne v3, v5, :cond_1e

    .line 445
    iput v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 446
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 447
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    .line 448
    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1000(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 449
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1102(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 450
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1002(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z

    goto :goto_8

    .line 453
    :cond_1e
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 454
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1200(Lorg/telegram/ui/Components/RLottieDrawable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 459
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 462
    :cond_1f
    :goto_8
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_20

    .line 464
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_20
    return-void

    .line 317
    :cond_21
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_22

    .line 318
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 320
    :cond_22
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
