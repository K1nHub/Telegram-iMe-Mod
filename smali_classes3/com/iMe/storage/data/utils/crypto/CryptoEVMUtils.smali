.class public final Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;
.super Ljava/lang/Object;
.source "CryptoEVMUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoEVMUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoEVMUtils.kt\ncom/iMe/storage/data/utils/crypto/CryptoEVMUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1#2:65\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;

.field private static final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;

    invoke-direct {v0}, Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;

    .line 18
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic generateNewEntropy$default(Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;IILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;->generateNewEntropy(I)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createBip44Wallet(Ljava/lang/String;)Lorg/web3j/crypto/Credentials;
    .locals 1

    const-string v0, "mnemonic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 26
    invoke-static {p1, v0}, Lorg/web3j/crypto/MnemonicUtils;->generateSeed(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 27
    invoke-static {p1}, Lorg/web3j/crypto/Bip32ECKeyPair;->generateKeyPair([B)Lorg/web3j/crypto/Bip32ECKeyPair;

    move-result-object p1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;->generateBip44KeyPair(Lorg/web3j/crypto/Bip32ECKeyPair;Z)Lorg/web3j/crypto/Bip32ECKeyPair;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lorg/web3j/crypto/Credentials;->create(Lorg/web3j/crypto/ECKeyPair;)Lorg/web3j/crypto/Credentials;

    move-result-object p1

    const-string v0, "create(bip44Keypair)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final decodeHexMessageToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lorg/web3j/utils/Numeric;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "hexStringToByteArray(message)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final generateBip44KeyPair(Lorg/web3j/crypto/Bip32ECKeyPair;Z)Lorg/web3j/crypto/Bip32ECKeyPair;
    .locals 1

    const/4 v0, 0x5

    if-eqz p2, :cond_0

    new-array p2, v0, [I

    .line 35
    fill-array-data p2, :array_0

    .line 36
    invoke-static {p1, p2}, Lorg/web3j/crypto/Bip32ECKeyPair;->deriveKeyPair(Lorg/web3j/crypto/Bip32ECKeyPair;[I)Lorg/web3j/crypto/Bip32ECKeyPair;

    move-result-object p1

    const-string p2, "{\n                // /m/\u2026ster, path)\n            }"

    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array p2, v0, [I

    .line 39
    fill-array-data p2, :array_1

    .line 40
    invoke-static {p1, p2}, Lorg/web3j/crypto/Bip32ECKeyPair;->deriveKeyPair(Lorg/web3j/crypto/Bip32ECKeyPair;[I)Lorg/web3j/crypto/Bip32ECKeyPair;

    move-result-object p1

    const-string p2, "{\n                // m/4\u2026ster, path)\n            }"

    .line 37
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    nop

    :array_0
    .array-data 4
        -0x7fffffd4
        -0x80000000
        -0x80000000
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x7fffffd4
        -0x7fffffc4
        -0x80000000
        0x0
        0x0
    .end array-data
.end method

.method public final generateNewEntropy(I)[B
    .locals 1

    .line 23
    new-array p1, p1, [B

    sget-object v0, Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public final signMessage(Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;)Ljava/lang/String;
    .locals 1

    const-string v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Lorg/web3j/utils/Numeric;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 48
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/CryptoEVMUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 54
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getCredentials()Lorg/web3j/crypto/Credentials;

    move-result-object p1

    invoke-virtual {p1}, Lorg/web3j/crypto/Credentials;->getEcKeyPair()Lorg/web3j/crypto/ECKeyPair;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/web3j/crypto/Sign;->signPrefixedMessage([BLorg/web3j/crypto/ECKeyPair;)Lorg/web3j/crypto/Sign$SignatureData;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getCredentials()Lorg/web3j/crypto/Credentials;

    move-result-object p1

    invoke-virtual {p1}, Lorg/web3j/crypto/Credentials;->getEcKeyPair()Lorg/web3j/crypto/ECKeyPair;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lorg/web3j/crypto/Sign;->signMessage([BLorg/web3j/crypto/ECKeyPair;Z)Lorg/web3j/crypto/Sign$SignatureData;

    move-result-object p1

    .line 56
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/web3j/crypto/Sign$SignatureData;->getR()[B

    move-result-object p3

    invoke-static {p3}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Lorg/web3j/crypto/Sign$SignatureData;->getS()[B

    move-result-object p3

    invoke-static {p3}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/web3j/utils/Numeric;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Lorg/web3j/crypto/Sign$SignatureData;->getV()[B

    move-result-object p1

    invoke-static {p1}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/web3j/utils/Numeric;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
