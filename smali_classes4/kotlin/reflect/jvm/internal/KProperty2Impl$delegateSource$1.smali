.class final Lkotlin/reflect/jvm/internal/KProperty2Impl$delegateSource$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KProperty2Impl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Member;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/KProperty2Impl<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KProperty2Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KProperty2Impl<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$delegateSource$1;->this$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KProperty2Impl$delegateSource$1;->invoke()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Member;
    .locals 1

    .line 38
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$delegateSource$1;->this$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->computeDelegateSource()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method
