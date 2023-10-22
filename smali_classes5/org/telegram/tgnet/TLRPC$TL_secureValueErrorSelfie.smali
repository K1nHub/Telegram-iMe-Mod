.class public Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;
.super Lorg/telegram/tgnet/TLRPC$SecureValueError;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x1ac8312a


# instance fields
.field public file_hash:[B

.field public text:Ljava/lang/String;

.field public type:Lorg/telegram/tgnet/TLRPC$SecureValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22473
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SecureValueError;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 22481
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureValueType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    .line 22482
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->file_hash:[B

    .line 22483
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->text:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 22487
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22488
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22489
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->file_hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 22490
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
