.class public final synthetic Lcom/smedialink/utils/extentions/model/wallet/StakingOperationStatusExtKt$WhenMappings;
.super Ljava/lang/Object;
.source "StakingOperationStatusExt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/utils/extentions/model/wallet/StakingOperationStatusExtKt;
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

    invoke-static {}, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->values()[Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->CONFIRMED:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->FAILED:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/utils/extentions/model/wallet/StakingOperationStatusExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
