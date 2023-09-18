.class public final Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate$getValue$2;
.super Ljava/lang/Object;
.source "FragmentViewBindingDelegate.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;->getValue(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate$getValue$2;->this$0:Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate$getValue$2;->this$0:Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;->access$setBinding$p(Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;Landroidx/viewbinding/ViewBinding;)V

    :cond_0
    return-void
.end method
