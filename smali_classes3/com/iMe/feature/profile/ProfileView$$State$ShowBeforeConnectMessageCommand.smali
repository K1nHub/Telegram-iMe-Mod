.class public Lcom/iMe/feature/profile/ProfileView$$State$ShowBeforeConnectMessageCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowBeforeConnectMessageCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final prepareBeforeDialogModel:Lcom/iMe/model/dialog/DialogModel;

.field public final socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;


# direct methods
.method constructor <init>(Lcom/iMe/feature/profile/ProfileView$$State;Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 1

    .line 372
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showBeforeConnectMessage"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 374
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowBeforeConnectMessageCommand;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 375
    iput-object p3, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowBeforeConnectMessageCommand;->prepareBeforeDialogModel:Lcom/iMe/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/profile/ProfileView;)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowBeforeConnectMessageCommand;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowBeforeConnectMessageCommand;->prepareBeforeDialogModel:Lcom/iMe/model/dialog/DialogModel;

    invoke-interface {p1, v0, v1}, Lcom/iMe/feature/profile/ProfileView;->showBeforeConnectMessage(Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 365
    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfileView$$State$ShowBeforeConnectMessageCommand;->apply(Lcom/iMe/feature/profile/ProfileView;)V

    return-void
.end method
