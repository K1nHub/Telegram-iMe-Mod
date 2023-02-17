.class final Lj$/time/format/f;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/format/g;


# instance fields
.field private final a:[Lj$/time/format/g;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lj$/time/format/g;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lj$/time/format/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/f;->a:[Lj$/time/format/g;

    iput-boolean p2, p0, Lj$/time/format/f;->b:Z

    return-void
.end method

.method constructor <init>([Lj$/time/format/g;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/f;->a:[Lj$/time/format/g;

    iput-boolean p2, p0, Lj$/time/format/f;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lj$/time/format/f;
    .locals 2

    iget-boolean v0, p0, Lj$/time/format/f;->b:Z

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/format/f;

    iget-object v1, p0, Lj$/time/format/f;->a:[Lj$/time/format/g;

    invoke-direct {v0, v1, p1}, Lj$/time/format/f;-><init>([Lj$/time/format/g;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/time/format/f;->a:[Lj$/time/format/g;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lj$/time/format/f;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "["

    goto :goto_0

    :cond_0
    const-string v1, "("

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/format/f;->a:[Lj$/time/format/g;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lj$/time/format/f;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "]"

    goto :goto_2

    :cond_2
    const-string v1, ")"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
