.class public final Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;
.super Ljava/lang/Object;
.source "CreateWalletIntroFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;
    .locals 1

    const-string v0, "linkedWalletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletCreationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualBlockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    invoke-direct {v0, p3, p1, p2}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    return-object v0
.end method
