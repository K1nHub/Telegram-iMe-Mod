.class public Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x62718a82


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36709
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 36714
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 36716
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->folder_id:I

    .line 36718
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    .line 36719
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    .line 36720
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->date:I

    .line 36721
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    .line 36722
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    .line 36723
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 36727
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_layer131;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36728
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36729
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 36730
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->folder_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36732
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36733
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 36734
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36735
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36736
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36737
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
