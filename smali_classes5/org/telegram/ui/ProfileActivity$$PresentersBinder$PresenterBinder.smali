.class public Lorg/telegram/ui/ProfileActivity$$PresentersBinder$PresenterBinder;
.super Lmoxy/presenter/PresenterField;
.source "ProfileActivity$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PresenterBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/presenter/PresenterField<",
        "Lorg/telegram/ui/ProfileActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileActivity$$PresentersBinder;)V
    .locals 2

    .line 23
    const-class p1, Lcom/iMe/ui/profile/ProfilePresenter;

    const-string v0, "presenter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 21
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$$PresentersBinder$PresenterBinder;->bind(Lorg/telegram/ui/ProfileActivity;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public bind(Lorg/telegram/ui/ProfileActivity;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/iMe/ui/profile/ProfilePresenter;

    iput-object p2, p1, Lorg/telegram/ui/ProfileActivity;->presenter:Lcom/iMe/ui/profile/ProfilePresenter;

    return-void
.end method

.method public bridge synthetic providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0

    .line 21
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$$PresentersBinder$PresenterBinder;->providePresenter(Lorg/telegram/ui/ProfileActivity;)Lmoxy/MvpPresenter;

    move-result-object p1

    return-object p1
.end method

.method public providePresenter(Lorg/telegram/ui/ProfileActivity;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ProfileActivity;",
            ")",
            "Lmoxy/MvpPresenter<",
            "*>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->providePresenter()Lcom/iMe/ui/profile/ProfilePresenter;

    move-result-object p1

    return-object p1
.end method
