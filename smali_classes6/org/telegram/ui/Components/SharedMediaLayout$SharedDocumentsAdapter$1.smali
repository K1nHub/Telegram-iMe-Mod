.class Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;
.super Lorg/telegram/ui/Cells/SharedAudioCell;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 5683
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public needPlayMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 8

    .line 5686
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5690
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5691
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->access$8800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    :goto_0
    move-object v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1100(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->isPlaylistList()Z

    move-result v7

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZ)Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 5687
    :cond_3
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    .line 5688
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;->access$8800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MediaController;->setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V

    return p1
.end method
