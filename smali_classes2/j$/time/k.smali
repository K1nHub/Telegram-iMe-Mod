.class public final synthetic Lj$/time/k;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/x;


# static fields
.field public static final synthetic a:Lj$/time/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/time/k;

    invoke-direct {v0}, Lj$/time/k;-><init>()V

    sput-object v0, Lj$/time/k;->a:Lj$/time/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/temporal/k;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lj$/time/OffsetDateTime;->j(Lj$/time/temporal/k;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method
