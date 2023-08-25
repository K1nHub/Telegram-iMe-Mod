.class public final Lmoxy/ktx/MoxyKtxDelegate;
.super Ljava/lang/Object;
.source "MoxyKtxDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmoxy/MvpPresenter<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final factory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private presenter:Lmoxy/MvpPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmoxy/MvpDelegate<",
            "*>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lmoxy/ktx/MoxyKtxDelegate;->factory:Lkotlin/jvm/functions/Function0;

    .line 17
    new-instance p3, Lmoxy/ktx/MoxyKtxDelegate$field$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p0

    move-object v3, p2

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lmoxy/ktx/MoxyKtxDelegate$field$1;-><init>(Lmoxy/ktx/MoxyKtxDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    invoke-virtual {p1, p3}, Lmoxy/MvpDelegate;->registerExternalPresenterField(Lmoxy/presenter/PresenterField;)V

    return-void
.end method

.method public static final synthetic access$getFactory$p(Lmoxy/ktx/MoxyKtxDelegate;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 8
    iget-object p0, p0, Lmoxy/ktx/MoxyKtxDelegate;->factory:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getPresenter$p(Lmoxy/ktx/MoxyKtxDelegate;)Lmoxy/MvpPresenter;
    .locals 0

    .line 8
    iget-object p0, p0, Lmoxy/ktx/MoxyKtxDelegate;->presenter:Lmoxy/MvpPresenter;

    return-object p0
.end method

.method public static final synthetic access$setPresenter$p(Lmoxy/ktx/MoxyKtxDelegate;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lmoxy/ktx/MoxyKtxDelegate;->presenter:Lmoxy/MvpPresenter;

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    const-string/jumbo p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lmoxy/ktx/MoxyKtxDelegate;->presenter:Lmoxy/MvpPresenter;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Presenter can be accessed only after MvpDelegate.onCreate() call"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
