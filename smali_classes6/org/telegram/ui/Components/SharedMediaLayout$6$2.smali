.class Lorg/telegram/ui/Components/SharedMediaLayout$6$2;
.super Ljava/lang/Object;
.source "SharedMediaLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SharedMediaLayout$6;

.field final synthetic val$tab:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$6;I)V
    .locals 0

    .line 2025
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$6;

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6$2;->val$tab:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2028
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6$2;->val$tab:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->showMediaCalendar(IZ)V

    .line 2029
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6$2;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->optionsWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    .line 2030
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
