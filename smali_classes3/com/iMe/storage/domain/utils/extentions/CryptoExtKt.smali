.class public final Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;
.super Ljava/lang/Object;
.source "CryptoExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoExt.kt\ncom/iMe/storage/domain/utils/extentions/CryptoExtKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n*L\n1#1,65:1\n13586#2,2:66\n6#3,6:68\n*S KotlinDebug\n*F\n+ 1 CryptoExt.kt\ncom/iMe/storage/domain/utils/extentions/CryptoExtKt\n*L\n38#1:66,2\n57#1:68,6\n*E\n"
.end annotation


# direct methods
.method public static final decodeBase64Url(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 44
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v0, "decode(this, Base64.URL_SAFE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final generateUuid()Ljava/lang/String;
    .locals 2

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getPrivateKey(Lwallet/core/jni/HDWallet;Lwallet/core/jni/CoinType;)Lwallet/core/jni/PrivateKey;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coinType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lwallet/core/jni/HDWallet;->getKeyForCoin(Lwallet/core/jni/CoinType;)Lwallet/core/jni/PrivateKey;

    move-result-object p0

    const-string p1, "getPrivateKey"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getPrivateKeyBytes(Lwallet/core/jni/HDWallet;Lwallet/core/jni/CoinType;)[B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coinType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p0, p1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->getPrivateKey(Lwallet/core/jni/HDWallet;Lwallet/core/jni/CoinType;)Lwallet/core/jni/PrivateKey;

    move-result-object p0

    invoke-virtual {p0}, Lwallet/core/jni/PrivateKey;->data()[B

    move-result-object p0

    const-string p1, "getPrivateKey(coinType).data()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getUnarmoredPublicKey(Lcom/iMe/storage/domain/model/crypto/Wallet$TON;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$TON;->getInputKey()Ldrinkless/org/ton/TonApi$InputKeyRegular;

    move-result-object p0

    iget-object p0, p0, Ldrinkless/org/ton/TonApi$InputKeyRegular;->key:Ldrinkless/org/ton/TonApi$Key;

    iget-object p0, p0, Ldrinkless/org/ton/TonApi$Key;->publicKey:Ljava/lang/String;

    const-string v0, "inputKey.key.publicKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->decodeBase64Url(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 28
    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->drop([BI)Ljava/util/List;

    move-result-object p0

    const/16 v0, 0x20

    .line 29
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/trustwallet/walletconnect/extensions/ByteArrayKt;->toHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final hexToBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0x"

    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final hexToByteArray(Ljava/lang/String;Z)[B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "0x"

    .line 47
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/trustwallet/walletconnect/extensions/StringKt;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hexToByteArray$default(Ljava/lang/String;ZILjava/lang/Object;)[B
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 46
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToByteArray(Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static final hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-static {p0, v0, v1, v2}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToByteArray$default(Ljava/lang/String;ZILjava/lang/Object;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    const-string v0, "copyFrom(hexToByteArray())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const-string v0, "toByteArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final toByteString([B)Lcom/google/protobuf/ByteString;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    const-string v0, "copyFrom(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toHexString([BZ)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "0x"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13586
    :cond_0
    array-length p1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-byte v3, p0, v2

    .line 39
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    and-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "stringBuilder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic toHexString$default([BZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 33
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toHexString([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
