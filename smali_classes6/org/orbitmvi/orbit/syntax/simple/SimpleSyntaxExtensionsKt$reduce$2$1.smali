.class final Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SimpleSyntaxExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TS;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic $reducer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleContext<",
            "TS;>;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleContext<",
            "TS;>;+TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$2$1;->$reducer:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    const-string/jumbo v0, "reducerState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$2$1;->$reducer:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;

    invoke-direct {v1, p1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
