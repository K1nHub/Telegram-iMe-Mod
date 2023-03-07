.class public Lorg/telegram/tgnet/TLRPC$TL_stickerSet_layer143;
.super Lorg/telegram/tgnet/TLRPC$TL_stickerSet;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x2820de86


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44366
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 12

    .line 44370
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 44371
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 44372
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 44373
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 44374
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->animated:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 44375
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->videos:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 44376
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 44378
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed_date:I

    .line 44380
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    .line 44381
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    .line 44382
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 44383
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    .line 44384
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 44385
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_8

    if-nez p2, :cond_7

    return-void

    .line 44388
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44392
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_6
    if-ge v2, v0, :cond_a

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    .line 44394
    iget-wide v7, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v10

    move-object v9, p1

    move v11, p2

    invoke-static/range {v3 .. v11}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(JJJLorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    .line 44398
    :cond_9
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 44401
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 44402
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_dc_id:I

    .line 44404
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    .line 44405
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    .line 44407
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d

    .line 44408
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    .line 44410
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->count:I

    .line 44411
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 44415
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet_layer143;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44416
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 44417
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 44418
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 44419
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->animated:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 44420
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->videos:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x41

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 44421
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x80

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x81

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    .line 44422
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44423
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 44424
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44426
    :cond_6
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 44427
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 44428
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 44429
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 44430
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    const v0, 0x1cb5c415

    .line 44431
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44432
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 44433
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_7

    .line 44435
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 44438
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 44439
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44441
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 44442
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44444
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 44445
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 44447
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44448
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
