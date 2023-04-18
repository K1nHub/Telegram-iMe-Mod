.class public Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTransactionDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenWithDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final amount:Ljava/lang/String;

.field public final category:Ljava/lang/String;

.field public final comment:Ljava/lang/String;

.field public final date:Ljava/lang/String;

.field public final fee:Ljava/lang/String;

.field public final iconResId:I

.field public final isFeeEnabled:Z

.field public final isShareEnable:Z

.field public final processing:Ljava/lang/String;

.field public final recipient:Ljava/lang/String;

.field public final recipientTitle:Ljava/lang/String;

.field public final stakingIconResId:Ljava/lang/Integer;

.field public final status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Integer;)V
    .locals 1

    .line 314
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupScreenWithData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 316
    iput p2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->iconResId:I

    .line 317
    iput-object p3, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->category:Ljava/lang/String;

    .line 318
    iput-object p4, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->amount:Ljava/lang/String;

    .line 319
    iput-object p5, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->recipientTitle:Ljava/lang/String;

    .line 320
    iput-object p6, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->recipient:Ljava/lang/String;

    .line 321
    iput-object p7, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->comment:Ljava/lang/String;

    .line 322
    iput-object p8, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->status:Ljava/lang/String;

    .line 323
    iput-object p9, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->date:Ljava/lang/String;

    .line 324
    iput-object p10, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->processing:Ljava/lang/String;

    .line 325
    iput-object p11, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->fee:Ljava/lang/String;

    .line 326
    iput-boolean p12, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->isFeeEnabled:Z

    .line 327
    iput-boolean p13, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->isShareEnable:Z

    .line 328
    iput-object p14, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->stakingIconResId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;)V
    .locals 14

    .line 333
    iget v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->iconResId:I

    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->category:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->amount:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->recipientTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->recipient:Ljava/lang/String;

    iget-object v6, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->comment:Ljava/lang/String;

    iget-object v7, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->status:Ljava/lang/String;

    iget-object v8, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->date:Ljava/lang/String;

    iget-object v9, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->processing:Ljava/lang/String;

    iget-object v10, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->fee:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->isFeeEnabled:Z

    iget-boolean v12, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->isShareEnable:Z

    iget-object v13, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->stakingIconResId:Ljava/lang/Integer;

    move-object v0, p1

    invoke-interface/range {v0 .. v13}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 284
    check-cast p1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;->apply(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;)V

    return-void
.end method
