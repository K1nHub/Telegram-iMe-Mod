.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenAddAdminScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateCryptoBoxView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenAddAdminScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;"
    }
.end annotation


# instance fields
.field public final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final walletBotId:J


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    .line 491
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openAddAdminScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 493
    iput-wide p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenAddAdminScreenCommand;->walletBotId:J

    .line 494
    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenAddAdminScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V
    .locals 3

    .line 499
    iget-wide v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenAddAdminScreenCommand;->walletBotId:J

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenAddAdminScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->openAddAdminScreen(JLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 485
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenAddAdminScreenCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V

    return-void
.end method
