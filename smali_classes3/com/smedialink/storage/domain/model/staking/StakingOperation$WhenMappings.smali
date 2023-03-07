.class public final synthetic Lcom/smedialink/storage/domain/model/staking/StakingOperation$WhenMappings;
.super Ljava/lang/Object;
.source "StakingOperation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/staking/StakingOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->values()[Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->APPROVAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->DEPOSIT:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->WITHDRAWAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->CLAIM:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->values()[Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->CONFIRMED:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->FAILED:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
