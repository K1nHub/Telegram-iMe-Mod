.class public final Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;
.super Ljava/lang/Object;
.source "AccountInfoResponse.kt"


# instance fields
.field private final etherWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

.field private final tonWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)V
    .locals 1

    const-string v0, "etherWalletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonWalletAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->etherWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    .line 5
    iput-object p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->tonWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->etherWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->tonWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->copy(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->etherWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->tonWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;
    .locals 1

    const-string v0, "etherWalletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonWalletAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;-><init>(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->etherWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->etherWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->tonWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->tonWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEtherWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->etherWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    return-object v0
.end method

.method public final getTonWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->tonWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->etherWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->tonWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountInfoResponse(etherWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->etherWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tonWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->tonWalletAddress:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
