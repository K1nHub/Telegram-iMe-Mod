.class public final Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 TokenListsBottomSheet.kt\ncom/iMe/fork/ui/dialog/TokenListsBottomSheet\n*L\n1#1,432:1\n72#2:433\n73#2:442\n88#3,8:434\n*E\n"
.end annotation


# instance fields
.field final synthetic $actionBarHeightPx$inlined:I

.field final synthetic $this_apply$inlined:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$RootView;

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$RootView;Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;I)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1;->$this_apply$inlined:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$RootView;

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    iput p3, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1;->$actionBarHeightPx$inlined:I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 88
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1;->$this_apply$inlined:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$RootView;

    .line 89
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    invoke-static {p2}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->access$getTopShadow(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Landroid/view/View;

    move-result-object p2

    .line 90
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result p4

    .line 92
    iget p7, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$_init_$lambda$1$$inlined$doOnLayout$1;->$actionBarHeightPx$inlined:I

    const/4 p3, -0x1

    const/16 p5, 0x30

    const/4 p6, 0x0

    const/4 p8, 0x0

    const/4 p9, 0x0

    .line 89
    invoke-static/range {p3 .. p9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    .line 88
    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
