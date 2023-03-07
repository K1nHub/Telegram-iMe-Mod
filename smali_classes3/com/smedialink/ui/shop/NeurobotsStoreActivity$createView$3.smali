.class public final Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$3;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "NeurobotsStoreActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    .line 192
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x68

    if-eq p1, v0, :cond_1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    new-instance v0, Lcom/smedialink/ui/languages/LanguagesActivity;

    invoke-direct {v0}, Lcom/smedialink/ui/languages/LanguagesActivity;-><init>()V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getActionBar$p$s-914277367(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;Z)V

    .line 203
    iget-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getRootContainer$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "rootContainer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    .line 196
    :cond_3
    iget-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return-void
.end method
