.class public final Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1;
.super Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;
.source "MvpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2;->invoke()Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate<",
        "Lcom/iMe/ui/base/mvp/MvpFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final context$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/iMe/ui/base/mvp/MvpFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/base/mvp/MvpFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1;->this$0:Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 27
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;-><init>()V

    .line 28
    new-instance v0, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1$context$2;

    invoke-direct {v0, p1}, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1$context$2;-><init>(Lcom/iMe/ui/base/mvp/MvpFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1;->context$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public createDelegate()Lmoxy/MvpDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lmoxy/MvpDelegate;

    iget-object v1, p0, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1;->this$0:Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-direct {v0, v1}, Lmoxy/MvpDelegate;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1;->context$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-context>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
