.class public Lorg/telegram/ui/ProfileActivity$$PresentersBinder$DebugPresenterBinder;
.super Lmoxy/presenter/PresenterField;
.source "ProfileActivity$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DebugPresenterBinder"
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

    .line 39
    const-class p1, Lcom/iMe/ui/debug/DebugPresenter;

    const-string v0, "debugPresenter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$$PresentersBinder$DebugPresenterBinder;->bind(Lorg/telegram/ui/ProfileActivity;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public bind(Lorg/telegram/ui/ProfileActivity;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/iMe/ui/debug/DebugPresenter;

    iput-object p2, p1, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/iMe/ui/debug/DebugPresenter;

    return-void
.end method

.method public bridge synthetic providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0

    .line 37
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$$PresentersBinder$DebugPresenterBinder;->providePresenter(Lorg/telegram/ui/ProfileActivity;)Lmoxy/MvpPresenter;

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

    .line 49
    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->provideDebugPresenter()Lcom/iMe/ui/debug/DebugPresenter;

    move-result-object p1

    return-object p1
.end method
