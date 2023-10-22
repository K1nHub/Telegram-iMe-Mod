.class public Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowActionErrorCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "FragmentUsernamesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowActionErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State;Ljava/lang/String;)V
    .locals 1

    .line 259
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showActionError"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 261
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowActionErrorCommand;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowActionErrorCommand;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->showActionError(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 255
    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowActionErrorCommand;->apply(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;)V

    return-void
.end method
