.class public final Lcom/iMe/manager/notifications/PushNotificationsManager$Companion;
.super Ljava/lang/Object;
.source "PushNotificationsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/manager/notifications/PushNotificationsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$lYzIIDZWovHY39Z6-F7ZjLThhCA(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/manager/notifications/PushNotificationsManager$Companion;->handlePushIntent$lambda$1$lambda$0(Lorg/telegram/ui/LaunchActivity;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/manager/notifications/PushNotificationsManager$Companion;-><init>()V

    return-void
.end method

.method private static final handlePushIntent$lambda$1$lambda$0(Lorg/telegram/ui/LaunchActivity;)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->openWalletScreen()V

    return-void
.end method


# virtual methods
.method public final handlePushIntent(Landroid/content/Intent;Lorg/telegram/ui/LaunchActivity;)Z
    .locals 5

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "com.iMe.push.action"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    const-string v3, "userId"

    .line 217
    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 218
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3bb9e31f

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "com.iMe.push.action.openwallet"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 222
    invoke-static {v1, v2}, Lcom/iMe/fork/utils/UserUtils;->getSelectedAccountPositionByUserId(J)I

    move-result p1

    .line 223
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    :cond_1
    const-wide/16 v1, 0x3e8

    .line 226
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance v1, Lcom/iMe/manager/notifications/PushNotificationsManager$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/iMe/manager/notifications/PushNotificationsManager$Companion$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/LaunchActivity;->runDelayed(Ljava/lang/Long;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    return v1
.end method
