.class public Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupCryptoBoxDetailsScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final balanceText:Ljava/lang/String;

.field public final chatId:J

.field public final chatName:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final explorerIconUrl:Ljava/lang/String;

.field public final logoImageUrl:Ljava/lang/String;

.field public final membersText:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V
    .locals 1

    .line 1093
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupCryptoBoxDetailsScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1095
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->explorerIconUrl:Ljava/lang/String;

    .line 1096
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->logoImageUrl:Ljava/lang/String;

    .line 1097
    iput-wide p4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->chatId:J

    .line 1098
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->chatName:Ljava/lang/String;

    .line 1099
    iput-object p7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->name:Ljava/lang/String;

    .line 1100
    iput-object p8, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->description:Ljava/lang/String;

    .line 1101
    iput-object p9, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->membersText:Ljava/lang/String;

    .line 1102
    iput-object p10, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->balanceText:Ljava/lang/String;

    .line 1103
    iput-object p11, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V
    .locals 11

    .line 1108
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->explorerIconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->logoImageUrl:Ljava/lang/String;

    iget-wide v3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->chatId:J

    iget-object v5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->chatName:Ljava/lang/String;

    iget-object v6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->description:Ljava/lang/String;

    iget-object v8, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->membersText:Ljava/lang/String;

    iget-object v9, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->balanceText:Ljava/lang/String;

    iget-object v10, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-object v0, p1

    invoke-interface/range {v0 .. v10}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupCryptoBoxDetailsScreen(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 1071
    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;->apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V

    return-void
.end method
