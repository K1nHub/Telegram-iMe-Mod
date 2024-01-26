.class public final synthetic Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->$r8$lambda$Z9jKq5mcz1hVMzGU3wU28-rNad0(Lorg/telegram/ui/PhotoAlbumPickerActivity;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
