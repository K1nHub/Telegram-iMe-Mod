.class Lorg/telegram/ui/Stories/StoriesController$1;
.super Ljava/lang/Object;
.source "StoriesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoriesController;->resolveStoryLink(JILcom/google/android/exoplayer2/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoriesController;

.field final synthetic val$consumer:Lcom/google/android/exoplayer2/util/Consumer;

.field final synthetic val$hash:J


# direct methods
.method public static synthetic $r8$lambda$4d0mqM4hBF5UhdOpT65KA0F2u4c(Lorg/telegram/ui/Stories/StoriesController$1;Lorg/telegram/tgnet/TLObject;JLcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesController$1;->lambda$run$0(Lorg/telegram/tgnet/TLObject;JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/StoriesController;JLcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    .line 1515
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$1;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iput-wide p2, p0, Lorg/telegram/ui/Stories/StoriesController$1;->val$hash:J

    iput-object p4, p0, Lorg/telegram/ui/Stories/StoriesController$1;->val$consumer:Lcom/google/android/exoplayer2/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lorg/telegram/tgnet/TLObject;JLcom/google/android/exoplayer2/util/Consumer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1521
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    .line 1522
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1523
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$1;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->resolvedStories:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p2, p3, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1527
    :goto_0
    invoke-interface {p4, p1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1518
    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$1;->val$hash:J

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$1;->val$consumer:Lcom/google/android/exoplayer2/util/Consumer;

    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$1$$ExternalSyntheticLambda0;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController$1;Lorg/telegram/tgnet/TLObject;JLcom/google/android/exoplayer2/util/Consumer;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
