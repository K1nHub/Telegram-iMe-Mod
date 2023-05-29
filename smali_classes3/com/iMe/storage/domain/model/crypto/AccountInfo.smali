.class public final Lcom/iMe/storage/domain/model/crypto/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    }
.end annotation


# instance fields
.field private final bitcoinAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

.field private final ethAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

.field private final tonAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

.field private final tronAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;)V
    .locals 1

    const-string v0, "ethAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tronAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitcoinAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->ethAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tonAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tronAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    .line 7
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->bitcoinAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/AccountInfo;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/AccountInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->ethAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tonAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tronAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->bitcoinAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->copy(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;)Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->ethAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tonAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tronAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    return-object v0
.end method

.method public final component4()Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->bitcoinAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;)Lcom/iMe/storage/domain/model/crypto/AccountInfo;
    .locals 1

    const-string v0, "ethAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tronAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitcoinAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/model/crypto/AccountInfo;-><init>(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->ethAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->ethAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tonAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tonAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tronAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tronAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->bitcoinAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->bitcoinAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBitcoinAddress()Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->bitcoinAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    return-object v0
.end method

.method public final getEthAddress()Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->ethAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    return-object v0
.end method

.method public final getTonAddress()Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tonAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    return-object v0
.end method

.method public final getTronAddress()Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tronAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->ethAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tonAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tronAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->bitcoinAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountInfo(ethAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->ethAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tonAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tonAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tronAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->tronAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitcoinAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->bitcoinAddress:Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
