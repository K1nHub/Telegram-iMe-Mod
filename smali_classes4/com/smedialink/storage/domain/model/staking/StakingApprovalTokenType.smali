.class public final enum Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;
.super Ljava/lang/Enum;
.source "StakingApprovalTokenType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

.field public static final enum FEE:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

.field public static final enum STAKING:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->STAKING:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->FEE:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    const-string v1, "STAKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->STAKING:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    const-string v1, "FEE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->FEE:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    invoke-static {}, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->$values()[Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->$VALUES:[Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->$VALUES:[Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    return-object v0
.end method
