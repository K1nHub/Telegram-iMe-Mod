.class public final Lcom/trustwallet/walletconnect/WCCipher;
.super Ljava/lang/Object;
.source "WCCipher.kt"


# static fields
.field public static final INSTANCE:Lcom/trustwallet/walletconnect/WCCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/trustwallet/walletconnect/WCCipher;

    invoke-direct {v0}, Lcom/trustwallet/walletconnect/WCCipher;-><init>()V

    sput-object v0, Lcom/trustwallet/walletconnect/WCCipher;->INSTANCE:Lcom/trustwallet/walletconnect/WCCipher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final computeHmac([B[B[B)Ljava/lang/String;
    .locals 2

    .line 60
    invoke-static {}, Lcom/trustwallet/walletconnect/WCCipherKt;->access$getMAC_ALGORITHM$p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 61
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    .line 62
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/trustwallet/walletconnect/WCCipherKt;->access$getMAC_ALGORITHM$p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 63
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const-string p2, "mac.doFinal(payload)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/trustwallet/walletconnect/extensions/ByteArrayKt;->toHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final randomBytes(I)[B
    .locals 1

    .line 67
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 68
    new-array p1, p1, [B

    .line 69
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method


# virtual methods
.method public final decrypt(Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;[B)[B
    .locals 4

    const-string/jumbo v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/trustwallet/walletconnect/extensions/StringKt;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;->getIv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/trustwallet/walletconnect/extensions/StringKt;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 41
    invoke-direct {p0, v0, v1, p2}, Lcom/trustwallet/walletconnect/WCCipher;->computeHmac([B[B[B)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;->getHmac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "this as java.lang.String).toLowerCase()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {p1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 52
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 53
    invoke-static {}, Lcom/trustwallet/walletconnect/WCCipherKt;->access$getCIPHER_ALGORITHM$p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 54
    invoke-virtual {v1, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 56
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "cipher.doFinal(data)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 48
    :cond_0
    new-instance p1, Lcom/trustwallet/walletconnect/exceptions/InvalidHmacException;

    invoke-direct {p1}, Lcom/trustwallet/walletconnect/exceptions/InvalidHmacException;-><init>()V

    throw p1
.end method

.method public final encrypt([B[B)Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 18
    invoke-direct {p0, v0}, Lcom/trustwallet/walletconnect/WCCipher;->randomBytes(I)[B

    move-result-object v0

    .line 19
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 20
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 21
    invoke-static {}, Lcom/trustwallet/walletconnect/WCCipherKt;->access$getCIPHER_ALGORITHM$p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    .line 22
    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 24
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v1, "encryptedData"

    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, v0, p2}, Lcom/trustwallet/walletconnect/WCCipher;->computeHmac([B[B[B)Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-static {p1}, Lcom/trustwallet/walletconnect/extensions/ByteArrayKt;->toHex([B)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {v0}, Lcom/trustwallet/walletconnect/extensions/ByteArrayKt;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;

    invoke-direct {v1, p1, p2, v0}, Lcom/trustwallet/walletconnect/models/WCEncryptionPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
