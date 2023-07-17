.class public final enum Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
.super Ljava/lang/Enum;
.source "TokenCode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum BNB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum BUSD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum FIL:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum LANC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum MATIC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum UNKNOWN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum USD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public static final enum USDT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BUSD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FIL:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LANC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "ETHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "BNB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "MATIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "USDT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "BUSD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BUSD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 5
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "LIME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "FIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FIL:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "LANC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LANC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v1, "USD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->$values()[Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method
