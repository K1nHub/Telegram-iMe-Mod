.class public Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x36ff3d5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40298
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 40303
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->flags:I

    .line 40304
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->chat_id:J

    .line 40305
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 40306
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->self_participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 40311
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden_layer131;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40312
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40313
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->chat_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40314
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 40315
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->self_participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_0
    return-void
.end method
