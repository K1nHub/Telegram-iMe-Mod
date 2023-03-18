.class public final Lcom/smedialink/utils/helper/google/GoogleServicesHelper;
.super Ljava/lang/Object;
.source "GoogleServicesHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleServicesHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleServicesHelper.kt\ncom/smedialink/utils/helper/google/GoogleServicesHelper\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,34:1\n56#2,6:35\n*S KotlinDebug\n*F\n+ 1 GoogleServicesHelper.kt\ncom/smedialink/utils/helper/google/GoogleServicesHelper\n*L\n14#1:35,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/utils/helper/google/GoogleServicesHelper;

.field private static final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$gOn-kZLqy0JqTWezkIA_nZ6Mjk4()V
    .locals 0

    invoke-static {}, Lcom/smedialink/utils/helper/google/GoogleServicesHelper;->runWithActivationCheck$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/smedialink/utils/helper/google/GoogleServicesHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/google/GoogleServicesHelper;-><init>()V

    sput-object v0, Lcom/smedialink/utils/helper/google/GoogleServicesHelper;->INSTANCE:Lcom/smedialink/utils/helper/google/GoogleServicesHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/utils/helper/google/GoogleServicesHelper$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/smedialink/utils/helper/google/GoogleServicesHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/smedialink/utils/helper/google/GoogleServicesHelper;->resourceManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 14
    sget-object v0, Lcom/smedialink/utils/helper/google/GoogleServicesHelper;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final runWithActivationCheck(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletAuthorizedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/smedialink/utils/helper/google/GoogleServicesHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/utils/helper/google/GoogleServicesHelper$$ExternalSyntheticLambda0;

    invoke-static {p0, v0, p1}, Lcom/smedialink/utils/helper/google/GoogleServicesHelper;->runWithActivationCheck(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static final runWithActivationCheck(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activateClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletAuthorizedAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/smedialink/utils/helper/google/GoogleServicesHelper;->INSTANCE:Lcom/smedialink/utils/helper/google/GoogleServicesHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/google/GoogleServicesHelper;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_auth_dialog_to_use_feature_description:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p0, v0, p1, p2}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final runWithActivationCheck$lambda$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 11
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
