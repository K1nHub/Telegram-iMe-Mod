.class Lorg/telegram/ui/ManageLinksActivity$ListAdapter$5;
.super Lcom/smedialink/ui/common/SimpleTextWatcher;
.source "ManageLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

.field final synthetic val$linkActionView:Lorg/telegram/ui/Components/LinkActionView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    .line 2261
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$5;->val$linkActionView:Lorg/telegram/ui/Components/LinkActionView;

    invoke-direct {p0}, Lcom/smedialink/ui/common/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 2264
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$5;->val$linkActionView:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->access$4400(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method
