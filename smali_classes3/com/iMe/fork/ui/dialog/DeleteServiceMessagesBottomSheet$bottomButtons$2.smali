.class final Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$bottomButtons$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteServiceMessagesBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;-><init>(Landroid/content/Context;ZZJJJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$ywF3Qv0E9eD6LEjcdGXNxZwY_w4(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$bottomButtons$2;->invoke$lambda$0(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    return-void
.end method

.method constructor <init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$bottomButtons$2;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$showPeriodSelectionDialog(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$bottomButtons$2;->invoke()[Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Landroid/widget/TextView;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$bottomButtons$2;->this$0:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    new-instance v1, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$bottomButtons$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$bottomButtons$2$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getBottomDialogButtons(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Ljava/lang/Runnable;)[Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
