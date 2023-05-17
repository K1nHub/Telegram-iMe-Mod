.class public Lcom/iMe/feature/profile/ProfileView$$State$ShowUserAccountLevelCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowUserAccountLevelCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;


# direct methods
.method constructor <init>(Lcom/iMe/feature/profile/ProfileView$$State;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 1

    .line 298
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showUserAccountLevel"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 300
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowUserAccountLevelCommand;->level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/profile/ProfileView;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileView$$State$ShowUserAccountLevelCommand;->level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    invoke-interface {p1, v0}, Lcom/iMe/feature/profile/ProfileView;->showUserAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 294
    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfileView$$State$ShowUserAccountLevelCommand;->apply(Lcom/iMe/feature/profile/ProfileView;)V

    return-void
.end method
