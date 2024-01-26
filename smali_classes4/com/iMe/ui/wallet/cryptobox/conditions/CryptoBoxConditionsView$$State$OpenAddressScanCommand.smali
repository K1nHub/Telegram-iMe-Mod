.class public Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$OpenAddressScanCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxConditionsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenAddressScanCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State;Ljava/lang/String;)V
    .locals 1

    .line 281
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openAddressScan"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 283
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$OpenAddressScanCommand;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$OpenAddressScanCommand;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;->openAddressScan(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 277
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$OpenAddressScanCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;)V

    return-void
.end method
