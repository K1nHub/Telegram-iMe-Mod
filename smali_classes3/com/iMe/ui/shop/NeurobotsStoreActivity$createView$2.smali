.class public final Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "NeurobotsStoreActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/NeurobotsStoreActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;


# direct methods
.method public static synthetic $r8$lambda$fd02E7B-R5yz1LpSGEXUeIXgL6o(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->onSearchExpand$lambda$0(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    .line 155
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method

.method private static final onSearchExpand$lambda$0(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-static {p0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getSearchItem$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getNothingFoundPlaceholder$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "nothingFoundPlaceholder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getSearchResultsList$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "searchResultsList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getBaseViewsContainer$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "baseViewsContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getTabLayout$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lcom/iMe/ui/shop/view/custom/CustomTabLayout;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "tabLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getSearchDisposable$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getSearchMenuItem$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getChangeCountryItem$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 175
    :goto_2
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getSearchItem$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public onSearchExpand()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getTabLayout$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lcom/iMe/ui/shop/view/custom/CustomTabLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "tabLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$listenForSearchResults(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)V

    .line 160
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getSearchMenuItem$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getChangeCountryItem$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getSearchItem$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    new-instance v2, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$createView$2;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getSearchSubject$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
