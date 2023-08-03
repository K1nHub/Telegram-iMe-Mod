.class Lorg/telegram/ui/Stories/PeerStoriesView$5;
.super Ljava/lang/Object;
.source "PeerStoriesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 795
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-eqz p1, :cond_0

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    goto :goto_0

    .line 798
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    .line 799
    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->expand()V

    :goto_0
    return-void
.end method
