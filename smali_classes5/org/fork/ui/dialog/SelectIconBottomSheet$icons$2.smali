.class final Lorg/fork/ui/dialog/SelectIconBottomSheet$icons$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectIconBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectIconBottomSheet;-><init>(Landroid/app/Activity;Lorg/fork/enums/FilterActivityType;Lcom/smedialink/storage/domain/model/filters/FilterIcon;Lcom/smedialink/storage/data/repository/topics/Topic;Lorg/fork/utils/Callbacks$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Enum<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectIconBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SelectIconBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet$icons$2;->this$0:Lorg/fork/ui/dialog/SelectIconBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/fork/ui/dialog/SelectIconBottomSheet$icons$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectIconBottomSheet$icons$2;->this$0:Lorg/fork/ui/dialog/SelectIconBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SelectIconBottomSheet;->access$initIcons(Lorg/fork/ui/dialog/SelectIconBottomSheet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
