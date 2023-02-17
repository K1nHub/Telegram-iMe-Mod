.class public final synthetic Lorg/telegram/ui/LocationActivity$MapOverlayView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LocationActivity$MapOverlayView;

.field public final synthetic f$1:Lorg/telegram/ui/LocationActivity$VenueLocation;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LocationActivity$MapOverlayView;Lorg/telegram/ui/LocationActivity$VenueLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$MapOverlayView$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    iput-object p2, p0, Lorg/telegram/ui/LocationActivity$MapOverlayView$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/LocationActivity$VenueLocation;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$MapOverlayView$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$MapOverlayView$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/LocationActivity$VenueLocation;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/telegram/ui/LocationActivity$MapOverlayView;->$r8$lambda$qzkZ5mvLg0x6iaSsEhjTwdQ1b-g(Lorg/telegram/ui/LocationActivity$MapOverlayView;Lorg/telegram/ui/LocationActivity$VenueLocation;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
