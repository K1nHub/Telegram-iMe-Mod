.class public abstract Lcom/google/android/gms/internal/wearable/zzbv;
.super Lcom/google/android/gms/internal/wearable/zzag;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/wearable/zzbv<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/wearable/zzbs<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/wearable/zzag<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/wearable/zzef;

.field protected zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/wearable/zzbv;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzag;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzef;->zzc()Lcom/google/android/gms/internal/wearable/zzef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbv;->zzc:Lcom/google/android/gms/internal/wearable/zzef;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzbv;->zzd:I

    return-void
.end method

.method static zzO(Ljava/lang/Class;)Lcom/google/android/gms/internal/wearable/zzbv;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzbv;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wearable/zzbv;

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wearable/zzbv;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/wearable/zzeo;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wearable/zzbv;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/google/android/gms/internal/wearable/zzbv;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected static zzP(Lcom/google/android/gms/internal/wearable/zzbv;[B)Lcom/google/android/gms/internal/wearable/zzbv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/wearable/zzcf;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzbj;->zza()Lcom/google/android/gms/internal/wearable/zzbj;

    move-result-object v1

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzb(Lcom/google/android/gms/internal/wearable/zzbv;[BIILcom/google/android/gms/internal/wearable/zzbj;)Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/wearable/zzbv;->zza(Lcom/google/android/gms/internal/wearable/zzbv;)Lcom/google/android/gms/internal/wearable/zzbv;

    return-object p0
.end method

.method protected static zzQ(Lcom/google/android/gms/internal/wearable/zzbv;[BLcom/google/android/gms/internal/wearable/zzbj;)Lcom/google/android/gms/internal/wearable/zzbv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/wearable/zzcf;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/wearable/zzbv;->zzb(Lcom/google/android/gms/internal/wearable/zzbv;[BIILcom/google/android/gms/internal/wearable/zzbj;)Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/wearable/zzbv;->zza(Lcom/google/android/gms/internal/wearable/zzbv;)Lcom/google/android/gms/internal/wearable/zzbv;

    return-object p0
.end method

.method protected static zzR()Lcom/google/android/gms/internal/wearable/zzca;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzbq;->zze()Lcom/google/android/gms/internal/wearable/zzbq;

    move-result-object v0

    return-object v0
.end method

.method protected static zzS()Lcom/google/android/gms/internal/wearable/zzcb;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzcr;->zzf()Lcom/google/android/gms/internal/wearable/zzcr;

    move-result-object v0

    return-object v0
.end method

.method protected static zzT()Lcom/google/android/gms/internal/wearable/zzcc;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzdl;->zze()Lcom/google/android/gms/internal/wearable/zzdl;

    move-result-object v0

    return-object v0
.end method

.method protected static zzU(Lcom/google/android/gms/internal/wearable/zzcc;)Lcom/google/android/gms/internal/wearable/zzcc;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/wearable/zzcc;->zzd(I)Lcom/google/android/gms/internal/wearable/zzcc;

    move-result-object p0

    return-object p0
.end method

.method static varargs zzX(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzY(Lcom/google/android/gms/internal/wearable/zzdc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzdm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/wearable/zzdm;-><init>(Lcom/google/android/gms/internal/wearable/zzdc;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static zzZ(Ljava/lang/Class;Lcom/google/android/gms/internal/wearable/zzbv;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzbv;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/wearable/zzbv;)Lcom/google/android/gms/internal/wearable/zzbv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/wearable/zzcf;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzed;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/wearable/zzed;-><init>(Lcom/google/android/gms/internal/wearable/zzdc;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/wearable/zzed;->zza()Lcom/google/android/gms/internal/wearable/zzcf;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzcf;->zzf(Lcom/google/android/gms/internal/wearable/zzdc;)Lcom/google/android/gms/internal/wearable/zzcf;

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/wearable/zzbv;[BIILcom/google/android/gms/internal/wearable/zzbj;)Lcom/google/android/gms/internal/wearable/zzbv;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/wearable/zzcf;
        }
    .end annotation

    const/4 p2, 0x4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzdk;->zza()Lcom/google/android/gms/internal/wearable/zzdk;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/wearable/zzdk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/wearable/zzdn;

    move-result-object p2

    new-instance v5, Lcom/google/android/gms/internal/wearable/zzaj;

    .line 4
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/wearable/zzaj;-><init>(Lcom/google/android/gms/internal/wearable/zzbj;)V

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/wearable/zzdn;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/wearable/zzaj;)V

    .line 5
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/wearable/zzdn;->zzf(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/wearable/zzag;->zza:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 7
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/wearable/zzcf; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/wearable/zzed; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzcf;->zzg()Lcom/google/android/gms/internal/wearable/zzcf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/wearable/zzcf;->zzf(Lcom/google/android/gms/internal/wearable/zzdc;)Lcom/google/android/gms/internal/wearable/zzcf;

    throw p1

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/wearable/zzcf;

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/wearable/zzcf;

    throw p0

    .line 12
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/wearable/zzcf;

    .line 11
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/wearable/zzcf;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/wearable/zzcf;->zzf(Lcom/google/android/gms/internal/wearable/zzdc;)Lcom/google/android/gms/internal/wearable/zzcf;

    throw p2

    :catch_2
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzed;->zza()Lcom/google/android/gms/internal/wearable/zzcf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/wearable/zzcf;->zzf(Lcom/google/android/gms/internal/wearable/zzdc;)Lcom/google/android/gms/internal/wearable/zzcf;

    throw p1

    :catch_3
    move-exception p1

    .line 13
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/wearable/zzcf;->zzf(Lcom/google/android/gms/internal/wearable/zzdc;)Lcom/google/android/gms/internal/wearable/zzcf;

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzdk;->zza()Lcom/google/android/gms/internal/wearable/zzdk;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzdk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/wearable/zzdn;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/wearable/zzbv;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/wearable/zzdn;->zzj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzag;->zza:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzdk;->zza()Lcom/google/android/gms/internal/wearable/zzdk;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzdk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/wearable/zzdn;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/wearable/zzdn;->zzb(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzag;->zza:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/wearable/zzde;->zza(Lcom/google/android/gms/internal/wearable/zzdc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzbv;->zzd:I

    return v0
.end method

.method final zzK(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzbv;->zzd:I

    return-void
.end method

.method public final zzM()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzbv;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzdk;->zza()Lcom/google/android/gms/internal/wearable/zzdk;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzdk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/wearable/zzdn;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/wearable/zzdn;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzbv;->zzd:I

    :cond_0
    return v0
.end method

.method protected final zzN()Lcom/google/android/gms/internal/wearable/zzbs;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzbs;

    return-object v0
.end method

.method public final synthetic zzV()Lcom/google/android/gms/internal/wearable/zzdb;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzbs;

    return-object v0
.end method

.method public final synthetic zzW()Lcom/google/android/gms/internal/wearable/zzdb;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzbs;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzs(Lcom/google/android/gms/internal/wearable/zzbv;)Lcom/google/android/gms/internal/wearable/zzbs;

    return-object v0
.end method

.method public final zzaa(Lcom/google/android/gms/internal/wearable/zzbe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzdk;->zza()Lcom/google/android/gms/internal/wearable/zzdk;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzdk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/wearable/zzdn;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/wearable/zzbf;->zza(Lcom/google/android/gms/internal/wearable/zzbe;)Lcom/google/android/gms/internal/wearable/zzbf;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/wearable/zzdn;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/wearable/zzew;)V

    return-void
.end method

.method public final zzab()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzdk;->zza()Lcom/google/android/gms/internal/wearable/zzdk;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/wearable/zzdk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/wearable/zzdn;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/wearable/zzdn;->zzk(Ljava/lang/Object;)Z

    move-result v2

    if-eq v0, v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    const/4 v3, 0x2

    .line 4
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public final synthetic zzac()Lcom/google/android/gms/internal/wearable/zzdc;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzbv;

    return-object v0
.end method
