.class public abstract Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;
.super Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;
.source "CryptoTokenApproveMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NeedApprove"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;,
        Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;
    }
.end annotation


# instance fields
.field private final feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final spenderContractAddress:Ljava/lang/String;

.field private final status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final tokenContractAddress:Ljava/lang/String;

.field private final transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 26
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 27
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->value:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    .line 29
    iput-object p5, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->tokenContractAddress:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->spenderContractAddress:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    return-void
.end method


# virtual methods
.method public getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getSpenderContractAddress()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->spenderContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getTokenContractAddress()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->tokenContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->value:Ljava/lang/String;

    return-object v0
.end method
