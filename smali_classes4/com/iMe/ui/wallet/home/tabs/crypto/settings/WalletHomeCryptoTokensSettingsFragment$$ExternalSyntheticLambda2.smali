.class public final synthetic Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

.field public final synthetic f$1:Lcom/iMe/ui/custom/NetworkTypeView;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;Lcom/iMe/ui/custom/NetworkTypeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/ui/custom/NetworkTypeView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/ui/custom/NetworkTypeView;

    check-cast p1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-static {v0, v1, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->$r8$lambda$WrUWbn-NAqDQjlDw1GTt1OZ5bm4(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;Lcom/iMe/ui/custom/NetworkTypeView;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method
