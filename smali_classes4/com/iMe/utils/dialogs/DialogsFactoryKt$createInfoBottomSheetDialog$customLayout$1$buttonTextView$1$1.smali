.class final Lcom/iMe/utils/dialogs/DialogsFactoryKt$createInfoBottomSheetDialog$customLayout$1$buttonTextView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogsFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createInfoBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field final synthetic $onButtonClickAction:Lcom/iMe/fork/utils/Callbacks$Callback;


# direct methods
.method constructor <init>(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createInfoBottomSheetDialog$customLayout$1$buttonTextView$1$1;->$onButtonClickAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    iput-object p2, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createInfoBottomSheetDialog$customLayout$1$buttonTextView$1$1;->$bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 520
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createInfoBottomSheetDialog$customLayout$1$buttonTextView$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createInfoBottomSheetDialog$customLayout$1$buttonTextView$1$1;->$onButtonClickAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    .line 522
    :cond_0
    iget-object p1, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createInfoBottomSheetDialog$customLayout$1$buttonTextView$1$1;->$bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method
