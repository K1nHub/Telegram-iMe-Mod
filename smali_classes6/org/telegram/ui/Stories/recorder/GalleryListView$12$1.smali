.class Lorg/telegram/ui/Stories/recorder/GalleryListView$12$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GalleryListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->onSearchCollapse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/GalleryListView$12;

.field final synthetic val$searchField:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$12;Landroid/view/View;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$1;->this$1:Lorg/telegram/ui/Stories/recorder/GalleryListView$12;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$1;->val$searchField:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$1;->val$searchField:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$12$1;->this$1:Lorg/telegram/ui/Stories/recorder/GalleryListView$12;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->access$1000(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
