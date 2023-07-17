.class Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UpdateAppAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    iget-object p1, p1, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$002(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Z)Z

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->access$100(Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;)[Landroid/widget/TextView;

    move-result-object p1

    aget-object p1, p1, v0

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    invoke-static {v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->access$100(Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;)[Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    invoke-static {v2}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->access$100(Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;)[Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;->access$100(Lorg/telegram/ui/Components/UpdateAppAlertDialog$BottomSheetCell;)[Landroid/widget/TextView;

    move-result-object v0

    aput-object p1, v0, v3

    return-void
.end method
