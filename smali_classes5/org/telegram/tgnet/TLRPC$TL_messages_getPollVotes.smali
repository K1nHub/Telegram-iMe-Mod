.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x4791c7f2


# instance fields
.field public flags:I

.field public id:I

.field public limit:I

.field public offset:Ljava/lang/String;

.field public option:[B

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58993
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59004
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 59008
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59009
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59010
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 59011
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59012
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59013
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 59015
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 59016
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->offset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 59018
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
