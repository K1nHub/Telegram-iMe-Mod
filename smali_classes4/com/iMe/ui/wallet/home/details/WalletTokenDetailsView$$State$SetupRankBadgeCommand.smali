.class public Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupRankBadgeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final accountLevel:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field public final isBadgeVisible:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 1

    .line 1134
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupRankBadge"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1136
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;->isBadgeVisible:Z

    .line 1137
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;->accountLevel:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V
    .locals 2

    .line 1142
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;->isBadgeVisible:Z

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;->accountLevel:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 1128
    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;->apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V

    return-void
.end method
