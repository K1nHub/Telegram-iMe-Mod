.class Lorg/telegram/ui/Components/EmojiView$39;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 3234
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$39;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 3238
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$39;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$5600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3241
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$39;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$13000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3244
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$39;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$6100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3246
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$39;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    goto :goto_0

    .line 3248
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$39;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$9800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 3253
    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2300(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3254
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3255
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2300(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3256
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3257
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3258
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2300(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3259
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method
