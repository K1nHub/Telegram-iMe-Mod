.class public Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public channel:I

.field public last_timestamp_ms:J

.field public scale:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63653
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;
    .locals 1

    const v0, -0x7f14b751

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 63663
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_groupCallStreamChannel"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63668
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;-><init>()V

    .line 63669
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 63674
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->channel:I

    .line 63675
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->scale:I

    .line 63676
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->last_timestamp_ms:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x7f14b751

    .line 63680
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 63681
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->channel:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 63682
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->scale:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 63683
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallStreamChannel;->last_timestamp_ms:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
