.class public final Lcom/google/android/gms/internal/firebase_ml/zzhh;
.super Ljava/lang/Object;


# static fields
.field private static final zzyd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzhh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzye:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_ml/zzhh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzyf:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzyg:Z

.field private final zzyh:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase_ml/zzhp;",
            ">;"
        }
    .end annotation
.end field

.field final zzyi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyd:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzye:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyh:Ljava/util/IdentityHashMap;

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyf:Ljava/lang/Class;

    .line 22
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyg:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "cannot ignore case on an enum: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->checkArgument(ZLjava/lang/Object;)V

    .line 27
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzhg;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/firebase_ml/zzhg;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzhh;)V

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 29
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zza(Ljava/lang/reflect/Field;)Lcom/google/android/gms/internal/firebase_ml/zzhp;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_2

    .line 33
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 34
    :cond_2
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyh:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase_ml/zzhp;

    if-nez v9, :cond_3

    move v10, v1

    goto :goto_3

    :cond_3
    move v10, v0

    :goto_3
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    if-eqz p2, :cond_4

    const-string v12, "case-insensitive "

    goto :goto_4

    :cond_4
    const-string v12, ""

    :goto_4
    aput-object v12, v11, v0

    aput-object v8, v11, v1

    const/4 v12, 0x2

    aput-object v6, v11, v12

    const/4 v6, 0x3

    if-nez v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    .line 37
    :cond_5
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase_ml/zzhp;->zzgy()Ljava/lang/reflect/Field;

    move-result-object v9

    :goto_5
    aput-object v9, v11, v6

    if-eqz v10, :cond_6

    .line 42
    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyh:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v8, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 41
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "two fields have the same %sname <%s>: %s and %s"

    invoke-static {p2, v11}, Lcom/google/android/gms/internal/firebase_ml/zzld;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 45
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 47
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zza(Ljava/lang/Class;Z)Lcom/google/android/gms/internal/firebase_ml/zzhh;

    move-result-object p1

    .line 48
    iget-object p2, p1, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyi:Ljava/util/List;

    invoke-virtual {v2, p2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyh:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyh:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyh:Ljava/util/IdentityHashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase_ml/zzhp;

    invoke-virtual {v1, v0, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 54
    :cond_a
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_8

    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyi:Ljava/util/List;

    return-void
.end method

.method public static zza(Ljava/lang/Class;Z)Lcom/google/android/gms/internal/firebase_ml/zzhh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/google/android/gms/internal/firebase_ml/zzhh;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzye:Ljava/util/Map;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyd:Ljava/util/Map;

    .line 5
    :goto_0
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zzhh;

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzhh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzhh;-><init>(Ljava/lang/Class;Z)V

    .line 9
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_ml/zzhh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/android/gms/internal/firebase_ml/zzhh;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zza(Ljava/lang/Class;Z)Lcom/google/android/gms/internal/firebase_ml/zzhh;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isEnum()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyf:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public final zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzhp;
    .locals 1

    if-eqz p1, :cond_1

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyg:Z

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyh:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzhp;

    return-object p1
.end method

.method public final zzgu()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyg:Z

    return v0
.end method

.method public final zzgv()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/firebase_ml/zzhp;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzhh;->zzyh:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
