.class final Lcom/iMe/ui/pager/TelegramViewPagerFragment$pagesData$2;
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
        "[",
        "Lcom/iMe/ui/pager/ViewPageData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$pagesData$2;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$pagesData$2;->invoke()[Lcom/iMe/ui/pager/ViewPageData;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Lcom/iMe/ui/pager/ViewPageData;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$pagesData$2;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->initPageData()[Lcom/iMe/ui/pager/ViewPageData;

    move-result-object v0

    return-object v0
.end method
