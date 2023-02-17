.class final enum Lj$/time/temporal/c;
.super Lj$/time/temporal/g;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj$/time/temporal/g;-><init>(Ljava/lang/String;ILj$/time/temporal/b;)V

    return-void
.end method


# virtual methods
.method public a()Lj$/time/temporal/m;
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/m;->d(JJJ)Lj$/time/temporal/m;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DayOfQuarter"

    return-object v0
.end method
