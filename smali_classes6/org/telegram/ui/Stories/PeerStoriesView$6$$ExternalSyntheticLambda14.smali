.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView$6;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$6;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$6;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda14;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$6;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda14;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$6;->$r8$lambda$-UPChKpK0jEOm2GBUYxaVVXbOtQ(Lorg/telegram/ui/Stories/PeerStoriesView$6;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method
