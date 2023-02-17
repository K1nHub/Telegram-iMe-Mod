.class public final synthetic Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;


# instance fields
.field public final synthetic f$0:Lorg/fork/ui/view/PinnedPlayerView;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/ui/view/PinnedPlayerView;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;->f$0:Lorg/fork/ui/view/PinnedPlayerView;

    iput-object p2, p0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final didSelectCloudDialog(J)V
    .locals 2

    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;->f$0:Lorg/fork/ui/view/PinnedPlayerView;

    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, p1, p2}, Lorg/fork/ui/view/PinnedPlayerView;->$r8$lambda$yOHP3zBYooBbE9yJvAjwq2ulye0(Lorg/fork/ui/view/PinnedPlayerView;Lorg/telegram/messenger/MessageObject;J)V

    return-void
.end method

.method public synthetic onAlbumCreatorOpened()V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate$-CC;->$default$onAlbumCreatorOpened(Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    return-void
.end method
