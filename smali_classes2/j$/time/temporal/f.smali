.class final enum Lj$/time/temporal/f;
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
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->a()Lj$/time/temporal/m;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekBasedYear"

    return-object v0
.end method
