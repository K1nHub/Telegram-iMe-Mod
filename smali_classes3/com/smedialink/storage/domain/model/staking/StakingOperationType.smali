.class public final enum Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
.super Ljava/lang/Enum;
.source "StakingOperationType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/staking/StakingOperationType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/staking/StakingOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

.field public static final enum APPROVAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

.field public static final enum CLAIM:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

.field public static final Companion:Lcom/smedialink/storage/domain/model/staking/StakingOperationType$Companion;

.field public static final enum DEPOSIT:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

.field public static final enum WITHDRAWAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->APPROVAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->DEPOSIT:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->WITHDRAWAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->CLAIM:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const-string v1, "APPROVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->APPROVAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const-string v1, "DEPOSIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->DEPOSIT:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const-string v1, "WITHDRAWAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->WITHDRAWAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const-string v1, "CLAIM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->CLAIM:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-static {}, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->$values()[Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->$VALUES:[Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/staking/StakingOperationType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->Companion:Lcom/smedialink/storage/domain/model/staking/StakingOperationType$Companion;

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

.method public static final map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->Companion:Lcom/smedialink/storage/domain/model/staking/StakingOperationType$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/staking/StakingOperationType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->$VALUES:[Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method
