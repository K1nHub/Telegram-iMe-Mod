.class public final enum Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;
.super Ljava/lang/Enum;
.source "SwapSlippage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;

.field public static final enum PERCENT_0_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

.field public static final enum PERCENT_1:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

.field public static final enum PERCENT_10:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

.field public static final enum PERCENT_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

.field private static final defaultValue:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;


# instance fields
.field private final percent:F


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_0_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_1:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_10:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    const-string v1, "PERCENT_0_5"

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_0_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 5
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    const-string v1, "PERCENT_1"

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_1:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    const-string v1, "PERCENT_5"

    const/4 v2, 0x2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 7
    new-instance v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    const-string v2, "PERCENT_10"

    const/4 v3, 0x3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_10:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->$values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v1

    sput-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    new-instance v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    .line 10
    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->defaultValue:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->percent:F

    return-void
.end method

.method public static final synthetic access$getDefaultValue$cp()Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    .line 3
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->defaultValue:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    return-object v0
.end method


# virtual methods
.method public final getPercent()F
    .locals 1

    .line 3
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->percent:F

    return v0
.end method
