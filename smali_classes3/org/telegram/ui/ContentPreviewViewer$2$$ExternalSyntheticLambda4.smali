.class public final synthetic Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer$2;->$r8$lambda$DvUDjxc8qsqQ0ypEe9gdvu5SmpM(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
