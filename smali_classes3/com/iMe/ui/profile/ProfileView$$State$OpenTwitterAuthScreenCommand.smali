.class public Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterAuthScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenTwitterAuthScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final token:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/profile/ProfileView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 355
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openTwitterAuthScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 357
    iput-object p2, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterAuthScreenCommand;->url:Ljava/lang/String;

    .line 358
    iput-object p3, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterAuthScreenCommand;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/profile/ProfileView;)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterAuthScreenCommand;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterAuthScreenCommand;->token:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/profile/ProfileView;->openTwitterAuthScreen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 349
    check-cast p1, Lcom/iMe/ui/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterAuthScreenCommand;->apply(Lcom/iMe/ui/profile/ProfileView;)V

    return-void
.end method