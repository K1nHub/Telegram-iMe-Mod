.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$3:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;->f$2:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;->f$3:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;->f$2:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;->f$3:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->$r8$lambda$l98-Mwcu44FE7Kat_WkGaQUfjgY(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
