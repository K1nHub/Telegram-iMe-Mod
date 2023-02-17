.class public final enum Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;
.super Ljava/lang/Enum;
.source "BlockchainAdressData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

.field public static final Companion:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;

.field public static final enum EVM:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

.field public static final enum TON:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final regex:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    sget-object v1, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->EVM:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->TON:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    const-string v1, "EVM"

    const/4 v2, 0x0

    const-string v3, "0x[a-fA-F0-9]{40}"

    const-string v4, "ethereum:"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->EVM:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    .line 10
    new-instance v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    const-string v1, "TON"

    const/4 v2, 0x1

    const-string v3, "[a-zA-Z0-9-_]{48}"

    const-string v4, "ton://transfer/"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->TON:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    invoke-static {}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->$values()[Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->$VALUES:[Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    new-instance v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->Companion:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->regex:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->prefix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;
    .locals 1

    const-class v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;
    .locals 1

    sget-object v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->$VALUES:[Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    return-object v0
.end method


# virtual methods
.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegex()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->regex:Ljava/lang/String;

    return-object v0
.end method
