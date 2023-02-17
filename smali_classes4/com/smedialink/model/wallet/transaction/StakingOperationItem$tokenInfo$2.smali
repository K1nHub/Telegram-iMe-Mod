.class final Lcom/smedialink/model/wallet/transaction/StakingOperationItem$tokenInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingOperationItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/model/wallet/transaction/StakingOperationItem;-><init>(JLjava/math/BigDecimal;Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;


# direct methods
.method constructor <init>(Lcom/smedialink/model/wallet/transaction/StakingOperationItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/model/wallet/transaction/StakingOperationItem$tokenInfo$2;->this$0:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 3

    .line 34
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v2, p0, Lcom/smedialink/model/wallet/transaction/StakingOperationItem$tokenInfo$2;->this$0:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->getTokenSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem$tokenInfo$2;->invoke()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    return-object v0
.end method
