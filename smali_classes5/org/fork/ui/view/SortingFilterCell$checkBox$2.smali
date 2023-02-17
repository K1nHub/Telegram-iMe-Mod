.class final Lorg/fork/ui/view/SortingFilterCell$checkBox$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SortingFilterCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/SortingFilterCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/Components/CheckBoxSquare;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/SortingFilterCell;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/SortingFilterCell;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/SortingFilterCell$checkBox$2;->this$0:Lorg/fork/ui/view/SortingFilterCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/fork/ui/view/SortingFilterCell$checkBox$2;->invoke()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/fork/ui/view/SortingFilterCell$checkBox$2;->this$0:Lorg/fork/ui/view/SortingFilterCell;

    invoke-static {v0}, Lorg/fork/ui/view/SortingFilterCell;->access$initCheckBox(Lorg/fork/ui/view/SortingFilterCell;)Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v0

    return-object v0
.end method
