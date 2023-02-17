.class final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createNewWalletWithPassword$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createNewWalletWithPassword(Ljava/util/List;Ljava/lang/String;)V
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

.field final synthetic $words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createNewWalletWithPassword$1;->$words:Ljava/util/List;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createNewWalletWithPassword$1;->$password:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createNewWalletWithPassword$1;->invoke()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 10

    .line 252
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 253
    new-instance v9, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    .line 254
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createNewWalletWithPassword$1;->$words:Ljava/util/List;

    .line 255
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createNewWalletWithPassword$1;->$password:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1a

    const/4 v8, 0x0

    move-object v1, v9

    .line 253
    invoke-direct/range {v1 .. v8}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 252
    invoke-virtual {v0, v9}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v0

    return-object v0
.end method
