.class public Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAttachAlertView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseNetworkDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation
.end field

.field public final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 337
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showChooseNetworkDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 339
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 340
    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    .line 341
    iput-object p4, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;->showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 328
    check-cast p1, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->apply(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;)V

    return-void
.end method
