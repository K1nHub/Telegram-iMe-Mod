.class Lorg/telegram/ui/PhotoViewer$12;
.super Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 4737
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$12;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/app/Activity;)V

    .line 4738
    new-instance p1, Lorg/telegram/ui/PhotoViewer$12$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PhotoViewer$12$1;-><init>(Lorg/telegram/ui/PhotoViewer$12;)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$12;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 4750
    invoke-super {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->onAttachedToWindow()V

    .line 4752
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$12;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 4757
    invoke-super {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->onDetachedFromWindow()V

    .line 4759
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method
