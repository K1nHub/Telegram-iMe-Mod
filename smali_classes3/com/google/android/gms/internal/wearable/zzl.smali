.class public final Lcom/google/android/gms/internal/wearable/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/wearable/zzk;)Lcom/google/android/gms/wearable/DataMap;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zza:Lcom/google/android/gms/internal/wearable/zzx;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/wearable/zzx;->zze()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/wearable/zzw;

    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzb:Ljava/util/List;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/wearable/zzw;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wearable/zzw;->zzb()Lcom/google/android/gms/internal/wearable/zzv;

    move-result-object v2

    invoke-static {v3, v0, v4, v2}, Lcom/google/android/gms/internal/wearable/zzl;->zzd(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/wearable/zzv;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/internal/wearable/zzk;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzx;->zza()Lcom/google/android/gms/internal/wearable/zzn;

    move-result-object v1

    new-instance v2, Ljava/util/TreeSet;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v4}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzw;->zza()Lcom/google/android/gms/internal/wearable/zzo;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/wearable/zzo;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/wearable/zzo;

    .line 9
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/wearable/zzl;->zzc(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzv;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/wearable/zzo;->zzb(Lcom/google/android/gms/internal/wearable/zzv;)Lcom/google/android/gms/internal/wearable/zzo;

    .line 10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/wearable/zzbs;->zzt()Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/wearable/zzw;

    .line 11
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/wearable/zzn;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wearable/zzbs;->zzt()Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/wearable/zzx;

    new-instance v1, Lcom/google/android/gms/internal/wearable/zzk;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/wearable/zzk;-><init>(Lcom/google/android/gms/internal/wearable/zzx;Ljava/util/List;)V

    return-object v1
.end method

.method private static zzc(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzv;
    .locals 13

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzv;->zza()Lcom/google/android/gms/internal/wearable/zzp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    const/16 v2, 0xe

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzt()Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/wearable/zzv;

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzu;->zzh()Lcom/google/android/gms/internal/wearable/zzt;

    move-result-object v3

    .line 4
    instance-of v4, p1, Ljava/lang/String;

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/wearable/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 7
    :cond_1
    instance-of v4, p1, Ljava/lang/Integer;

    const/4 v6, 0x6

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zzl(I)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 10
    :cond_2
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_3

    const/4 p0, 0x5

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 12
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Lcom/google/android/gms/internal/wearable/zzt;->zzm(J)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 13
    :cond_3
    instance-of v4, p1, Ljava/lang/Double;

    if-eqz v4, :cond_4

    const/4 p0, 0x3

    .line 14
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 15
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Lcom/google/android/gms/internal/wearable/zzt;->zzj(D)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 16
    :cond_4
    instance-of v4, p1, Ljava/lang/Float;

    if-eqz v4, :cond_5

    const/4 p0, 0x4

    .line 17
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 18
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zzk(F)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 19
    :cond_5
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    const/16 p0, 0x8

    .line 20
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zzg(Z)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 22
    :cond_6
    instance-of v4, p1, Ljava/lang/Byte;

    if-eqz v4, :cond_7

    const/4 p0, 0x7

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 24
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zzh(I)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 25
    :cond_7
    instance-of v4, p1, [B

    if-eqz v4, :cond_8

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 27
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/wearable/zzaw;->zzm([B)Lcom/google/android/gms/internal/wearable/zzaw;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zzi(Lcom/google/android/gms/internal/wearable/zzaw;)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 28
    :cond_8
    instance-of v4, p1, [Ljava/lang/String;

    if-eqz v4, :cond_9

    const/16 p0, 0xb

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 30
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 31
    :cond_9
    instance-of v4, p1, [J

    if-eqz v4, :cond_a

    const/16 p0, 0xc

    .line 32
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 33
    check-cast p1, [J

    invoke-static {p1}, Lcom/google/android/gms/internal/wearable/zzae;->zzb([J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 34
    :cond_a
    instance-of v4, p1, [F

    if-eqz v4, :cond_b

    const/16 p0, 0xf

    .line 35
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 36
    check-cast p1, [F

    invoke-static {p1}, Lcom/google/android/gms/internal/wearable/zzab;->zzb([F)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 37
    :cond_b
    instance-of v4, p1, Lcom/google/android/gms/wearable/Asset;

    if-eqz v4, :cond_c

    const/16 v1, 0xd

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 39
    check-cast p1, Lcom/google/android/gms/wearable/Asset;

    .line 40
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-long p0, p0

    .line 39
    invoke-virtual {v3, p0, p1}, Lcom/google/android/gms/internal/wearable/zzt;->zzf(J)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 42
    :cond_c
    instance-of v4, p1, Lcom/google/android/gms/wearable/DataMap;

    const/4 v7, 0x0

    const/16 v8, 0x9

    if-eqz v4, :cond_e

    .line 43
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 44
    check-cast p1, Lcom/google/android/gms/wearable/DataMap;

    new-instance v2, Ljava/util/TreeSet;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 46
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/wearable/zzw;

    .line 47
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzw;->zza()Lcom/google/android/gms/internal/wearable/zzo;

    move-result-object v6

    .line 49
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/wearable/zzo;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/wearable/zzo;

    .line 50
    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/android/gms/internal/wearable/zzl;->zzc(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzv;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/wearable/zzo;->zzb(Lcom/google/android/gms/internal/wearable/zzv;)Lcom/google/android/gms/internal/wearable/zzo;

    .line 51
    invoke-virtual {v6}, Lcom/google/android/gms/internal/wearable/zzbs;->zzt()Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/wearable/zzw;

    aput-object v5, v4, v7

    add-int/2addr v7, v1

    goto :goto_0

    .line 52
    :cond_d
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzt;

    goto/16 :goto_4

    .line 53
    :cond_e
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_15

    const/16 v1, 0xa

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzp;->zzb(I)Lcom/google/android/gms/internal/wearable/zzp;

    .line 55
    check-cast p1, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    move v9, v2

    :goto_1
    if-ge v7, v1, :cond_14

    .line 57
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 58
    invoke-static {p0, v10}, Lcom/google/android/gms/internal/wearable/zzl;->zzc(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzv;

    move-result-object v11

    .line 59
    invoke-virtual {v11}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v12

    if-eq v12, v2, :cond_10

    .line 60
    invoke-virtual {v11}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v12

    if-eq v12, v5, :cond_10

    .line 61
    invoke-virtual {v11}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v12

    if-eq v12, v6, :cond_10

    .line 62
    invoke-virtual {v11}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v12

    if-ne v12, v8, :cond_f

    goto :goto_2

    .line 71
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_2
    if-ne v9, v2, :cond_12

    .line 63
    invoke-virtual {v11}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v9

    if-eq v9, v2, :cond_11

    .line 65
    invoke-virtual {v11}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v4

    move v9, v4

    move-object v4, v10

    goto :goto_3

    :cond_11
    move v9, v2

    .line 64
    :cond_12
    invoke-virtual {v11}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v12

    if-ne v12, v9, :cond_13

    .line 66
    :goto_3
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/wearable/zzt;->zze(Lcom/google/android/gms/internal/wearable/zzv;)Lcom/google/android/gms/internal/wearable/zzt;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 64
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayList elements must all be of the sameclass, but this one contains a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_14
    :goto_4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/wearable/zzp;->zza(Lcom/google/android/gms/internal/wearable/zzt;)Lcom/google/android/gms/internal/wearable/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzt()Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/wearable/zzv;

    return-object p0

    .line 69
    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "newFieldValueFromValue: unexpected value "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzd(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/wearable/zzv;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzv;->zzb()Lcom/google/android/gms/internal/wearable/zzu;

    move-result-object p3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzk()Lcom/google/android/gms/internal/wearable/zzaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzaw;->zzq()[B

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    return-void

    :cond_1
    const/16 v3, 0xb

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzq()Ljava/util/List;

    move-result-object p0

    new-array p3, v4, [Ljava/lang/String;

    invoke-interface {p0, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v3, 0xc

    if-ne v0, v3, :cond_4

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzp()Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 8
    array-length p3, p0

    new-array v0, p3, [J

    :goto_0
    if-ge v4, p3, :cond_3

    .line 9
    aget-object v1, p0, v4

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    aput-wide v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putLongArray(Ljava/lang/String;[J)V

    return-void

    :cond_4
    const/16 v3, 0xf

    if-ne v0, v3, :cond_6

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzo()Ljava/util/List;

    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 13
    array-length p3, p0

    new-array v0, p3, [F

    :goto_1
    if-ge v4, p3, :cond_5

    .line 14
    aget-object v1, p0, v4

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    aput v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zza()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putDouble(Ljava/lang/String;D)V

    return-void

    :cond_8
    const/4 v4, 0x4

    if-ne v0, v4, :cond_9

    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzb()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putFloat(Ljava/lang/String;F)V

    return-void

    :cond_9
    const/4 v4, 0x5

    if-ne v0, v4, :cond_a

    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzg()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_a
    const/4 v4, 0x6

    if-ne v0, v4, :cond_b

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zze()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_b
    const/4 v5, 0x7

    if-ne v0, v5, :cond_c

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzd()I

    move-result p0

    int-to-byte p0, p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putByte(Ljava/lang/String;B)V

    return-void

    :cond_c
    const/16 v5, 0x8

    if-ne v0, v5, :cond_d

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzF()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_d
    const/16 v5, 0xd

    if-ne v0, v5, :cond_e

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzf()J

    move-result-wide v0

    long-to-int p3, v0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    return-void

    :cond_e
    const/16 v5, 0x9

    if-ne v0, v5, :cond_10

    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 25
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzn()Ljava/util/List;

    move-result-object p3

    .line 26
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wearable/zzw;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/wearable/zzw;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wearable/zzw;->zzb()Lcom/google/android/gms/internal/wearable/zzv;

    move-result-object v1

    invoke-static {p0, v0, v2, v1}, Lcom/google/android/gms/internal/wearable/zzl;->zzd(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/wearable/zzv;)V

    goto :goto_2

    .line 28
    :cond_f
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    return-void

    :cond_10
    const/16 v6, 0xa

    if-ne v0, v6, :cond_21

    .line 29
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzm()Ljava/util/List;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/wearable/zzv;

    if-ne v6, v2, :cond_14

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v8

    if-eq v8, v5, :cond_13

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v8

    if-eq v8, v3, :cond_13

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v8

    if-ne v8, v4, :cond_11

    goto :goto_4

    .line 35
    :cond_11
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v8

    if-ne v8, v2, :cond_12

    goto :goto_3

    .line 62
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected TypedValue type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for key "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_13
    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v6

    goto :goto_3

    .line 36
    :cond_14
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v8

    if-ne v8, v6, :cond_15

    goto :goto_3

    .line 56
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result p3

    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The ArrayList elements should all be the same type, but ArrayList with key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " contains items of type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzc()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-virtual {p3}, Lcom/google/android/gms/internal/wearable/zzu;->zzm()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "Unexpected typeOfArrayList: "

    if-eqz v7, :cond_1c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/wearable/zzv;

    .line 39
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzf()I

    move-result v9

    if-ne v9, v2, :cond_17

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_17
    if-ne v6, v5, :cond_19

    new-instance v8, Lcom/google/android/gms/wearable/DataMap;

    .line 41
    invoke-direct {v8}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 42
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzb()Lcom/google/android/gms/internal/wearable/zzu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzu;->zzn()Ljava/util/List;

    move-result-object v7

    .line 43
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/wearable/zzw;

    .line 44
    invoke-virtual {v9}, Lcom/google/android/gms/internal/wearable/zzw;->zzd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/wearable/zzw;->zzb()Lcom/google/android/gms/internal/wearable/zzv;

    move-result-object v9

    invoke-static {p0, v8, v10, v9}, Lcom/google/android/gms/internal/wearable/zzl;->zzd(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/wearable/zzv;)V

    goto :goto_6

    .line 45
    :cond_18
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_19
    if-ne v6, v3, :cond_1a

    .line 46
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzb()Lcom/google/android/gms/internal/wearable/zzu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzu;->zzl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1a
    if-ne v6, v4, :cond_1b

    .line 47
    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzv;->zzb()Lcom/google/android/gms/internal/wearable/zzu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/wearable/zzu;->zze()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 53
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    if-ne v6, v2, :cond_1d

    .line 48
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_1d
    if-ne v6, v5, :cond_1e

    .line 49
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_1e
    if-ne v6, v3, :cond_1f

    .line 50
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_1f
    if-ne v6, v4, :cond_20

    .line 51
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    .line 50
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "populateBundle: unexpected type "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
