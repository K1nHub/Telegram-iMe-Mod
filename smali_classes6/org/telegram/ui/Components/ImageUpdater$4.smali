.class Lorg/telegram/ui/Components/ImageUpdater$4;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ImageUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ImageUpdater;

.field final synthetic val$arrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater$4;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$4;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollAway()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;Z)V
    .locals 0

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater$4;->val$arrayList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 777
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$4;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ImageUpdater;->processEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    return-void
.end method
