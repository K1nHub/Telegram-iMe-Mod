.class public abstract Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;
.super Ljava/lang/Object;
.source "WalletConnectTransactionScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Send;,
        Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;
    }
.end annotation


# instance fields
.field private final buttonTextResId:I

.field private final requestId:J

.field private final sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

.field private final transaction:Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;


# direct methods
.method private constructor <init>(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->requestId:J

    .line 9
    iput-object p3, p0, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    .line 10
    iput-object p4, p0, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->transaction:Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    .line 11
    iput p5, p0, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->buttonTextResId:I

    return-void
.end method

.method public synthetic constructor <init>(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;-><init>(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;I)V

    return-void
.end method


# virtual methods
.method public final getButtonTextResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->buttonTextResId:I

    return v0
.end method

.method public getRequestId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->requestId:J

    return-wide v0
.end method

.method public getSessionItem()Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    return-object v0
.end method

.method public getTransaction()Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->transaction:Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    return-object v0
.end method
