.class final Lcom/iMe/ui/pager/TelegramViewPagerFragment$floatingActionButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TelegramViewPagerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/pager/TelegramViewPagerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/view/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$floatingActionButton$2;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/view/FloatingActionButton;
    .locals 3

    .line 70
    new-instance v0, Lcom/iMe/fork/ui/view/FloatingActionButton;

    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$floatingActionButton$2;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/FloatingActionButton;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$floatingActionButton$2;->invoke()Lcom/iMe/fork/ui/view/FloatingActionButton;

    move-result-object v0

    return-object v0
.end method