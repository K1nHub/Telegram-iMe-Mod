.class public final Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;
.super Ljava/lang/Object;
.source "IsDonationsEnableResponse.kt"


# instance fields
.field private final isDonationEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;->isDonationEnabled:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;ZILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;->isDonationEnabled:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;->copy(Z)Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;->isDonationEnabled:Z

    return v0
.end method

.method public final copy(Z)Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;->isDonationEnabled:Z

    iget-boolean p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;->isDonationEnabled:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;->isDonationEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isDonationEnabled()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;->isDonationEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsDonationsEnableResponse(isDonationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/IsDonationsEnableResponse;->isDonationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
