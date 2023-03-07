.class public final Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;
.super Ljava/lang/Object;
.source "FullscreenContentDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/dialog/FullscreenContentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFullscreenContentDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullscreenContentDialog.kt\ncom/smedialink/ui/dialog/FullscreenContentDialog$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;-><init>()V

    return-void
.end method

.method private final createDialog(Lcom/smedialink/ui/dialog/FullscreenContentDialog;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 7

    .line 95
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->setBottomGravity(Landroid/app/Dialog;)V

    .line 96
    invoke-static {p1}, Lcom/smedialink/ui/dialog/FullscreenContentDialog;->access$getBinding$p(Lcom/smedialink/ui/dialog/FullscreenContentDialog;)Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/databinding/ForkFullscreenContentAlertBinding;->buttonAction:Lcom/smedialink/ui/custom/ActionButton;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion$createDialog$1;

    invoke-direct {v4, v0, p2}, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion$createDialog$1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/fork/utils/Callbacks$Callback;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :goto_0
    const-string p1, "dialog"

    .line 100
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 10

    move-object v0, p5

    const-string v1, "context"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "title"

    move-object v7, p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "description"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "buttonText"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v1, Lcom/smedialink/ui/dialog/FullscreenContentDialog;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, p5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    move-object v2, v1

    move v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/smedialink/ui/dialog/FullscreenContentDialog;-><init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    move-object v0, p0

    move-object/from16 v2, p7

    .line 74
    invoke-direct {p0, v1, v2}, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;->createDialog(Lcom/smedialink/ui/dialog/FullscreenContentDialog;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public final newInstance(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/smedialink/ui/dialog/FullscreenContentDialog;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, v0

    move-object v2, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/ui/dialog/FullscreenContentDialog;-><init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    .line 86
    invoke-direct {p0, v0, p6}, Lcom/smedialink/ui/dialog/FullscreenContentDialog$Companion;->createDialog(Lcom/smedialink/ui/dialog/FullscreenContentDialog;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    return-object p1
.end method
