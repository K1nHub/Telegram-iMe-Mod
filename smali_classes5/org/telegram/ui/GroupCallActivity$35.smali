.class Lorg/telegram/ui/GroupCallActivity$35;
.super Landroid/widget/LinearLayout;
.source "GroupCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ignoreLayout:Z

.field final synthetic val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$hourPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .line 5082
    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$35;->val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p4, p0, Lorg/telegram/ui/GroupCallActivity$35;->val$hourPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p5, p0, Lorg/telegram/ui/GroupCallActivity$35;->val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 5084
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCallActivity$35;->ignoreLayout:Z

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x1

    .line 5088
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$35;->ignoreLayout:Z

    .line 5090
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$35;->val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 5091
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$35;->val$hourPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 5092
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$35;->val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 5093
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$35;->val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v2, 0x36

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/2addr v3, v1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5094
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$35;->val$hourPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/2addr v3, v1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5095
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$35;->val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    mul-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    .line 5096
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$35;->ignoreLayout:Z

    .line 5097
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 5102
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$35;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 5105
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
