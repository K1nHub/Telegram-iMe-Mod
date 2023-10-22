.class public abstract Lj$/time/m;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/j;
.implements Lj$/time/temporal/l;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lj$/time/format/s;

    invoke-direct {v0}, Lj$/time/format/s;-><init>()V

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    sget-object v2, Lj$/time/format/A;->EXCEEDS_PAD:Lj$/time/format/A;

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/s;->l(Lj$/time/temporal/o;IILj$/time/format/A;)Lj$/time/format/s;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/format/s;->s()Lj$/time/format/a;

    return-void
.end method
