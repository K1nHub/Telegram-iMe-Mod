.class public final synthetic Lj$/util/stream/x1;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/p;


# static fields
.field public static final synthetic a:Lj$/util/stream/x1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/x1;

    invoke-direct {v0}, Lj$/util/stream/x1;-><init>()V

    sput-object v0, Lj$/util/stream/x1;->a:Lj$/util/stream/x1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 0

    return-void
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
