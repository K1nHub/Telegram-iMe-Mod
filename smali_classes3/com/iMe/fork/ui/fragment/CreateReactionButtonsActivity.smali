.class public final Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "CreateReactionButtonsActivity.kt"

# interfaces
.implements Lcom/iMe/ui/reaction/ReactionView;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;,
        Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$Companion;,
        Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;,
        Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;,
        Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$TouchHelperCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateReactionButtonsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateReactionButtonsActivity.kt\ncom/iMe/fork/ui/fragment/CreateReactionButtonsActivity\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,756:1\n13#2,4:757\n56#3,6:761\n1#4:767\n283#5,2:768\n260#5:770\n*S KotlinDebug\n*F\n+ 1 CreateReactionButtonsActivity.kt\ncom/iMe/fork/ui/fragment/CreateReactionButtonsActivity\n*L\n56#1:757,4\n57#1:761,6\n344#1:768,2\n249#1:770\n*E\n"
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


# instance fields
.field private final attachedFile:Ljava/lang/String;

.field private buttons:[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

.field private buttonsAddRow:I

.field private buttonsCount:I

.field private buttonsEndRow:I

.field private buttonsHeaderRow:I

.field private buttonsRowsType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

.field private buttonsSectionRow:I

.field private buttonsStartRow:I

.field private currentHeight:I

.field private final delegate:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;

.field private final dialogId:J

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final emojiView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private emojiViewAnimator:Landroid/animation/AnimatorSet;

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final messageObject:Lorg/telegram/messenger/MessageObject;

.field private final messageText:Ljava/lang/String;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private reactionHeaderRow:I

.field private reactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reactionsAddRow:I

.field private reactionsEndRow:I

.field private reactionsSectionRow:I

.field private reactionsStartRow:I

.field private final replyMessageObject:Lorg/telegram/messenger/MessageObject;

.field private requestFieldFocusAtPosition:I

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private settingsButtonRowsTypeRow:I

.field private settingsHeaderRow:I

.field private showEmojiView:Z

.field private final uploadCircleView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final uploadProgressBar$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final uploadProgressTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final uploadTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final uploadView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;


# direct methods
.method public static synthetic $r8$lambda$7c8OlIy5sV7MayyLBLtpZZ5d37A(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initListView$lambda$10$lambda$9(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qz-b9HQ0AvcGwPN-ZxWFgooMjic(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showButtonPositionDialog$lambda$6$lambda$5(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XcoiVLapRWHi0wDzz9ptCdADnOY(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showURLButtonDialog$lambda$29$lambda$28(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XpqyAgYmnvBeYUUXUR7ydXd5KKc(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getThemeDescriptions$lambda$7(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uxQqInqKhTTzDMzLFYH5fn8uCxg(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showURLButtonDialog$lambda$27$lambda$25(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yjSrdoKKgYG3o2reAIVNNABwigY(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showURLButtonDialog$lambda$27$lambda$26(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    const/16 v1, 0xa

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 56
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 60
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 61
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 62
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 63
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "emojiView"

    const-string v4, "getEmojiView()Lorg/telegram/ui/Components/EmojiView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 64
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "uploadView"

    const-string v4, "getUploadView()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 65
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "uploadCircleView"

    const-string v4, "getUploadCircleView()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 66
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "uploadProgressTextView"

    const-string v4, "getUploadProgressTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 67
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "uploadTextView"

    const-string v4, "getUploadTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 68
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "uploadProgressBar"

    const-string v4, "getUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;)V
    .locals 1

    const-string v0, "messageText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->dialogId:J

    .line 48
    iput-object p3, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageText:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->attachedFile:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 51
    iput-object p6, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 52
    iput-object p7, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->delegate:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;

    .line 56
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$presenter$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p3

    const-string p4, "mvpDelegate"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-class p5, Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "presenter"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 56
    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->resourceManager$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    const/4 p2, 0x1

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 61
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 62
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 63
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$emojiView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$emojiView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->emojiView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 64
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 65
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadCircleView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadCircleView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadCircleView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 66
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressTextView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadProgressTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 67
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadTextView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 68
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressBar$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressBar$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadProgressBar$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactions:Ljava/util/ArrayList;

    const/16 p1, 0xc

    new-array p1, p1, [Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    .line 87
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttons:[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    .line 89
    sget-object p1, Lcom/iMe/model/reaction/ReactionButtonsRowsType;->SINGLE:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsRowsType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    .line 91
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const/high16 p2, 0x43480000    # 200.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const-string p4, "kbd_height"

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->keyboardHeight:I

    .line 92
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const-string p3, "kbd_height_land3"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->keyboardHeightLand:I

    return-void
.end method

.method public static final synthetic access$createMessage(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->createMessage()V

    return-void
.end method

.method public static final synthetic access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttons:[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    return-object p0
.end method

.method public static final synthetic access$getButtonsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsAddRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsCount:I

    return p0
.end method

.method public static final synthetic access$getButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsEndRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsRowsType$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/model/reaction/ReactionButtonsRowsType;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsRowsType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    return-object p0
.end method

.method public static final synthetic access$getButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsSectionRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogId$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->dialogId:J

    return-wide v0
.end method

.method public static final synthetic access$getDoneItem$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getReactionHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getReactionsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsAddRow:I

    return p0
.end method

.method public static final synthetic access$getReactionsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsEndRow:I

    return p0
.end method

.method public static final synthetic access$getReactionsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsSectionRow:I

    return p0
.end method

.method public static final synthetic access$getReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsStartRow:I

    return p0
.end method

.method public static final synthetic access$getRequestFieldFocusAtPosition$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->requestFieldFocusAtPosition:I

    return p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSettingsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->settingsHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getShowEmojiView$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView:Z

    return p0
.end method

.method public static final synthetic access$getUploadProgressBar(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RadialProgress;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initEmojiView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initProgressCircleView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/view/View;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initProgressCircleView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initProgressView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initProgressView()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initUploadProgressBar(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RadialProgress;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initUploadTextView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initUploadTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setButtonsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsAddRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsCount:I

    return-void
.end method

.method public static final synthetic access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsEndRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsHeaderRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsSectionRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsStartRow:I

    return-void
.end method

.method public static final synthetic access$setReactionHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionHeaderRow:I

    return-void
.end method

.method public static final synthetic access$setReactionsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsAddRow:I

    return-void
.end method

.method public static final synthetic access$setReactionsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsEndRow:I

    return-void
.end method

.method public static final synthetic access$setReactionsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsSectionRow:I

    return-void
.end method

.method public static final synthetic access$setReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsStartRow:I

    return-void
.end method

.method public static final synthetic access$setRequestFieldFocusAtPosition$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->requestFieldFocusAtPosition:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setSettingsButtonRowsTypeRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->settingsButtonRowsTypeRow:I

    return-void
.end method

.method public static final synthetic access$setSettingsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->settingsHeaderRow:I

    return-void
.end method

.method public static final synthetic access$showURLButtonDialog(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ILcom/iMe/fork/ui/view/MovingReactionCell;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showURLButtonDialog(ILcom/iMe/fork/ui/view/MovingReactionCell;)V

    return-void
.end method

.method public static final synthetic access$uploadProgressTextView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadProgressTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final createMessage()V
    .locals 8

    .line 353
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->isAllButtonsValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_empty_field_warning:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object v1

    .line 359
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getFixedEmotions()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getAllButtons()Ljava/util/List;

    move-result-object v3

    .line 360
    iget-object v4, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getButtonLine()I

    move-result v5

    iget-object v6, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->attachedFile:Ljava/lang/String;

    iget-object v7, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 358
    invoke-virtual/range {v1 .. v7}, Lcom/iMe/ui/reaction/ReactionPresenter;->prepareTextMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private final getEmojiView()Lorg/telegram/ui/Components/EmojiView;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->emojiView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/reaction/ReactionPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$7(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->updateColors()V

    return-void
.end method

.method private final getUploadCircleView()Landroid/view/View;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadCircleView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadProgressBar$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RadialProgress;

    return-object v0
.end method

.method private final getUploadProgressTextView()Landroid/widget/TextView;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadProgressTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getUploadTextView()Landroid/widget/TextView;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getUploadView()Landroid/widget/FrameLayout;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initEmojiView()Lorg/telegram/ui/Components/EmojiView;
    .locals 12

    .line 261
    new-instance v11, Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 262
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    iget v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->keyboardHeightLand:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->keyboardHeight:I

    :goto_0
    iput v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->currentHeight:I

    const/16 v0, 0x50

    const/4 v1, -0x2

    .line 263
    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 264
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 265
    iget v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->currentHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 263
    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, v0, v11}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView(ZLandroid/view/View;)V

    .line 268
    new-instance v0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initEmojiView$1$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initEmojiView$1$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    return-object v11
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 5

    .line 245
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 247
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 248
    new-instance v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 258
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$TouchHelperCallback;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$TouchHelperCallback;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0
.end method

.method private static final initListView$lambda$10$lambda$9(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/view/View;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 253
    :cond_1
    iget p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsAddRow:I

    if-ne p2, p1, :cond_2

    iget-boolean p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView:Z

    xor-int/2addr p1, v0

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V

    goto :goto_1

    .line 254
    :cond_2
    iget p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsAddRow:I

    if-ne p2, p1, :cond_3

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->addUrlButton()V

    goto :goto_1

    .line 255
    :cond_3
    iget p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->settingsButtonRowsTypeRow:I

    if-ne p2, p1, :cond_4

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/reaction/ReactionPresenter;->getButtonLines()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final initProgressCircleView()Landroid/view/View;
    .locals 3

    .line 301
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 302
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private final initProgressView()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;
    .locals 9

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/app/Activity;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-static {v1, v0, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    const/4 v0, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 294
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 296
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadCircleView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2d

    const/16 v3, 0x11

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadProgressTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/high16 v6, 0x420c0000    # 35.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, -0x2

    const/high16 v6, 0x425c0000    # 55.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 241
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 242
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final initUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;
    .locals 4

    .line 317
    new-instance v0, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 318
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 319
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->setProgressColor(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 320
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    return-object v0
.end method

.method private final initUploadTextView()Landroid/widget/TextView;
    .locals 3

    .line 310
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->chat_reaction_text_loader:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 314
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 4

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 325
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 326
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->chat_reaction_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 335
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 336
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->chat_reaction_create:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, "setupActionBar$lambda$20$lambda$19$lambda$18"

    .line 337
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 336
    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-void
.end method

.method private static final showButtonPositionDialog$lambda$6$lambda$5(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 184
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object v0

    invoke-static {}, Lcom/iMe/model/reaction/ReactionButtonsRowsType;->values()[Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lcom/iMe/ui/reaction/ReactionPresenter;->setButtonsRowType(Lcom/iMe/model/reaction/ReactionButtonsRowsType;)V

    .line 185
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/reaction/ReactionPresenter;->getButtonsRowType()Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsRowsType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    .line 186
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p2

    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->settingsButtonRowsTypeRow:I

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 187
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final showEmojiView(ZLandroid/view/View;)V
    .locals 5

    .line 343
    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v1

    .line 283
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v0, [Landroid/animation/Animator;

    .line 346
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v0, v0, [F

    iget-boolean v4, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->currentHeight:I

    int-to-float v4, v4

    :goto_1
    aput v4, v0, v1

    invoke-static {p2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xc8

    .line 347
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 348
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 345
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->emojiViewAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView(ZLandroid/view/View;)V

    return-void
.end method

.method private final showURLButtonDialog(ILcom/iMe/fork/ui/view/MovingReactionCell;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 374
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V

    .line 376
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$showURLButtonDialog$editText$1;

    invoke-direct {v3, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$showURLButtonDialog$editText$1;-><init>(Landroid/app/Activity;)V

    .line 381
    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const/4 v2, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    .line 382
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    .line 383
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v6, 0x6

    .line 384
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 385
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_2

    .line 386
    invoke-virtual {p2}, Lcom/iMe/fork/ui/view/MovingReactionCell;->getUrlButton()Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string p2, "http://"

    :cond_1
    move-object v1, p2

    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41900000    # 18.0f

    .line 387
    invoke-virtual {v3, v5, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 388
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 389
    sget p2, Lorg/telegram/messenger/R$string;->URL:I

    const-string v1, "URL"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 390
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    .line 391
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    .line 392
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, p2, v1, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    .line 393
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {v3, v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 394
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 395
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 398
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 399
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x18

    .line 400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 401
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 404
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    sget v2, Lorg/telegram/messenger/R$string;->CreateLink:I

    const-string v4, "CreateLink"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 406
    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 407
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ILorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 410
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 413
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 414
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    .line 415
    new-instance p2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 404
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showURLButtonDialog$lambda$27$lambda$25(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$editText"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object p0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/reaction/ReactionPresenter;->validateUrl(ILjava/lang/String;)V

    return-void
.end method

.method private static final showURLButtonDialog$lambda$27$lambda$26(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 411
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showURLButtonDialog$lambda$29$lambda$28(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$editText"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 417
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private final updateProgressValue(JJ)V
    .locals 6

    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 365
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 367
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;

    move-result-object v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 368
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 369
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadProgressTextView()Landroid/widget/TextView;

    move-result-object v0

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr p3, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v3, p4

    div-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d/%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, v1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method private final uploadProgressTextView()Landroid/widget/TextView;
    .locals 3

    .line 305
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 307
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    goto :goto_1

    .line 145
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    const/4 v0, 0x1

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, p2, :cond_2

    .line 146
    aget-object p1, p3, v3

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 147
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p2, :cond_1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 148
    aget-object p1, p3, v0

    const-string p2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x2

    .line 149
    aget-object p1, p3, p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 151
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->updateProgressValue(JJ)V

    goto :goto_1

    .line 154
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne p1, p2, :cond_4

    .line 155
    aget-object p1, p3, v3

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 156
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p2, v2

    :goto_0
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, v3, v0, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x1d

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 206
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 207
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 208
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 209
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 210
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    move-object v6, v3

    move/from16 v13, v16

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    .line 211
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v13, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x5

    aput-object v3, v1, v5

    .line 212
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v5, v9, v2

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v11, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v6, 0x6

    aput-object v3, v1, v6

    .line 213
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v6, v10, v2

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/4 v14, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v7, 0x7

    aput-object v3, v1, v7

    .line 214
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v7, v11, v2

    const-string v7, "deleteImageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/4 v15, 0x0

    move-object v8, v3

    move/from16 v16, v21

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0x8

    aput-object v3, v1, v7

    .line 215
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v8, v7, v2

    const-string v8, "moveImageView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v7

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0x9

    aput-object v3, v1, v7

    .line 216
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v3

    move/from16 v16, v21

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0xa

    aput-object v3, v1, v7

    .line 217
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v7, v11, v2

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v12, 0x0

    move-object v8, v3

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v8, 0xb

    aput-object v3, v1, v8

    .line 218
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v12, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v12, v2

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/4 v15, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v8, 0xc

    aput-object v3, v1, v8

    .line 219
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v11, v8, v9

    new-array v12, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v12, v2

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v9, v3

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0xd

    aput-object v3, v1, v9

    .line 220
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v9, v13, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0xe

    aput-object v3, v1, v9

    .line 221
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v9, v13, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v10, v3

    move/from16 v18, v30

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0xf

    aput-object v3, v1, v9

    .line 222
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v13, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v9, v13, v2

    const-string v9, "textView2"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object v10, v3

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v10, 0x10

    aput-object v3, v1, v10

    .line 223
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v10, v14, v2

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v15

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v18, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x11

    aput-object v3, v1, v9

    .line 224
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v15, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v9, v15, v2

    move-object v12, v3

    move/from16 v19, v7

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x12

    aput-object v3, v1, v9

    .line 225
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    const-class v9, Landroid/view/View;

    aput-object v9, v13, v2

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x13

    aput-object v3, v1, v9

    .line 226
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v13, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/16 v17, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x14

    aput-object v3, v1, v9

    .line 227
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v13, v2

    const-string v9, "imageView"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object v10, v3

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v10, 0x15

    aput-object v3, v1, v10

    .line 228
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v14, v4, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v14, v2

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v15

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v18, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x16

    aput-object v3, v1, v9

    .line 229
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v15, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v15, v2

    move-object v12, v3

    move/from16 v19, v7

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x17

    aput-object v3, v1, v9

    .line 230
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v15, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v9, v15, v2

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0x18

    aput-object v3, v1, v7

    .line 231
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v15, v7, v9

    new-array v7, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v9, v7, v2

    const/16 v19, 0x0

    move-object v13, v3

    move-object/from16 v16, v7

    move/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0x19

    aput-object v3, v1, v7

    .line 232
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v7, v4, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v9, v7, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v7

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    .line 233
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v23

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v5, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0x1b

    aput-object v3, v1, v5

    .line 234
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object v14

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/FrameLayout;

    aput-object v5, v4, v2

    .line 205
    new-instance v2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    const/16 v17, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v2

    move/from16 v20, v8

    .line 234
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x1c

    aput-object v3, v1, v2

    .line 205
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public messageCreated()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 202
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->delegate:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;->clearChat()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 135
    invoke-static {p0, v1, v2, v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 123
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->setupActionBar()V

    .line 124
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 125
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 99
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 100
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    .line 101
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 102
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 103
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 104
    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 106
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 110
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    .line 112
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 113
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 114
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 115
    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 117
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lcom/iMe/ui/reaction/ReactionPresenter;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 118
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->emojiViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onUrlValid(ILjava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 196
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->addUrlAddress(ILjava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public showButtonPositionDialog(Lcom/iMe/model/reaction/ReactionButtonsRowsType;)V
    .locals 11

    const-string v0, "buttonPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 164
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V

    .line 165
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->chat_reaction_button_position:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 167
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 169
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 170
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 173
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 175
    invoke-static {}, Lcom/iMe/model/reaction/ReactionButtonsRowsType;->values()[Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 176
    new-instance v8, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x40800000    # 4.0f

    .line 177
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v10, v0, v9, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 178
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 179
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 180
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v9

    invoke-virtual {v7}, Lcom/iMe/model/reaction/ReactionButtonsRowsType;->getResource()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-ne p1, v7, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    move v7, v0

    :goto_1
    invoke-virtual {v8, v9, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 182
    new-instance v7, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
