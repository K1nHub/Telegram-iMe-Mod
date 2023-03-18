.class public final Lorg/fork/ui/dialog/SelectFabsBottomSheet$1;
.super Landroid/widget/FrameLayout;
.source "SelectFabsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SelectFabsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/Set;Lorg/fork/utils/Callbacks$Callback1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/SelectFabsBottomSheet;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/fork/ui/dialog/SelectFabsBottomSheet;)V
    .locals 0

    iput-object p2, p0, Lorg/fork/ui/dialog/SelectFabsBottomSheet$1;->this$0:Lorg/fork/ui/dialog/SelectFabsBottomSheet;

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/fork/ui/dialog/SelectFabsBottomSheet$1;->this$0:Lorg/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/16 v2, 0x1c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lorg/fork/ui/dialog/SelectFabsBottomSheet;->access$setItemWidth$p(Lorg/fork/ui/dialog/SelectFabsBottomSheet;I)V

    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
