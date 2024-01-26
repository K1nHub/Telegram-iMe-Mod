.class public Lcom/iMe/feature/profile/ProfileView$$State$OpenSocialWebCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSocialWebCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;


# direct methods
.method constructor <init>(Lcom/iMe/feature/profile/ProfileView$$State;Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 1

    .line 370
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openSocialWeb"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 372
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileView$$State$OpenSocialWebCommand;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/profile/ProfileView;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileView$$State$OpenSocialWebCommand;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-interface {p1, v0}, Lcom/iMe/feature/profile/ProfileView;->openSocialWeb(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 366
    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfileView$$State$OpenSocialWebCommand;->apply(Lcom/iMe/feature/profile/ProfileView;)V

    return-void
.end method
