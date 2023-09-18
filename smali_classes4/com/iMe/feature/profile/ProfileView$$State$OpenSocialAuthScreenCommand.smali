.class public Lcom/iMe/feature/profile/ProfileView$$State$OpenSocialAuthScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSocialAuthScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final socialAuthDomain:Lcom/iMe/feature/socialMedias/SocialAuthDomain;


# direct methods
.method constructor <init>(Lcom/iMe/feature/profile/ProfileView$$State;Lcom/iMe/feature/socialMedias/SocialAuthDomain;)V
    .locals 1

    .line 355
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openSocialAuthScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 357
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileView$$State$OpenSocialAuthScreenCommand;->socialAuthDomain:Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/profile/ProfileView;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileView$$State$OpenSocialAuthScreenCommand;->socialAuthDomain:Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    invoke-interface {p1, v0}, Lcom/iMe/feature/profile/ProfileView;->openSocialAuthScreen(Lcom/iMe/feature/socialMedias/SocialAuthDomain;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 351
    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfileView$$State$OpenSocialAuthScreenCommand;->apply(Lcom/iMe/feature/profile/ProfileView;)V

    return-void
.end method
