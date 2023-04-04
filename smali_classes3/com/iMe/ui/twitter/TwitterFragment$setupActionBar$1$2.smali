.class public final Lcom/iMe/ui/twitter/TwitterFragment$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "TwitterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/twitter/TwitterFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/twitter/TwitterFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/TwitterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/twitter/TwitterFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/twitter/TwitterFragment;

    .line 130
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/iMe/ui/twitter/TwitterFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/twitter/TwitterFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 134
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->OPEN_IN_TWITTER:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/twitter/TwitterFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/twitter/TwitterFragment;

    invoke-static {p1}, Lcom/iMe/ui/twitter/TwitterFragment;->access$getPresenter(Lcom/iMe/ui/twitter/TwitterFragment;)Lcom/iMe/ui/twitter/TwitterPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/twitter/TwitterPresenter;->onOpenInTwitterClick()V

    :cond_1
    :goto_0
    return-void
.end method
