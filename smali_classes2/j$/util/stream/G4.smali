.class final Lj$/util/stream/G4;
.super Lj$/util/stream/H4;

# interfaces
.implements Lj$/util/Spliterator$c;
.implements Lj$/util/function/p;


# instance fields
.field e:J


# direct methods
.method constructor <init>(Lj$/util/Spliterator$c;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/H4;-><init>(Lj$/util/Spliterator$d;JJ)V

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$c;Lj$/util/stream/G4;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/H4;-><init>(Lj$/util/Spliterator$d;Lj$/util/stream/H4;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 0

    iput-wide p1, p0, Lj$/util/stream/G4;->e:J

    return-void
.end method

.method public synthetic b(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/k;->h(Lj$/util/Spliterator$c;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
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

.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/k;->c(Lj$/util/Spliterator$c;Lj$/util/function/Consumer;)V

    return-void
.end method

.method protected q(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    check-cast p1, Lj$/util/Spliterator$c;

    .line 1
    new-instance v0, Lj$/util/stream/G4;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/G4;-><init>(Lj$/util/Spliterator$c;Lj$/util/stream/G4;)V

    return-object v0
.end method

.method protected s(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lj$/util/function/p;

    .line 1
    iget-wide v0, p0, Lj$/util/stream/G4;->e:J

    invoke-interface {p1, v0, v1}, Lj$/util/function/p;->accept(J)V

    return-void
.end method

.method protected t(I)Lj$/util/stream/j4;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/i4;

    invoke-direct {v0, p1}, Lj$/util/stream/i4;-><init>(I)V

    return-object v0
.end method
