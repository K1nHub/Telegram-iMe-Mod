.class public Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x25ecac76


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41152
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 41157
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 41161
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator_layer131;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41162
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
