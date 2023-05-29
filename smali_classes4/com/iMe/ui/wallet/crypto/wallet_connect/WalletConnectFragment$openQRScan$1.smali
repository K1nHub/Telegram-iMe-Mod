.class public final Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$openQRScan$1;
.super Ljava/lang/Object;
.source "WalletConnectFragment.kt"

# interfaces
.implements Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->openQRScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$openQRScan$1;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic didFindMrzInfo(Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$didFindMrzInfo(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    return-void
.end method

.method public didFindQr(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$openQRScan$1;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->connect(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic getSubtitleText()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$getSubtitleText(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDismiss()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$onDismiss(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)V

    return-void
.end method

.method public synthetic processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$processQr(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
