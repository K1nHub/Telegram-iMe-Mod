.class LComponents/UpdateAppAlertDialog$BottomSheetCell$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UpdateAppAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LComponents/UpdateAppAlertDialog$BottomSheetCell;->setText(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LComponents/UpdateAppAlertDialog$BottomSheetCell;


# direct methods
.method constructor <init>(LComponents/UpdateAppAlertDialog$BottomSheetCell;)V
    .locals 0

    .line 165
    iput-object p1, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:LComponents/UpdateAppAlertDialog$BottomSheetCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 168
    iget-object p1, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:LComponents/UpdateAppAlertDialog$BottomSheetCell;

    iget-object p1, p1, LComponents/UpdateAppAlertDialog$BottomSheetCell;->this$0:LComponents/UpdateAppAlertDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LComponents/UpdateAppAlertDialog;->access$002(LComponents/UpdateAppAlertDialog;Z)Z

    .line 169
    iget-object p1, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:LComponents/UpdateAppAlertDialog$BottomSheetCell;

    invoke-static {p1}, LComponents/UpdateAppAlertDialog$BottomSheetCell;->access$100(LComponents/UpdateAppAlertDialog$BottomSheetCell;)[Landroid/widget/TextView;

    move-result-object p1

    aget-object p1, p1, v0

    .line 170
    iget-object v1, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:LComponents/UpdateAppAlertDialog$BottomSheetCell;

    invoke-static {v1}, LComponents/UpdateAppAlertDialog$BottomSheetCell;->access$100(LComponents/UpdateAppAlertDialog$BottomSheetCell;)[Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:LComponents/UpdateAppAlertDialog$BottomSheetCell;

    invoke-static {v2}, LComponents/UpdateAppAlertDialog$BottomSheetCell;->access$100(LComponents/UpdateAppAlertDialog$BottomSheetCell;)[Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 171
    iget-object v0, p0, LComponents/UpdateAppAlertDialog$BottomSheetCell$1;->this$1:LComponents/UpdateAppAlertDialog$BottomSheetCell;

    invoke-static {v0}, LComponents/UpdateAppAlertDialog$BottomSheetCell;->access$100(LComponents/UpdateAppAlertDialog$BottomSheetCell;)[Landroid/widget/TextView;

    move-result-object v0

    aput-object p1, v0, v3

    return-void
.end method
