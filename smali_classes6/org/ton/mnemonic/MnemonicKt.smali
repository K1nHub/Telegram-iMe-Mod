.class public final Lorg/ton/mnemonic/MnemonicKt;
.super Ljava/lang/Object;
.source "Mnemonic.kt"


# static fields
.field private static final DEFAULT_BASIC_SALT_BYTES:[B

.field private static final DEFAULT_PASSWORD_SALT_BYTES:[B

.field private static final DEFAULT_SALT_BYTES:[B

.field private static final EMPTY_BYTES:[B

.field private static final MnemonicGeneratorCoroutineName:Lkotlinx/coroutines/CoroutineName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "mnemonic-generator"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/ton/mnemonic/MnemonicKt;->MnemonicGeneratorCoroutineName:Lkotlinx/coroutines/CoroutineName;

    const-string v0, "TON seed version"

    .line 20
    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/ton/mnemonic/MnemonicKt;->DEFAULT_BASIC_SALT_BYTES:[B

    const-string v0, "TON fast seed version"

    .line 21
    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/ton/mnemonic/MnemonicKt;->DEFAULT_PASSWORD_SALT_BYTES:[B

    const-string v0, "TON default seed"

    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/ton/mnemonic/MnemonicKt;->DEFAULT_SALT_BYTES:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 23
    sput-object v0, Lorg/ton/mnemonic/MnemonicKt;->EMPTY_BYTES:[B

    return-void
.end method

.method public static final synthetic access$basicValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/ton/mnemonic/MnemonicKt;->basicValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$entropy(Lorg/ton/crypto/mac/hmac/HMac;[B[B[B)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/ton/mnemonic/MnemonicKt;->entropy(Lorg/ton/crypto/mac/hmac/HMac;[B[B[B)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_SALT_BYTES$p()[B
    .locals 1

    .line 1
    sget-object v0, Lorg/ton/mnemonic/MnemonicKt;->DEFAULT_SALT_BYTES:[B

    return-object v0
.end method

.method public static final synthetic access$getEMPTY_BYTES$p()[B
    .locals 1

    .line 1
    sget-object v0, Lorg/ton/mnemonic/MnemonicKt;->EMPTY_BYTES:[B

    return-object v0
.end method

.method public static final synthetic access$getMnemonicGeneratorCoroutineName$p()Lkotlinx/coroutines/CoroutineName;
    .locals 1

    .line 1
    sget-object v0, Lorg/ton/mnemonic/MnemonicKt;->MnemonicGeneratorCoroutineName:Lkotlinx/coroutines/CoroutineName;

    return-object v0
.end method

.method public static final synthetic access$passwordValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/ton/mnemonic/MnemonicKt;->passwordValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z

    move-result p0

    return p0
.end method

.method private static final basicValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z
    .locals 2

    .line 160
    sget-object v0, Lorg/ton/mnemonic/MnemonicKt;->DEFAULT_BASIC_SALT_BYTES:[B

    const/16 v1, 0x186

    .line 158
    invoke-virtual {p0, p1, v0, v1}, Lorg/ton/crypto/kdf/PBEParametersGenerator;->init([B[BI)Lorg/ton/crypto/kdf/PBEParametersGenerator;

    const/16 p1, 0x200

    .line 163
    invoke-virtual {p0, p1}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->generateDerivedParameters(I)[B

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->first([B)B

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final entropy(Lorg/ton/crypto/mac/hmac/HMac;[B[B[B)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lorg/ton/crypto/mac/hmac/HMac;->init([B)Lorg/ton/crypto/mac/hmac/HMac;

    .line 153
    invoke-virtual {p0, p2}, Lorg/ton/crypto/mac/hmac/HMac;->plusAssign([B)V

    .line 154
    invoke-virtual {p0, p3}, Lorg/ton/crypto/mac/hmac/HMac;->build([B)[B

    return-void
.end method

.method private static final passwordValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z
    .locals 2

    .line 169
    sget-object v0, Lorg/ton/mnemonic/MnemonicKt;->DEFAULT_PASSWORD_SALT_BYTES:[B

    const/4 v1, 0x1

    .line 167
    invoke-virtual {p0, p1, v0, v1}, Lorg/ton/crypto/kdf/PBEParametersGenerator;->init([B[BI)Lorg/ton/crypto/kdf/PBEParametersGenerator;

    const/16 p1, 0x200

    .line 172
    invoke-virtual {p0, p1}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->generateDerivedParameters(I)[B

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->first([B)B

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
