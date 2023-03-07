.class public final Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;
.super Ljava/lang/Object;
.source "PushNotificationsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/manager/notifications/PushNotificationsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$kuglt144Pz-Soi8PpCmA6HnXjwA(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;->handlePushIntent$lambda-1$lambda-0(Lorg/telegram/ui/LaunchActivity;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion;-><init>()V

    return-void
.end method

.method private static final handlePushIntent$lambda-1$lambda-0(Lorg/telegram/ui/LaunchActivity;)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
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

    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    const-string v4, "com.iMe.push.action"

    invoke-static {v0, v4, v2, v3, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v1, 0x0

    const-string v3, "userId"

    .line 192
    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 193
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3bb9e31f

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "com.iMe.push.action.openwallet"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 196
    :cond_3
    invoke-static {v1, v2}, Lorg/fork/utils/UserUtils;->getSelectedAccountPositionByUserId(J)I

    move-result p1

    .line 197
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq p1, v1, :cond_4

    const/4 v1, 0x1

    .line 198
    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    :cond_4
    const-wide/16 v1, 0x3e8

    .line 200
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance v1, Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/smedialink/manager/notifications/PushNotificationsManager$Companion$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/LaunchActivity;->runDelayed(Ljava/lang/Long;Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return v0
.end method
