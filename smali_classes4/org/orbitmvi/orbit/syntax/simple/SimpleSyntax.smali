.class public final Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;
.super Ljava/lang/Object;
.source "SimpleSyntax.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "SE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final containerContext:Lorg/orbitmvi/orbit/syntax/ContainerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/syntax/ContainerContext<",
            "TS;TSE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/orbitmvi/orbit/syntax/ContainerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/syntax/ContainerContext<",
            "TS;TSE;>;)V"
        }
    .end annotation

    const-string v0, "containerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;->containerContext:Lorg/orbitmvi/orbit/syntax/ContainerContext;

    return-void
.end method


# virtual methods
.method public final getContainerContext()Lorg/orbitmvi/orbit/syntax/ContainerContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/orbitmvi/orbit/syntax/ContainerContext<",
            "TS;TSE;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;->containerContext:Lorg/orbitmvi/orbit/syntax/ContainerContext;

    return-object v0
.end method

.method public final getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;->containerContext:Lorg/orbitmvi/orbit/syntax/ContainerContext;

    invoke-virtual {v0}, Lorg/orbitmvi/orbit/syntax/ContainerContext;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
