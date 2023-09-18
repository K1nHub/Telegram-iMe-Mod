.class final Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemView;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
.source "MessageMoreActionsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/view/MessageMoreActionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubMenuItemView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/view/MessageMoreActionsView;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemView;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    .line 114
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 115
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->SUB_ITEM_TOP:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 116
    :goto_0
    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->SUB_ITEM_BOTTOM:I

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 113
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 124
    iget-object p2, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemView;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    invoke-static {p2}, Lcom/iMe/fork/ui/view/MessageMoreActionsView;->access$getOptionItemHeight(Lcom/iMe/fork/ui/view/MessageMoreActionsView;)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 122
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->onMeasure(II)V

    return-void
.end method
