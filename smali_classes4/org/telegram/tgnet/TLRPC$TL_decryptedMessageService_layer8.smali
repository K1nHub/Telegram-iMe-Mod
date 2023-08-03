.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;
.super Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x55b7cd83


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27117
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 27122
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    .line 27123
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_bytes:[B

    .line 27124
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 27128
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27129
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 27130
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_bytes:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 27131
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
