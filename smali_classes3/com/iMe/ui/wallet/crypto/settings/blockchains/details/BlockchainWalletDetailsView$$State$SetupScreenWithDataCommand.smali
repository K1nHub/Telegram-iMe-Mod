.class public Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BlockchainWalletDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenWithDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final createdDate:Ljava/lang/String;

.field public final iconResId:I

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 125
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupScreenWithData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 127
    iput p2, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->iconResId:I

    .line 128
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->title:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->subtitle:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->createdDate:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;)V
    .locals 6

    .line 136
    iget v1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->iconResId:I

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->subtitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->createdDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->address:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;->apply(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;)V

    return-void
.end method
