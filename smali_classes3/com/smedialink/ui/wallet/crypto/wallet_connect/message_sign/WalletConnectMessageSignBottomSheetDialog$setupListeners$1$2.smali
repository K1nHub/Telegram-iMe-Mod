.class final Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$setupListeners$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectMessageSignBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->setupListeners()V
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
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$setupListeners$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$setupListeners$1$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$setupListeners$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->access$rejectSign(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V

    return-void
.end method
