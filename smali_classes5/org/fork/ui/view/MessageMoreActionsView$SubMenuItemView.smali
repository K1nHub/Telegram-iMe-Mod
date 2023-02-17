.class final Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItemView;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
.source "MessageMoreActionsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/view/MessageMoreActionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubMenuItemView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/MessageMoreActionsView;


# direct methods
.method public constructor <init>(Lorg/fork/ui/view/MessageMoreActionsView;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItemView;->this$0:Lorg/fork/ui/view/MessageMoreActionsView;

    .line 104
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 105
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->SUB_ITEM_TOP:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    sget v3, Lcom/smedialink/common/IdFabric$ViewTypes;->SUB_ITEM_BOTTOM:I

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 103
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 114
    iget-object p2, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItemView;->this$0:Lorg/fork/ui/view/MessageMoreActionsView;

    invoke-static {p2}, Lorg/fork/ui/view/MessageMoreActionsView;->access$getOptionItemHeight(Lorg/fork/ui/view/MessageMoreActionsView;)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 112
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->onMeasure(II)V

    return-void
.end method
