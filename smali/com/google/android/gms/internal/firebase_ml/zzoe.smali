.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzoe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseAppLifecycleListener;


# instance fields
.field private final zzaue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoe;->zzaue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onDeleted(Ljava/lang/String;Lcom/google/firebase/FirebaseOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoe;->zzaue:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/FirebaseOptions;)V

    return-void
.end method
