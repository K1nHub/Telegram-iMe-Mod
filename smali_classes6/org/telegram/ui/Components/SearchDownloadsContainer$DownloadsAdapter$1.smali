.class Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$1;
.super Lorg/telegram/ui/Cells/SharedAudioCell;
.source "SearchDownloadsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;Landroid/content/Context;)V
    .locals 0

    .line 483
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 486
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1
.end method
