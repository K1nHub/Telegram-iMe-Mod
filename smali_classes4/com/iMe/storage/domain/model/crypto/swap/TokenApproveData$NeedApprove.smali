.class public abstract Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;
.super Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;
.source "TokenApproveData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NeedApprove"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$Error;,
        Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;
    }
.end annotation


# instance fields
.field private final feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final spenderContractAddress:Ljava/lang/String;

.field private final status:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 24
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->status:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 25
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->value:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    .line 27
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->spenderContractAddress:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method


# virtual methods
.method public getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getSpenderContractAddress()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->spenderContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->status:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    return-object v0
.end method

.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->value:Ljava/lang/String;

    return-object v0
.end method
