.class public final Lj$/time/format/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Lj$/time/format/p;

.field private final b:Lj$/time/format/p;

.field private final c:Ljava/util/List;

.field private final d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/i;->a:Lj$/time/temporal/j;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/p;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lj$/time/format/p;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/time/format/p;->b:Lj$/time/format/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/time/format/p;->d:Z

    return-void
.end method

.method private constructor <init>(Lj$/time/format/p;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/p;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lj$/time/format/p;->e:I

    iput-object p1, p0, Lj$/time/format/p;->b:Lj$/time/format/p;

    iput-boolean p2, p0, Lj$/time/format/p;->d:Z

    return-void
.end method

.method private d(Lj$/time/format/g;)I
    .locals 1

    const-string v0, "pp"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lj$/time/format/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    const/4 v0, -0x1

    iput v0, p1, Lj$/time/format/p;->e:I

    iget-object p1, p1, Lj$/time/format/p;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method private j(Lj$/time/format/j;)Lj$/time/format/p;
    .locals 4

    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget v1, v0, Lj$/time/format/p;->e:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lj$/time/format/p;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/j;

    iget v2, p1, Lj$/time/format/j;->b:I

    iget v3, p1, Lj$/time/format/j;->c:I

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lj$/time/format/j;->a(Lj$/time/format/j;)Lj$/time/format/t;

    move-result-object v2

    sget-object v3, Lj$/time/format/t;->NOT_NEGATIVE:Lj$/time/format/t;

    if-ne v2, v3, :cond_0

    iget v2, p1, Lj$/time/format/j;->c:I

    invoke-virtual {v0, v2}, Lj$/time/format/j;->c(I)Lj$/time/format/j;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/format/j;->b()Lj$/time/format/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    iget-object p1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iput v1, p1, Lj$/time/format/p;->e:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/time/format/j;->b()Lj$/time/format/j;

    move-result-object v0

    iget-object v2, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    invoke-direct {p0, p1}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    move-result p1

    iput p1, v2, Lj$/time/format/p;->e:I

    :goto_0
    iget-object p1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object p1, p1, Lj$/time/format/p;->c:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    move-result p1

    iput p1, v0, Lj$/time/format/p;->e:I

    :goto_1
    return-object p0
.end method

.method private t(Ljava/util/Locale;ILj$/time/chrono/b;)Lj$/time/format/a;
    .locals 8

    const-string v0, "locale"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :goto_0
    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v0, v0, Lj$/time/format/p;->b:Lj$/time/format/p;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/time/format/p;->n()Lj$/time/format/p;

    goto :goto_0

    :cond_0
    new-instance v2, Lj$/time/format/f;

    iget-object v0, p0, Lj$/time/format/p;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lj$/time/format/f;-><init>(Ljava/util/List;Z)V

    new-instance v0, Lj$/time/format/a;

    sget-object v4, Lj$/time/format/r;->a:Lj$/time/format/r;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lj$/time/format/a;-><init>(Lj$/time/format/f;Ljava/util/Locale;Lj$/time/format/r;ILjava/util/Set;Lj$/time/chrono/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Lj$/time/format/a;)Lj$/time/format/p;
    .locals 1

    const-string v0, "formatter"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lj$/time/format/a;->a(Z)Lj$/time/format/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public b(Lj$/time/temporal/j;IIZ)Lj$/time/format/p;
    .locals 1

    new-instance v0, Lj$/time/format/h;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/h;-><init>(Lj$/time/temporal/j;IIZ)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public c()Lj$/time/format/p;
    .locals 2

    new-instance v0, Lj$/time/format/i;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lj$/time/format/i;-><init>(I)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public e(C)Lj$/time/format/p;
    .locals 1

    new-instance v0, Lj$/time/format/e;

    invoke-direct {v0, p1}, Lj$/time/format/e;-><init>(C)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lj$/time/format/p;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lj$/time/format/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lj$/time/format/e;-><init>(C)V

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/format/m;

    invoke-direct {v0, p1}, Lj$/time/format/m;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    :cond_1
    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/p;
    .locals 1

    new-instance v0, Lj$/time/format/k;

    invoke-direct {v0, p1, p2}, Lj$/time/format/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public h()Lj$/time/format/p;
    .locals 1

    sget-object v0, Lj$/time/format/k;->d:Lj$/time/format/k;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public i(Lj$/time/temporal/j;Ljava/util/Map;)Lj$/time/format/p;
    .locals 2

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    sget-object p2, Lj$/time/format/u;->FULL:Lj$/time/format/u;

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lj$/time/format/q;

    invoke-direct {v1, v0}, Lj$/time/format/q;-><init>(Ljava/util/Map;)V

    new-instance v0, Lj$/time/format/c;

    invoke-direct {v0, p0, v1}, Lj$/time/format/c;-><init>(Lj$/time/format/p;Lj$/time/format/q;)V

    new-instance v1, Lj$/time/format/n;

    invoke-direct {v1, p1, p2, v0}, Lj$/time/format/n;-><init>(Lj$/time/temporal/j;Lj$/time/format/u;Lj$/time/format/c;)V

    invoke-direct {p0, v1}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public k(Lj$/time/temporal/j;I)Lj$/time/format/p;
    .locals 2

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    .line 2
    new-instance v0, Lj$/time/format/j;

    sget-object v1, Lj$/time/format/t;->NOT_NEGATIVE:Lj$/time/format/t;

    invoke-direct {v0, p1, p2, p2, v1}, Lj$/time/format/j;-><init>(Lj$/time/temporal/j;IILj$/time/format/t;)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->j(Lj$/time/format/j;)Lj$/time/format/p;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Lj$/time/temporal/j;IILj$/time/format/t;)Lj$/time/format/p;
    .locals 2

    if-ne p2, p3, :cond_0

    sget-object v0, Lj$/time/format/t;->NOT_NEGATIVE:Lj$/time/format/t;

    if-ne p4, v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lj$/time/format/p;->k(Lj$/time/temporal/j;I)Lj$/time/format/p;

    return-object p0

    :cond_0
    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signStyle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0x13

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_2

    if-gt p3, v1, :cond_2

    if-lt p3, p2, :cond_1

    .line 2
    new-instance v0, Lj$/time/format/j;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/j;-><init>(Lj$/time/temporal/j;IILj$/time/format/t;)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->j(Lj$/time/format/j;)Lj$/time/format/p;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Lj$/time/format/p;
    .locals 3

    new-instance v0, Lj$/time/format/o;

    sget-object v1, Lj$/time/format/b;->a:Lj$/time/format/b;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Lj$/time/format/o;-><init>(Lj$/time/temporal/k;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public n()Lj$/time/format/p;
    .locals 3

    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v1, v0, Lj$/time/format/p;->b:Lj$/time/format/p;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lj$/time/format/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lj$/time/format/f;

    iget-object v1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v2, v1, Lj$/time/format/p;->c:Ljava/util/List;

    iget-boolean v1, v1, Lj$/time/format/p;->d:Z

    invoke-direct {v0, v2, v1}, Lj$/time/format/f;-><init>(Ljava/util/List;Z)V

    iget-object v1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v1, v1, Lj$/time/format/p;->b:Lj$/time/format/p;

    iput-object v1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    iget-object v0, v0, Lj$/time/format/p;->b:Lj$/time/format/p;

    iput-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Lj$/time/format/p;
    .locals 3

    iget-object v0, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    const/4 v1, -0x1

    iput v1, v0, Lj$/time/format/p;->e:I

    new-instance v1, Lj$/time/format/p;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lj$/time/format/p;-><init>(Lj$/time/format/p;Z)V

    iput-object v1, p0, Lj$/time/format/p;->a:Lj$/time/format/p;

    return-object p0
.end method

.method public p()Lj$/time/format/p;
    .locals 1

    sget-object v0, Lj$/time/format/l;->INSENSITIVE:Lj$/time/format/l;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public q()Lj$/time/format/p;
    .locals 1

    sget-object v0, Lj$/time/format/l;->SENSITIVE:Lj$/time/format/l;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public r()Lj$/time/format/p;
    .locals 1

    sget-object v0, Lj$/time/format/l;->LENIENT:Lj$/time/format/l;

    invoke-direct {p0, v0}, Lj$/time/format/p;->d(Lj$/time/format/g;)I

    return-object p0
.end method

.method public s()Lj$/time/format/a;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lj$/time/format/p;->t(Ljava/util/Locale;ILj$/time/chrono/b;)Lj$/time/format/a;

    move-result-object v0

    return-object v0
.end method

.method u(ILj$/time/chrono/b;)Lj$/time/format/a;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lj$/time/format/p;->t(Ljava/util/Locale;ILj$/time/chrono/b;)Lj$/time/format/a;

    move-result-object p1

    return-object p1
.end method
