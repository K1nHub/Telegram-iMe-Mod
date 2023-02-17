.class public Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView$$State$ShowToastCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectSessionDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowToastCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView$$State;Ljava/lang/String;)V
    .locals 1

    .line 131
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showToast"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 133
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView$$State$ShowToastCommand;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView$$State$ShowToastCommand;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 127
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView$$State$ShowToastCommand;->apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView;)V

    return-void
.end method
