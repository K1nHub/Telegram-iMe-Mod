.class public final synthetic Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;->f$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-wide p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;->f$1:J

    iput-object p4, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;->f$2:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    iput-boolean p5, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;->f$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iget-wide v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;->f$1:J

    iget-object v3, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;->f$2:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    iget-boolean v4, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;->f$3:Z

    move-object v5, p1

    check-cast v5, Lcom/smedialink/storage/domain/model/Result;

    invoke-static/range {v0 .. v5}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->$r8$lambda$TaaS06FsmqqdVzTM58DU_uVzc-4(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;ZLcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method
