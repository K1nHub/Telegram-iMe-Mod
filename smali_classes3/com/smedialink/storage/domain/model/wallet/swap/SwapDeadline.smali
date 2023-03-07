.class public final enum Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;
.super Ljava/lang/Enum;
.source "SwapDeadline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;

.field public static final enum MINUTES_10:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

.field public static final enum MINUTES_20:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

.field public static final enum MINUTES_30:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

.field public static final enum MINUTES_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

.field private static final defaultValue:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;


# instance fields
.field private final minutes:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->MINUTES_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->MINUTES_10:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->MINUTES_20:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->MINUTES_30:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    const-string v1, "MINUTES_5"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->MINUTES_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 5
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    const-string v1, "MINUTES_10"

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->MINUTES_10:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    const-string v1, "MINUTES_20"

    const/4 v2, 0x2

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->MINUTES_20:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 7
    new-instance v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    const-string v2, "MINUTES_30"

    const/4 v3, 0x3

    const/16 v4, 0x1e

    invoke-direct {v1, v2, v3, v4}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->MINUTES_30:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->$values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v1

    sput-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    new-instance v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    .line 10
    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->defaultValue:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->minutes:I

    return-void
.end method

.method public static final synthetic access$getDefaultValue$cp()Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    .line 3
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->defaultValue:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    return-object v0
.end method


# virtual methods
.method public final getMinutes()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->minutes:I

    return v0
.end method
