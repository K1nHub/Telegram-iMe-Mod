.class public Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowToastCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "AddressMismatchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowToastCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;",
        ">;"
    }
.end annotation


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State;Ljava/lang/String;)V
    .locals 1

    .line 148
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showToast"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 150
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowToastCommand;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowToastCommand;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 144
    check-cast p1, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowToastCommand;->apply(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;)V

    return-void
.end method
