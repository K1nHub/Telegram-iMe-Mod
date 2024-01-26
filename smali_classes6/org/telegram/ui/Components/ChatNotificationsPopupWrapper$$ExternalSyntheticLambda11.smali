.class public final synthetic Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;


# direct methods
.method public synthetic constructor <init>(ILorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$$ExternalSyntheticLambda11;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$$ExternalSyntheticLambda11;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->$r8$lambda$_y4oIjxloGlndwsGX4P4UhrE83o(ILorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
