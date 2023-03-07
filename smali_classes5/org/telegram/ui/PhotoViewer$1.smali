.class Lorg/telegram/ui/PhotoViewer$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->forwardCloud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectCloudDialog(J)V
    .locals 12

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide v3, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    return-void
.end method

.method public onAlbumCreatorOpened()V
    .locals 2

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void
.end method
