.class final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintsAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;-><init>(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintsAdapter$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;
    .locals 2

    .line 119
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintsAdapter$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$hintsAdapter$2;->invoke()Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;

    move-result-object v0

    return-object v0
.end method
