.class final Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$listView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DrawerHeaderSettingsBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/ui/Components/RecyclerListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$listView$2;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$listView$2;->invoke()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$listView$2;->this$0:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$initListView(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    return-object v0
.end method
