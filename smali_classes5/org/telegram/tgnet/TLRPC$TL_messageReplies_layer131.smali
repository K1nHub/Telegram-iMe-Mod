.class public Lorg/telegram/tgnet/TLRPC$TL_messageReplies_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_messageReplies;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x4128faac


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10968
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5

    .line 10973
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10974
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->comments:Z

    .line 10975
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies:I

    .line 10976
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies_pts:I

    .line 10977
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 10978
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v3, 0x1cb5c415

    if-eq v0, v3, :cond_2

    if-nez p2, :cond_1

    return-void

    .line 10981
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string/jumbo v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10985
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 10987
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    invoke-static {p1, v3, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    .line 10991
    :cond_3
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->recent_repliers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10994
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 10995
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->channel_id:J

    .line 10997
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 10998
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->max_id:I

    .line 11000
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 11001
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->read_max_id:I

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 11006
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageReplies_layer131;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11007
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->comments:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    .line 11008
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11009
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11010
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->replies_pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11011
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const v0, 0x1cb5c415

    .line 11012
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11013
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->recent_repliers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11014
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 11016
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->recent_repliers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11019
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 11020
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->channel_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11022
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 11023
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11025
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 11026
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->read_max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
