.class public final enum Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;
.super Ljava/lang/Enum;
.source "SwapMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod$Companion;

.field public static final enum EXACT_ETH_FOR_TOKENS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

.field public static final enum EXACT_TOKENS_FOR_ETH:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

.field public static final enum EXACT_TOKENS_FOR_TOKENS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

.field public static final enum UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;


# instance fields
.field private final methodName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_TOKENS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->EXACT_ETH_FOR_TOKENS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_ETH:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    const-string v1, "EXACT_TOKENS_FOR_TOKENS"

    const/4 v2, 0x0

    const-string v3, "swapExactTokensForTokens"

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_TOKENS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    const-string v1, "EXACT_ETH_FOR_TOKENS"

    const/4 v2, 0x1

    const-string v3, "swapExactETHForTokens"

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->EXACT_ETH_FOR_TOKENS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    .line 8
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    const-string v1, "EXACT_TOKENS_FOR_ETH"

    const/4 v2, 0x2

    const-string v3, "swapExactTokensForETH"

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_ETH:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    .line 9
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->$values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->methodName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    return-object v0
.end method


# virtual methods
.method public final getMethodName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->methodName:Ljava/lang/String;

    return-object v0
.end method
