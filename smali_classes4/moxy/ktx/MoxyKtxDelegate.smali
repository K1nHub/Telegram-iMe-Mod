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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000*\u000c\u0008\u0000\u0010\u0002*\u0006\u0012\u0002\u0008\u00030\u00012\u00020\u0003B)\u0012\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J&\u0010\u0007\u001a\u00028\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0086\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\t\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lmoxy/ktx/MoxyKtxDelegate;",
        "Lmoxy/MvpPresenter;",
        "T",
        "",
        "thisRef",
        "Lkotlin/reflect/KProperty;",
        "property",
        "getValue",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;",
        "presenter",
        "Lmoxy/MvpPresenter;",
        "Lkotlin/Function0;",
        "factory",
        "Lkotlin/jvm/functions/Function0;",
        "Lmoxy/MvpDelegate;",
        "delegate",
        "",
        "name",
        "<init>",
        "(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "moxy-ktx"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
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
