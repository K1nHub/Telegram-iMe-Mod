.class public final Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "ChatCopyPartBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatCopyPartBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatCopyPartBottomSheetDialog.kt\ncom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,75:1\n56#2,6:76\n*S KotlinDebug\n*F\n+ 1 ChatCopyPartBottomSheetDialog.kt\ncom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog\n*L\n23#1:76,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final message:Ljava/lang/String;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 26
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->Companion:Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 19
    iput-object p2, p0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->message:Ljava/lang/String;

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance v0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 26
    new-instance p2, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$binding$2;

    invoke-direct {p2, p1}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$binding$2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p0, v2, p2, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;
    .locals 1

    sget-object v0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->Companion:Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private final setupColors()V
    .locals 5

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 51
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->buttonClose:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "buttonClose"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 52
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->buttonClose:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->textMessage:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->viewDivider:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->buttonClose:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.buttonClose"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$setupListeners$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog$setupListeners$1;-><init>(Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;

    move-result-object v0

    .line 60
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->buttonClose:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->common_close:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->textMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->setupColors()V

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->setupListeners()V

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->setupTexts()V

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/chat/copy/ChatCopyPartBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkChatCopyContentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
