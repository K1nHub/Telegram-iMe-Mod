.class public Lcom/iMe/feature/profile/ProfileView$$State$OnFilteredMembersCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnFilteredMembersCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/feature/profile/ProfileView$$State;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;)V"
        }
    .end annotation

    .line 299
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onFilteredMembers"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 301
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileView$$State$OnFilteredMembersCommand;->members:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/profile/ProfileView;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileView$$State$OnFilteredMembersCommand;->members:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/iMe/feature/profile/ProfileView;->onFilteredMembers(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 295
    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfileView$$State$OnFilteredMembersCommand;->apply(Lcom/iMe/feature/profile/ProfileView;)V

    return-void
.end method
