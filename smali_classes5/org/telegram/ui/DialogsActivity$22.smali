.class Lorg/telegram/ui/DialogsActivity$22;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 6056
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll()V
    .locals 2

    .line 6059
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 6060
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$4002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 6061
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$22;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$28900(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
