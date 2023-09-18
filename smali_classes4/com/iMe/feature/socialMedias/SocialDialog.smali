.class public final Lcom/iMe/feature/socialMedias/SocialDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "SocialDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/socialMedias/SocialDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocialDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocialDialog.kt\ncom/iMe/feature/socialMedias/SocialDialog\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n56#2,6:63\n1855#3,2:69\n*S KotlinDebug\n*F\n+ 1 SocialDialog.kt\ncom/iMe/feature/socialMedias/SocialDialog\n*L\n22#1:63,6\n35#1:69,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/feature/socialMedias/SocialDialog$Companion;


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;

.field private final resource$delegate:Lkotlin/Lazy;

.field private textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/feature/socialMedias/SocialDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/SocialDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/feature/socialMedias/SocialDialog;->Companion:Lcom/iMe/feature/socialMedias/SocialDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;

    move-result-object p1

    const-string v0, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialDialog;->binding:Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;

    .line 21
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/iMe/feature/socialMedias/SocialDialog;->textColor:I

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialDialog$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/feature/socialMedias/SocialDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialDialog;->resource$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final addItemToContainer(Lcom/iMe/feature/socialMedias/SocialNetwork;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 40
    iget-object v2, v0, Lcom/iMe/feature/socialMedias/SocialDialog;->binding:Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksItemBinding;

    move-result-object v1

    const-string v2, "inflate(inflater, binding.root, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksItemBinding;->text:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksItemBinding;->text:Landroid/widget/TextView;

    iget v3, v0, Lcom/iMe/feature/socialMedias/SocialDialog;->textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v4, v1, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksItemBinding;->icon:Landroid/widget/ImageView;

    const-string v2, "icon"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getIcon()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->withGlide$default(Landroid/widget/ImageView;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 46
    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v10

    const-string v2, "root"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v13, v3, v2, v0}, Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/feature/socialMedias/SocialDialog;)V

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 49
    iget-object v2, v0, Lcom/iMe/feature/socialMedias/SocialDialog;->binding:Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;

    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialDialog;->resource$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final newInstance(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/iMe/feature/socialMedias/SocialDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/iMe/feature/socialMedias/SocialDialog;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/feature/socialMedias/SocialDialog;->Companion:Lcom/iMe/feature/socialMedias/SocialDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iMe/feature/socialMedias/SocialDialog$Companion;->newInstance(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/iMe/feature/socialMedias/SocialDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 25
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/SocialDialog;->binding:Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;->text:Landroid/widget/TextView;

    iget v0, p0, Lcom/iMe/feature/socialMedias/SocialDialog;->textColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/SocialDialog;->binding:Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;->text:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/SocialDialog;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->social_cell_social_networks:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/SocialDialog;->binding:Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final updateData(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNetworkChosen"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialDialog;->binding:Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkDialogSocialNetworksBinding;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 35
    invoke-direct {p0, v0, p2}, Lcom/iMe/feature/socialMedias/SocialDialog;->addItemToContainer(Lcom/iMe/feature/socialMedias/SocialNetwork;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    return-void
.end method
