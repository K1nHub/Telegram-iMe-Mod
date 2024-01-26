.class public final Lcom/google/android/gms/internal/firebase_ml/zzgz;
.super Ljava/lang/Object;


# direct methods
.method public static zzd([B)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzgv;->UTF_8:Ljava/nio/charset/Charset;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method
