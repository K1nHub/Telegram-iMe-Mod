.class public Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$SetupScreenWithDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TokenFamilyView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenWithDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;",
        ">;"
    }
.end annotation


# instance fields
.field public final foundTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field

.field public final titleText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 153
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupScreenWithData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 155
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$SetupScreenWithDataCommand;->titleText:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$SetupScreenWithDataCommand;->foundTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$SetupScreenWithDataCommand;->titleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$SetupScreenWithDataCommand;->foundTokens:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;->setupScreenWithData(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 147
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$SetupScreenWithDataCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;)V

    return-void
.end method
