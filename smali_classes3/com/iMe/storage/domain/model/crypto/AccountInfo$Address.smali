.class public final Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
.super Ljava/lang/Object;
.source "AccountInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/AccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field private final addressValue:Ljava/lang/String;

.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field private final isAddressSet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "addressValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    .line 11
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Ljava/lang/String;ZLcom/iMe/storage/domain/model/crypto/BlockchainType;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->copy(Ljava/lang/String;ZLcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    return v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    const-string v0, "addressValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    iget-boolean v3, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAddressValue()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAddressSet()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address(addressValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAddressSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blockchainType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
