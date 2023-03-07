.class public final synthetic Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;->$r8$lambda$Qku_15DubQGfyuKLu3QSDqilS4U()Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;

    move-result-object v0

    return-object v0
.end method
