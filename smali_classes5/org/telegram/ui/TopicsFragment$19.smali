.class Lorg/telegram/ui/TopicsFragment$19;
.super Landroid/view/View;
.source "TopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V
    .locals 0

    .line 1307
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$19;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 1310
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1311
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$19;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->access$4000(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$19;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->access$4100(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
