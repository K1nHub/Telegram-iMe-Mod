.class final Lcom/google/android/gms/maps/zzp;
.super Lcom/google/android/gms/maps/internal/zzbh;
.source "com.google.android.gms:play-services-maps@@18.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzp;->zza:Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/maps/zzag;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzp;->zza:Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Polyline;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Polyline;-><init>(Lcom/google/android/gms/internal/maps/zzag;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;->onPolylineClick(Lcom/google/android/gms/maps/model/Polyline;)V

    return-void
.end method
