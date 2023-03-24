.class public final Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Activate;
.super Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activate"
.end annotation


# instance fields
.field private final blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 3

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_create:I

    .line 58
    sget v1, Lorg/telegram/messenger/R$string;->wallet_dashboard_activate_wallet:I

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, v0, v1, v2}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Activate;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    return-void
.end method


# virtual methods
.method public getActionText(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 4

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->getStringResId()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    iget-object v2, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Activate;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getTitleResId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 62
    invoke-interface {p1, v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
