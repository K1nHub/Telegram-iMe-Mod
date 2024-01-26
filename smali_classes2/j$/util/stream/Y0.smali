.class public final synthetic Lj$/util/stream/Y0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/s;


# static fields
.field public static final synthetic a:Lj$/util/stream/Y0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/Y0;

    invoke-direct {v0}, Lj$/util/stream/Y0;-><init>()V

    sput-object v0, Lj$/util/stream/Y0;->a:Lj$/util/stream/Y0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj$/util/function/s;)Lj$/util/function/s;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/function/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/r;-><init>(Lj$/util/function/s;Lj$/util/function/s;I)V

    return-object v0
.end method

.method public final applyAsLong(J)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public b(Lj$/util/function/s;)Lj$/util/function/s;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/util/function/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/r;-><init>(Lj$/util/function/s;Lj$/util/function/s;I)V

    return-object v0
.end method
