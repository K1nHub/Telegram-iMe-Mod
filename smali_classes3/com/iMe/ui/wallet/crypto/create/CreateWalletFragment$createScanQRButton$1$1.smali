.class final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->createScanQRButton()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 681
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 683
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 686
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$createScanQRButton$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$openQRScan(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    return-void
.end method
