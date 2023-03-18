.class public Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x1527bcac


# instance fields
.field public secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

.field public secure_secret:[B

.field public secure_secret_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37684
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;
    .locals 1

    .line 37692
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37694
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_secureSecretSettings"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37699
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;-><init>()V

    .line 37700
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 37705
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    .line 37706
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret:[B

    .line 37707
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret_id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 37711
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37712
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 37713
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 37714
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
