.class Lorg/telegram/ui/ManageLinksActivity$1;
.super Ljava/lang/Object;
.source "ManageLinksActivity.java"

# interfaces
.implements Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageLinksActivity;->showCameraScanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ManageLinksActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$1;->this$0:Lorg/telegram/ui/ManageLinksActivity;

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
    .locals 2

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$1;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {v1, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->validateRecipientAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->linkAddress(Ljava/lang/String;)V

    :cond_1
    :goto_0
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
