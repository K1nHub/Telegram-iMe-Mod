.class public final Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$1$1;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "ChatAttachAlertWalletLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$1$1;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 104
    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$1$1;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$1$1;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    :cond_0
    return-void
.end method
