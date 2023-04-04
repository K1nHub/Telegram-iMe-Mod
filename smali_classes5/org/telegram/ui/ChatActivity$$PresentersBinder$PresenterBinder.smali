.class public Lorg/telegram/ui/ChatActivity$$PresentersBinder$PresenterBinder;
.super Lmoxy/presenter/PresenterField;
.source "ChatActivity$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PresenterBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/presenter/PresenterField<",
        "Lorg/telegram/ui/ChatActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity$$PresentersBinder;)V
    .locals 2

    .line 21
    const-class p1, Lcom/iMe/ui/chat/ChatPresenter;

    const-string v0, "presenter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 19
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$$PresentersBinder$PresenterBinder;->bind(Lorg/telegram/ui/ChatActivity;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public bind(Lorg/telegram/ui/ChatActivity;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/iMe/ui/chat/ChatPresenter;

    iput-object p2, p1, Lorg/telegram/ui/ChatActivity;->presenter:Lcom/iMe/ui/chat/ChatPresenter;

    return-void
.end method

.method public bridge synthetic providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0

    .line 19
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$$PresentersBinder$PresenterBinder;->providePresenter(Lorg/telegram/ui/ChatActivity;)Lmoxy/MvpPresenter;

    move-result-object p1

    return-object p1
.end method

.method public providePresenter(Lorg/telegram/ui/ChatActivity;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ChatActivity;",
            ")",
            "Lmoxy/MvpPresenter<",
            "*>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->providePresenter()Lcom/iMe/ui/chat/ChatPresenter;

    move-result-object p1

    return-object p1
.end method
