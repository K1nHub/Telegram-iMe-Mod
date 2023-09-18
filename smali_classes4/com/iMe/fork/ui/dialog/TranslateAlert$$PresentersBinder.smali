.class public Lcom/iMe/fork/ui/dialog/TranslateAlert$$PresentersBinder;
.super Lmoxy/PresenterBinder;
.source "TranslateAlert$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/TranslateAlert$$PresentersBinder$TranslationPresenterBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/PresenterBinder<",
        "Lcom/iMe/fork/ui/dialog/TranslateAlert;",
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
            "Lcom/iMe/fork/ui/dialog/TranslateAlert;",
            ">;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$PresentersBinder$TranslationPresenterBinder;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$PresentersBinder$TranslationPresenterBinder;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$$PresentersBinder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
