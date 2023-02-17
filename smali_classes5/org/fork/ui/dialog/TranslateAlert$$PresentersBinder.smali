.class public Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder;
.super Lmoxy/PresenterBinder;
.source "TranslateAlert$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder$TranslationPresenterBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/PresenterBinder<",
        "Lorg/fork/ui/dialog/TranslateAlert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lmoxy/PresenterBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public getPresenterFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmoxy/presenter/PresenterField<",
            "-",
            "Lorg/fork/ui/dialog/TranslateAlert;",
            ">;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    new-instance v1, Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder$TranslationPresenterBinder;

    invoke-direct {v1, p0}, Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder$TranslationPresenterBinder;-><init>(Lorg/fork/ui/dialog/TranslateAlert$$PresentersBinder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
