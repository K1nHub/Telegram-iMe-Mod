.class public final Lcom/google/android/gms/internal/mlkit_common/zzsv;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.10.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzsj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zznh;

.field private zzb:Lcom/google/android/gms/internal/mlkit_common/zzre;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zznh;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_common/zzre;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_common/zzre;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzre;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zza:Lcom/google/android/gms/internal/mlkit_common/zznh;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zztg;->zza()Lcom/google/android/gms/internal/mlkit_common/zztg;

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/mlkit_common/zznh;)Lcom/google/android/gms/internal/mlkit_common/zzsj;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzsv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzsv;-><init>(Lcom/google/android/gms/internal/mlkit_common/zznh;I)V

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/mlkit_common/zzsj;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzsv;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zznh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zznh;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzsv;-><init>(Lcom/google/android/gms/internal/mlkit_common/zznh;I)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzng;)Lcom/google/android/gms/internal/mlkit_common/zzsj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zza:Lcom/google/android/gms/internal/mlkit_common/zznh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zznh;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzng;)Lcom/google/android/gms/internal/mlkit_common/zznh;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_common/zznn;)Lcom/google/android/gms/internal/mlkit_common/zzsj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zza:Lcom/google/android/gms/internal/mlkit_common/zznh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zznh;->zzi(Lcom/google/android/gms/internal/mlkit_common/zznn;)Lcom/google/android/gms/internal/mlkit_common/zznh;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_common/zzre;)Lcom/google/android/gms/internal/mlkit_common/zzsj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzre;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zza:Lcom/google/android/gms/internal/mlkit_common/zznh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zznh;->zzk()Lcom/google/android/gms/internal/mlkit_common/zznj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zznj;->zzf()Lcom/google/android/gms/internal/mlkit_common/zzrg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzrg;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zzc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzrg;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "NA"

    return-object v0
.end method

.method public final zze(IZ)[B
    .locals 2

    xor-int/lit8 p2, p1, 0x1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzre;

    const/4 v1, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzre;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzre;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzm()Lcom/google/android/gms/internal/mlkit_common/zzrg;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zza:Lcom/google/android/gms/internal/mlkit_common/zznh;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zznh;->zzj(Lcom/google/android/gms/internal/mlkit_common/zzrg;)Lcom/google/android/gms/internal/mlkit_common/zznh;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zztg;->zza()Lcom/google/android/gms/internal/mlkit_common/zztg;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zza:Lcom/google/android/gms/internal/mlkit_common/zznh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zznh;->zzk()Lcom/google/android/gms/internal/mlkit_common/zznj;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/firebase/encoders/config/Configurator;

    invoke-virtual {p2, v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues(Z)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->zza:Lcom/google/android/gms/internal/mlkit_common/zznh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zznh;->zzk()Lcom/google/android/gms/internal/mlkit_common/zznj;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_common/zzbr;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_common/zzbr;-><init>()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 9
    invoke-interface {v0, p2}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzbr;->zza()Lcom/google/android/gms/internal/mlkit_common/zzbs;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzbs;->zza(Ljava/lang/Object;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 10
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
