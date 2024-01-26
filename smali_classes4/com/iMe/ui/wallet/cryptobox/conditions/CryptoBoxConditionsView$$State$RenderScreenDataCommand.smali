.class public Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxConditionsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderScreenDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final balanceText:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final explorer:Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

.field public final membersText:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final networkIconUrl:Ljava/lang/String;

.field public final rewardPerUserText:Ljava/lang/String;

.field public final startDate:Ljava/lang/String;

.field public final tokenLogoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V
    .locals 1

    .line 340
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderScreenData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 342
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->tokenLogoUrl:Ljava/lang/String;

    .line 343
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->networkIconUrl:Ljava/lang/String;

    .line 344
    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->name:Ljava/lang/String;

    .line 345
    iput-object p5, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->description:Ljava/lang/String;

    .line 346
    iput-object p6, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->rewardPerUserText:Ljava/lang/String;

    .line 347
    iput-object p7, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->membersText:Ljava/lang/String;

    .line 348
    iput-object p8, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->balanceText:Ljava/lang/String;

    .line 349
    iput-object p9, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->startDate:Ljava/lang/String;

    .line 350
    iput-object p10, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->explorer:Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;)V
    .locals 10

    .line 355
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->tokenLogoUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->networkIconUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->description:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->rewardPerUserText:Ljava/lang/String;

    iget-object v6, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->membersText:Ljava/lang/String;

    iget-object v7, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->balanceText:Ljava/lang/String;

    iget-object v8, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->startDate:Ljava/lang/String;

    iget-object v9, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->explorer:Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;->renderScreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 318
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderScreenDataCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;)V

    return-void
.end method
