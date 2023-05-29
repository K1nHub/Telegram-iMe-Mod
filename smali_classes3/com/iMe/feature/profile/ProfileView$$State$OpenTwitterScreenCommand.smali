.class public Lcom/iMe/feature/profile/ProfileView$$State$OpenTwitterScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenTwitterScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final network:Lcom/iMe/feature/socialMedias/SocialNetwork;

.field public final telegramProfileId:J


# direct methods
.method constructor <init>(Lcom/iMe/feature/profile/ProfileView$$State;JLcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 1

    .line 390
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openTwitterScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 392
    iput-wide p2, p0, Lcom/iMe/feature/profile/ProfileView$$State$OpenTwitterScreenCommand;->telegramProfileId:J

    .line 393
    iput-object p4, p0, Lcom/iMe/feature/profile/ProfileView$$State$OpenTwitterScreenCommand;->network:Lcom/iMe/feature/socialMedias/SocialNetwork;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/profile/ProfileView;)V
    .locals 3

    .line 398
    iget-wide v0, p0, Lcom/iMe/feature/profile/ProfileView$$State$OpenTwitterScreenCommand;->telegramProfileId:J

    iget-object v2, p0, Lcom/iMe/feature/profile/ProfileView$$State$OpenTwitterScreenCommand;->network:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/feature/profile/ProfileView;->openTwitterScreen(JLcom/iMe/feature/socialMedias/SocialNetwork;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 384
    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfileView$$State$OpenTwitterScreenCommand;->apply(Lcom/iMe/feature/profile/ProfileView;)V

    return-void
.end method
