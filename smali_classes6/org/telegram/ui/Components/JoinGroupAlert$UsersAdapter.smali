.class Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "JoinGroupAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/JoinGroupAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsersAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/JoinGroupAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/content/Context;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 319
    iput-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 326
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    goto :goto_0

    .line 329
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    :goto_0
    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 356
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/JoinSheetUserCell;

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/JoinSheetUserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    .line 361
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_1

    .line 362
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    goto :goto_0

    .line 364
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    .line 366
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$000(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/JoinSheetUserCell;->setCount(I)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 349
    new-instance p1, Lorg/telegram/ui/Cells/JoinSheetUserCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$UsersAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/JoinSheetUserCell;-><init>(Landroid/content/Context;)V

    .line 350
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v0, 0x64

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0x5a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
