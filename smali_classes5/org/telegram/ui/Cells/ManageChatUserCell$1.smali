.class Lorg/telegram/ui/Cells/ManageChatUserCell$1;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "ManageChatUserCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ManageChatUserCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    iput-object p3, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$000(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 87
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 88
    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$100(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v2, v3, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 89
    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$100(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$100(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v1

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animate:Z

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$100(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v1

    iput-boolean v0, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$100(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v0

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$100(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$100(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$000(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$000(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v2, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ManageChatUserCell$1;->this$0:Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ManageChatUserCell;->access$100(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method
