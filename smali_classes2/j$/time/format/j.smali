.class Lj$/time/format/j;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/format/g;


# instance fields
.field final a:Lj$/time/temporal/j;

.field final b:I

.field final c:I

.field private final d:Lj$/time/format/t;

.field final e:I


# direct methods
.method constructor <init>(Lj$/time/temporal/j;IILj$/time/format/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/j;

    iput p2, p0, Lj$/time/format/j;->b:I

    iput p3, p0, Lj$/time/format/j;->c:I

    iput-object p4, p0, Lj$/time/format/j;->d:Lj$/time/format/t;

    const/4 p1, 0x0

    iput p1, p0, Lj$/time/format/j;->e:I

    return-void
.end method

.method protected constructor <init>(Lj$/time/temporal/j;IILj$/time/format/t;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/j;

    iput p2, p0, Lj$/time/format/j;->b:I

    iput p3, p0, Lj$/time/format/j;->c:I

    iput-object p4, p0, Lj$/time/format/j;->d:Lj$/time/format/t;

    iput p5, p0, Lj$/time/format/j;->e:I

    return-void
.end method

.method static synthetic a(Lj$/time/format/j;)Lj$/time/format/t;
    .locals 0

    iget-object p0, p0, Lj$/time/format/j;->d:Lj$/time/format/t;

    return-object p0
.end method


# virtual methods
.method b()Lj$/time/format/j;
    .locals 8

    iget v0, p0, Lj$/time/format/j;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/format/j;

    iget-object v3, p0, Lj$/time/format/j;->a:Lj$/time/temporal/j;

    iget v4, p0, Lj$/time/format/j;->b:I

    iget v5, p0, Lj$/time/format/j;->c:I

    iget-object v6, p0, Lj$/time/format/j;->d:Lj$/time/format/t;

    const/4 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj$/time/format/j;-><init>(Lj$/time/temporal/j;IILj$/time/format/t;I)V

    return-object v0
.end method

.method c(I)Lj$/time/format/j;
    .locals 7

    new-instance v6, Lj$/time/format/j;

    iget-object v1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/j;

    iget v2, p0, Lj$/time/format/j;->b:I

    iget v3, p0, Lj$/time/format/j;->c:I

    iget-object v4, p0, Lj$/time/format/j;->d:Lj$/time/format/t;

    iget v0, p0, Lj$/time/format/j;->e:I

    add-int v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/j;IILj$/time/format/t;I)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lj$/time/format/j;->b:I

    const-string v1, ")"

    const-string v2, "Value("

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget v3, p0, Lj$/time/format/j;->c:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lj$/time/format/j;->d:Lj$/time/format/t;

    sget-object v4, Lj$/time/format/t;->NORMAL:Lj$/time/format/t;

    if-ne v3, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/j;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v3, p0, Lj$/time/format/j;->c:I

    const-string v4, ","

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lj$/time/format/j;->d:Lj$/time/format/t;

    sget-object v3, Lj$/time/format/t;->NOT_NEGATIVE:Lj$/time/format/t;

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/j;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/format/j;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/j;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/format/j;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/format/j;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj$/time/format/j;->d:Lj$/time/format/t;

    goto :goto_0
.end method
