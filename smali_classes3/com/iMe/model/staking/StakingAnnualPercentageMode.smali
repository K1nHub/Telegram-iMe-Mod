.class public final enum Lcom/iMe/model/staking/StakingAnnualPercentageMode;
.super Ljava/lang/Enum;
.source "StakingAnnualPercentageMode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/staking/StakingAnnualPercentageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/staking/StakingAnnualPercentageMode;

.field public static final enum APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

.field public static final enum APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

.field public static final enum NONE:Lcom/iMe/model/staking/StakingAnnualPercentageMode;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/staking/StakingAnnualPercentageMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    sget-object v1, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->NONE:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/staking/StakingAnnualPercentageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->NONE:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    new-instance v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    const-string v1, "APR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/staking/StakingAnnualPercentageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    new-instance v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    const-string v1, "APY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/staking/StakingAnnualPercentageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-static {}, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->$values()[Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->$VALUES:[Lcom/iMe/model/staking/StakingAnnualPercentageMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/staking/StakingAnnualPercentageMode;
    .locals 1

    const-class v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/staking/StakingAnnualPercentageMode;
    .locals 1

    sget-object v0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->$VALUES:[Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    return-object v0
.end method