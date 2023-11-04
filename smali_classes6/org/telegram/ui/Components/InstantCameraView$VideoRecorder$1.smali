.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;


# direct methods
.method public static synthetic $r8$lambda$0A-xB0_yK9NaSCmdGo6Fumsv9B4(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->lambda$run$0(D)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 1843
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(D)V
    .locals 5

    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$3800(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 1851
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    .line 1852
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x18

    if-lt v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-wide/16 v5, -0x1

    move v7, v3

    move-wide v8, v5

    :goto_1
    if-nez v7, :cond_e

    .line 1855
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v10

    if-eq v10, v4, :cond_1

    .line 1857
    :try_start_0
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v7, v4

    .line 1861
    :goto_2
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_a

    .line 1866
    :cond_1
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1868
    :try_start_1
    new-instance v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v10}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1870
    :catch_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1871
    new-instance v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v10}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    goto :goto_3

    .line 1874
    :cond_2
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 1876
    :goto_3
    iput v3, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    const/16 v11, 0xa

    .line 1877
    iput v11, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    move v12, v3

    :goto_4
    if-ge v12, v11, :cond_9

    cmp-long v13, v8, v5

    const-wide/16 v14, 0x3e8

    if-nez v13, :cond_3

    if-nez v2, :cond_3

    .line 1880
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v14

    .line 1883
    :cond_3
    iget-object v13, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v13, v13, v12

    .line 1884
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1885
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v5

    const/16 v6, 0x800

    invoke-virtual {v5, v13, v6}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-lez v5, :cond_5

    .line 1886
    rem-int/lit8 v6, v12, 0x2

    if-nez v6, :cond_5

    .line 1887
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v16, 0x0

    move v6, v3

    .line 1889
    :goto_5
    div-int/lit8 v11, v5, 0x2

    if-ge v6, v11, :cond_4

    .line 1890
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    mul-int/2addr v11, v11

    int-to-double v14, v11

    add-double v16, v16, v14

    add-int/lit8 v6, v6, 0x1

    const/16 v11, 0xa

    const-wide/16 v14, 0x3e8

    goto :goto_5

    :cond_4
    int-to-double v14, v5

    div-double v16, v16, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v16, v16, v14

    .line 1893
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 1894
    new-instance v6, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v14, v15}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;D)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1895
    invoke-virtual {v13, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5
    if-gtz v5, :cond_6

    .line 1898
    iput v12, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    .line 1899
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1900
    iput-boolean v4, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    goto :goto_7

    :cond_6
    if-eqz v2, :cond_7

    .line 1905
    iget-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v6

    invoke-virtual {v6, v0, v3}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    .line 1906
    iget-object v6, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget-wide v13, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v16, 0x3e8

    div-long v13, v13, v16

    aput-wide v13, v6, v12

    goto :goto_6

    .line 1908
    :cond_7
    iget-object v6, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aput-wide v8, v6, v12

    .line 1910
    :goto_6
    iget-object v6, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aput v5, v6, v12

    const v6, 0xf4240

    mul-int/2addr v5, v6

    const v6, 0xbb80

    .line 1911
    div-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    if-nez v2, :cond_8

    int-to-long v5, v5

    add-long/2addr v8, v5

    :cond_8
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v5, -0x1

    const/16 v11, 0xa

    goto/16 :goto_4

    .line 1916
    :cond_9
    :goto_7
    iget v5, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-gez v5, :cond_c

    iget-boolean v5, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    if-eqz v5, :cond_a

    goto :goto_8

    .line 1922
    :cond_a
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v5

    if-nez v5, :cond_b

    move v7, v4

    goto :goto_9

    .line 1926
    :cond_b
    :try_start_2
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    .line 1917
    :cond_c
    :goto_8
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v5

    if-nez v5, :cond_d

    iget v5, v10, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_d

    move v7, v4

    .line 1920
    :cond_d
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v6

    const/4 v11, 0x3

    invoke-virtual {v6, v11, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :catch_2
    :goto_9
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 1934
    :cond_e
    :goto_a
    :try_start_3
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    .line 1936
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1938
    :goto_b
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v2

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
