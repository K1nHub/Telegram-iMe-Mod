.class public final synthetic Lj$/util/function/o;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/p;


# instance fields
.field public final synthetic a:Lj$/util/function/p;

.field public final synthetic b:Lj$/util/function/p;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/p;Lj$/util/function/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/o;->a:Lj$/util/function/p;

    iput-object p2, p0, Lj$/util/function/o;->b:Lj$/util/function/p;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 2

    iget-object v0, p0, Lj$/util/function/o;->a:Lj$/util/function/p;

    iget-object v1, p0, Lj$/util/function/o;->b:Lj$/util/function/p;

    .line 1
    invoke-interface {v0, p1, p2}, Lj$/util/function/p;->accept(J)V

    invoke-interface {v1, p1, p2}, Lj$/util/function/p;->accept(J)V

    return-void
.end method

.method public f(Lj$/util/function/p;)Lj$/util/function/p;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/function/o;

    invoke-direct {v0, p0, p1}, Lj$/util/function/o;-><init>(Lj$/util/function/p;Lj$/util/function/p;)V

    return-object v0
.end method
