.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;
.super Lorg/telegram/ui/Components/QRCodeBottomSheet;
.source "WalletHomeCryptoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->showQrReceiveDialog(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $network:Lcom/iMe/storage/domain/model/crypto/Network;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;->$network:Lcom/iMe/storage/domain/model/crypto/Network;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    move-object v4, p1

    .line 163
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCustomQrCenterImageUrl()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$showQrReceiveDialog$1;->$network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 172
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_RECEIVE:I

    return v0
.end method
