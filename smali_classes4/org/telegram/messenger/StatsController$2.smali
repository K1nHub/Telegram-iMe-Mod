.class Lorg/telegram/messenger/StatsController$2;
.super Ljava/lang/Object;
.source "StatsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/StatsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/StatsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/StatsController;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    iget-object v2, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v2}, Lorg/telegram/messenger/StatsController;->access$000(Lorg/telegram/messenger/StatsController;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/StatsController;->access$002(Lorg/telegram/messenger/StatsController;J)J

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-ge v1, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 93
    iget-object v6, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v6}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v7}, Lorg/telegram/messenger/StatsController;->access$200(Lorg/telegram/messenger/StatsController;)[[J

    move-result-object v8

    aget-object v8, v8, v1

    aget-wide v9, v8, v3

    invoke-static {v7, v9, v10}, Lorg/telegram/messenger/StatsController;->access$300(Lorg/telegram/messenger/StatsController;J)[B

    move-result-object v7

    invoke-virtual {v6, v7, v0, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 94
    iget-object v6, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v6}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v7}, Lorg/telegram/messenger/StatsController;->access$400(Lorg/telegram/messenger/StatsController;)[[J

    move-result-object v8

    aget-object v8, v8, v1

    aget-wide v9, v8, v3

    invoke-static {v7, v9, v10}, Lorg/telegram/messenger/StatsController;->access$300(Lorg/telegram/messenger/StatsController;J)[B

    move-result-object v7

    invoke-virtual {v6, v7, v0, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 95
    iget-object v6, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v6}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v7}, Lorg/telegram/messenger/StatsController;->access$500(Lorg/telegram/messenger/StatsController;)[[I

    move-result-object v8

    aget-object v8, v8, v1

    aget v8, v8, v3

    invoke-static {v7, v8}, Lorg/telegram/messenger/StatsController;->access$600(Lorg/telegram/messenger/StatsController;I)[B

    move-result-object v7

    invoke-virtual {v6, v7, v0, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 96
    iget-object v6, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v6}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v7}, Lorg/telegram/messenger/StatsController;->access$700(Lorg/telegram/messenger/StatsController;)[[I

    move-result-object v8

    aget-object v8, v8, v1

    aget v8, v8, v3

    invoke-static {v7, v8}, Lorg/telegram/messenger/StatsController;->access$600(Lorg/telegram/messenger/StatsController;I)[B

    move-result-object v7

    invoke-virtual {v6, v7, v0, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v2}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->access$800(Lorg/telegram/messenger/StatsController;)[I

    move-result-object v6

    aget v6, v6, v1

    invoke-static {v3, v6}, Lorg/telegram/messenger/StatsController;->access$600(Lorg/telegram/messenger/StatsController;I)[B

    move-result-object v3

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 99
    iget-object v2, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v2}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->access$900(Lorg/telegram/messenger/StatsController;)[J

    move-result-object v4

    aget-wide v6, v4, v1

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/StatsController;->access$300(Lorg/telegram/messenger/StatsController;J)[B

    move-result-object v3

    invoke-virtual {v2, v3, v0, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_2
    if-ge v2, v5, :cond_4

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 103
    iget-object v6, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v6}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v7}, Lorg/telegram/messenger/StatsController;->access$200(Lorg/telegram/messenger/StatsController;)[[J

    move-result-object v8

    aget-object v8, v8, v1

    aget-wide v9, v8, v2

    invoke-static {v7, v9, v10}, Lorg/telegram/messenger/StatsController;->access$300(Lorg/telegram/messenger/StatsController;J)[B

    move-result-object v7

    invoke-virtual {v6, v7, v0, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 104
    iget-object v6, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v6}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v7}, Lorg/telegram/messenger/StatsController;->access$400(Lorg/telegram/messenger/StatsController;)[[J

    move-result-object v8

    aget-object v8, v8, v1

    aget-wide v9, v8, v2

    invoke-static {v7, v9, v10}, Lorg/telegram/messenger/StatsController;->access$300(Lorg/telegram/messenger/StatsController;J)[B

    move-result-object v7

    invoke-virtual {v6, v7, v0, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 105
    iget-object v6, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v6}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v7}, Lorg/telegram/messenger/StatsController;->access$500(Lorg/telegram/messenger/StatsController;)[[I

    move-result-object v8

    aget-object v8, v8, v1

    aget v8, v8, v2

    invoke-static {v7, v8}, Lorg/telegram/messenger/StatsController;->access$600(Lorg/telegram/messenger/StatsController;I)[B

    move-result-object v7

    invoke-virtual {v6, v7, v0, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 106
    iget-object v6, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v6}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v7}, Lorg/telegram/messenger/StatsController;->access$700(Lorg/telegram/messenger/StatsController;)[[I

    move-result-object v8

    aget-object v8, v8, v1

    aget v8, v8, v2

    invoke-static {v7, v8}, Lorg/telegram/messenger/StatsController;->access$600(Lorg/telegram/messenger/StatsController;I)[B

    move-result-object v7

    invoke-virtual {v6, v7, v0, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 109
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
