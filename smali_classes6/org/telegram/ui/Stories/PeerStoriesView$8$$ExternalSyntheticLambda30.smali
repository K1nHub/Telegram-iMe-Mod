.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView$8;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->$r8$lambda$5dEtY04gyyCcEA4jhOGnLdp8Ug8(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Boolean;)V

    return-void
.end method
