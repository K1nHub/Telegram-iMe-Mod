.class public final Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;
.super Ljava/lang/Object;
.source "NeuroBotHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeuroBotHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeuroBotHelper.kt\ncom/smedialink/utils/helper/neurobot/SmartBotHelper\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,48:1\n56#2,6:49\n*S KotlinDebug\n*F\n+ 1 NeuroBotHelper.kt\ncom/smedialink/utils/helper/neurobot/SmartBotHelper\n*L\n17#1:49,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;

.field private static final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Irx7QomTLveBHwHTFkSdZ4Ei_AI(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->showEnableSmartBotDialog$lambda-0(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;-><init>()V

    sput-object v0, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->INSTANCE:Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->resourceManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final runSafeSmartBotAction(ILandroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lorg/fork/controller/NeuroBotsController;->Companion:Lorg/fork/controller/NeuroBotsController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/NeuroBotsController$Companion;->getInstance(I)Lorg/fork/controller/NeuroBotsController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/fork/controller/NeuroBotsController;->isNeuroBotsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_0
    sget-object p0, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->INSTANCE:Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;

    invoke-direct {p0, p1}, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->showEnableSmartBotDialog(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private final showEnableSmartBotDialog(Landroid/content/Context;)V
    .locals 6

    .line 37
    new-instance v1, Lcom/smedialink/model/dialog/DialogModel;

    .line 38
    invoke-direct {p0}, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->neurobots_enable_dialog_title:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-direct {p0}, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->neurobots_enable_dialog_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-direct {p0}, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-direct {p0}, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->neurobots_enable_dialog_positive_btn_text:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v2, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/smedialink/utils/helper/neurobot/SmartBotHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private static final showEnableSmartBotDialog$lambda-0(Landroid/content/Context;)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/LaunchActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/smedialink/ui/shop/BotSettingsActivity;

    invoke-direct {v0}, Lcom/smedialink/ui/shop/BotSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 14
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
