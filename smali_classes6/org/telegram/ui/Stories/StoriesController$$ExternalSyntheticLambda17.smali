.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;ZLorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$2:Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;

    iput-object p4, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-boolean p5, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$2:Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->$r8$lambda$rsd_Z8Yp4G2Fpjlr_ogZ209sNw0(Lorg/telegram/ui/Stories/StoriesController;ZLorg/telegram/tgnet/tl/TL_stories$TL_stories_getAllStories;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method
