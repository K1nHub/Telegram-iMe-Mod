.class public abstract Lorg/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


# instance fields
.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field protected final pad:B

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 6

    const/16 v5, 0x3d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 203
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIB)V

    return-void
.end method

.method protected constructor <init>(IIIIB)V
    .locals 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 218
    iput p2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    const/4 p1, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 220
    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_1
    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 221
    iput p4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 223
    iput-byte p5, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    return-void
.end method

.method private static compareUnsigned(II)I
    .locals 1

    const/high16 v0, -0x80000000

    add-int/2addr p0, v0

    add-int/2addr p1, v0

    .line 293
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static createPositiveCapacity(I)I
    .locals 6

    if-ltz p0, :cond_1

    const v0, 0x7ffffff7

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0

    .line 308
    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allocate array size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;I)[B
    .locals 3

    .line 264
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 266
    invoke-static {v0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->compareUnsigned(II)I

    move-result v1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    const v1, 0x7ffffff7

    .line 269
    invoke-static {v0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->compareUnsigned(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 270
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->createPositiveCapacity(I)I

    move-result v0

    .line 273
    :cond_1
    new-array p1, v0, [B

    .line 274
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iput-object p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object p1
.end method


# virtual methods
.method available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 1

    .line 243
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget p1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 590
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    .line 591
    iget-byte v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method abstract decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode([B)[B
    .locals 3

    if-eqz p1, :cond_1

    .line 477
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 481
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v1, -0x1

    .line 482
    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 483
    iget p1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    new-array v1, p1, [B

    .line 484
    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method abstract encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 2

    if-eqz p1, :cond_1

    .line 497
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 500
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BII)[B

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public encode([BII)[B
    .locals 1

    if-eqz p1, :cond_1

    .line 517
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 521
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 p3, -0x1

    .line 522
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 523
    iget p1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget p2, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr p1, p2

    new-array p2, p1, [B

    const/4 p3, 0x0

    .line 524
    invoke-virtual {p0, p2, p3, p1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    return-object p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 3

    .line 331
    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    const/4 p1, 0x0

    .line 333
    iput p1, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 334
    iput p1, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    goto :goto_0

    .line 338
    :cond_0
    iget v1, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int v2, v1, p1

    array-length v0, v0

    sub-int/2addr v2, v0

    if-lez v2, :cond_1

    add-int/2addr v1, p1

    .line 339
    invoke-static {p2, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;I)[B

    move-result-object p1

    return-object p1

    .line 341
    :cond_1
    :goto_0
    iget-object p1, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object p1
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .locals 6

    .line 609
    array-length p1, p1

    iget v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    int-to-long v0, p1

    iget p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 610
    iget p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez p1, :cond_0

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, p1

    .line 612
    div-long/2addr v2, v4

    iget p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 2

    .line 361
    iget-object v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 363
    iget-object v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    iget p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr p1, p3

    iput p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 365
    iget p2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    .line 366
    iput-object p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    :cond_0
    return p3

    .line 370
    :cond_1
    iget-boolean p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
