.class final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$addNewWallet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->addNewWallet(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/ActionBar/BaseFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $password:Ljava/lang/String;

.field final synthetic $wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$addNewWallet$1;->$password:Ljava/lang/String;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$addNewWallet$1;->$wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$addNewWallet$1;->invoke()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 8

    .line 337
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 338
    new-instance v7, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    .line 340
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$addNewWallet$1;->$password:Ljava/lang/String;

    .line 339
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$addNewWallet$1;->$wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    .line 338
    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 337
    invoke-virtual {v0, v7}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v0

    return-object v0
.end method
