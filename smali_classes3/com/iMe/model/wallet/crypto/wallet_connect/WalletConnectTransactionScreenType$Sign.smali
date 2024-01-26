.class public final Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;
.super Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;
.source "WalletConnectTransactionScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sign"
.end annotation


# instance fields
.field private final requestId:J

.field private final sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

.field private final transaction:Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;


# direct methods
.method public constructor <init>(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;)V
    .locals 8

    const-string v0, "sessionItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget v6, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_button_sign:I

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;-><init>(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    iput-wide p1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->requestId:J

    .line 27
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    .line 28
    iput-object p4, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->transaction:Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;ILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getRequestId()J

    move-result-wide p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getSessionItem()Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getTransaction()Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    move-result-object p4

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->copy(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getRequestId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component2()Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getSessionItem()Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getTransaction()Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final copy(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;-><init>(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getRequestId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getRequestId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getSessionItem()Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getSessionItem()Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getTransaction()Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getTransaction()Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getRequestId()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->requestId:J

    return-wide v0
.end method

.method public getSessionItem()Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    return-object v0
.end method

.method public getTransaction()Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->transaction:Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getRequestId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getSessionItem()Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getTransaction()Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sign(requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getRequestId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getSessionItem()Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;->getTransaction()Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
