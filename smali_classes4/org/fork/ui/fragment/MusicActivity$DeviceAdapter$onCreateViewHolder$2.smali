.class public final Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter$onCreateViewHolder$2;
.super Lorg/telegram/ui/Cells/SharedAudioCell;
.source "MusicActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 410
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    const-string v0, "musicMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;J)Z

    move-result p1

    return p1
.end method
