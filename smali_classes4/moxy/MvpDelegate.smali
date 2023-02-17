.class public Lmoxy/MvpDelegate;
.super Ljava/lang/Object;
.source "MvpDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Delegated:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COMPARE_BY_TAGS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmoxy/presenter/PresenterField;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_TAG:Ljava/lang/String; = "moxy.MvpDelegate.KEY_TAG"

.field public static final MOXY_DELEGATE_TAGS_KEY:Ljava/lang/String; = "MoxyDelegateBundle"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private childDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoxy/MvpDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private delegateTag:Ljava/lang/String;

.field private final delegated:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDelegated;"
        }
    .end annotation
.end field

.field private externalPresenterFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmoxy/presenter/PresenterField<",
            "-TDelegated;>;>;"
        }
    .end annotation
.end field

.field private isAttached:Z

.field private keyTag:Ljava/lang/String;

.field private parentDelegate:Lmoxy/MvpDelegate;

.field private presenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoxy/MvpPresenter<",
            "-TDelegated;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$lFXhGTySyisx3X0PPsh-8p-hfAs(Lmoxy/presenter/PresenterField;Lmoxy/presenter/PresenterField;)I
    .locals 0

    invoke-static {p0, p1}, Lmoxy/MvpDelegate;->lambda$static$0(Lmoxy/presenter/PresenterField;Lmoxy/presenter/PresenterField;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lmoxy/MvpDelegate$$ExternalSyntheticLambda0;->INSTANCE:Lmoxy/MvpDelegate$$ExternalSyntheticLambda0;

    sput-object v0, Lmoxy/MvpDelegate;->COMPARE_BY_TAGS:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDelegated;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "moxy.MvpDelegate.KEY_TAG"

    .line 40
    iput-object v0, p0, Lmoxy/MvpDelegate;->keyTag:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lmoxy/MvpDelegate;->COMPARE_BY_TAGS:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lmoxy/MvpDelegate;->externalPresenterFields:Ljava/util/Set;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmoxy/MvpDelegate;->presenters:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lmoxy/MvpDelegate;->delegated:Ljava/lang/Object;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    return-void
.end method

.method private addChildDelegate(Lmoxy/MvpDelegate;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private closeCoroutineScope(Lmoxy/MvpPresenter;)V
    .locals 1

    .line 233
    iget-object v0, p1, Lmoxy/MvpPresenter;->coroutineScope:Lmoxy/OnDestroyListener;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Lmoxy/OnDestroyListener;->onDestroy()V

    goto :goto_0

    .line 236
    :cond_0
    sget-object v0, Lmoxy/OnDestroyListener;->EMPTY:Lmoxy/OnDestroyListener;

    iput-object v0, p1, Lmoxy/MvpPresenter;->coroutineScope:Lmoxy/OnDestroyListener;

    :goto_0
    return-void
.end method

.method private generateTag()Ljava/lang/String;
    .locals 4

    .line 285
    iget-object v0, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    iget-object v2, v2, Lmoxy/MvpDelegate;->delegateTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 286
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmoxy/MvpDelegate;->delegated:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$0(Lmoxy/presenter/PresenterField;Lmoxy/presenter/PresenterField;)I
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lmoxy/presenter/PresenterField;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Lmoxy/presenter/PresenterField;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private removeChildDelegate(Lmoxy/MvpDelegate;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public freeParentDelegate()V
    .locals 2

    .line 89
    iget-object v0, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {v0, p0}, Lmoxy/MvpDelegate;->removeChildDelegate(Lmoxy/MvpDelegate;)V

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should call freeParentDelegate() before first call to setParentDelegate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildrenSaveState()Landroid/os/Bundle;
    .locals 1

    .line 275
    iget-object v0, p0, Lmoxy/MvpDelegate;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public onAttach()V
    .locals 4

    .line 158
    iget-object v0, p0, Lmoxy/MvpDelegate;->presenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoxy/MvpPresenter;

    .line 159
    iget-boolean v2, p0, Lmoxy/MvpDelegate;->isAttached:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getAttachedViews()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lmoxy/MvpDelegate;->delegated:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v2, p0, Lmoxy/MvpDelegate;->delegated:Ljava/lang/Object;

    check-cast v2, Lmoxy/MvpView;

    invoke-virtual {v1, v2}, Lmoxy/MvpPresenter;->attachView(Lmoxy/MvpView;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoxy/MvpDelegate;

    .line 167
    invoke-virtual {v1}, Lmoxy/MvpDelegate;->onAttach()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lmoxy/MvpDelegate;->isAttached:Z

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    iget-object v1, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    if-eqz v1, :cond_0

    .line 115
    iget-object v0, v1, Lmoxy/MvpDelegate;->bundle:Landroid/os/Bundle;

    .line 118
    :cond_0
    invoke-virtual {p0, v0}, Lmoxy/MvpDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 128
    iget-object v0, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "MoxyDelegateBundle"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lmoxy/MvpDelegate;->isAttached:Z

    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lmoxy/MvpDelegate;->bundle:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 136
    iget-object v1, p0, Lmoxy/MvpDelegate;->keyTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    iget-object v0, p0, Lmoxy/MvpDelegate;->keyTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmoxy/MvpDelegate;->delegateTag:Ljava/lang/String;

    goto :goto_2

    .line 137
    :cond_3
    :goto_1
    invoke-direct {p0}, Lmoxy/MvpDelegate;->generateTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmoxy/MvpDelegate;->delegateTag:Ljava/lang/String;

    .line 143
    :goto_2
    invoke-static {}, Lmoxy/MvpFacade;->getInstance()Lmoxy/MvpFacade;

    move-result-object v0

    invoke-virtual {v0}, Lmoxy/MvpFacade;->getMvpProcessor()Lmoxy/MvpProcessor;

    move-result-object v0

    iget-object v1, p0, Lmoxy/MvpDelegate;->delegated:Ljava/lang/Object;

    iget-object v2, p0, Lmoxy/MvpDelegate;->delegateTag:Ljava/lang/String;

    iget-object v3, p0, Lmoxy/MvpDelegate;->externalPresenterFields:Ljava/util/Set;

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Lmoxy/MvpProcessor;->getMvpPresenters(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmoxy/MvpDelegate;->presenters:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoxy/MvpDelegate;

    .line 147
    invoke-virtual {v1, p1}, Lmoxy/MvpDelegate;->onCreate(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 218
    invoke-static {}, Lmoxy/MvpFacade;->getInstance()Lmoxy/MvpFacade;

    move-result-object v0

    invoke-virtual {v0}, Lmoxy/MvpFacade;->getPresentersCounter()Lmoxy/PresentersCounter;

    move-result-object v0

    .line 219
    invoke-static {}, Lmoxy/MvpFacade;->getInstance()Lmoxy/MvpFacade;

    move-result-object v1

    invoke-virtual {v1}, Lmoxy/MvpFacade;->getPresenterStore()Lmoxy/PresenterStore;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lmoxy/MvpDelegate;->delegateTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmoxy/PresentersCounter;->getAll(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 222
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmoxy/MvpPresenter;

    .line 223
    iget-object v4, p0, Lmoxy/MvpDelegate;->delegateTag:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lmoxy/PresentersCounter;->rejectPresenter(Lmoxy/MvpPresenter;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {v3}, Lmoxy/MvpPresenter;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmoxy/PresenterStore;->remove(Ljava/lang/String;)Lmoxy/MvpPresenter;

    .line 226
    invoke-direct {p0, v3}, Lmoxy/MvpDelegate;->closeCoroutineScope(Lmoxy/MvpPresenter;)V

    .line 227
    invoke-virtual {v3}, Lmoxy/MvpPresenter;->onDestroy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 196
    iget-object v0, p0, Lmoxy/MvpDelegate;->presenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoxy/MvpPresenter;

    .line 197
    iget-object v2, p0, Lmoxy/MvpDelegate;->delegated:Ljava/lang/Object;

    check-cast v2, Lmoxy/MvpView;

    invoke-virtual {v1, v2}, Lmoxy/MvpPresenter;->destroyView(Lmoxy/MvpView;)V

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    iget-object v1, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoxy/MvpDelegate;

    .line 205
    invoke-virtual {v1}, Lmoxy/MvpDelegate;->onSaveInstanceState()V

    .line 206
    invoke-virtual {v1}, Lmoxy/MvpDelegate;->onDestroyView()V

    goto :goto_1

    .line 209
    :cond_1
    iget-object v0, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p0}, Lmoxy/MvpDelegate;->freeParentDelegate()V

    :cond_2
    return-void
.end method

.method public onDetach()V
    .locals 4

    .line 177
    iget-object v0, p0, Lmoxy/MvpDelegate;->presenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoxy/MvpPresenter;

    .line 178
    iget-boolean v2, p0, Lmoxy/MvpDelegate;->isAttached:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getAttachedViews()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lmoxy/MvpDelegate;->delegated:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v2, p0, Lmoxy/MvpDelegate;->delegated:Ljava/lang/Object;

    check-cast v2, Lmoxy/MvpView;

    invoke-virtual {v1, v2}, Lmoxy/MvpPresenter;->detachView(Lmoxy/MvpView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lmoxy/MvpDelegate;->isAttached:Z

    .line 187
    iget-object v0, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoxy/MvpDelegate;

    .line 188
    invoke-virtual {v1}, Lmoxy/MvpDelegate;->onDetach()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()V
    .locals 2

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    iget-object v1, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lmoxy/MvpDelegate;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 250
    :cond_0
    invoke-virtual {p0, v0}, Lmoxy/MvpDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MoxyDelegateBundle"

    .line 262
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    .line 266
    :cond_0
    iget-object v0, p0, Lmoxy/MvpDelegate;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 267
    iget-object v0, p0, Lmoxy/MvpDelegate;->keyTag:Ljava/lang/String;

    iget-object v1, p0, Lmoxy/MvpDelegate;->delegateTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoxy/MvpDelegate;

    .line 270
    invoke-virtual {v1, p1}, Lmoxy/MvpDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerExternalPresenterField(Lmoxy/presenter/PresenterField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmoxy/presenter/PresenterField<",
            "-TDelegated;>;)V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lmoxy/MvpDelegate;->externalPresenterFields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAllChildDelegates()V
    .locals 2

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    iget-object v1, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoxy/MvpDelegate;

    .line 102
    invoke-virtual {v1}, Lmoxy/MvpDelegate;->freeParentDelegate()V

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    return-void
.end method

.method public setParentDelegate(Lmoxy/MvpDelegate;Ljava/lang/String;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lmoxy/MvpDelegate;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lmoxy/MvpDelegate;->childDelegates:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You could not set parent delegate when there are some child presenters already"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    :goto_0
    iput-object p1, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmoxy/MvpDelegate;->parentDelegate:Lmoxy/MvpDelegate;

    iget-object v1, v1, Lmoxy/MvpDelegate;->keyTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmoxy/MvpDelegate;->keyTag:Ljava/lang/String;

    .line 71
    invoke-direct {p1, p0}, Lmoxy/MvpDelegate;->addChildDelegate(Lmoxy/MvpDelegate;)V

    return-void

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You should call setParentDelegate() before first call to onCreate()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
