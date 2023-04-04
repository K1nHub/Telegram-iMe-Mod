.class public final Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;
.super Lorg/telegram/ui/Components/QRCodeBottomSheet;
.source "WalletTokenDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showQrReceiveDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1$WhenMappings;
    }
.end annotation


# instance fields
.field final synthetic $code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field final synthetic $networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;->$networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iput-object p3, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;->$code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v3, p5

    move-object v4, p1

    .line 757
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCustomQrCenterImageRes()I
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;->$networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 767
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;->$code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;->$networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-static {v0, v1}, Lcom/iMe/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)I

    move-result v0

    goto :goto_0

    .line 766
    :cond_0
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getLogo()I

    move-result v0

    goto :goto_0

    .line 765
    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getLogo()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
