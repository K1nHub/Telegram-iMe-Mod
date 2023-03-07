.class Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
.super Landroid/widget/PopupWindow;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPopupWindow"
.end annotation


# instance fields
.field private mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;II)V
    .locals 0

    .line 1816
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 1817
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 1821
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$6000()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1823
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$6000()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1824
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$6000()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$6100()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 1826
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    :goto_0
    return-void
.end method

.method private registerListener(Landroid/view/View;)V
    .locals 2

    .line 1841
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_2

    .line 1842
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1843
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_1

    .line 1844
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1845
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1847
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_2

    .line 1848
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 1833
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 1836
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 1884
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1886
    :try_start_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    :catch_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->unregisterListener()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 1857
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1858
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->registerListener(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1860
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 1878
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1879
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->unregisterListener()V

    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 0

    .line 1872
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 1873
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->registerListener(Landroid/view/View;)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 0

    .line 1866
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 1867
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->registerListener(Landroid/view/View;)V

    return-void
.end method
