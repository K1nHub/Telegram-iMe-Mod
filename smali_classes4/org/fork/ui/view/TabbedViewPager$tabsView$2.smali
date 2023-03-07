.class final Lorg/fork/ui/view/TabbedViewPager$tabsView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TabbedViewPager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/TabbedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/TabbedViewPager;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/TabbedViewPager;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/TabbedViewPager$tabsView$2;->this$0:Lorg/fork/ui/view/TabbedViewPager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/fork/ui/view/TabbedViewPager$tabsView$2;->invoke()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/fork/ui/view/TabbedViewPager$tabsView$2;->this$0:Lorg/fork/ui/view/TabbedViewPager;

    invoke-static {v0}, Lorg/fork/ui/view/TabbedViewPager;->access$initTabsView(Lorg/fork/ui/view/TabbedViewPager;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    return-object v0
.end method
