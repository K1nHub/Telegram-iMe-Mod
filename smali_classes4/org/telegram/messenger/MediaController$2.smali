.class Lorg/telegram/messenger/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method public static synthetic $r8$lambda$KFezl721_K6mLwIJkJIfLv3NCqc(Lorg/telegram/messenger/MediaController$2;Ljava/nio/ByteBuffer;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController$2;->lambda$run$1(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qch3lgW2DDid1vB46sgCw05oJjo(Lorg/telegram/messenger/MediaController$2;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$2;->lambda$run$0(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZmxoYb44RB2_mvL9ZAZBxtwyRAY(Lorg/telegram/messenger/MediaController$2;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController$2;->lambda$run$2(D)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$200(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$run$1(Ljava/nio/ByteBuffer;Z)V
    .locals 5

    .line 743
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 745
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_1

    .line 746
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 747
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_1
    move v0, v2

    .line 749
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 750
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-eq v1, v3, :cond_2

    if-eqz p2, :cond_5

    .line 751
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez p2, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    :goto_2
    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/MediaController;->access$1600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 752
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 753
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    iget v4, v4, Lorg/telegram/messenger/MediaController;->sampleRate:I

    div-int/lit16 v4, v4, 0x3e8

    div-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/MediaController;->access$1714(Lorg/telegram/messenger/MediaController;J)J

    .line 754
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1808(Lorg/telegram/messenger/MediaController;)I

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "writing frame failed"

    .line 756
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-eq v0, v2, :cond_0

    .line 760
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 763
    :cond_6
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {p2}, Lorg/telegram/messenger/MediaController;->access$700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MediaController$2;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$run$2(D)V
    .locals 5

    .line 766
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$1400(Lorg/telegram/messenger/MediaController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$1300(Lorg/telegram/messenger/MediaController;)I

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

    .line 689
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 691
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$200(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$200(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 693
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$200(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 695
    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    iget v0, v0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 696
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_0
    move-object v3, v0

    .line 698
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 699
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-lez v4, :cond_7

    .line 701
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 704
    :try_start_0
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$300(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v7

    div-int/lit8 v0, v4, 0x2

    int-to-long v9, v0

    add-long/2addr v7, v9

    .line 705
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$300(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v9

    long-to-double v9, v9

    long-to-double v11, v7

    div-double/2addr v9, v11

    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v0

    array-length v0, v0

    int-to-double v11, v0

    mul-double/2addr v9, v11

    double-to-int v0, v9

    .line 706
    iget-object v9, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v9}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v9

    array-length v9, v9

    sub-int/2addr v9, v0

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    .line 709
    iget-object v11, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v11}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v11

    array-length v11, v11

    int-to-float v11, v11

    int-to-float v12, v0

    div-float/2addr v11, v12

    move v12, v2

    move v13, v10

    :goto_1
    if-ge v12, v0, :cond_1

    .line 712
    iget-object v14, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v14}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v14

    iget-object v15, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v15}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v15

    float-to-int v5, v13

    aget-short v5, v15, v5

    aput-short v5, v14, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-float/2addr v13, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v9

    div-float/2addr v5, v6

    move v6, v2

    const-wide/16 v16, 0x0

    .line 719
    :goto_2
    :try_start_1
    div-int/lit8 v9, v4, 0x2

    if-ge v6, v9, :cond_5

    .line 720
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 721
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_2

    const/16 v11, 0x9c4

    if-le v9, v11, :cond_3

    :cond_2
    mul-int v11, v9, v9

    int-to-double v11, v11

    add-double v16, v16, v11

    :cond_3
    float-to-int v11, v10

    if-ne v6, v11, :cond_4

    .line 728
    iget-object v11, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v11}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v11

    array-length v11, v11

    if-ge v0, v11, :cond_4

    .line 729
    iget-object v11, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v11}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v11

    aput-short v9, v11, v0

    add-float/2addr v10, v5

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 734
    :cond_5
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0, v7, v8}, Lorg/telegram/messenger/MediaController;->access$302(Lorg/telegram/messenger/MediaController;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-wide/from16 v5, v16

    goto :goto_3

    :catch_1
    move-exception v0

    const-wide/16 v5, 0x0

    .line 736
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-wide/from16 v16, v5

    .line 738
    :goto_4
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-double v5, v4

    div-double v16, v16, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v16, v16, v5

    .line 739
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 741
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-eq v4, v0, :cond_6

    const/4 v2, 0x1

    .line 742
    :cond_6
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v4, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v3, v2}, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MediaController$2;Ljava/nio/ByteBuffer;Z)V

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 765
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$600(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 766
    new-instance v0, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v5, v6}, Lorg/telegram/messenger/MediaController$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaController$2;D)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 768
    :cond_7
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$200(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$800(Lorg/telegram/messenger/MediaController;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    .line 770
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$800(Lorg/telegram/messenger/MediaController;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$900(Lorg/telegram/messenger/MediaController;)Z

    move-result v3

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$1000(Lorg/telegram/messenger/MediaController;)I

    move-result v4

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$2;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v5}, Lorg/telegram/messenger/MediaController;->access$1100(Lorg/telegram/messenger/MediaController;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/MediaController;->access$1200(Lorg/telegram/messenger/MediaController;IZILjava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method
