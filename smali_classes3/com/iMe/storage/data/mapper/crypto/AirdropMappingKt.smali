.class public final Lcom/iMe/storage/data/mapper/crypto/AirdropMappingKt;
.super Ljava/lang/Object;
.source "AirdropMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/mapper/crypto/AirdropMappingKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/airdrop/CheckAirdropPromotionStartResponse;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "airdropRequestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->Companion:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/airdrop/CheckAirdropPromotionStartResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/data/mapper/crypto/AirdropMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$NotReady;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$NotReady;

    goto :goto_3

    .line 9
    :cond_2
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/airdrop/CheckAirdropPromotionStartResponse;->getRightRequestId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/airdrop/CheckAirdropPromotionStartResponse;->getValue()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    .line 9
    :goto_2
    invoke-direct {v0, p1, p0}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;-><init>(Ljava/lang/String;I)V

    move-object p0, v0

    :goto_3
    return-object p0
.end method
