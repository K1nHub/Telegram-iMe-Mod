.class public Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$RenderItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxStatusInfoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final statuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;",
            ">;)V"
        }
    .end annotation

    .line 135
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 137
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$RenderItemsCommand;->statuses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$RenderItemsCommand;->statuses:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 131
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$RenderItemsCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;)V

    return-void
.end method
