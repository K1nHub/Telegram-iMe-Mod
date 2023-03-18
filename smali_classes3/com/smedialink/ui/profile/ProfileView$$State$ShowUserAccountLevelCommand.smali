.class public Lcom/smedialink/ui/profile/ProfileView$$State$ShowUserAccountLevelCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowUserAccountLevelCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final level:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/profile/ProfileView$$State;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 1

    .line 294
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showUserAccountLevel"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 296
    iput-object p2, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowUserAccountLevelCommand;->level:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/profile/ProfileView;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowUserAccountLevelCommand;->level:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/profile/ProfileView;->showUserAccountLevel(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 290
    check-cast p1, Lcom/smedialink/ui/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowUserAccountLevelCommand;->apply(Lcom/smedialink/ui/profile/ProfileView;)V

    return-void
.end method
