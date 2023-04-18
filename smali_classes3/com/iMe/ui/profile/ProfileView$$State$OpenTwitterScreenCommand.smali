.class public Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenTwitterScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final telegramProfileId:J

.field public final twitterUserId:J

.field public final twitterUserNickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/profile/ProfileView$$State;JJLjava/lang/String;)V
    .locals 1

    .line 375
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openTwitterScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 377
    iput-wide p2, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;->telegramProfileId:J

    .line 378
    iput-wide p4, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;->twitterUserId:J

    .line 379
    iput-object p6, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;->twitterUserNickname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/profile/ProfileView;)V
    .locals 6

    .line 384
    iget-wide v1, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;->telegramProfileId:J

    iget-wide v3, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;->twitterUserId:J

    iget-object v5, p0, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;->twitterUserNickname:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/profile/ProfileView;->openTwitterScreen(JJLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 367
    check-cast p1, Lcom/iMe/ui/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;->apply(Lcom/iMe/ui/profile/ProfileView;)V

    return-void
.end method
