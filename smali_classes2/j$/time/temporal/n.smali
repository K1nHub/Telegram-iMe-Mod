.class public abstract Lj$/time/temporal/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lj$/time/temporal/k;Lj$/time/temporal/o;)I
    .locals 5

    invoke-interface {p0, p1}, Lj$/time/temporal/k;->d(Lj$/time/temporal/o;)Lj$/time/temporal/A;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/A;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Lj$/time/temporal/k;->e(Lj$/time/temporal/o;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/A;->h(J)Z

    move-result p0

    if-eqz p0, :cond_0

    long-to-int p0, v1

    return p0

    :cond_0
    new-instance p0, Lj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (valid values "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lj$/time/temporal/z;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for get() method, use getLong() instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lj$/time/temporal/k;Lj$/time/temporal/x;)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/time/temporal/w;->a:I

    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/temporal/p;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/q;->a:Lj$/time/temporal/q;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/r;->a:Lj$/time/temporal/r;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/x;->a(Lj$/time/temporal/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lj$/time/temporal/k;Lj$/time/temporal/o;)Lj$/time/temporal/A;
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lj$/time/temporal/k;->i(Lj$/time/temporal/o;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/o;->a()Lj$/time/temporal/A;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lj$/time/temporal/z;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->g(Lj$/time/temporal/k;)Lj$/time/temporal/A;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lj$/time/b;)Lj$/time/temporal/l;
    .locals 1

    invoke-virtual {p0}, Lj$/time/b;->j()I

    move-result p0

    new-instance v0, Lj$/time/temporal/m;

    invoke-direct {v0, p0}, Lj$/time/temporal/m;-><init>(I)V

    return-object v0
.end method
