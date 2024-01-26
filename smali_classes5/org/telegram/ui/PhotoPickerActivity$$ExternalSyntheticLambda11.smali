.class public final synthetic Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/PhotoPickerActivity;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->$r8$lambda$WTN55-SH6KzEvu06KvDjoxMcCqc(Lorg/telegram/ui/PhotoPickerActivity;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
