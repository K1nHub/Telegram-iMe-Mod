.class public final Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;
.super Lcom/iMe/model/staking/TransactionStep;
.source "TransactionStep.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/staking/TransactionStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApprovalNeeded"
.end annotation


# instance fields
.field private final tokenTicker:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "tokenTicker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget v0, Lorg/telegram/messenger/R$string;->staking_approve_token:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/staking/TransactionStep;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    iput-object p1, p0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->tokenTicker:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->tokenTicker:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->copy(Ljava/lang/String;)Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->tokenTicker:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;
    .locals 1

    const-string v0, "tokenTicker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    invoke-direct {v0, p1}, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;

    iget-object v1, p0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->tokenTicker:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->tokenTicker:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getButtonText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 4

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/iMe/model/staking/TransactionStep;->getTextResId()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->tokenTicker:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTokenTicker()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->tokenTicker:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->tokenTicker:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApprovalNeeded(tokenTicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/TransactionStep$ApprovalNeeded;->tokenTicker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
