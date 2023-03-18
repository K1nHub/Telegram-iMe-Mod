.class public final Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;
.super Ljava/lang/Object;
.source "AccountWalletAddressResponse.kt"


# instance fields
.field private final hasAccess:Z

.field private final isSet:Z

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->value:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet:Z

    .line 6
    iput-boolean p3, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hasAccess:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->value:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hasAccess:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->copy(Ljava/lang/String;ZZ)Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hasAccess:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;ZZ)Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hasAccess:Z

    iget-boolean p1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hasAccess:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHasAccess()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hasAccess:Z

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hasAccess:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSet()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountWalletAddressResponse(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->hasAccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
