.class public final synthetic Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    iput p2, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    iget v1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->$r8$lambda$B3FCpy2dRihnDvrX5aj6wEw44UM(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;ILjava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
