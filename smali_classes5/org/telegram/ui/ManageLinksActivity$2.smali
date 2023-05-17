.class Lorg/telegram/ui/ManageLinksActivity$2;
.super Lorg/telegram/ui/Components/QRCodeBottomSheet;
.source "ManageLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageLinksActivity;->showDonationAddressQrCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 733
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCustomQrCenterImageRes()I
    .locals 1

    .line 741
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getLogo()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 736
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_RECEIVE:I

    return v0
.end method
