.class public final Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "FragmentUsernamesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->access$getPresenter(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->onQueryUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->access$getPresenter(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;)Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->onQueryUpdate(Ljava/lang/String;)V

    return-void
.end method
