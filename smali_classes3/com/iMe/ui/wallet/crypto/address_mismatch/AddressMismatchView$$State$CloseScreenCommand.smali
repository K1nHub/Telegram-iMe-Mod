.class public Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$CloseScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "AddressMismatchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;",
        ">;"
    }
.end annotation


# instance fields
.field public final delay:J


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State;J)V
    .locals 1

    .line 133
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "closeScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 135
    iput-wide p2, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$CloseScreenCommand;->delay:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;)V
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$CloseScreenCommand;->delay:J

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;->closeScreen(J)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 129
    check-cast p1, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$CloseScreenCommand;->apply(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;)V

    return-void
.end method
