.class public final synthetic Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$-CC;
.super Ljava/lang/Object;
.source "CryptoPreferenceHelper.kt"


# direct methods
.method public static $default$getCurrentBlockchainType(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1
    .param p0, "_this"    # Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 58
    invoke-interface {p0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->Keys:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper$Keys;

    return-void
.end method

.method public static synthetic withGuid$default(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 76
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->withGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: withGuid"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
