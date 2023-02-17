.class final Lcom/smedialink/utils/dialogs/DialogsFactoryKt$showErrorAlert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogsFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/widget/TextView;",
        "Lorg/telegram/ui/ActionBar/AlertDialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/utils/dialogs/DialogsFactoryKt$showErrorAlert$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$showErrorAlert$2;

    invoke-direct {v0}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$showErrorAlert$2;-><init>()V

    sput-object v0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$showErrorAlert$2;->INSTANCE:Lcom/smedialink/utils/dialogs/DialogsFactoryKt$showErrorAlert$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$showErrorAlert$2;->invoke(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$noName_1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
