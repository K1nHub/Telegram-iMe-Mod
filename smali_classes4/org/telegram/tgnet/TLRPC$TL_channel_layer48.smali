.class public Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x4b1b7506


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43396
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 43400
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 43401
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 43402
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 43403
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 43404
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->moderator:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 43405
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 43406
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 43407
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    .line 43408
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restricted:Z

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    .line 43409
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    .line 43410
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 43411
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    .line 43412
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 43413
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 43414
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 43416
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 43417
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    .line 43418
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    .line 43419
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 43420
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 43425
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43426
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43427
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43428
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43429
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->moderator:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x11

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43430
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x21

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43431
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x80

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x81

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43432
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x100

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x101

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43433
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->restricted:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x200

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x201

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43434
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x800

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x801

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43435
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43436
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43437
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 43438
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 43439
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 43440
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 43442
    :cond_9
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 43443
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43444
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43445
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    const-string v0, ""

    .line 43446
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
