.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/DrmSessionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method public final get(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->$r8$lambda$f9y5C0K7Fo6iTCuv60unBCuPs2Y(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p1

    return-object p1
.end method
