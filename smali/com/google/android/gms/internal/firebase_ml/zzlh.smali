.class public abstract Lcom/google/android/gms/internal/firebase_ml/zzlh;
.super Lcom/google/android/gms/internal/firebase_ml/zzle;

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_ml/zzle<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzacq:Lcom/google/android/gms/internal/firebase_ml/zzlk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzlk<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 145
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlg;

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzli;->zzacr:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlg;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlh;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlh;->zzacq:Lcom/google/android/gms/internal/firebase_ml/zzlk;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzle;-><init>()V

    return-void
.end method

.method static zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzlh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_ml/zzlh<",
            "TE;>;"
        }
    .end annotation

    .line 36
    array-length v0, p0

    if-nez v0, :cond_0

    .line 38
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzli;->zzacr:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    return-object p0

    .line 40
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzli;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzli;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static zzb(Ljava/util/Collection;)Lcom/google/android/gms/internal/firebase_ml/zzlh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/firebase_ml/zzlh<",
            "TE;>;"
        }
    .end annotation

    .line 11
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzle;

    if-eqz v0, :cond_2

    .line 12
    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzle;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzle;->zzif()Lcom/google/android/gms/internal/firebase_ml/zzlh;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzle;->zzig()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzle;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 14
    array-length v0, p0

    if-nez v0, :cond_0

    .line 16
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzli;->zzacr:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    return-object p0

    .line 18
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzli;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzli;-><init>([Ljava/lang/Object;I)V

    return-object v1

    :cond_1
    return-object p0

    .line 20
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 22
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 24
    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const/16 v0, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "at index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_5

    .line 32
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzli;->zzacr:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    return-object p0

    .line 34
    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzli;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzli;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static zzih()Lcom/google/android/gms/internal/firebase_ml/zzlh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/firebase_ml/zzlh<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzli;->zzacr:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    return-object v0
.end method

.method public static zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzlh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/firebase_ml/zzlh<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    move p0, v2

    :goto_0
    if-gtz p0, :cond_1

    .line 5
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const/16 v0, 0x14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "at index 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase_ml/zzli;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzli;-><init>([Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlh;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 107
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 109
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 110
    check-cast p1, Ljava/util/List;

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 113
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 115
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzkq;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 118
    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 121
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 123
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_ml/zzkq;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 125
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 128
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 130
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    not-int v1, v1

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 47
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 54
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzle;->zzib()Lcom/google/android/gms/internal/firebase_ml/zzll;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 73
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 74
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlh;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlk;

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 137
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->zzd(II)I

    .line 138
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzlh;->zzacq:Lcom/google/android/gms/internal/firebase_ml/zzlk;

    return-object p1

    .line 140
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlg;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlh;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlh;->zze(II)Lcom/google/android/gms/internal/firebase_ml/zzlh;

    move-result-object p1

    return-object p1
.end method

.method zza([Ljava/lang/Object;I)I
    .locals 2

    .line 101
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 103
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public zze(II)Lcom/google/android/gms/internal/firebase_ml/zzlh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/firebase_ml/zzlh<",
            "TE;>;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->zza(III)V

    sub-int/2addr p2, p1

    .line 88
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 91
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzli;->zzacr:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    return-object p1

    .line 94
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzlj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlj;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzlh;II)V

    return-object v0
.end method

.method public final zzib()Lcom/google/android/gms/internal/firebase_ml/zzll;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_ml/zzll<",
            "TE;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzlh;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlk;

    return-object v0
.end method

.method public final zzif()Lcom/google/android/gms/internal/firebase_ml/zzlh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_ml/zzlh<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method
