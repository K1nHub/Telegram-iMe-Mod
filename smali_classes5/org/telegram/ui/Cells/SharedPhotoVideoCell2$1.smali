.class Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SharedPhotoVideoCell2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->startRevealMedia(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 595
    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealedInSharedMedia:Z

    .line 596
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
