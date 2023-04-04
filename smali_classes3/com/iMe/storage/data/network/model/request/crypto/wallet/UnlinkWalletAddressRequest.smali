.class public final Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;
.super Ljava/lang/Object;
.source "UnlinkWalletAddressRequest.kt"


# instance fields
.field private final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;Lcom/iMe/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;->copy(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;-><init>(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnlinkWalletAddressRequest(networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
