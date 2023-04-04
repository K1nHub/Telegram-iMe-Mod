.class public final Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;
.super Lcom/iMe/storage/domain/model/crypto/Wallet;
.source "Wallet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EVM"
.end annotation


# instance fields
.field private final credentials:Lorg/web3j/crypto/Credentials;

.field private final guid:Ljava/lang/String;

.field private final mnemonic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/web3j/crypto/Credentials;)V
    .locals 7

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentials"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3}, Lorg/web3j/crypto/Credentials;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/web3j/crypto/Keys;->toChecksumAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "toChecksumAddress(credentials.address)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v5, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/Wallet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->guid:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->mnemonic:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->credentials:Lorg/web3j/crypto/Credentials;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;Ljava/lang/String;Ljava/lang/String;Lorg/web3j/crypto/Credentials;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getGuid()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getMnemonic()Ljava/lang/String;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->credentials:Lorg/web3j/crypto/Credentials;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->copy(Ljava/lang/String;Ljava/lang/String;Lorg/web3j/crypto/Credentials;)Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getMnemonic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Lorg/web3j/crypto/Credentials;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->credentials:Lorg/web3j/crypto/Credentials;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lorg/web3j/crypto/Credentials;)Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;
    .locals 1

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentials"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/web3j/crypto/Credentials;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getMnemonic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getMnemonic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->credentials:Lorg/web3j/crypto/Credentials;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->credentials:Lorg/web3j/crypto/Credentials;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCredentials()Lorg/web3j/crypto/Credentials;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->credentials:Lorg/web3j/crypto/Credentials;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getMnemonic()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->mnemonic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getMnemonic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->credentials:Lorg/web3j/crypto/Credentials;

    invoke-virtual {v1}, Lorg/web3j/crypto/Credentials;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVM(guid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mnemonic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getMnemonic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", credentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->credentials:Lorg/web3j/crypto/Credentials;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
