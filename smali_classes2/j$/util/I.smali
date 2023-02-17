.class public abstract Lj$/util/I;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lj$/util/s;

.field private static final b:Lj$/util/s$b;

.field private static final c:Lj$/util/s$c;

.field private static final d:Lj$/util/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/D;

    invoke-direct {v0}, Lj$/util/D;-><init>()V

    sput-object v0, Lj$/util/I;->a:Lj$/util/s;

    new-instance v0, Lj$/util/B;

    invoke-direct {v0}, Lj$/util/B;-><init>()V

    sput-object v0, Lj$/util/I;->b:Lj$/util/s$b;

    new-instance v0, Lj$/util/C;

    invoke-direct {v0}, Lj$/util/C;-><init>()V

    sput-object v0, Lj$/util/I;->c:Lj$/util/s$c;

    new-instance v0, Lj$/util/A;

    invoke-direct {v0}, Lj$/util/A;-><init>()V

    sput-object v0, Lj$/util/I;->d:Lj$/util/s$a;

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

.method public static b()Lj$/util/s$a;
    .locals 1

    sget-object v0, Lj$/util/I;->d:Lj$/util/s$a;

    return-object v0
.end method

.method public static c()Lj$/util/s$b;
    .locals 1

    sget-object v0, Lj$/util/I;->b:Lj$/util/s$b;

    return-object v0
.end method

.method public static d()Lj$/util/s$c;
    .locals 1

    sget-object v0, Lj$/util/I;->c:Lj$/util/s$c;

    return-object v0
.end method

.method public static e()Lj$/util/s;
    .locals 1

    sget-object v0, Lj$/util/I;->a:Lj$/util/s;

    return-object v0
.end method

.method public static f(Lj$/util/s$a;)Lj$/util/m;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/x;

    invoke-direct {v0, p0}, Lj$/util/x;-><init>(Lj$/util/s$a;)V

    return-object v0
.end method

.method public static g(Lj$/util/s$b;)Lj$/util/o$a;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/v;

    invoke-direct {v0, p0}, Lj$/util/v;-><init>(Lj$/util/s$b;)V

    return-object v0
.end method

.method public static h(Lj$/util/s$c;)Lj$/util/q;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/w;

    invoke-direct {v0, p0}, Lj$/util/w;-><init>(Lj$/util/s$c;)V

    return-object v0
.end method

.method public static i(Lj$/util/s;)Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/u;

    invoke-direct {v0, p0}, Lj$/util/u;-><init>(Lj$/util/s;)V

    return-object v0
.end method

.method public static j([DIII)Lj$/util/s$a;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lj$/util/I;->a(III)V

    new-instance v0, Lj$/util/z;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/z;-><init>([DIII)V

    return-object v0
.end method

.method public static k([IIII)Lj$/util/s$b;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lj$/util/I;->a(III)V

    new-instance v0, Lj$/util/F;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/F;-><init>([IIII)V

    return-object v0
.end method

.method public static l([JIII)Lj$/util/s$c;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lj$/util/I;->a(III)V

    new-instance v0, Lj$/util/H;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/H;-><init>([JIII)V

    return-object v0
.end method

.method public static m([Ljava/lang/Object;III)Lj$/util/s;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lj$/util/I;->a(III)V

    new-instance v0, Lj$/util/y;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/y;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method
