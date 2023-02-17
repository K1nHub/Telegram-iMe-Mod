.class public Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoSHA512;
.super Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x79b8e26e


# instance fields
.field public salt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10553
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 10559
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoSHA512;->salt:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 10563
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoSHA512;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10564
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoSHA512;->salt:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
