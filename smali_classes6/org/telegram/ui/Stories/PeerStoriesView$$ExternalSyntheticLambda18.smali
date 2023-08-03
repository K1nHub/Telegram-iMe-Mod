.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback4;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$StoryItem;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/tgnet/TLRPC$StoryItem;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    move-object v4, p3

    check-cast v4, Ljava/lang/Boolean;

    move-object v5, p4

    check-cast v5, Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->$r8$lambda$VaDMscroL9re_0_qIlv1jgwERu8(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    return-void
.end method
