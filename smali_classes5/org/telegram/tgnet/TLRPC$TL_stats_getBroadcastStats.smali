.class public Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public dark:Z

.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64254
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 64262
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x54bdbbe6

    .line 64266
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64267
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;->dark:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;->flags:I

    .line 64268
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64269
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
