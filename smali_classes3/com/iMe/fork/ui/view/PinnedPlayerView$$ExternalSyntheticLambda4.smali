.class public final synthetic Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/ui/view/PinnedPlayerView;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda4;->f$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    iput-object p2, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final didSelectCloudDialog(J)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda4;->f$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    iget-object v1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, p1, p2}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->$r8$lambda$dwWxeFGULjJkydwbN7pGzlJNQhk(Lcom/iMe/fork/ui/view/PinnedPlayerView;Lorg/telegram/messenger/MessageObject;J)V

    return-void
.end method

.method public synthetic onAlbumCreatorOpened()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate$-CC;->$default$onAlbumCreatorOpened(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    return-void
.end method
