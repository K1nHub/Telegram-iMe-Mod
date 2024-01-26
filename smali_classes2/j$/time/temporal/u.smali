.class public final synthetic Lj$/time/temporal/u;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/x;


# static fields
.field public static final synthetic a:Lj$/time/temporal/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/time/temporal/u;

    invoke-direct {v0}, Lj$/time/temporal/u;-><init>()V

    sput-object v0, Lj$/time/temporal/u;->a:Lj$/time/temporal/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/temporal/k;)Ljava/lang/Object;
    .locals 2

    sget v0, Lj$/time/temporal/w;->a:I

    .line 1
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->i(Lj$/time/temporal/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/d;->s(J)Lj$/time/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
