.class public final synthetic Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Runnable;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3;->f$0:[Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3;->f$0:[Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->$r8$lambda$KRfT8LSRCwRJmYMWDDso80kL0X4([Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
