.class public Lorg/telegram/tgnet/TLRPC$TL_photo;
.super Lorg/telegram/tgnet/TLRPC$Photo;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x4e6859b


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35578
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Photo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 35583
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    const/4 v10, 0x1

    and-int/2addr v1, v10

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 35584
    :goto_0
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    .line 35585
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 35586
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    .line 35587
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    .line 35588
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    .line 35589
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const-string v12, "wrong Vector magic, got %x"

    const v13, 0x1cb5c415

    if-eq v1, v13, :cond_2

    if-nez p2, :cond_1

    return-void

    .line 35592
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35596
    :cond_2
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    .line 35598
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v8

    move-object/from16 v7, p1

    move/from16 v9, p2

    invoke-static/range {v1 .. v9}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(JJJLorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 35602
    :cond_3
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 35604
    :cond_4
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 35605
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    if-eq v1, v13, :cond_6

    if-nez p2, :cond_5

    return-void

    .line 35608
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35612
    :cond_6
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v8

    :goto_2
    if-ge v11, v8, :cond_8

    .line 35614
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    const-wide/16 v3, 0x0

    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    move-object/from16 v5, p1

    move/from16 v7, p2

    invoke-static/range {v1 .. v7}, Lorg/telegram/tgnet/TLRPC$VideoSize;->TLdeserialize(JJLorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    .line 35618
    :cond_7
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 35621
    :cond_8
    invoke-virtual/range {p1 .. p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->dc_id:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 35625
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35626
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    .line 35627
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35628
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 35629
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 35630
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 35631
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const v0, 0x1cb5c415

    .line 35632
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35633
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 35634
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 35636
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35638
    :cond_1
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 35639
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35640
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 35641
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_2
    if-ge v2, v0, :cond_2

    .line 35643
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$VideoSize;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 35646
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
