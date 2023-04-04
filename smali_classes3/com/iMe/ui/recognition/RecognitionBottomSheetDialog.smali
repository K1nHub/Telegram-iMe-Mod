.class public final Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "RecognitionBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$Companion;,
        Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecognitionBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecognitionBottomSheetDialog.kt\ncom/iMe/ui/recognition/RecognitionBottomSheetDialog\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,137:1\n56#2,6:138\n*S KotlinDebug\n*F\n+ 1 RecognitionBottomSheetDialog.kt\ncom/iMe/ui/recognition/RecognitionBottomSheetDialog\n*L\n30#1:138,6\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final iconResId:I

.field private final parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final textToRecognize:Ljava/lang/String;

.field private final titleResId:I

.field private final translationDelegate:Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;


# direct methods
.method public static synthetic $r8$lambda$0LyjsRmxqX69ts_4BBAvsrfK6TY(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->setupListeners$lambda$7$lambda$6(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QKbFb5cjG3b05jg9KzOKGZQompo(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->setupListeners$lambda$7$lambda$5(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nzMOxa_0NJ9Mi1hWZtsKH3o4WHQ(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->setupListeners$lambda$7$lambda$4(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tVjzHY_IKj6_kL3w7Dy00eiWWGs(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->setupListeners$lambda$7$lambda$3(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 33
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->Companion:Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;II)V
    .locals 2

    const-string v0, "parentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textToRecognize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translationDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentFragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 22
    iput-object p1, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 23
    iput-object p2, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->textToRecognize:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->translationDelegate:Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;

    .line 25
    iput p4, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->titleResId:I

    .line 26
    iput p5, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->iconResId:I

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;)V

    invoke-static {p0, p3, p1, v1, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getParentFragment$p(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method private final actionCopyToClipboard()V
    .locals 3

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->recognizedText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;II)Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;
    .locals 6

    sget-object v0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->Companion:Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;II)Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private final setupListeners()V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-result-object v0

    .line 99
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageClose:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageCopy:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageTranslate:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageShare:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$7$lambda$3(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static final setupListeners$lambda$7$lambda$4(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->actionCopyToClipboard()V

    return-void
.end method

.method private static final setupListeners$lambda$7$lambda$5(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->translateText()V

    return-void
.end method

.method private static final setupListeners$lambda$7$lambda$6(Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->shareText()V

    return-void
.end method

.method private final setupScreen()V
    .locals 4

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-result-object v0

    .line 57
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->recognizedText:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->textToRecognize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->textCompany:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    iget v3, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->titleResId:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageServiceLogo:Landroidx/appcompat/widget/AppCompatImageView;

    iget v1, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->iconResId:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method private final setupStyles()V
    .locals 7

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "actionBarDefault"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-result-object v0

    .line 68
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->textRecognitionContainer:Landroid/widget/LinearLayout;

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 71
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 72
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageClose:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageClose"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "chat_status"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 73
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->textCompany:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->textCompany:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "textCompany"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 75
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageServiceLogo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v4, "imageServiceLogo"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 78
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->recognizedText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    sget v3, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const-string v3, "chat_messagePanelText"

    .line 80
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageCopy:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "imageCopy"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "chats_actionBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 85
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageShare:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v5, "imageShare"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 86
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageTranslate:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v6, "imageTranslate"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 89
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageCopy:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 90
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageTranslate:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 91
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageShare:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 92
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->imageClose:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    return-void
.end method

.method private final shareText()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentFragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->recognizedText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->share(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private final translateText()V
    .locals 4

    .line 111
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->recognizedText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->translationDelegate:Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;->onTranslateAction(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->translationDelegate:Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-interface {v2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;->onTranslateAction(Ljava/lang/String;)V

    .line 118
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->setupStyles()V

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->setupListeners()V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->setupScreen()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
