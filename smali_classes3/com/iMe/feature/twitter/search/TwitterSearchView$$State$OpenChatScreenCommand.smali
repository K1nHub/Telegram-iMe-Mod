.class public Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$OpenChatScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterSearchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/search/TwitterSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenChatScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/twitter/search/TwitterSearchView;",
        ">;"
    }
.end annotation


# instance fields
.field public final userId:J


# direct methods
.method constructor <init>(Lcom/iMe/feature/twitter/search/TwitterSearchView$$State;J)V
    .locals 1

    .line 635
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openChatScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 637
    iput-wide p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$OpenChatScreenCommand;->userId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/twitter/search/TwitterSearchView;)V
    .locals 2

    .line 642
    iget-wide v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$OpenChatScreenCommand;->userId:J

    invoke-interface {p1, v0, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->openChatScreen(J)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 631
    check-cast p1, Lcom/iMe/feature/twitter/search/TwitterSearchView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchView$$State$OpenChatScreenCommand;->apply(Lcom/iMe/feature/twitter/search/TwitterSearchView;)V

    return-void
.end method
