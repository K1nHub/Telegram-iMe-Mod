.class Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;
.super Ljava/lang/Object;
.source "SelectorSearchCell.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->updateSpans(ZLjava/util/HashSet;Ljava/lang/Runnable;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

.field final synthetic val$afterDelete:Ljava/lang/Runnable;

.field final synthetic val$selectedIds:Ljava/util/HashSet;

.field private wasEmpty:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->val$selectedIds:Ljava/util/HashSet;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->val$afterDelete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    const/16 v0, 0x43

    if-ne p2, v0, :cond_2

    .line 224
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 225
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->access$300(Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->wasEmpty:Z

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->wasEmpty:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 228
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->val$selectedIds:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$3;->val$afterDelete:Ljava/lang/Runnable;

    invoke-static {p2, p1, p3, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->access$400(Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;Landroid/view/View;Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return v0

    :cond_2
    :goto_1
    return p1
.end method
