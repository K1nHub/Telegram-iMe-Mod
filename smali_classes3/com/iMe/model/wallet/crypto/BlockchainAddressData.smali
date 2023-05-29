.class public final enum Lcom/iMe/model/wallet/crypto/BlockchainAddressData;
.super Ljava/lang/Enum;
.source "BlockchainAdressData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/wallet/crypto/BlockchainAddressData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

.field public static final enum BTC_MAIN:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

.field public static final enum BTC_TEST:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

.field public static final Companion:Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;

.field public static final enum EVM:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

.field public static final enum TON:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

.field public static final enum TRON:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final regex:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/wallet/crypto/BlockchainAddressData;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    sget-object v1, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->EVM:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->TON:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->TRON:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->BTC_MAIN:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->BTC_TEST:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 11
    new-instance v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const-string v1, "EVM"

    const/4 v2, 0x0

    const-string v3, "0x[a-fA-F0-9]{40}"

    const-string v4, "ethereum:"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->EVM:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    .line 12
    new-instance v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const-string v1, "TON"

    const/4 v2, 0x1

    const-string v3, "[a-zA-Z0-9-_]{48}"

    const-string v4, "ton://transfer/"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->TON:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    .line 13
    new-instance v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const-string v6, "TRON"

    const/4 v7, 0x2

    const-string v8, "T[a-zA-Z0-9]{33}"

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->TRON:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    .line 14
    new-instance v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const-string v1, "BTC_MAIN"

    const/4 v2, 0x3

    const-string v3, "(?:[13]{1}[a-km-zA-HJ-NP-Z1-9]{25,34}|bc1[a-z0-9]{39,59})"

    const-string v4, "bitcoin:"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->BTC_MAIN:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    .line 15
    new-instance v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    const-string v1, "BTC_TEST"

    const/4 v2, 0x4

    const-string v3, "tb1[a-z0-9]{39}"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->BTC_TEST:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    invoke-static {}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->$values()[Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->$VALUES:[Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    new-instance v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->Companion:Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->regex:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->prefix:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-string p4, ""

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/wallet/crypto/BlockchainAddressData;
    .locals 1

    const-class v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/wallet/crypto/BlockchainAddressData;
    .locals 1

    sget-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->$VALUES:[Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    return-object v0
.end method


# virtual methods
.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegex()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->regex:Ljava/lang/String;

    return-object v0
.end method
