.class Lorg/telegram/ui/Components/MediaActivity$1$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MediaActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MediaActivity$1;

.field final synthetic val$storyItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MediaActivity$1;Ljava/util/ArrayList;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$1$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$1$1;->val$storyItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$1$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$1;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$1$1;->val$storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->deleteStories(Ljava/util/ArrayList;)V

    .line 277
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$1$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$1;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    return-void
.end method
