.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback3;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView$6;

.field public final synthetic f$1:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$6;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$6;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda20;->f$1:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$6;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6$$ExternalSyntheticLambda20;->f$1:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Runnable;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$6;->$r8$lambda$CTZJG3V5cydCuW7uGunqnMtr5dQ(Lorg/telegram/ui/Stories/PeerStoriesView$6;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method
