.class public Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TokenManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupTokenDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final decimals:Ljava/lang/String;

.field public final logoUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final network:Lcom/iMe/storage/domain/model/crypto/Network;

.field public final ticker:Ljava/lang/String;

.field public final verifiedCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/Integer;)V
    .locals 1

    .line 464
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupTokenData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 466
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->logoUrl:Ljava/lang/String;

    .line 467
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->address:Ljava/lang/String;

    .line 468
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->ticker:Ljava/lang/String;

    .line 469
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->name:Ljava/lang/String;

    .line 470
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->decimals:Ljava/lang/String;

    .line 471
    iput-object p7, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 472
    iput-object p8, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->verifiedCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V
    .locals 8

    .line 477
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->logoUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->ticker:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->decimals:Ljava/lang/String;

    iget-object v6, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    iget-object v7, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->verifiedCount:Ljava/lang/Integer;

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->setupTokenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 447
    check-cast p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;->apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V

    return-void
.end method
