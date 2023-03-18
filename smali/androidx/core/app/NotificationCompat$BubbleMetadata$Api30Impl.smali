.class Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7381
    :cond_0
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7382
    new-instance v0, Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7383
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7385
    :cond_1
    new-instance v0, Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7387
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V

    .line 7390
    :goto_0
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v1

    .line 7391
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v1

    .line 7392
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7394
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7395
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7398
    :cond_2
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7400
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result p0

    .line 7399
    invoke-virtual {v0, p0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7403
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method
