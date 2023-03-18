.class public final Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper$DefaultImpls;
.super Ljava/lang/Object;
.source "CryptoPreferenceHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getCurrentBlockchainType(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)Lcom/smedialink/storage/domain/model/crypto/BlockchainType;
    .locals 0

    .line 47
    invoke-interface {p0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withGuid$default(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 63
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->withGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: withGuid"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
