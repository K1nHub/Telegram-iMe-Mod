.class final Lorg/fork/ui/dialog/SelectLanguageBottomSheet$listView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectLanguageBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectLanguageBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$listView$2;->this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$listView$2;->invoke()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$listView$2;->this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->access$initListView(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)Lorg/fork/ui/dialog/SelectLanguageBottomSheet$initListView$1;

    move-result-object v0

    return-object v0
.end method
