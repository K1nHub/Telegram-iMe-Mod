.class public Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;
.super Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;
.source "TLRPC.java"


# instance fields
.field public flags:I

.field public h:I

.field public thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public video_duration:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8434
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 10

    .line 8444
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8446
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->w:I

    .line 8448
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 8449
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->h:I

    .line 8451
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    .line 8452
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v8

    move-object v7, p1

    move v9, p2

    invoke-static/range {v1 .. v9}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(JJJLorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 8454
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 8455
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->video_duration:I

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x529d7338

    .line 8460
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8461
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8462
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8463
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8465
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 8466
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8468
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 8469
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8471
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 8472
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->video_duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_3
    return-void
.end method
