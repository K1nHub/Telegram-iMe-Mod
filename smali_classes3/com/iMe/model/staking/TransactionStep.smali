.class public abstract Lcom/iMe/model/staking/TransactionStep;
.super Ljava/lang/Object;
.source "TransactionStep.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;,
        Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;,
        Lcom/iMe/model/staking/TransactionStep$CryptoBoxExecute;,
        Lcom/iMe/model/staking/TransactionStep$Idle;,
        Lcom/iMe/model/staking/TransactionStep$Loading;,
        Lcom/iMe/model/staking/TransactionStep$Prepare;,
        Lcom/iMe/model/staking/TransactionStep$RetryLoading;,
        Lcom/iMe/model/staking/TransactionStep$StakingExecute;
    }
.end annotation


# instance fields
.field private final isButtonEnabled:Z

.field private final textResId:I


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/iMe/model/staking/TransactionStep;->textResId:I

    .line 10
    iput-boolean p2, p0, Lcom/iMe/model/staking/TransactionStep;->isButtonEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iMe/model/staking/TransactionStep;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public getButtonText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/iMe/model/staking/TransactionStep;->getTextResId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTextResId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/staking/TransactionStep;->textResId:I

    return v0
.end method

.method public final isButtonEnabled()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/model/staking/TransactionStep;->isButtonEnabled:Z

    return v0
.end method
