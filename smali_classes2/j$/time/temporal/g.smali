.class abstract enum Lj$/time/temporal/g;
.super Ljava/lang/Enum;

# interfaces
.implements Lj$/time/temporal/j;


# static fields
.field public static final enum DAY_OF_QUARTER:Lj$/time/temporal/g;

.field public static final enum QUARTER_OF_YEAR:Lj$/time/temporal/g;

.field public static final enum WEEK_BASED_YEAR:Lj$/time/temporal/g;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/g;

.field private static final synthetic a:[Lj$/time/temporal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lj$/time/temporal/c;

    const-string v1, "DAY_OF_QUARTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/temporal/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/temporal/g;->DAY_OF_QUARTER:Lj$/time/temporal/g;

    new-instance v1, Lj$/time/temporal/d;

    const-string v3, "QUARTER_OF_YEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj$/time/temporal/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj$/time/temporal/g;->QUARTER_OF_YEAR:Lj$/time/temporal/g;

    new-instance v3, Lj$/time/temporal/e;

    const-string v5, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj$/time/temporal/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/time/temporal/g;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/g;

    new-instance v5, Lj$/time/temporal/f;

    const-string v7, "WEEK_BASED_YEAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lj$/time/temporal/f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/time/temporal/g;->WEEK_BASED_YEAR:Lj$/time/temporal/g;

    const/4 v7, 0x4

    new-array v7, v7, [Lj$/time/temporal/g;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lj$/time/temporal/g;->a:[Lj$/time/temporal/g;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILj$/time/temporal/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/g;
    .locals 1

    const-class v0, Lj$/time/temporal/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/g;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/g;
    .locals 1

    sget-object v0, Lj$/time/temporal/g;->a:[Lj$/time/temporal/g;

    invoke-virtual {v0}, [Lj$/time/temporal/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/g;

    return-object v0
.end method
