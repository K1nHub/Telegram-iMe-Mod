.class public final synthetic Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/net/Uri;

.field public final synthetic f$3:Z

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZLandroid/net/Uri;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iput-boolean p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$1:Z

    iput-object p3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$2:Landroid/net/Uri;

    iput-boolean p4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$3:Z

    iput-wide p5, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$1:Z

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$2:Landroid/net/Uri;

    iget-boolean v3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$3:Z

    iget-wide v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;->f$4:J

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->$r8$lambda$VSCjtT78IiABxE5jzca3uHE7eYw(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZLandroid/net/Uri;ZJ)V

    return-void
.end method
