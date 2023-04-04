.class public Lcom/iMe/ui/chat/ChatView$$State$OnSuccessGetAuthTokensCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChatView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/chat/ChatView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessGetAuthTokensCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/chat/ChatView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Lcom/iMe/storage/domain/model/wallet/SessionTokens;


# direct methods
.method constructor <init>(Lcom/iMe/ui/chat/ChatView$$State;Lcom/iMe/storage/domain/model/wallet/SessionTokens;)V
    .locals 1

    .line 296
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSuccessGetAuthTokens"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 298
    iput-object p2, p0, Lcom/iMe/ui/chat/ChatView$$State$OnSuccessGetAuthTokensCommand;->data:Lcom/iMe/storage/domain/model/wallet/SessionTokens;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/chat/ChatView;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatView$$State$OnSuccessGetAuthTokensCommand;->data:Lcom/iMe/storage/domain/model/wallet/SessionTokens;

    invoke-interface {p1, v0}, Lcom/iMe/ui/chat/ChatView;->onSuccessGetAuthTokens(Lcom/iMe/storage/domain/model/wallet/SessionTokens;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 292
    check-cast p1, Lcom/iMe/ui/chat/ChatView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/chat/ChatView$$State$OnSuccessGetAuthTokensCommand;->apply(Lcom/iMe/ui/chat/ChatView;)V

    return-void
.end method
