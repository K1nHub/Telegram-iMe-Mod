.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView$6;

.field public final synthetic f$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$StoryItem;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$6;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$6;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLRPC$StoryItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$6;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$6;->$r8$lambda$4lqW8qGtsL9SDH8fFnzp0P3kIvE(Lorg/telegram/ui/Stories/PeerStoriesView$6;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLRPC$StoryItem;Landroid/view/View;)V

    return-void
.end method
