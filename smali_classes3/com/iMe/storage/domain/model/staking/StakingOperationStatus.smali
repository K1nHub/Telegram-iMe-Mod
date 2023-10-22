.class public final enum Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;
.super Ljava/lang/Enum;
.source "StakingOperationStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/staking/StakingOperationStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

.field public static final enum CONFIRMED:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

.field public static final Companion:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus$Companion;

.field public static final enum FAILED:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

.field public static final enum PENDING:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;


# instance fields
.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->CONFIRMED:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->FAILED:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    sget v1, Lcom/iMe/storage/R$string;->status_pending:I

    const-string v2, "PENDING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    sget v1, Lcom/iMe/storage/R$string;->status_ok:I

    const-string v2, "CONFIRMED"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->CONFIRMED:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    sget v1, Lcom/iMe/storage/R$string;->status_error:I

    const-string v2, "FAILED"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->FAILED:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    invoke-static {}, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->$values()[Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->$VALUES:[Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->Companion:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->titleResId:I

    return-void
.end method

.method public static final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->Companion:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->$VALUES:[Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    return-object v0
.end method


# virtual methods
.method public final getTitleResId()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->titleResId:I

    return v0
.end method
