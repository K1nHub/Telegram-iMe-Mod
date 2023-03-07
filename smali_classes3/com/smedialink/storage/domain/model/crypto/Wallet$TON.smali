.class public final Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;
.super Lcom/smedialink/storage/domain/model/crypto/Wallet;
.source "Wallet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TON"
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final guid:Ljava/lang/String;

.field private final inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

.field private final mnemonic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldrinkless/org/ton/TonApi$InputKeyRegular;)V
    .locals 7

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v5, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/domain/model/crypto/Wallet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->guid:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->mnemonic:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->address:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldrinkless/org/ton/TonApi$InputKeyRegular;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getGuid()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getMnemonic()Ljava/lang/String;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getAddress()Ljava/lang/String;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldrinkless/org/ton/TonApi$InputKeyRegular;)Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getMnemonic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ldrinkless/org/ton/TonApi$InputKeyRegular;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldrinkless/org/ton/TonApi$InputKeyRegular;)Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;
    .locals 1

    const-string v0, "guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mnemonic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldrinkless/org/ton/TonApi$InputKeyRegular;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getMnemonic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getMnemonic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputKey()Ldrinkless/org/ton/TonApi$InputKeyRegular;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    return-object v0
.end method

.method public getMnemonic()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->mnemonic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getMnemonic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TON(guid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mnemonic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getMnemonic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->inputKey:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
