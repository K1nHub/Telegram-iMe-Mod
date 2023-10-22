.class public Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BlockchainsManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupWalletsItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 254
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupWalletsItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 256
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->setupWalletsItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 250
    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;->apply(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;)V

    return-void
.end method
