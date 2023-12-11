.class Lorg/telegram/ui/Stories/PeerStoriesView$24;
.super Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->bindInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 2623
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 1

    .line 2626
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
