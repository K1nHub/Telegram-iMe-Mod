.class public final Lcom/google/android/gms/internal/mlkit_common/zzii;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_common/zzii;


# instance fields
.field private zzb:I

.field private zzc:[I

.field private zzd:[Ljava/lang/Object;

.field private zze:I

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 154
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzii;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_common/zzii;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zza:Lcom/google/android/gms/internal/mlkit_common/zzii;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 8
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/mlkit_common/zzii;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zze:I

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    .line 15
    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzf:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_common/zzii;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zza:Lcom/google/android/gms/internal/mlkit_common/zzii;

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/mlkit_common/zzii;Lcom/google/android/gms/internal/mlkit_common/zzii;)Lcom/google/android/gms/internal/mlkit_common/zzii;
    .locals 6

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 6
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/zzii;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzii;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzjd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 51
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzd(II)V

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzgb;->zza()Lcom/google/android/gms/internal/mlkit_common/zzga;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 57
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza()I

    move-result p0

    sget v1, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zza:I

    if-ne p0, v1, :cond_2

    .line 58
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza(I)V

    .line 59
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzii;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzjd;)V

    .line 60
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzb(I)V

    return-void

    .line 61
    :cond_2
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzb(I)V

    .line 62
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzii;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzjd;)V

    .line 63
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza(I)V

    return-void

    .line 55
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzep;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza(ILcom/google/android/gms/internal/mlkit_common/zzep;)V

    return-void

    .line 53
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzd(IJ)V

    return-void

    .line 49
    :cond_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza(IJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 111
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/mlkit_common/zzii;

    if-nez v2, :cond_2

    return v1

    .line 113
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzii;

    .line 114
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    if-ne v2, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    .line 117
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_1
    if-eqz v2, :cond_8

    .line 121
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_6

    .line 124
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move p1, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    return v0

    :cond_8
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 131
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    .line 132
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    .line 135
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    :goto_1
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    .line 142
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method

.method final zza(Lcom/google/android/gms/internal/mlkit_common/zzjd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zzb:I

    if-ne v0, v1, :cond_1

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    if-ge v0, v1, :cond_2

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final zza(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    .line 147
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 151
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzhc;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzf:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_common/zzjd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zza:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 36
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    if-ge v0, v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzii;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzjd;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 39
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzii;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzjd;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final zzc()I
    .locals 4

    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zze:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 70
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    if-ge v0, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    .line 74
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_common/zzep;

    .line 75
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zzd(ILcom/google/android/gms/internal/mlkit_common/zzep;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zze:I

    return v1
.end method

.method public final zzd()I
    .locals 6

    .line 79
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zze:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzb:I

    if-ge v0, v2, :cond_6

    .line 84
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzc:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 93
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zzi(II)I

    move-result v2

    goto :goto_1

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzgb;->zza()Lcom/google/android/gms/internal/mlkit_common/zzga;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 100
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zze(I)I

    move-result v2

    shl-int/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_common/zzii;

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_common/zzep;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zzc(ILcom/google/android/gms/internal/mlkit_common/zzep;)I

    move-result v2

    goto :goto_1

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zzg(IJ)I

    move-result v2

    goto :goto_1

    .line 91
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zze(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_6
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zze:I

    return v1
.end method
