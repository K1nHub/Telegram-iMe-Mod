.class public Lorg/telegram/tgnet/TLRPC$TL_messages_transcribeAudio;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_transcribedAudio;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x269e9a49

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribeAudio;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_transcribeAudio;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
