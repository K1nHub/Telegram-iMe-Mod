.class public final enum Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
.super Ljava/lang/Enum;
.source "SwapProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field public static final Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

.field public static final enum ONEINCH:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field public static final enum ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field public static final enum SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field public static final enum UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const-string v1, "ONEINCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 5
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const-string v1, "ONEINCH_FUSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 6
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const-string v1, "SYMBIOSIS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->$values()[Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method


# virtual methods
.method public final isCrossChain()Z
    .locals 1

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
