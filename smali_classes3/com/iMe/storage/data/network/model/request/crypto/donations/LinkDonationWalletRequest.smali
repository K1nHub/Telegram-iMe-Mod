.class public final Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;
.super Ljava/lang/Object;
.source "LinkDonationWalletRequest.kt"


# instance fields
.field private final chatId:Ljava/lang/String;

.field private final isPersonalWallet:Z

.field private final platform:Ljava/lang/String;

.field private final walletAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "chatId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->chatId:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->isPersonalWallet:Z

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->walletAddress:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->platform:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 9
    sget-object p4, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {p4}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->getBackendName()Ljava/lang/String;

    move-result-object p4

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->chatId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->isPersonalWallet:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->walletAddress:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->platform:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->copy(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->isPersonalWallet:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->walletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;
    .locals 1

    const-string v0, "chatId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->chatId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->chatId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->isPersonalWallet:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->isPersonalWallet:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->walletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->walletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->platform:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->platform:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getChatId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final getWalletAddress()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->walletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->chatId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->isPersonalWallet:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->walletAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->platform:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isPersonalWallet()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->isPersonalWallet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkDonationWalletRequest(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPersonalWallet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->isPersonalWallet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", walletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->walletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
