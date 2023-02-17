.class Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/camera/CameraView$VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)V
    .locals 0

    .line 1268
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    move-wide v4, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x1

    if-nez v3, :cond_9

    .line 1276
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1500(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1600(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 1278
    :try_start_0
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1600(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v3, 0x1

    .line 1282
    :goto_1
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1700(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)I

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_7

    .line 1287
    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1800(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1288
    new-instance v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v7}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    goto :goto_2

    .line 1290
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1800(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 1292
    :goto_2
    iput v2, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    const/16 v8, 0xa

    .line 1293
    iput v8, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_4

    cmp-long v10, v4, v0

    if-nez v10, :cond_2

    .line 1296
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    .line 1299
    :cond_2
    iget-object v10, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v10, v10, v9

    .line 1300
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1301
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v11}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1600(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v11

    const/16 v12, 0x800

    invoke-virtual {v11, v10, v12}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v10

    if-gtz v10, :cond_3

    .line 1304
    iput v9, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    .line 1305
    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v9}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1500(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1306
    iput-boolean v6, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    goto :goto_4

    .line 1310
    :cond_3
    iget-object v11, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aput-wide v4, v11, v9

    .line 1311
    iget-object v11, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aput v10, v11, v9

    const v11, 0xf4240

    mul-int v10, v10, v11

    const v11, 0xac44

    .line 1312
    div-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    add-long/2addr v4, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1315
    :cond_4
    :goto_4
    iget v9, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-gez v9, :cond_7

    iget-boolean v9, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    if-eqz v9, :cond_5

    goto :goto_5

    .line 1321
    :cond_5
    iget-object v8, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v8}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1500(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1325
    :cond_6
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1800(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    goto/16 :goto_0

    .line 1316
    :cond_7
    :goto_5
    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v9}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1500(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Z

    move-result v9

    if-nez v9, :cond_8

    iget v9, v7, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v9, v8, :cond_8

    goto :goto_6

    :cond_8
    move v6, v3

    .line 1319
    :goto_6
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1900(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    move-result-object v3

    iget-object v8, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v8}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1900(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v3, v6

    goto/16 :goto_0

    .line 1333
    :cond_9
    :goto_7
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1600(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 1335
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1337
    :goto_8
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1900(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v1}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1900(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$EncoderHandler;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$1;->this$1:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    invoke-static {v3}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->access$1700(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)I

    move-result v3

    invoke-virtual {v1, v6, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
