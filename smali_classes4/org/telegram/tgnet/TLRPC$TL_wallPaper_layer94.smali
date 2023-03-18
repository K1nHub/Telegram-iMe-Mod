.class public Lorg/telegram/tgnet/TLRPC$TL_wallPaper_layer94;
.super Lorg/telegram/tgnet/TLRPC$TL_wallPaper;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0xfb06e14


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48421
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 48426
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    .line 48427
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 48428
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->creator:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 48429
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->isDefault:Z

    .line 48430
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    .line 48431
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    .line 48432
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 48436
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper_layer94;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48437
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 48438
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 48439
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->isDefault:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 48440
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48441
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 48442
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 48443
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
