.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$StoryItem;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;JLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iput-wide p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$StoryItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->$r8$lambda$vtTOY6LVObnpqPxYYjy5yHeyQpY(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    return-void
.end method
