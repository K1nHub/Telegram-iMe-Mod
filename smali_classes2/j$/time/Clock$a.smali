.class final Lj$/time/Clock$a;
.super Lj$/time/Clock;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lj$/time/n;


# direct methods
.method constructor <init>(Lj$/time/n;)V
    .locals 0

    invoke-direct {p0}, Lj$/time/Clock;-><init>()V

    iput-object p1, p0, Lj$/time/Clock$a;->a:Lj$/time/n;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/time/Clock$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/Clock$a;->a:Lj$/time/n;

    check-cast p1, Lj$/time/Clock$a;

    iget-object p1, p1, Lj$/time/Clock$a;->a:Lj$/time/n;

    invoke-virtual {v0, p1}, Lj$/time/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/time/Clock$a;->a:Lj$/time/n;

    invoke-virtual {v0}, Lj$/time/n;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public instant()Lj$/time/Instant;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lj$/time/Instant;->l(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SystemClock["

    invoke-static {v0}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/Clock$a;->a:Lj$/time/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
