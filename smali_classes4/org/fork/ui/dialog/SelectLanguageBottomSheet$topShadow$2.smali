.class final Lorg/fork/ui/dialog/SelectLanguageBottomSheet$topShadow$2;
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
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$topShadow$2;->this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$topShadow$2;->this$0:Lorg/fork/ui/dialog/SelectLanguageBottomSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet;->access$initShadow(Lorg/fork/ui/dialog/SelectLanguageBottomSheet;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectLanguageBottomSheet$topShadow$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
