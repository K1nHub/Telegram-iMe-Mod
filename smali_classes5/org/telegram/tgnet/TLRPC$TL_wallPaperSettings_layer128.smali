.class public Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings_layer128;
.super Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43314
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 43319
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 43320
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v2, v3

    .line 43321
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 43323
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    .line 43325
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 43326
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    .line 43328
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 43329
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 43331
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 43332
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x5086cf8

    .line 43337
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43338
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 43339
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 43340
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43341
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 43342
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43344
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 43345
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43347
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 43348
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43350
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 43351
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_5
    return-void
.end method
