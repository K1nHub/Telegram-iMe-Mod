.class public final Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;
.super Lorg/telegram/ui/Components/QRCodeBottomSheet;
.source "WalletHomeCryptoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->showQrReceiveDialog(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    move-object v4, p1

    .line 190
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCustomQrCenterImageRes()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getLogo()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method