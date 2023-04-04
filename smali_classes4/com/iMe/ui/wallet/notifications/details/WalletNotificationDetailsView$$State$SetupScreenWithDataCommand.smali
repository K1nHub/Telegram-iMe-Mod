.class public Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupScreenWithDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenWithDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final category:Ljava/lang/String;

.field public final date:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 121
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupScreenWithData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 123
    iput-object p2, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupScreenWithDataCommand;->date:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupScreenWithDataCommand;->category:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupScreenWithDataCommand;->date:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupScreenWithDataCommand;->category:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupScreenWithDataCommand;->apply(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;)V

    return-void
.end method
