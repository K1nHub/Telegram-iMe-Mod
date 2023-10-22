.class public final Lmoxy/ktx/MoxyKtxDelegate$field$1;
.super Lmoxy/presenter/PresenterField;
.source "MoxyKtxDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/presenter/PresenterField<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0016\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001e\u0010\t\u001a\u00020\u00082\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "moxy/ktx/MoxyKtxDelegate$field$1",
        "Lmoxy/presenter/PresenterField;",
        "",
        "delegated",
        "Lmoxy/MvpPresenter;",
        "providePresenter",
        "container",
        "presenter",
        "",
        "bind",
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
.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method constructor <init>(Lmoxy/ktx/MoxyKtxDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lmoxy/ktx/MoxyKtxDelegate$field$1;->this$0:Lmoxy/ktx/MoxyKtxDelegate;

    iput-object p2, p0, Lmoxy/ktx/MoxyKtxDelegate$field$1;->$name:Ljava/lang/String;

    invoke-direct {p0, p3, p4, p5}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lmoxy/MvpPresenter<",
            "*>;)V"
        }
    .end annotation

    const-string/jumbo p1, "presenter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lmoxy/ktx/MoxyKtxDelegate$field$1;->this$0:Lmoxy/ktx/MoxyKtxDelegate;

    invoke-static {p1, p2}, Lmoxy/ktx/MoxyKtxDelegate;->access$setPresenter$p(Lmoxy/ktx/MoxyKtxDelegate;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lmoxy/MvpPresenter<",
            "*>;"
        }
    .end annotation

    .line 18
    iget-object p1, p0, Lmoxy/ktx/MoxyKtxDelegate$field$1;->this$0:Lmoxy/ktx/MoxyKtxDelegate;

    invoke-static {p1}, Lmoxy/ktx/MoxyKtxDelegate;->access$getFactory$p(Lmoxy/ktx/MoxyKtxDelegate;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmoxy/MvpPresenter;

    return-object p1
.end method
