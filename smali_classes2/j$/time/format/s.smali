.class public final Lj$/time/format/s;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic f:I


# instance fields
.field private a:Lj$/time/format/s;

.field private final b:Lj$/time/format/s;

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

    sget-object v2, Lj$/time/temporal/i;->a:Lj$/time/temporal/o;

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

    iput-object p0, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/s;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lj$/time/format/s;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/time/format/s;->b:Lj$/time/format/s;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/time/format/s;->d:Z

    return-void
.end method

.method private constructor <init>(Lj$/time/format/s;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/s;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lj$/time/format/s;->e:I

    iput-object p1, p0, Lj$/time/format/s;->b:Lj$/time/format/s;

    iput-boolean p2, p0, Lj$/time/format/s;->d:Z

    return-void
.end method

.method private d(Lj$/time/format/h;)I
    .locals 1

    const-string v0, "pp"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lj$/time/format/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    const/4 v0, -0x1

    iput v0, p1, Lj$/time/format/s;->e:I

    iget-object p1, p1, Lj$/time/format/s;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method private j(Lj$/time/format/k;)Lj$/time/format/s;
    .locals 4

    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    iget v1, v0, Lj$/time/format/s;->e:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lj$/time/format/s;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/k;

    iget v2, p1, Lj$/time/format/k;->b:I

    iget v3, p1, Lj$/time/format/k;->c:I

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lj$/time/format/k;->c(Lj$/time/format/k;)Lj$/time/format/A;

    move-result-object v2

    sget-object v3, Lj$/time/format/A;->NOT_NEGATIVE:Lj$/time/format/A;

    if-ne v2, v3, :cond_0

    iget v2, p1, Lj$/time/format/k;->c:I

    invoke-virtual {v0, v2}, Lj$/time/format/k;->f(I)Lj$/time/format/k;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/format/k;->e()Lj$/time/format/k;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    iget-object p1, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    iput v1, p1, Lj$/time/format/s;->e:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/time/format/k;->e()Lj$/time/format/k;

    move-result-object v0

    iget-object v2, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    invoke-direct {p0, p1}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    move-result p1

    iput p1, v2, Lj$/time/format/s;->e:I

    :goto_0
    iget-object p1, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    iget-object p1, p1, Lj$/time/format/s;->c:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    move-result p1

    iput p1, v0, Lj$/time/format/s;->e:I

    :goto_1
    return-object p0
.end method

.method private u(Ljava/util/Locale;Lj$/time/format/z;Lj$/time/chrono/g;)Lj$/time/format/a;
    .locals 9

    const-string v0, "locale"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :goto_0
    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    iget-object v0, v0, Lj$/time/format/s;->b:Lj$/time/format/s;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/time/format/s;->n()Lj$/time/format/s;

    goto :goto_0

    :cond_0
    new-instance v2, Lj$/time/format/g;

    iget-object v0, p0, Lj$/time/format/s;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lj$/time/format/g;-><init>(Ljava/util/List;Z)V

    new-instance v0, Lj$/time/format/a;

    sget-object v4, Lj$/time/format/x;->a:Lj$/time/format/x;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lj$/time/format/a;-><init>(Lj$/time/format/g;Ljava/util/Locale;Lj$/time/format/x;Lj$/time/format/z;Ljava/util/Set;Lj$/time/chrono/g;Lj$/time/n;)V

    return-object v0
.end method


# virtual methods
.method public a(Lj$/time/format/a;)Lj$/time/format/s;
    .locals 1

    const-string v0, "formatter"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lj$/time/format/a;->h(Z)Lj$/time/format/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public b(Lj$/time/temporal/o;IIZ)Lj$/time/format/s;
    .locals 1

    new-instance v0, Lj$/time/format/i;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IIZ)V

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public c()Lj$/time/format/s;
    .locals 2

    new-instance v0, Lj$/time/format/j;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lj$/time/format/j;-><init>(I)V

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public e(C)Lj$/time/format/s;
    .locals 1

    new-instance v0, Lj$/time/format/f;

    invoke-direct {v0, p1}, Lj$/time/format/f;-><init>(C)V

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lj$/time/format/s;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lj$/time/format/f;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lj$/time/format/f;-><init>(C)V

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/format/p;

    invoke-direct {v0, p1}, Lj$/time/format/p;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    :cond_1
    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/s;
    .locals 1

    new-instance v0, Lj$/time/format/l;

    invoke-direct {v0, p1, p2}, Lj$/time/format/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public h()Lj$/time/format/s;
    .locals 1

    sget-object v0, Lj$/time/format/l;->d:Lj$/time/format/l;

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public i(Lj$/time/temporal/o;Ljava/util/Map;)Lj$/time/format/s;
    .locals 2

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    sget-object p2, Lj$/time/format/B;->FULL:Lj$/time/format/B;

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lj$/time/format/w;

    invoke-direct {v1, v0}, Lj$/time/format/w;-><init>(Ljava/util/Map;)V

    new-instance v0, Lj$/time/format/c;

    invoke-direct {v0, p0, v1}, Lj$/time/format/c;-><init>(Lj$/time/format/s;Lj$/time/format/w;)V

    new-instance v1, Lj$/time/format/q;

    invoke-direct {v1, p1, p2, v0}, Lj$/time/format/q;-><init>(Lj$/time/temporal/o;Lj$/time/format/B;Lj$/time/format/c;)V

    invoke-direct {p0, v1}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public k(Lj$/time/temporal/o;I)Lj$/time/format/s;
    .locals 2

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    .line 2
    new-instance v0, Lj$/time/format/k;

    sget-object v1, Lj$/time/format/A;->NOT_NEGATIVE:Lj$/time/format/A;

    invoke-direct {v0, p1, p2, p2, v1}, Lj$/time/format/k;-><init>(Lj$/time/temporal/o;IILj$/time/format/A;)V

    invoke-direct {p0, v0}, Lj$/time/format/s;->j(Lj$/time/format/k;)Lj$/time/format/s;

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

.method public l(Lj$/time/temporal/o;IILj$/time/format/A;)Lj$/time/format/s;
    .locals 2

    if-ne p2, p3, :cond_0

    sget-object v0, Lj$/time/format/A;->NOT_NEGATIVE:Lj$/time/format/A;

    if-ne p4, v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lj$/time/format/s;->k(Lj$/time/temporal/o;I)Lj$/time/format/s;

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
    new-instance v0, Lj$/time/format/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/k;-><init>(Lj$/time/temporal/o;IILj$/time/format/A;)V

    invoke-direct {p0, v0}, Lj$/time/format/s;->j(Lj$/time/format/k;)Lj$/time/format/s;

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

.method public m()Lj$/time/format/s;
    .locals 3

    new-instance v0, Lj$/time/format/r;

    sget-object v1, Lj$/time/format/b;->a:Lj$/time/format/b;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Lj$/time/format/r;-><init>(Lj$/time/temporal/x;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public n()Lj$/time/format/s;
    .locals 3

    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    iget-object v1, v0, Lj$/time/format/s;->b:Lj$/time/format/s;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lj$/time/format/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lj$/time/format/g;

    iget-object v1, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    iget-object v2, v1, Lj$/time/format/s;->c:Ljava/util/List;

    iget-boolean v1, v1, Lj$/time/format/s;->d:Z

    invoke-direct {v0, v2, v1}, Lj$/time/format/g;-><init>(Ljava/util/List;Z)V

    iget-object v1, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    iget-object v1, v1, Lj$/time/format/s;->b:Lj$/time/format/s;

    iput-object v1, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    iget-object v0, v0, Lj$/time/format/s;->b:Lj$/time/format/s;

    iput-object v0, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Lj$/time/format/s;
    .locals 3

    iget-object v0, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    const/4 v1, -0x1

    iput v1, v0, Lj$/time/format/s;->e:I

    new-instance v1, Lj$/time/format/s;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lj$/time/format/s;-><init>(Lj$/time/format/s;Z)V

    iput-object v1, p0, Lj$/time/format/s;->a:Lj$/time/format/s;

    return-object p0
.end method

.method public p()Lj$/time/format/s;
    .locals 1

    sget-object v0, Lj$/time/format/o;->INSENSITIVE:Lj$/time/format/o;

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public q()Lj$/time/format/s;
    .locals 1

    sget-object v0, Lj$/time/format/o;->SENSITIVE:Lj$/time/format/o;

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public r()Lj$/time/format/s;
    .locals 1

    sget-object v0, Lj$/time/format/o;->LENIENT:Lj$/time/format/o;

    invoke-direct {p0, v0}, Lj$/time/format/s;->d(Lj$/time/format/h;)I

    return-object p0
.end method

.method public s()Lj$/time/format/a;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1
    sget-object v1, Lj$/time/format/z;->SMART:Lj$/time/format/z;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lj$/time/format/s;->u(Ljava/util/Locale;Lj$/time/format/z;Lj$/time/chrono/g;)Lj$/time/format/a;

    move-result-object v0

    return-object v0
.end method

.method t(Lj$/time/format/z;Lj$/time/chrono/g;)Lj$/time/format/a;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lj$/time/format/s;->u(Ljava/util/Locale;Lj$/time/format/z;Lj$/time/chrono/g;)Lj$/time/format/a;

    move-result-object p1

    return-object p1
.end method
