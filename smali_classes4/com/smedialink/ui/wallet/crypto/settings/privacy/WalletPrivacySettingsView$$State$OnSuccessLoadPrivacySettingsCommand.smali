.class public Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletPrivacySettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessLoadPrivacySettingsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final accountRankAccessType:I

.field public final walletAddressAccessType:I

.field public final whitelistUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .line 139
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onSuccessLoadPrivacySettings"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 141
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;->whitelistUsers:Ljava/util/List;

    .line 142
    iput p3, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;->walletAddressAccessType:I

    .line 143
    iput p4, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;->accountRankAccessType:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;->whitelistUsers:Ljava/util/List;

    iget v1, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;->walletAddressAccessType:I

    iget v2, p0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;->accountRankAccessType:I

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;->onSuccessLoadPrivacySettings(Ljava/util/List;II)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 130
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;->apply(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;)V

    return-void
.end method
