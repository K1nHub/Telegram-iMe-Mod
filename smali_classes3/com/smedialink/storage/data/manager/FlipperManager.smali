.class public final Lcom/smedialink/storage/data/manager/FlipperManager;
.super Ljava/lang/Object;
.source "FlipperManager.kt"


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/manager/FlipperManager;

.field private static final networkFlipperPlugin$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/manager/FlipperManager;

    invoke-direct {v0}, Lcom/smedialink/storage/data/manager/FlipperManager;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/manager/FlipperManager;->INSTANCE:Lcom/smedialink/storage/data/manager/FlipperManager;

    .line 18
    sget-object v0, Lcom/smedialink/storage/data/manager/FlipperManager$networkFlipperPlugin$2;->INSTANCE:Lcom/smedialink/storage/data/manager/FlipperManager$networkFlipperPlugin$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/manager/FlipperManager;->networkFlipperPlugin$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isFlipperEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 4

    const-string v0, "applicationContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/smedialink/storage/data/manager/FlipperManager;->INSTANCE:Lcom/smedialink/storage/data/manager/FlipperManager;

    .line 28
    invoke-static {}, Lcom/smedialink/storage/data/manager/FlipperManager;->isFlipperEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Lcom/facebook/soloader/SoLoader;->INSTANCE:Lcom/facebook/soloader/SoLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 30
    invoke-static {p0}, Lcom/facebook/flipper/android/AndroidFlipperClient;->getInstance(Landroid/content/Context;)Lcom/facebook/flipper/core/FlipperClient;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/facebook/flipper/plugins/inspector/InspectorFlipperPlugin;

    sget-object v3, Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;->INSTANCE:Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;

    invoke-virtual {v3}, Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;->withDefaults()Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/facebook/flipper/plugins/inspector/InspectorFlipperPlugin;-><init>(Landroid/content/Context;Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;)V

    invoke-interface {v1, v2}, Lcom/facebook/flipper/core/FlipperClient;->addPlugin(Lcom/facebook/flipper/core/FlipperPlugin;)V

    .line 32
    new-instance v2, Lcom/facebook/flipper/plugins/databases/DatabasesFlipperPlugin;

    invoke-direct {v2, p0}, Lcom/facebook/flipper/plugins/databases/DatabasesFlipperPlugin;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/facebook/flipper/core/FlipperClient;->addPlugin(Lcom/facebook/flipper/core/FlipperPlugin;)V

    .line 33
    new-instance v2, Lcom/facebook/flipper/plugins/sharedpreferences/SharedPreferencesFlipperPlugin;

    invoke-direct {v2, p0}, Lcom/facebook/flipper/plugins/sharedpreferences/SharedPreferencesFlipperPlugin;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/facebook/flipper/core/FlipperClient;->addPlugin(Lcom/facebook/flipper/core/FlipperPlugin;)V

    .line 34
    invoke-virtual {v0}, Lcom/smedialink/storage/data/manager/FlipperManager;->getNetworkFlipperPlugin()Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/facebook/flipper/core/FlipperClient;->addPlugin(Lcom/facebook/flipper/core/FlipperPlugin;)V

    .line 35
    invoke-interface {v1}, Lcom/facebook/flipper/core/FlipperClient;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getNetworkFlipperPlugin()Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;
    .locals 1

    .line 18
    sget-object v0, Lcom/smedialink/storage/data/manager/FlipperManager;->networkFlipperPlugin$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;

    return-object v0
.end method
