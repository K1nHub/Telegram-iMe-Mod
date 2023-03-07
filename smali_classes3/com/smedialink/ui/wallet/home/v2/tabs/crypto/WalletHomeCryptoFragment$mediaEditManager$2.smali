.class final Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$mediaEditManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletHomeCryptoFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/smedialink/manager/common/MediaEditManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$mediaEditManager$2;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/smedialink/manager/common/MediaEditManager;
    .locals 7

    .line 66
    new-instance v6, Lcom/smedialink/manager/common/MediaEditManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$mediaEditManager$2;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->access$getCurrentAccount$p$s-561464087(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/manager/common/MediaEditManager;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$mediaEditManager$2;->invoke()Lcom/smedialink/manager/common/MediaEditManager;

    move-result-object v0

    return-object v0
.end method
