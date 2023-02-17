.class Lorg/telegram/ui/Components/ChatActivityEnterView$16;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ctrlPressed:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 2702
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2704
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->ctrlPressed:Z

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 2709
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return p1

    :cond_0
    if-eqz p3, :cond_2

    if-nez p2, :cond_2

    .line 2712
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->ctrlPressed:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-nez p2, :cond_2

    .line 2713
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
