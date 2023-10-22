.class final Lj$/util/stream/m0;
.super Lj$/util/stream/o0;

# interfaces
.implements Lj$/util/stream/l3;


# instance fields
.field final b:Lj$/util/function/p;


# direct methods
.method constructor <init>(Lj$/util/function/p;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lj$/util/stream/o0;-><init>(Z)V

    iput-object p1, p0, Lj$/util/stream/m0;->b:Lj$/util/function/p;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/m0;->b:Lj$/util/function/p;

    invoke-interface {v0, p1, p2}, Lj$/util/function/p;->accept(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lj$/util/stream/m0;->e(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/o1;->c(Lj$/util/stream/l3;Ljava/lang/Long;)V

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
