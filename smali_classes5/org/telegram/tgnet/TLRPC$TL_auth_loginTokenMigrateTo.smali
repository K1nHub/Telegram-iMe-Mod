.class public Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;
.super Lorg/telegram/tgnet/TLRPC$auth_LoginToken;
.source "TLRPC.java"


# instance fields
.field public dc_id:I

.field public token:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19248
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_LoginToken;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 19255
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->dc_id:I

    .line 19256
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->token:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x68e9916

    .line 19260
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19261
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19262
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->token:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
