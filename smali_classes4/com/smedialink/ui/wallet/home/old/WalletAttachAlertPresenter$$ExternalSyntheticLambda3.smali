.class public final synthetic Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda3;->f$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda3;->f$1:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda3;->f$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$$ExternalSyntheticLambda3;->f$1:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-static {v0, v1, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->$r8$lambda$QLviS3BqJvVycCPHfgOLVnarkTo(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method
