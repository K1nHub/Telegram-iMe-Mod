.class final Lcom/iMe/fork/ui/view/TemplatesHeaderCell$sortButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TemplatesHeaderCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/TemplatesHeaderCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/TemplatesHeaderCell;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/TemplatesHeaderCell;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$sortButton$2;->this$0:Lcom/iMe/fork/ui/view/TemplatesHeaderCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$sortButton$2;->invoke()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$sortButton$2;->this$0:Lcom/iMe/fork/ui/view/TemplatesHeaderCell;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->access$initSortButton(Lcom/iMe/fork/ui/view/TemplatesHeaderCell;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method
