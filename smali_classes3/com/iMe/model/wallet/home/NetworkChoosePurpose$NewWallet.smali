.class public final Lcom/iMe/model/wallet/home/NetworkChoosePurpose$NewWallet;
.super Lcom/iMe/model/wallet/home/NetworkChoosePurpose;
.source "NetworkChoosePurpose.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/NetworkChoosePurpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewWallet"
.end annotation


# instance fields
.field private final walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string v0, "walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/home/NetworkChoosePurpose;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$NewWallet;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    return-void
.end method


# virtual methods
.method public final getWalletCreationType()Lcom/iMe/model/wallet/crypto/create/WalletCreationType;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$NewWallet;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    return-object v0
.end method
