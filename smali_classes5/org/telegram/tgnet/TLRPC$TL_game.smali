.class public Lorg/telegram/tgnet/TLRPC$TL_game;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x42069ac5


# instance fields
.field public access_hash:J

.field public description:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public flags:I

.field public id:J

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public short_name:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40207
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_game;
    .locals 1

    .line 40220
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_game;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 40222
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_game"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40227
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_game;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_game;-><init>()V

    .line 40228
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_game;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 40233
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    .line 40234
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->id:J

    .line 40235
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->access_hash:J

    .line 40236
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->short_name:Ljava/lang/String;

    .line 40237
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    .line 40238
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    .line 40239
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 40240
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 40241
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 40246
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_game;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40247
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40248
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 40249
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 40250
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 40251
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 40252
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 40253
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 40254
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 40255
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_0
    return-void
.end method
