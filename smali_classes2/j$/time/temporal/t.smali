.class public final synthetic Lj$/time/temporal/t;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/x;


# static fields
.field public static final synthetic a:Lj$/time/temporal/t;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/time/temporal/t;

    invoke-direct {v0}, Lj$/time/temporal/t;-><init>()V

    sput-object v0, Lj$/time/temporal/t;->a:Lj$/time/temporal/t;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/temporal/k;)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/time/temporal/w;->a:I

    .line 1
    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/temporal/p;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->g(Lj$/time/temporal/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/n;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/time/temporal/s;->a:Lj$/time/temporal/s;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->g(Lj$/time/temporal/x;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lj$/time/n;

    :goto_0
    return-object v0
.end method
