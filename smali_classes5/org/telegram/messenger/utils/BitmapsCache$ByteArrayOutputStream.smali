.class public Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "BitmapsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/utils/BitmapsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArrayOutputStream"
.end annotation


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 600
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 601
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    .line 606
    invoke-direct {p0, p1}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->grow(I)V

    :cond_0
    return-void
.end method

.method private grow(I)V
    .locals 2

    .line 613
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    sub-int v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    const v1, 0x7ffffff7

    sub-int v1, v0, v1

    if-lez v1, :cond_1

    .line 618
    invoke-static {p1}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->hugeCapacity(I)I

    move-result v0

    .line 619
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    return-void
.end method

.method private static hugeCapacity(I)I
    .locals 1

    if-ltz p0, :cond_1

    const v0, 0x7ffffff7

    if-le p0, v0, :cond_0

    const v0, 0x7fffffff

    :cond_0
    return v0

    .line 624
    :cond_1
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method


# virtual methods
.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 660
    :try_start_0
    iput v0, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 2

    monitor-enter p0

    .line 631
    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->ensureCapacity(I)V

    .line 632
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    iget v1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 633
    iput v1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 2

    monitor-enter p0

    if-ltz p2, :cond_0

    .line 646
    :try_start_0
    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 650
    iget v0, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->ensureCapacity(I)V

    .line 651
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    iget v1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    iget p1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    monitor-exit p0

    return-void

    .line 648
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeInt(I)V
    .locals 4

    .line 637
    iget v0, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->ensureCapacity(I)V

    .line 638
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    iget v1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 639
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 640
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    int-to-byte p1, p1

    .line 641
    aput-byte p1, v0, v2

    add-int/lit8 v1, v1, 0x4

    .line 642
    iput v1, p0, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I

    return-void
.end method
