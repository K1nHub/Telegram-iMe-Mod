.class public final Lcom/smedialink/storage/data/common/RemoteConfigConstants;
.super Ljava/lang/Object;
.source "RemoteConfigConstants.kt"


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/common/RemoteConfigConstants;

.field private static final defaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/common/RemoteConfigConstants;

    invoke-direct {v0}, Lcom/smedialink/storage/data/common/RemoteConfigConstants;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/common/RemoteConfigConstants;->INSTANCE:Lcom/smedialink/storage/data/common/RemoteConfigConstants;

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "on_ona_shop_enabled"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/common/RemoteConfigConstants;->defaultValues:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/smedialink/storage/data/common/RemoteConfigConstants;->defaultValues:Ljava/util/Map;

    return-object v0
.end method

.method public final getMinFetchInterval()J
    .locals 2

    const-wide/16 v0, 0xe10

    return-wide v0
.end method
