.class public final enum Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;
.super Ljava/lang/Enum;
.source "FirebaseFunctionsErrorHandler.kt"

# interfaces
.implements Lcom/smedialink/storage/data/network/model/error/IErrorStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StakingErrorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;",
        ">;",
        "Lcom/smedialink/storage/data/network/model/error/IErrorStatus;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

.field public static final enum ERR_STAKING_CLAIM_OVERLAP:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

.field public static final enum ERR_STAKING_FINISHED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

.field public static final enum ERR_STAKING_WITHDRAWAL_OVER_LIMIT:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_FINISHED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_WITHDRAWAL_OVER_LIMIT:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_CLAIM_OVERLAP:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 98
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    const-string v1, "ERR_STAKING_FINISHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_FINISHED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    .line 99
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    const-string v1, "ERR_STAKING_WITHDRAWAL_OVER_LIMIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_WITHDRAWAL_OVER_LIMIT:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    .line 100
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    const-string v1, "ERR_STAKING_CLAIM_OVERLAP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_CLAIM_OVERLAP:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    invoke-static {}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->$values()[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->$VALUES:[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;
    .locals 1

    const-class v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->$VALUES:[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    return-object v0
.end method
