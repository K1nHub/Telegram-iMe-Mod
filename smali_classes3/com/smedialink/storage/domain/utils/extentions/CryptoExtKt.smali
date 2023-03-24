.class public final Lcom/smedialink/storage/domain/utils/extentions/CryptoExtKt;
.super Ljava/lang/Object;
.source "CryptoExt.kt"


# direct methods
.method public static final generateUuid()Ljava/lang/String;
    .locals 2

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getUnarmoredPublicKey(Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getInputKey()Ldrinkless/org/ton/TonApi$InputKeyRegular;

    move-result-object p0

    iget-object p0, p0, Ldrinkless/org/ton/TonApi$InputKeyRegular;->key:Ldrinkless/org/ton/TonApi$Key;

    iget-object p0, p0, Ldrinkless/org/ton/TonApi$Key;->publicKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const/4 v1, 0x2

    const/16 v2, 0x20

    .line 18
    invoke-static {p0, v1, v2, v0}, Lorg/web3j/utils/Numeric;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getUnarmoredPublicKey"

    .line 16
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final mnemonicAsList(Lcom/smedialink/storage/domain/model/crypto/Wallet;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getMnemonic()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
