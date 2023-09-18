.class final Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1$context$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MvpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1;-><init>(Lcom/iMe/ui/base/mvp/MvpFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/base/mvp/MvpFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/base/mvp/MvpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1$context$2;->this$0:Lcom/iMe/ui/base/mvp/MvpFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/Activity;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1$context$2;->this$0:Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2$1$context$2;->invoke()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
