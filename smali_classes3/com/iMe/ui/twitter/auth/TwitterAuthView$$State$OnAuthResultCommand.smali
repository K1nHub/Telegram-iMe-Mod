.class public Lcom/iMe/ui/twitter/auth/TwitterAuthView$$State$OnAuthResultCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterAuthView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/twitter/auth/TwitterAuthView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnAuthResultCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/twitter/auth/TwitterAuthView;",
        ">;"
    }
.end annotation


# instance fields
.field public final authResult:Lcom/iMe/model/twitter/TwitterAuthResult;


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/auth/TwitterAuthView$$State;Lcom/iMe/model/twitter/TwitterAuthResult;)V
    .locals 1

    .line 118
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onAuthResult"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 120
    iput-object p2, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthView$$State$OnAuthResultCommand;->authResult:Lcom/iMe/model/twitter/TwitterAuthResult;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/twitter/auth/TwitterAuthView;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthView$$State$OnAuthResultCommand;->authResult:Lcom/iMe/model/twitter/TwitterAuthResult;

    invoke-interface {p1, v0}, Lcom/iMe/ui/twitter/auth/TwitterAuthView;->onAuthResult(Lcom/iMe/model/twitter/TwitterAuthResult;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 114
    check-cast p1, Lcom/iMe/ui/twitter/auth/TwitterAuthView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/auth/TwitterAuthView$$State$OnAuthResultCommand;->apply(Lcom/iMe/ui/twitter/auth/TwitterAuthView;)V

    return-void
.end method