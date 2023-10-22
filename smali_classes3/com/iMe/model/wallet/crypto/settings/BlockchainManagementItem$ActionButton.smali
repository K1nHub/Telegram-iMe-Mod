.class public abstract Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;
.super Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem;
.source "BlockchainManagementItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActionButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;,
        Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$ResetAllWallets;
    }
.end annotation


# instance fields
.field private final colorKey:I

.field private final iconResId:I

.field private final texResId:I


# direct methods
.method private constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    iput p1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->iconResId:I

    .line 25
    iput p2, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->texResId:I

    .line 26
    iput p3, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->colorKey:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final getColorKey()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->colorKey:I

    return v0
.end method

.method public final getIconResId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->iconResId:I

    return v0
.end method

.method public final getTexResId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->texResId:I

    return v0
.end method

.method public getText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->texResId:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
