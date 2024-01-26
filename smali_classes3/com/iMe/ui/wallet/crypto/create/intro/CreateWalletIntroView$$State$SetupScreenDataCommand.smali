.class public Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$SetupScreenDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletIntroView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final explorer:Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

.field public final user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V
    .locals 1

    .line 236
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupScreenData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 238
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$SetupScreenDataCommand;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 239
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$SetupScreenDataCommand;->address:Ljava/lang/String;

    .line 240
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$SetupScreenDataCommand;->explorer:Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$SetupScreenDataCommand;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$SetupScreenDataCommand;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$SetupScreenDataCommand;->explorer:Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->setupScreenData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 228
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$SetupScreenDataCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V

    return-void
.end method
