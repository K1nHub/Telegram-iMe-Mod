.class public final synthetic Lcom/smedialink/model/wallet/transaction/StakingOperationItem$WhenMappings;
.super Ljava/lang/Object;
.source "StakingOperationItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/transaction/StakingOperationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

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

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->WITHDRAWAL:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationType;->CLAIM:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/model/wallet/transaction/StakingOperationItem$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
