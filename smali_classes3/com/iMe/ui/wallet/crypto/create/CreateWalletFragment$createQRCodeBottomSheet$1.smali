.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createQRCodeBottomSheet$1;
.super Lorg/telegram/ui/Components/QRCodeBottomSheet;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createQRCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 623
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCustomQrCenterImageRes()I
    .locals 1

    .line 632
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_logo:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 630
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_BACKUP:I

    return v0
.end method
