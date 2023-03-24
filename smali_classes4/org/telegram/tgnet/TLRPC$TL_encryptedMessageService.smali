.class public Lorg/telegram/tgnet/TLRPC$TL_encryptedMessageService;
.super Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x23734b06


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30513
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 30518
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->random_id:J

    .line 30519
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    .line 30520
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    .line 30521
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 30525
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessageService;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 30526
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 30527
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 30528
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 30529
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
