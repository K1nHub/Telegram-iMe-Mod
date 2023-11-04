.class public Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public filter:Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;

.field public flags:I

.field public force:Z

.field public limit:I

.field public pts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56257
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 56268
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x3173d78

    .line 56272
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 56273
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->force:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->flags:I

    .line 56274
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 56275
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 56276
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->filter:Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 56277
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 56278
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
