.class final Lj$/time/format/q;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/format/h;


# instance fields
.field private final a:Lj$/time/temporal/o;

.field private final b:Lj$/time/format/B;

.field private final c:Lj$/time/format/c;

.field private volatile d:Lj$/time/format/k;


# direct methods
.method constructor <init>(Lj$/time/temporal/o;Lj$/time/format/B;Lj$/time/format/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    iput-object p2, p0, Lj$/time/format/q;->b:Lj$/time/format/B;

    iput-object p3, p0, Lj$/time/format/q;->c:Lj$/time/format/c;

    return-void
.end method

.method private c()Lj$/time/format/k;
    .locals 5

    iget-object v0, p0, Lj$/time/format/q;->d:Lj$/time/format/k;

    if-nez v0, :cond_0

    new-instance v0, Lj$/time/format/k;

    iget-object v1, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    sget-object v2, Lj$/time/format/A;->NORMAL:Lj$/time/format/A;

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-direct {v0, v1, v3, v4, v2}, Lj$/time/format/k;-><init>(Lj$/time/temporal/o;IILj$/time/format/A;)V

    iput-object v0, p0, Lj$/time/format/q;->d:Lj$/time/format/k;

    :cond_0
    iget-object v0, p0, Lj$/time/format/q;->d:Lj$/time/format/k;

    return-object v0
.end method


# virtual methods
.method public a(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z
    .locals 7

    iget-object v0, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-virtual {p1, v0}, Lj$/time/format/v;->e(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lj$/time/format/v;->d()Lj$/time/temporal/k;

    move-result-object v1

    sget v2, Lj$/time/temporal/w;->a:I

    sget-object v2, Lj$/time/temporal/q;->a:Lj$/time/temporal/q;

    invoke-interface {v1, v2}, Lj$/time/temporal/k;->g(Lj$/time/temporal/x;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/g;

    if-eqz v1, :cond_4

    sget-object v2, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lj$/time/format/q;->c:Lj$/time/format/c;

    iget-object v4, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lj$/time/format/q;->b:Lj$/time/format/B;

    invoke-virtual {p1}, Lj$/time/format/v;->c()Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 1
    instance-of v1, v4, Lj$/time/temporal/a;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 2
    :cond_3
    :goto_0
    iget-object v1, v3, Lj$/time/format/c;->a:Lj$/time/format/w;

    invoke-virtual {v1, v5, v6, v0}, Lj$/time/format/w;->a(JLj$/time/format/B;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3
    :cond_4
    :goto_1
    iget-object v1, p0, Lj$/time/format/q;->c:Lj$/time/format/c;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lj$/time/format/q;->b:Lj$/time/format/B;

    invoke-virtual {p1}, Lj$/time/format/v;->c()Ljava/util/Locale;

    .line 4
    iget-object v1, v1, Lj$/time/format/c;->a:Lj$/time/format/w;

    invoke-virtual {v1, v2, v3, v0}, Lj$/time/format/w;->a(JLj$/time/format/B;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_5

    .line 5
    invoke-direct {p0}, Lj$/time/format/q;->c()Lj$/time/format/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj$/time/format/k;->a(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lj$/time/format/t;Ljava/lang/CharSequence;I)I
    .locals 10

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ltz p3, :cond_7

    if-gt p3, v0, :cond_7

    invoke-virtual {p1}, Lj$/time/format/t;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/format/q;->b:Lj$/time/format/B;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lj$/time/format/t;->g()Lj$/time/chrono/g;

    move-result-object v2

    sget-object v3, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lj$/time/format/q;->c:Lj$/time/format/c;

    invoke-virtual {p1}, Lj$/time/format/t;->h()Ljava/util/Locale;

    .line 1
    iget-object v1, v1, Lj$/time/format/c;->a:Lj$/time/format/w;

    invoke-virtual {v1, v0}, Lj$/time/format/w;->b(Lj$/time/format/B;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    .line 2
    :cond_1
    iget-object v4, p0, Lj$/time/format/q;->c:Lj$/time/format/c;

    iget-object v5, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-virtual {p1}, Lj$/time/format/t;->h()Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    .line 3
    instance-of v2, v5, Lj$/time/temporal/a;

    if-nez v2, :cond_3

    .line 4
    :cond_2
    iget-object v1, v4, Lj$/time/format/c;->a:Lj$/time/format/w;

    invoke-virtual {v1, v0}, Lj$/time/format/w;->b(Lj$/time/format/B;)Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 5
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, v2

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lj$/time/format/t;->r(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    add-int v9, p2, p3

    move-object v4, p1

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lj$/time/format/t;->n(Lj$/time/temporal/o;JII)I

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1}, Lj$/time/format/t;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    not-int p1, p3

    return p1

    :cond_6
    invoke-direct {p0}, Lj$/time/format/q;->c()Lj$/time/format/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/k;->b(Lj$/time/format/t;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1

    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lj$/time/format/q;->b:Lj$/time/format/B;

    sget-object v1, Lj$/time/format/B;->FULL:Lj$/time/format/B;

    const-string v2, ")"

    const-string v3, "Text("

    if-ne v0, v1, :cond_0

    invoke-static {v3}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/q;->a:Lj$/time/temporal/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/format/q;->b:Lj$/time/format/B;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
