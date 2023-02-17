.class public final synthetic Lj$/util/concurrent/ConcurrentMap$-EL;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lj$/util/concurrent/b;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/concurrent/b;

    invoke-interface {p0, p1, p2}, Lj$/util/concurrent/b;->computeIfAbsent(Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Lj$/lang/d;->a(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
