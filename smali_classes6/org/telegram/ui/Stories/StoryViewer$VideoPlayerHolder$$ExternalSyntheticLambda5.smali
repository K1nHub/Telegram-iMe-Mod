.class public final synthetic Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5;->f$2:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->$r8$lambda$eFszuCMRFjF8U0TYelMj8a7bcBo(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;ZLandroid/net/Uri;)V

    return-void
.end method
