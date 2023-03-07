.class public final Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;
.super Ljava/lang/Object;
.source "CryptoWalletInformationMetadata.kt"


# instance fields
.field private final lastUpdateMillis:J

.field private final walletInfo:Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;-><init>(JLcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->lastUpdateMillis:J

    .line 7
    iput-object p3, p0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->walletInfo:Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;-><init>(JLcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;

    iget-wide v3, p0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->lastUpdateMillis:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->lastUpdateMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->walletInfo:Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    iget-object p1, p1, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->walletInfo:Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getWalletInfo()Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->walletInfo:Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->lastUpdateMillis:J

    invoke-static {v0, v1}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->walletInfo:Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoWalletInformationMetadata(lastUpdateMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->lastUpdateMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", walletInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->walletInfo:Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
