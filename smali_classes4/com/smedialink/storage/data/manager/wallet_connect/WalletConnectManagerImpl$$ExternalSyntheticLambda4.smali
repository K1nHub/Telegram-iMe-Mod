.class public final synthetic Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->$r8$lambda$WHwOuyt_iL0lpXhkMeEj8t1oqlc(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method
