.class Lorg/telegram/ui/ActionBar/FloatingActionMode$1;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/FloatingActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/FloatingActionMode;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/FloatingActionMode;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$1;->this$0:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$1;->this$0:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->access$000(Lorg/telegram/ui/ActionBar/FloatingActionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$1;->this$0:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->access$100(Lorg/telegram/ui/ActionBar/FloatingActionMode;)Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$1;->this$0:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->access$100(Lorg/telegram/ui/ActionBar/FloatingActionMode;)Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    :cond_0
    return-void
.end method
