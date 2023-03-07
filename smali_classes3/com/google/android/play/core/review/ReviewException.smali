.class public Lcom/google/android/play/core/review/ReviewException;
.super Lcom/google/android/play/core/tasks/zzj;
.source "com.google.android.play:core@@1.10.2"


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/google/android/play/core/review/model/zza;->zza(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Review Error(%d): %s"

    .line 2
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/play/core/tasks/zzj;-><init>(Ljava/lang/String;)V

    return-void
.end method
