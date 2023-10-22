.class public final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;
.super Lorg/telegram/ui/Components/QRCodeBottomSheet;
.source "WalletTokenDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->showQrReceiveDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $tokenLogoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 6

    iput-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;->$tokenLogoUrl:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v3, p1

    move-object v4, p2

    .line 1147
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCustomQrCenterImageUrl()Ljava/lang/String;
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;->$tokenLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1156
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_WALLET_RECEIVE:I

    return v0
.end method
