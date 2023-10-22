.class public final synthetic Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/PhonebookShareAlert;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/Components/PhonebookShareAlert;->$r8$lambda$1MODlscE9H6zuYmbNAssDMEE6Cw(Lorg/telegram/ui/Components/PhonebookShareAlert;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
