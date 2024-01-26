.class public interface abstract Lj$/util/stream/Stream;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/stream/g;"
    }
.end annotation


# virtual methods
.method public abstract A(Ljava/lang/Object;Lj$/util/function/BiFunction;Lj$/util/function/b;)Ljava/lang/Object;
.end method

.method public abstract D(Lj$/util/function/Function;)Lj$/util/stream/U;
.end method

.method public abstract S(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;
.end method

.method public abstract U(Lj$/util/function/Consumer;)Lj$/util/stream/Stream;
.end method

.method public abstract V(Lj$/util/function/Predicate;)Z
.end method

.method public abstract W(Lj$/util/function/Function;)Lj$/util/stream/e1;
.end method

.method public abstract a(Lj$/util/function/Predicate;)Z
.end method

.method public abstract a0(Lj$/wrappers/F0;)Ljava/lang/Object;
.end method

.method public abstract c(Lj$/util/function/Function;)Lj$/util/stream/IntStream;
.end method

.method public abstract c0(Lj$/util/function/Predicate;)Z
.end method

.method public abstract synthetic close()V
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Lj$/util/stream/Stream;
.end method

.method public abstract e(Lj$/util/function/Consumer;)V
.end method

.method public abstract f0(Lj$/util/function/ToLongFunction;)Lj$/util/stream/e1;
.end method

.method public abstract findAny()Lj$/util/Optional;
.end method

.method public abstract findFirst()Lj$/util/Optional;
.end method

.method public abstract forEach(Lj$/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract i(Lj$/util/function/x;Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract i0(Lj$/util/function/ToDoubleFunction;)Lj$/util/stream/U;
.end method

.method public abstract l(Lj$/util/function/ToIntFunction;)Lj$/util/stream/IntStream;
.end method

.method public abstract l0(Ljava/lang/Object;Lj$/util/function/b;)Ljava/lang/Object;
.end method

.method public abstract limit(J)Lj$/util/stream/Stream;
.end method

.method public abstract m(Lj$/util/function/Function;)Lj$/util/stream/Stream;
.end method

.method public abstract max(Ljava/util/Comparator;)Lj$/util/Optional;
.end method

.method public abstract min(Ljava/util/Comparator;)Lj$/util/Optional;
.end method

.method public abstract n(Lj$/util/function/Function;)Lj$/util/stream/Stream;
.end method

.method public abstract s(Lj$/util/function/b;)Lj$/util/Optional;
.end method

.method public abstract skip(J)Lj$/util/stream/Stream;
.end method

.method public abstract sorted()Lj$/util/stream/Stream;
.end method

.method public abstract sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;
.end method

.method public abstract toArray()[Ljava/lang/Object;
.end method

.method public abstract toArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
.end method
