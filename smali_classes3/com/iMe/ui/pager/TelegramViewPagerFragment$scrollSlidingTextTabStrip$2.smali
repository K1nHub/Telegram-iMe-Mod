.class final Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollSlidingTextTabStrip$2;
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
        "Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollSlidingTextTabStrip$2;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollSlidingTextTabStrip$2;->invoke()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollSlidingTextTabStrip$2;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$initTabLayout(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    return-object v0
.end method
