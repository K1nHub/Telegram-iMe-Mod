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
