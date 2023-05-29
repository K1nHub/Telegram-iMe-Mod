.class public final Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;
.super Lcom/iMe/storage/domain/model/crypto/TransactionParams;
.source "TransactionParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/TransactionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tron"
.end annotation


# instance fields
.field private final blockHeader:Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

.field private final medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;)V
    .locals 7

    const-string v0, "medium"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 28
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->blockHeader:Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->blockHeader:Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->copy(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->blockHeader:Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;
    .locals 1

    const-string v0, "medium"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->blockHeader:Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->blockHeader:Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBlockHeader()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->blockHeader:Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    return-object v0
.end method

.method public getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->blockHeader:Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tron(medium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blockHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->blockHeader:Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
