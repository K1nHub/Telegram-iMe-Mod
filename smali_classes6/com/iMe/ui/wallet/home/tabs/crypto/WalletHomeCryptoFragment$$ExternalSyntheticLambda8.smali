.class public final synthetic Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;

.field public final synthetic f$1:Lcom/iMe/model/wallet/home/NetworkChoosePurpose;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda8;->f$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda8;->f$1:Lcom/iMe/model/wallet/home/NetworkChoosePurpose;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda8;->f$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$$ExternalSyntheticLambda8;->f$1:Lcom/iMe/model/wallet/home/NetworkChoosePurpose;

    check-cast p1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-static {v0, v1, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->$r8$lambda$tWqMzC5aqzoCUpbF4EOppl-jFKM(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method
