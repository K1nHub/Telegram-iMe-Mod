.class Lorg/telegram/ui/ContactsActivity$9;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scrollingManually:Z

.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 1153
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1160
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->access$700(Lorg/telegram/ui/ContactsActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->access$1100(Lorg/telegram/ui/ContactsActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1161
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1163
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity$9;->scrollingManually:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1165
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity$9;->scrollingManually:Z

    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1171
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1172
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_7

    .line 1173
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->access$3100(Lorg/telegram/ui/ContactsActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    const/4 p3, 0x0

    .line 1175
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p3

    .line 1182
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$3200(Lorg/telegram/ui/ContactsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p2, :cond_2

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$3300(Lorg/telegram/ui/ContactsActivity;)I

    move-result v0

    sub-int/2addr v0, p1

    .line 1184
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->access$3300(Lorg/telegram/ui/ContactsActivity;)I

    move-result v2

    if-ge p1, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p3

    .line 1185
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_4

    goto :goto_2

    .line 1187
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$3200(Lorg/telegram/ui/ContactsActivity;)I

    move-result v0

    if-le p2, v0, :cond_3

    move p3, v1

    :cond_3
    move v2, p3

    :goto_2
    move p3, v1

    :cond_4
    if-eqz p3, :cond_6

    .line 1189
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p3}, Lorg/telegram/ui/ContactsActivity;->access$3400(Lorg/telegram/ui/ContactsActivity;)Z

    move-result p3

    if-eqz p3, :cond_6

    if-nez v2, :cond_5

    iget-boolean p3, p0, Lorg/telegram/ui/ContactsActivity$9;->scrollingManually:Z

    if-eqz p3, :cond_6

    .line 1190
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p3, v2}, Lorg/telegram/ui/ContactsActivity;->access$1400(Lorg/telegram/ui/ContactsActivity;Z)V

    .line 1192
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p3, p2}, Lorg/telegram/ui/ContactsActivity;->access$3202(Lorg/telegram/ui/ContactsActivity;I)I

    .line 1193
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ContactsActivity;->access$3302(Lorg/telegram/ui/ContactsActivity;I)I

    .line 1194
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ContactsActivity;->access$3402(Lorg/telegram/ui/ContactsActivity;Z)Z

    :cond_7
    return-void
.end method
