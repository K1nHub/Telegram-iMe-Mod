.class Lorg/telegram/ui/DialogsActivity$56;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->onItemLongClick(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFFILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic val$alreadySelectedDialogs:Ljava/util/ArrayList;

.field final synthetic val$currentViewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field final synthetic val$dialogsType:I

.field final synthetic val$unselect:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;ILandroidx/recyclerview/widget/RecyclerView$Adapter;ZLjava/util/ArrayList;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 10110
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$56;->val$dialogsType:I

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$56;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-boolean p4, p0, Lorg/telegram/ui/DialogsActivity$56;->val$unselect:Z

    iput-object p5, p0, Lorg/telegram/ui/DialogsActivity$56;->val$alreadySelectedDialogs:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/ui/DialogsActivity$56;->val$currentViewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSelect(I)Z
    .locals 5

    .line 10137
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$38300(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$56;->val$dialogsType:I

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$8200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 10138
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$56;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p1

    const/4 v1, 0x0

    if-ltz p1, :cond_3

    .line 10139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 10142
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez p1, :cond_1

    return v1

    .line 10146
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$56;->val$unselect:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$56;->val$alreadySelectedDialogs:Ljava/util/ArrayList;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 10149
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$56;->val$unselect:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$56;->val$alreadySelectedDialogs:Ljava/util/ArrayList;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public checkPosition(IZ)I
    .locals 0

    return p1
.end method

.method public getPaddings([I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10167
    aput v1, p1, v0

    aput v1, p1, v1

    return-void
.end method

.method public limitReached()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionChanged(IZFF)V
    .locals 3

    .line 10113
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$38100(Lorg/telegram/ui/DialogsActivity;)I

    move-result p4

    iget v0, p0, Lorg/telegram/ui/DialogsActivity$56;->val$dialogsType:I

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$8200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    invoke-virtual {p3, p4, v0, v1, v2}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object p3

    .line 10114
    iget-object p4, p0, Lorg/telegram/ui/DialogsActivity$56;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast p4, Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixPosition(I)I

    move-result p1

    .line 10115
    iget-boolean p4, p0, Lorg/telegram/ui/DialogsActivity$56;->val$unselect:Z

    if-eqz p4, :cond_0

    xor-int/lit8 p2, p2, 0x1

    :cond_0
    if-ltz p1, :cond_5

    .line 10118
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lt p1, p4, :cond_1

    goto :goto_0

    .line 10121
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz p1, :cond_5

    .line 10122
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 10125
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p3

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_4

    .line 10128
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 10131
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/4 v0, 0x0

    invoke-static {p2, p3, p4, v0}, Lorg/telegram/ui/DialogsActivity;->access$38200(Lorg/telegram/ui/DialogsActivity;JLandroid/view/View;)V

    .line 10132
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p2, p3, p4, p1}, Lorg/telegram/ui/DialogsActivity;->access$28800(Lorg/telegram/ui/DialogsActivity;JZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public scrollBy(I)V
    .locals 2

    .line 10172
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$56;->val$currentViewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method
