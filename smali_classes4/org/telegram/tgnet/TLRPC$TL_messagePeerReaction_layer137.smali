.class public Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction_layer137;
.super Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6cd7bb06


# instance fields
.field public user_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3203
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 3209
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction_layer137;->user_id:J

    .line 3210
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 3211
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    .line 3212
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3213
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction_layer137;->user_id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 3217
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction_layer137;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3218
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction_layer137;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 3219
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v1, :cond_0

    .line 3220
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3222
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
