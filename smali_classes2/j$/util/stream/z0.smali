.class public final synthetic Lj$/util/stream/z0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/j;


# static fields
.field public static final synthetic a:Lj$/util/stream/z0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/z0;

    invoke-direct {v0}, Lj$/util/stream/z0;-><init>()V

    sput-object v0, Lj$/util/stream/z0;->a:Lj$/util/stream/z0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(II)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
