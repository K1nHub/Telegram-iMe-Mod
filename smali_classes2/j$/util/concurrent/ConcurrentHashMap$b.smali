.class abstract Lj$/util/concurrent/ConcurrentHashMap$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field final a:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap$b;->a:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$b;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    if-eq p1, p0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap$b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$b;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$b;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$b;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    const-string v3, "Required array size too large"

    if-gtz v2, :cond_6

    long-to-int v0, v0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v0, :cond_3

    const v6, 0x7ffffff7

    if-ge v0, v6, :cond_2

    const v7, 0x3ffffffb    # 1.9999994f

    if-lt v0, v7, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v0

    :goto_1
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v6, v2, 0x1

    aput-object v5, v1, v2

    move v2, v6

    goto :goto_0

    :cond_4
    if-ne v2, v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_3
    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$b;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    const-string v3, "Required array size too large"

    if-gtz v2, :cond_8

    long-to-int v0, v0

    .line 4
    array-length v1, p1

    if-lt v1, v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v1, :cond_4

    const v6, 0x7ffffff7

    if-ge v1, v6, :cond_3

    const v7, 0x3ffffffb    # 1.9999994f

    if-lt v1, v7, :cond_2

    goto :goto_2

    :cond_2
    ushr-int/lit8 v6, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v1

    :goto_2
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move v1, v6

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v6, v2, 0x1

    aput-object v5, v0, v2

    move v2, v6

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    if-ge v2, v1, :cond_6

    const/4 p1, 0x0

    aput-object p1, v0, v2

    return-object v0

    :cond_6
    if-ne v2, v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_8
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const-string v2, "(this Collection)"

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
