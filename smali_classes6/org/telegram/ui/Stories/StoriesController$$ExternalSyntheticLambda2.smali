.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/util/Consumer;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/exoplayer2/util/Consumer;

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-wide p4, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;->f$3:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/exoplayer2/util/Consumer;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;->f$3:J

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->$r8$lambda$FYkp4Xp3IbrpSLEYMtrbNp9RTFA(Lorg/telegram/ui/Stories/StoriesController;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method
