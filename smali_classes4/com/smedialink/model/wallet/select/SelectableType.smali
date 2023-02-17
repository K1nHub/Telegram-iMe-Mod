.class public final enum Lcom/smedialink/model/wallet/select/SelectableType;
.super Ljava/lang/Enum;
.source "SelectableType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/wallet/select/SelectableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/wallet/select/SelectableType;

.field public static final enum BINANCE:Lcom/smedialink/model/wallet/select/SelectableType;

.field public static final enum INTERNAL:Lcom/smedialink/model/wallet/select/SelectableType;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/wallet/select/SelectableType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/model/wallet/select/SelectableType;

    sget-object v1, Lcom/smedialink/model/wallet/select/SelectableType;->INTERNAL:Lcom/smedialink/model/wallet/select/SelectableType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/select/SelectableType;->BINANCE:Lcom/smedialink/model/wallet/select/SelectableType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/model/wallet/select/SelectableType;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/select/SelectableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/select/SelectableType;->INTERNAL:Lcom/smedialink/model/wallet/select/SelectableType;

    .line 5
    new-instance v0, Lcom/smedialink/model/wallet/select/SelectableType;

    const-string v1, "BINANCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/select/SelectableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/select/SelectableType;->BINANCE:Lcom/smedialink/model/wallet/select/SelectableType;

    invoke-static {}, Lcom/smedialink/model/wallet/select/SelectableType;->$values()[Lcom/smedialink/model/wallet/select/SelectableType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/wallet/select/SelectableType;->$VALUES:[Lcom/smedialink/model/wallet/select/SelectableType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/wallet/select/SelectableType;
    .locals 1

    const-class v0, Lcom/smedialink/model/wallet/select/SelectableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/wallet/select/SelectableType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/wallet/select/SelectableType;
    .locals 1

    sget-object v0, Lcom/smedialink/model/wallet/select/SelectableType;->$VALUES:[Lcom/smedialink/model/wallet/select/SelectableType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/wallet/select/SelectableType;

    return-object v0
.end method
