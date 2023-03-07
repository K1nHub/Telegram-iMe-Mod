.class Lorg/telegram/ui/NotificationsCustomSettingsActivity$3$1;
.super Ljava/lang/Object;
.source "NotificationsCustomSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->showCustomize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3$1;->this$1:Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCreateNewException(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V
    .locals 0

    return-void
.end method

.method public didRemoveException(J)V
    .locals 0

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3$1;->this$1:Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->access$3400(Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;)V

    return-void
.end method
