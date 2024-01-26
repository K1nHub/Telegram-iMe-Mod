.class public final enum Lcom/iMe/storage/domain/model/staking/StakingTabType;
.super Ljava/lang/Enum;
.source "StakingTabType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/staking/StakingTabType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/staking/StakingTabType;

.field public static final enum ALL:Lcom/iMe/storage/domain/model/staking/StakingTabType;

.field public static final enum PARTICIPATED:Lcom/iMe/storage/domain/model/staking/StakingTabType;


# instance fields
.field private final fragmentId:I

.field private final isParticipated:Ljava/lang/Boolean;

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/staking/StakingTabType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/domain/model/staking/StakingTabType;

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingTabType;->ALL:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingTabType;->PARTICIPATED:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v6, Lcom/iMe/storage/domain/model/staking/StakingTabType;

    sget v3, Lcom/iMe/storage/R$string;->staking_all:I

    sget v4, Lcom/iMe/storage/R$id;->staking_all:I

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/storage/domain/model/staking/StakingTabType;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;)V

    sput-object v6, Lcom/iMe/storage/domain/model/staking/StakingTabType;->ALL:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    .line 13
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingTabType;

    sget v10, Lcom/iMe/storage/R$string;->staking_participated:I

    sget v11, Lcom/iMe/storage/R$id;->staking_participated:I

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v8, "PARTICIPATED"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/storage/domain/model/staking/StakingTabType;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;)V

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingTabType;->PARTICIPATED:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    invoke-static {}, Lcom/iMe/storage/domain/model/staking/StakingTabType;->$values()[Lcom/iMe/storage/domain/model/staking/StakingTabType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/staking/StakingTabType;->$VALUES:[Lcom/iMe/storage/domain/model/staking/StakingTabType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/storage/domain/model/staking/StakingTabType;->titleResId:I

    .line 9
    iput p4, p0, Lcom/iMe/storage/domain/model/staking/StakingTabType;->fragmentId:I

    .line 10
    iput-object p5, p0, Lcom/iMe/storage/domain/model/staking/StakingTabType;->isParticipated:Ljava/lang/Boolean;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/staking/StakingTabType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/staking/StakingTabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/staking/StakingTabType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/staking/StakingTabType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/staking/StakingTabType;->$VALUES:[Lcom/iMe/storage/domain/model/staking/StakingTabType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/staking/StakingTabType;

    return-object v0
.end method


# virtual methods
.method public final getFragmentId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTabType;->fragmentId:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTabType;->titleResId:I

    return v0
.end method

.method public final isParticipated()Ljava/lang/Boolean;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTabType;->isParticipated:Ljava/lang/Boolean;

    return-object v0
.end method
