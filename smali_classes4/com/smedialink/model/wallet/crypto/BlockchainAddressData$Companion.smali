.class public final Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;
.super Ljava/lang/Object;
.source "BlockchainAdressData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapByBlockchainType(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 16
    sget-object p1, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->TON:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 15
    :cond_1
    sget-object p1, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->EVM:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    :goto_0
    return-object p1
.end method
