.class public final Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$3\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 CreateReactionButtonsActivity.kt\norg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter\n*L\n1#1,97:1\n78#2:98\n71#3:99\n532#4,11:100\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_apply$inlined:Lorg/fork/ui/view/MovingReactionCell;

.field final synthetic this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/fork/ui/view/MovingReactionCell;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    iput-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;->$this_apply$inlined:Lorg/fork/ui/view/MovingReactionCell;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 100
    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    iget-object p3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;->$this_apply$inlined:Lorg/fork/ui/view/MovingReactionCell;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 103
    iget-object p3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p3

    sub-int/2addr p2, p3

    if-ltz p2, :cond_1

    .line 104
    iget-object p3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p3}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtonsCount$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)I

    move-result p3

    if-lt p2, p3, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;->$this_apply$inlined:Lorg/fork/ui/view/MovingReactionCell;

    invoke-virtual {p3}, Lorg/fork/ui/view/MovingReactionCell;->getUrlButton()Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;->setTitle(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getButtons$p(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object p1

    iget-object p3, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$onCreateViewHolder$lambda$8$$inlined$doOnTextChanged$1;->$this_apply$inlined:Lorg/fork/ui/view/MovingReactionCell;

    invoke-virtual {p3}, Lorg/fork/ui/view/MovingReactionCell;->getUrlButton()Lcom/smedialink/storage/data/network/model/request/reaction/UrlButton;

    move-result-object p3

    aput-object p3, p1, p2

    :cond_1
    :goto_0
    return-void
.end method
