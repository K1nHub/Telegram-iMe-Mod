.class public final Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initButtonsLayout$lambda$7$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->initButtonsLayout()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 DeleteServiceMessagesBottomSheet.kt\ncom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet\n*L\n1#1,432:1\n72#2:433\n73#2:436\n255#3,2:434\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_apply$inlined:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initButtonsLayout$lambda$7$$inlined$doOnLayout$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initButtonsLayout$lambda$7$$inlined$doOnLayout$1;->$this_apply$inlined:Landroid/widget/FrameLayout;

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

    .line 255
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initButtonsLayout$lambda$7$$inlined$doOnLayout$1;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadows(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initButtonsLayout$lambda$7$$inlined$doOnLayout$1;->$this_apply$inlined:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTop()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBottom(I)V

    return-void
.end method
