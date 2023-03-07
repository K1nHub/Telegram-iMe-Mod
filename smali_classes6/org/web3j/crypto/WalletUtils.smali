.class public Lorg/web3j/crypto/WalletUtils;
.super Ljava/lang/Object;
.source "WalletUtils.java"


# static fields
.field private static final objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lorg/web3j/crypto/WalletUtils;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 39
    invoke-static {}, Lorg/web3j/crypto/SecureRandomUtils;->secureRandom()Ljava/security/SecureRandom;

    .line 42
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 43
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public static isValidAddress(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x28

    .line 234
    invoke-static {p0, v0}, Lorg/web3j/crypto/WalletUtils;->isValidAddress(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isValidAddress(Ljava/lang/String;I)Z
    .locals 1

    .line 238
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 241
    :try_start_0
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->toBigIntNoPrefix(Ljava/lang/String;)Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
