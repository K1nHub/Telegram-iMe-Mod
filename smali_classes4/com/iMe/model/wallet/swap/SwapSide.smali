.class public final enum Lcom/iMe/model/wallet/swap/SwapSide;
.super Ljava/lang/Enum;
.source "SwapSide.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/wallet/swap/SwapSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/wallet/swap/SwapSide;

.field public static final enum INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

.field public static final enum OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/wallet/swap/SwapSide;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/model/wallet/swap/SwapSide;

    sget-object v1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/model/wallet/swap/SwapSide;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/swap/SwapSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    new-instance v0, Lcom/iMe/model/wallet/swap/SwapSide;

    const-string v1, "OUTPUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/swap/SwapSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-static {}, Lcom/iMe/model/wallet/swap/SwapSide;->$values()[Lcom/iMe/model/wallet/swap/SwapSide;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/wallet/swap/SwapSide;->$VALUES:[Lcom/iMe/model/wallet/swap/SwapSide;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/wallet/swap/SwapSide;
    .locals 1

    const-class v0, Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/swap/SwapSide;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/wallet/swap/SwapSide;
    .locals 1

    sget-object v0, Lcom/iMe/model/wallet/swap/SwapSide;->$VALUES:[Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/wallet/swap/SwapSide;

    return-object v0
.end method
