.class public final synthetic Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LocationActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/LocationActivity;

    iput-object p2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda41;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/LocationActivity;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda41;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/telegram/ui/LocationActivity;->$r8$lambda$LC7yMLfEb87io7Fm9nPkfXrK5cQ(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
