.class public final Lcom/smedialink/ui/languages/LanguagesAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;
.source "LanguagesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/languages/LanguagesAdapter$OnLanguageClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter<",
        "Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/ui/languages/LanguageViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final onCountryClickListener:Lcom/smedialink/ui/languages/LanguagesAdapter$OnLanguageClickListener;


# direct methods
.method public static synthetic $r8$lambda$7B-Nzhqqfv6CMLDjHiWpwKaIAIY(Lcom/smedialink/ui/languages/LanguagesAdapter;Lcom/smedialink/ui/languages/LanguageViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/languages/LanguagesAdapter;->onBindViewHolder$lambda-1$lambda-0(Lcom/smedialink/ui/languages/LanguagesAdapter;Lcom/smedialink/ui/languages/LanguageViewModel;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/ui/languages/LanguagesAdapter$OnLanguageClickListener;)V
    .locals 1

    const-string v0, "onCountryClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/languages/LanguagesAdapter;->onCountryClickListener:Lcom/smedialink/ui/languages/LanguagesAdapter$OnLanguageClickListener;

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/languages/LanguagesAdapter;->items:Ljava/util/List;

    return-void
.end method

.method private static final onBindViewHolder$lambda-1$lambda-0(Lcom/smedialink/ui/languages/LanguagesAdapter;Lcom/smedialink/ui/languages/LanguageViewModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$country"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/smedialink/ui/languages/LanguagesAdapter;->onCountryClickListener:Lcom/smedialink/ui/languages/LanguagesAdapter$OnLanguageClickListener;

    invoke-interface {p0, p1}, Lcom/smedialink/ui/languages/LanguagesAdapter$OnLanguageClickListener;->onLanguageClick(Lcom/smedialink/ui/languages/LanguageViewModel;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/languages/LanguagesAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/smedialink/utils/common/ViewBindingAdapterHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/languages/LanguagesAdapter;->onBindViewHolder(Lcom/smedialink/utils/common/ViewBindingAdapterHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/smedialink/utils/common/ViewBindingAdapterHolder;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/utils/common/ViewBindingAdapterHolder<",
            "Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/smedialink/ui/languages/LanguagesAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/languages/LanguageViewModel;

    .line 33
    invoke-virtual {p1}, Lcom/smedialink/utils/common/ViewBindingAdapterHolder;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;

    .line 34
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;->textCountryName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/smedialink/ui/languages/LanguageViewModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;->textCountryName:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;->checkbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p2}, Lcom/smedialink/ui/languages/LanguageViewModel;->getChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v3, v2, [[I

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, -0x10100a0

    const/4 v7, 0x0

    aput v6, v5, v7

    aput-object v5, v3, v7

    new-array v5, v4, [I

    const v6, 0x10100a0

    aput v6, v5, v7

    aput-object v5, v3, v4

    new-array v2, v2, [I

    .line 38
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v2, v7

    const-string v1, "chats_actionBackground"

    .line 39
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v2, v4

    .line 37
    invoke-direct {v0, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 41
    iget-object v1, p1, Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;->checkbox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {v1, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 43
    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcom/smedialink/ui/languages/LanguagesAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/smedialink/ui/languages/LanguagesAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/languages/LanguagesAdapter;Lcom/smedialink/ui/languages/LanguageViewModel;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/languages/LanguagesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/smedialink/utils/common/ViewBindingAdapterHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/smedialink/utils/common/ViewBindingAdapterHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/smedialink/utils/common/ViewBindingAdapterHolder<",
            "Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance p2, Lcom/smedialink/utils/common/ViewBindingAdapterHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkCountryItemListBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/smedialink/utils/common/ViewBindingAdapterHolder;-><init>(Landroidx/viewbinding/ViewBinding;)V

    return-object p2
.end method

.method public final setLanguages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/ui/languages/LanguageViewModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/smedialink/ui/languages/LanguagesAdapter;->items:Ljava/util/List;

    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
