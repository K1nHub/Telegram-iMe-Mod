.class public final synthetic Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda4;->f$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda4;->f$1:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda4;->f$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda4;->f$1:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->$r8$lambda$6dZMUpXcxo-IvuVZ4OPOfcKFLgY(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
