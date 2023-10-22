.class public abstract Lj$/util/F;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lj$/util/Spliterator;

.field private static final b:Lj$/util/Spliterator$b;

.field private static final c:Lj$/util/Spliterator$c;

.field private static final d:Lj$/util/Spliterator$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/A;

    invoke-direct {v0}, Lj$/util/A;-><init>()V

    sput-object v0, Lj$/util/F;->a:Lj$/util/Spliterator;

    new-instance v0, Lj$/util/y;

    invoke-direct {v0}, Lj$/util/y;-><init>()V

    sput-object v0, Lj$/util/F;->b:Lj$/util/Spliterator$b;

    new-instance v0, Lj$/util/z;

    invoke-direct {v0}, Lj$/util/z;-><init>()V

    sput-object v0, Lj$/util/F;->c:Lj$/util/Spliterator$c;

    new-instance v0, Lj$/util/x;

    invoke-direct {v0}, Lj$/util/x;-><init>()V

    sput-object v0, Lj$/util/F;->d:Lj$/util/Spliterator$a;

    return-void
.end method

.method private static a(III)V
    .locals 2

    if-gt p1, p2, :cond_2

    if-ltz p1, :cond_1

    if-gt p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > fence("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Lj$/util/Spliterator$a;
    .locals 1

    sget-object v0, Lj$/util/F;->d:Lj$/util/Spliterator$a;

    return-object v0
.end method

.method public static c()Lj$/util/Spliterator$b;
    .locals 1

    sget-object v0, Lj$/util/F;->b:Lj$/util/Spliterator$b;

    return-object v0
.end method

.method public static d()Lj$/util/Spliterator$c;
    .locals 1

    sget-object v0, Lj$/util/F;->c:Lj$/util/Spliterator$c;

    return-object v0
.end method

.method public static e()Lj$/util/Spliterator;
    .locals 1

    sget-object v0, Lj$/util/F;->a:Lj$/util/Spliterator;

    return-object v0
.end method

.method public static f(Lj$/util/Spliterator$a;)Lj$/util/l;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/u;

    invoke-direct {v0, p0}, Lj$/util/u;-><init>(Lj$/util/Spliterator$a;)V

    return-object v0
.end method

.method public static g(Lj$/util/Spliterator$b;)Lj$/util/n$a;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/s;

    invoke-direct {v0, p0}, Lj$/util/s;-><init>(Lj$/util/Spliterator$b;)V

    return-object v0
.end method

.method public static h(Lj$/util/Spliterator$c;)Lj$/util/p;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/t;

    invoke-direct {v0, p0}, Lj$/util/t;-><init>(Lj$/util/Spliterator$c;)V

    return-object v0
.end method

.method public static i(Lj$/util/Spliterator;)Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/r;

    invoke-direct {v0, p0}, Lj$/util/r;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public static j([DIII)Lj$/util/Spliterator$a;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lj$/util/F;->a(III)V

    new-instance v0, Lj$/util/w;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/w;-><init>([DIII)V

    return-object v0
.end method

.method public static k([IIII)Lj$/util/Spliterator$b;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lj$/util/F;->a(III)V

    new-instance v0, Lj$/util/C;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/C;-><init>([IIII)V

    return-object v0
.end method

.method public static l([JIII)Lj$/util/Spliterator$c;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lj$/util/F;->a(III)V

    new-instance v0, Lj$/util/E;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/E;-><init>([JIII)V

    return-object v0
.end method

.method public static m([Ljava/lang/Object;III)Lj$/util/Spliterator;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lj$/util/F;->a(III)V

    new-instance v0, Lj$/util/v;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/v;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method
