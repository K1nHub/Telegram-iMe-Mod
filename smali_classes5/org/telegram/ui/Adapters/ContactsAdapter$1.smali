.class Lorg/telegram/ui/Adapters/ContactsAdapter$1;
.super Lcom/smedialink/ui/common/SimpleTextWatcher;
.source "ContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/ContactsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/ContactsAdapter;

.field final synthetic val$editTextCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/ContactsAdapter;Lorg/telegram/ui/Cells/EditTextSettingsCell;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter$1;->this$0:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter$1;->val$editTextCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-direct {p0}, Lcom/smedialink/ui/common/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter$1;->this$0:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter$1;->val$editTextCell:Lorg/telegram/ui/Cells/EditTextSettingsCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->access$002(Lorg/telegram/ui/Adapters/ContactsAdapter;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
