.class final Lcom/google/android/gms/internal/mlkit_common/zzn;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"


# static fields
.field private static final zza:Ljava/lang/reflect/Method;

.field private static final zzb:Ljava/lang/reflect/Method;

.field private static final zzc:Ljava/lang/reflect/Method;

.field private static final zzd:Ljava/lang/reflect/Field;

.field private static final zze:Ljava/lang/reflect/Field;

.field private static final zzf:Ljava/lang/reflect/Field;

.field private static final zzg:Ljava/lang/Object;

.field private static final zzh:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "libcore.io.Libcore"

    .line 24
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "libcore.io.StructStat"

    .line 25
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "libcore.io.OsConstants"

    .line 26
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "libcore.io.ForwardingOs"

    .line 27
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "S_ISLNK"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    .line 28
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 29
    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v5, "lstat"

    new-array v7, v6, [Ljava/lang/Class;

    .line 30
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    const-string v7, "fstat"

    new-array v8, v6, [Ljava/lang/Class;

    .line 31
    const-class v10, Ljava/io/FileDescriptor;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    const-string v7, "os"

    .line 32
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 33
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    const-string v7, "st_dev"

    .line 35
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string v8, "st_ino"

    .line 36
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v9, "st_mode"

    .line 37
    invoke-virtual {v2, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 38
    :try_start_7
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 41
    sput-object v3, Lcom/google/android/gms/internal/mlkit_common/zzn;->zza:Ljava/lang/reflect/Method;

    .line 42
    sput-object v5, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzb:Ljava/lang/reflect/Method;

    .line 43
    sput-object v4, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzc:Ljava/lang/reflect/Method;

    .line 44
    sput-object v7, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzd:Ljava/lang/reflect/Field;

    .line 45
    sput-object v8, Lcom/google/android/gms/internal/mlkit_common/zzn;->zze:Ljava/lang/reflect/Field;

    .line 46
    sput-object v2, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzf:Ljava/lang/reflect/Field;

    .line 47
    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzg:Ljava/lang/Object;

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzh:Ljava/lang/Throwable;

    return-void

    :catchall_0
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v2, v0

    goto :goto_3

    :catchall_2
    move-exception v6

    move-object v2, v0

    move-object v8, v2

    goto :goto_3

    :catchall_3
    move-exception v6

    move-object v2, v0

    goto :goto_0

    :catchall_4
    move-exception v6

    move-object v1, v0

    move-object v2, v1

    :goto_0
    move-object v7, v2

    goto :goto_2

    :catchall_5
    move-exception v6

    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    move-object v7, v4

    goto :goto_2

    :catchall_6
    move-exception v6

    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    goto :goto_1

    :catchall_7
    move-exception v6

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_1
    move-object v5, v4

    move-object v7, v5

    :goto_2
    move-object v8, v7

    :goto_3
    :try_start_8
    const-string v9, "StructStatHelper"

    const-string v10, "Reflection failed"

    .line 51
    invoke-static {v9, v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 53
    sput-object v3, Lcom/google/android/gms/internal/mlkit_common/zzn;->zza:Ljava/lang/reflect/Method;

    .line 54
    sput-object v5, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzb:Ljava/lang/reflect/Method;

    .line 55
    sput-object v4, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzc:Ljava/lang/reflect/Method;

    .line 56
    sput-object v7, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzd:Ljava/lang/reflect/Field;

    .line 57
    sput-object v8, Lcom/google/android/gms/internal/mlkit_common/zzn;->zze:Ljava/lang/reflect/Field;

    .line 58
    sput-object v2, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzf:Ljava/lang/reflect/Field;

    .line 59
    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzg:Ljava/lang/Object;

    .line 60
    sput-object v6, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzh:Ljava/lang/Throwable;

    return-void

    :catchall_8
    move-exception v6

    .line 62
    sput-object v3, Lcom/google/android/gms/internal/mlkit_common/zzn;->zza:Ljava/lang/reflect/Method;

    .line 63
    sput-object v5, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzb:Ljava/lang/reflect/Method;

    .line 64
    sput-object v4, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzc:Ljava/lang/reflect/Method;

    .line 65
    sput-object v7, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzd:Ljava/lang/reflect/Field;

    .line 66
    sput-object v8, Lcom/google/android/gms/internal/mlkit_common/zzn;->zze:Ljava/lang/reflect/Field;

    .line 67
    sput-object v2, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzf:Ljava/lang/reflect/Field;

    .line 68
    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzg:Ljava/lang/Object;

    .line 69
    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzh:Ljava/lang/Throwable;

    .line 70
    throw v6
.end method

.method static zza(Ljava/io/FileDescriptor;)Lcom/google/android/gms/internal/mlkit_common/zzj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzp;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/zzn;->zza(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_common/zzj;

    return-object p0
.end method

.method private static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzj;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzd:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzn;->zze:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzf:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzn;->zza:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v6, 0x0

    aput-object p0, v1, v6

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 7
    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/zzj;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_common/zzj;-><init>(JJZLcom/google/android/gms/internal/mlkit_common/zzk;)V

    return-object p0
.end method

.method static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzm;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/zzn;->zza(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_common/zzj;

    return-object p0
.end method

.method private static zza(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzh:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static final synthetic zzb(Ljava/io/FileDescriptor;)Lcom/google/android/gms/internal/mlkit_common/zzj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzc:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzg:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_common/zzn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzj;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzb:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzn;->zzg:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_common/zzn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzj;

    move-result-object p0

    return-object p0
.end method
