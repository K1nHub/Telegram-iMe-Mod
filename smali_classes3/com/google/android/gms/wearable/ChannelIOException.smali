.class public Lcom/google/android/gms/wearable/ChannelIOException;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field private final zza:I

.field private final zzb:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/wearable/ChannelIOException;->zza:I

    iput p3, p0, Lcom/google/android/gms/wearable/ChannelIOException;->zzb:I

    return-void
.end method


# virtual methods
.method public getAppSpecificErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wearable/ChannelIOException;->zzb:I

    return v0
.end method

.method public getCloseReason()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wearable/ChannelIOException;->zza:I

    return v0
.end method
