.class public final enum Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;
.super Ljava/lang/Enum;
.source "StakingTokenApprovalStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

.field public static final enum CONFIRMED:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

.field public static final enum NONE:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

.field public static final enum PENDING:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->NONE:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->PENDING:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->CONFIRMED:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->NONE:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->PENDING:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    const-string v1, "CONFIRMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->CONFIRMED:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    invoke-static {}, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->$values()[Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->$VALUES:[Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->$VALUES:[Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    return-object v0
.end method
