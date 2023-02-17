.class public final enum Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;
.super Ljava/lang/Enum;
.source "EthereumMethods.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/crypto/EthereumMethods$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

.field public static final enum APPROVE:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

.field public static final Companion:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods$Companion;

.field public static final enum SWAP:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

.field public static final enum TRANSFER:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

.field public static final enum UNKNOWN:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->TRANSFER:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->SWAP:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->APPROVE:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->UNKNOWN:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->TRANSFER:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    .line 5
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    const-string v1, "SWAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->SWAP:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    const-string v1, "APPROVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->APPROVE:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->UNKNOWN:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->$values()[Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->$VALUES:[Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->Companion:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->$VALUES:[Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    return-object v0
.end method
