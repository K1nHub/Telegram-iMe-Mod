.class public Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBuyCustomPriceView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowConfirmDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;",
        ">;"
    }
.end annotation


# instance fields
.field public final amount:F

.field public final currency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

.field public final dialogModel:Lcom/smedialink/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 1

    .line 169
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showConfirmDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 171
    iput p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;->amount:F

    .line 172
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;->currency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    .line 173
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;)V
    .locals 3

    .line 178
    iget v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;->amount:F

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;->currency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showConfirmDialog(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 161
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;->apply(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;)V

    return-void
.end method
