.class public Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder$TranslationPresenterBinder;
.super Lmoxy/presenter/PresenterField;
.source "TranslateAlert$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranslationPresenterBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/presenter/PresenterField<",
        "Lorg/fork/ui/dialog/TranslateAlert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder;)V
    .locals 2

    .line 21
    const-class p1, Lcom/smedialink/ui/translate/TranslationPresenter;

    const-string v0, "translationPresenter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 19
    check-cast p1, Lorg/fork/ui/dialog/TranslateAlert;

    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder$TranslationPresenterBinder;->bind(Lorg/fork/ui/dialog/TranslateAlert;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public bind(Lorg/fork/ui/dialog/TranslateAlert;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/smedialink/ui/translate/TranslationPresenter;

    iput-object p2, p1, Lorg/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/smedialink/ui/translate/TranslationPresenter;

    return-void
.end method

.method public bridge synthetic providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0

    .line 19
    check-cast p1, Lorg/fork/ui/dialog/TranslateAlert;

    invoke-virtual {p0, p1}, Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder$TranslationPresenterBinder;->providePresenter(Lorg/fork/ui/dialog/TranslateAlert;)Lmoxy/MvpPresenter;

    move-result-object p1

    return-object p1
.end method

.method public providePresenter(Lorg/fork/ui/dialog/TranslateAlert;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/ui/dialog/TranslateAlert;",
            ")",
            "Lmoxy/MvpPresenter<",
            "*>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lorg/fork/ui/dialog/TranslateAlert;->provideTranslationPresenter()Lcom/smedialink/ui/translate/TranslationPresenter;

    move-result-object p1

    return-object p1
.end method
