.class public final enum Lcom/smedialink/model/wallet/details/StakingOperationsGroup;
.super Ljava/lang/Enum;
.source "StakingOperationsGroup.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/wallet/details/StakingOperationsGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

.field public static final enum ALL:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

.field public static final enum CLAIM:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

.field public static final enum DEPOSIT:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

.field public static final enum WITHDRAW:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;


# instance fields
.field private final id:I

.field private final nameResId:I

.field private final stakingOperationType:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/wallet/details/StakingOperationsGroup;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    sget-object v1, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->ALL:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->DEPOSIT:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->WITHDRAW:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->CLAIM:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 13
    new-instance v6, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    .line 14
    sget v3, Lorg/telegram/messenger/R$id;->staking_details_operations_all:I

    .line 15
    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_all:I

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;-><init>(Ljava/lang/String;IIILcom/smedialink/storage/domain/model/staking/StakingOperationType;)V

    sput-object v6, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->ALL:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    .line 18
    new-instance v0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    .line 19
    sget v10, Lorg/telegram/messenger/R$id;->staking_details_operations_deposit:I

    .line 20
    sget v11, Lorg/telegram/messenger/R$string;->staking_operation_type_deposit:I

    .line 21
    sget-object v12, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->DEPOSIT:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const-string v8, "DEPOSIT"

    const/4 v9, 0x1

    move-object v7, v0

    .line 18
    invoke-direct/range {v7 .. v12}, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;-><init>(Ljava/lang/String;IIILcom/smedialink/storage/domain/model/staking/StakingOperationType;)V

    sput-object v0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->DEPOSIT:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    .line 23
    new-instance v0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    .line 24
    sget v4, Lorg/telegram/messenger/R$id;->staking_details_operations_withdraw:I

    .line 25
    sget v5, Lorg/telegram/messenger/R$string;->staking_operation_type_withdraw:I

    .line 26
    sget-object v6, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->WITHDRAWAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const-string v2, "WITHDRAW"

    const/4 v3, 0x2

    move-object v1, v0

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;-><init>(Ljava/lang/String;IIILcom/smedialink/storage/domain/model/staking/StakingOperationType;)V

    sput-object v0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->WITHDRAW:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    .line 28
    new-instance v0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    .line 29
    sget v10, Lorg/telegram/messenger/R$id;->staking_details_operations_claim:I

    .line 30
    sget v11, Lorg/telegram/messenger/R$string;->staking_operation_type_claim:I

    .line 31
    sget-object v12, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->CLAIM:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    const-string v8, "CLAIM"

    const/4 v9, 0x3

    move-object v7, v0

    .line 28
    invoke-direct/range {v7 .. v12}, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;-><init>(Ljava/lang/String;IIILcom/smedialink/storage/domain/model/staking/StakingOperationType;)V

    sput-object v0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->CLAIM:Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    invoke-static {}, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->$values()[Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->$VALUES:[Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/smedialink/storage/domain/model/staking/StakingOperationType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperationType;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->id:I

    .line 10
    iput p4, p0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->nameResId:I

    .line 11
    iput-object p5, p0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->stakingOperationType:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/wallet/details/StakingOperationsGroup;
    .locals 1

    const-class v0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/wallet/details/StakingOperationsGroup;
    .locals 1

    sget-object v0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->$VALUES:[Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->id:I

    return v0
.end method

.method public final getNameResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->nameResId:I

    return v0
.end method

.method public final getStakingOperationType()Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->stakingOperationType:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method
