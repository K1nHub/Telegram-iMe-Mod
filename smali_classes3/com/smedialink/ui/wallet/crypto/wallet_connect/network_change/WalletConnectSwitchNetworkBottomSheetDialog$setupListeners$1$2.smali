.class final Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectSwitchNetworkBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->setupListeners()V
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
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->access$rejectNetworkChange(Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;)V

    return-void
.end method
