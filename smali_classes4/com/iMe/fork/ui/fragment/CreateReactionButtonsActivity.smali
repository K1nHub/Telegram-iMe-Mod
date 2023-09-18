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
    value = "SMAP\nCreateReactionButtonsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateReactionButtonsActivity.kt\ncom/iMe/fork/ui/fragment/CreateReactionButtonsActivity\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1171:1\n13#2,4:1172\n56#3,6:1176\n1#4:1182\n283#5,2:1183\n260#5:1185\n*S KotlinDebug\n*F\n+ 1 CreateReactionButtonsActivity.kt\ncom/iMe/fork/ui/fragment/CreateReactionButtonsActivity\n*L\n79#1:1172,4\n86#1:1176,6\n675#1:1183,2\n548#1:1185\n*E\n"
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

    .line 79
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 89
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 90
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 91
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 92
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "emojiView"

    const-string v4, "getEmojiView()Lorg/telegram/ui/Components/EmojiView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 93
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "uploadView"

    const-string v4, "getUploadView()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 94
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "uploadCircleView"

    const-string v4, "getUploadCircleView()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 95
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "uploadProgressTextView"

    const-string v4, "getUploadProgressTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 96
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "uploadTextView"

    const-string v4, "getUploadTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 97
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

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 70
    iput-wide p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->dialogId:J

    .line 71
    iput-object p3, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageText:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->attachedFile:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 74
    iput-object p6, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 75
    iput-object p7, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->delegate:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;

    .line 79
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

    .line 79
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

    .line 86
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->resourceManager$delegate:Lkotlin/Lazy;

    .line 89
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    const/4 p2, 0x1

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 90
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 91
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 92
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$emojiView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$emojiView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->emojiView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 93
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 94
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadCircleView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadCircleView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadCircleView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 95
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressTextView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadProgressTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 96
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadTextView$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadTextView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 97
    new-instance p1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressBar$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$uploadProgressBar$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-static {p0, p3, p1, p2, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadProgressBar$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactions:Ljava/util/ArrayList;

    const/16 p1, 0xc

    new-array p1, p1, [Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    .line 116
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttons:[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    .line 118
    sget-object p1, Lcom/iMe/model/reaction/ReactionButtonsRowsType;->SINGLE:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsRowsType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    .line 121
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const/high16 p2, 0x43480000    # 200.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const-string p4, "kbd_height"

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->keyboardHeight:I

    .line 122
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 123
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

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->createMessage()V

    return-void
.end method

.method public static final synthetic access$getButtons$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttons:[Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;

    return-object p0
.end method

.method public static final synthetic access$getButtonsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsAddRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsCount:I

    return p0
.end method

.method public static final synthetic access$getButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsEndRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsRowsType$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/model/reaction/ReactionButtonsRowsType;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsRowsType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    return-object p0
.end method

.method public static final synthetic access$getButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsSectionRow:I

    return p0
.end method

.method public static final synthetic access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogId$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->dialogId:J

    return-wide v0
.end method

.method public static final synthetic access$getDoneItem$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getReactionHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getReactions$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getReactionsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsAddRow:I

    return p0
.end method

.method public static final synthetic access$getReactionsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsEndRow:I

    return p0
.end method

.method public static final synthetic access$getReactionsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsSectionRow:I

    return p0
.end method

.method public static final synthetic access$getReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsStartRow:I

    return p0
.end method

.method public static final synthetic access$getRequestFieldFocusAtPosition$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->requestFieldFocusAtPosition:I

    return p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSettingsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->settingsHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getShowEmojiView$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView:Z

    return p0
.end method

.method public static final synthetic access$getUploadProgressBar(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RadialProgress;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initEmojiView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initProgressCircleView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/view/View;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initProgressCircleView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initProgressView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initProgressView()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initUploadProgressBar(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RadialProgress;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initUploadTextView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->initUploadTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setButtonsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsAddRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsCount:I

    return-void
.end method

.method public static final synthetic access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsEndRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsHeaderRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsSectionRow:I

    return-void
.end method

.method public static final synthetic access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsStartRow:I

    return-void
.end method

.method public static final synthetic access$setReactionHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionHeaderRow:I

    return-void
.end method

.method public static final synthetic access$setReactionsAddRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsAddRow:I

    return-void
.end method

.method public static final synthetic access$setReactionsEndRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsEndRow:I

    return-void
.end method

.method public static final synthetic access$setReactionsSectionRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsSectionRow:I

    return-void
.end method

.method public static final synthetic access$setReactionsStartRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsStartRow:I

    return-void
.end method

.method public static final synthetic access$setRequestFieldFocusAtPosition$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->requestFieldFocusAtPosition:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setSettingsButtonRowsTypeRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->settingsButtonRowsTypeRow:I

    return-void
.end method

.method public static final synthetic access$setSettingsHeaderRow$p(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->settingsHeaderRow:I

    return-void
.end method

.method public static final synthetic access$showURLButtonDialog(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ILcom/iMe/fork/ui/view/MovingReactionCell;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showURLButtonDialog(ILcom/iMe/fork/ui/view/MovingReactionCell;)V

    return-void
.end method

.method public static final synthetic access$uploadProgressTextView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->uploadProgressTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final createMessage()V
    .locals 8

    .line 690
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->isAllButtonsValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_empty_field_warning:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object v1

    .line 696
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getFixedEmotions()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getAllButtons()Ljava/util/List;

    move-result-object v3

    .line 697
    iget-object v4, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getButtonLine()I

    move-result v5

    iget-object v6, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->attachedFile:Ljava/lang/String;

    iget-object v7, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 695
    invoke-virtual/range {v1 .. v7}, Lcom/iMe/ui/reaction/ReactionPresenter;->prepareTextMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private final getEmojiView()Lorg/telegram/ui/Components/EmojiView;
    .locals 3

    .line 92
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

    .line 91
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

    .line 90
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

    .line 79
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

    .line 86
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 89
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

    .line 531
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->updateColors()V

    return-void
.end method

.method private final getUploadCircleView()Landroid/view/View;
    .locals 3

    .line 94
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

    .line 97
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

    .line 95
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

    .line 96
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

    .line 93
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

    .line 561
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

    .line 563
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    iget v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->keyboardHeightLand:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->keyboardHeight:I

    .line 562
    :goto_0
    iput v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->currentHeight:I

    const/16 v0, 0x50

    const/4 v1, -0x2

    .line 564
    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 569
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 570
    iget v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->currentHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 564
    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 572
    invoke-direct {p0, v0, v11}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView(ZLandroid/view/View;)V

    .line 573
    new-instance v0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initEmojiView$1$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initEmojiView$1$2;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    return-object v11
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 5

    .line 544
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 545
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 546
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 547
    new-instance v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 557
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

    .line 548
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

    .line 552
    :cond_1
    iget p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->reactionsAddRow:I

    if-ne p2, p1, :cond_2

    iget-boolean p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView:Z

    xor-int/2addr p1, v0

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V

    goto :goto_1

    .line 553
    :cond_2
    iget p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsAddRow:I

    if-ne p2, p1, :cond_3

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->addUrlButton()V

    goto :goto_1

    .line 554
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

    .line 629
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 630
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

    .line 582
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/app/Activity;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 598
    invoke-static {v1, v0, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    const/4 v0, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 600
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 599
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 602
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadCircleView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2d

    const/16 v3, 0x11

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadProgressTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/high16 v6, 0x420c0000    # 35.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 605
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 603
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, -0x2

    const/high16 v6, 0x425c0000    # 55.0f

    .line 617
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 615
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 540
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 541
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final initUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;
    .locals 4

    .line 645
    new-instance v0, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 646
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 647
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->setProgressColor(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 648
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    return-object v0
.end method

.method private final initUploadTextView()Landroid/widget/TextView;
    .locals 3

    .line 638
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 639
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->chat_reaction_text_loader:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 640
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 641
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 642
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 4

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 653
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 654
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->chat_reaction_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 655
    new-instance v1, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 663
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 666
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->chat_reaction_create:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 664
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, "setupActionBar$lambda$20$lambda$19$lambda$18"

    .line 668
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 664
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

    .line 236
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 237
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object v0

    invoke-static {}, Lcom/iMe/model/reaction/ReactionButtonsRowsType;->values()[Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lcom/iMe/ui/reaction/ReactionPresenter;->setButtonsRowType(Lcom/iMe/model/reaction/ReactionButtonsRowsType;)V

    .line 238
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/reaction/ReactionPresenter;->getButtonsRowType()Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->buttonsRowsType:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    .line 239
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p2

    iget p0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->settingsButtonRowsTypeRow:I

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 240
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final showEmojiView(ZLandroid/view/View;)V
    .locals 5

    .line 674
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

    .line 676
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v0, [Landroid/animation/Animator;

    .line 680
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v0, v0, [F

    .line 681
    iget-boolean v4, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->currentHeight:I

    int-to-float v4, v4

    :goto_1
    aput v4, v0, v1

    .line 678
    invoke-static {p2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v2, v1

    .line 677
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xc8

    .line 684
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 685
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 676
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->emojiViewAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 673
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

    .line 715
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V

    .line 717
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$showURLButtonDialog$editText$1;

    invoke-direct {v3, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$showURLButtonDialog$editText$1;-><init>(Landroid/app/Activity;)V

    .line 725
    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const/4 v2, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    .line 726
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    .line 730
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    const/4 v6, 0x6

    .line 731
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 732
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_2

    .line 733
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

    .line 734
    invoke-virtual {v3, v5, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 735
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 736
    sget p2, Lorg/telegram/messenger/R$string;->URL:I

    const-string v1, "URL"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 737
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    .line 738
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    .line 740
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 741
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 742
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    .line 739
    invoke-virtual {v3, p2, v1, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    .line 744
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {v3, v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 745
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 746
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 749
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 750
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x18

    .line 754
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 755
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 758
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 759
    sget v2, Lorg/telegram/messenger/R$string;->CreateLink:I

    const-string v4, "CreateLink"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 760
    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 761
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ILorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 767
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    .line 765
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda1;

    .line 764
    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 772
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 773
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    .line 774
    new-instance p2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, v3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 758
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showURLButtonDialog$lambda$27$lambda$25(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$editText"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
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

    .line 770
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showURLButtonDialog$lambda$29$lambda$28(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$editText"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 776
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private final updateProgressValue(JJ)V
    .locals 6

    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 702
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 704
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadProgressBar()Lorg/telegram/ui/Components/RadialProgress;

    move-result-object v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 705
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 706
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadProgressTextView()Landroid/widget/TextView;

    move-result-object v0

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x3e8

    int-to-long v4, v4

    .line 708
    div-long/2addr p3, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v3, p4

    .line 709
    div-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    .line 706
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d/%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, v1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method private final uploadProgressTextView()Landroid/widget/TextView;
    .locals 3

    .line 633
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    .line 634
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 635
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

    .line 190
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    goto :goto_1

    .line 191
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    const/4 v0, 0x1

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, p2, :cond_2

    .line 192
    aget-object p1, p3, v3

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 193
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p2, :cond_1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 194
    aget-object p1, p3, v0

    const-string p2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x2

    .line 195
    aget-object p1, p3, p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 197
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->updateProgressValue(JJ)V

    goto :goto_1

    .line 201
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne p1, p2, :cond_4

    .line 202
    aget-object p1, p3, v3

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 203
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

    .line 204
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

    .line 259
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 260
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 261
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 266
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 259
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 268
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 269
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 270
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 275
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    .line 268
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 277
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 278
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 279
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 284
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    .line 277
    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 286
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 287
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 288
    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 293
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/4 v12, 0x0

    move-object v6, v3

    .line 286
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 295
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    .line 297
    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    .line 302
    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    move-object v6, v3

    move/from16 v13, v16

    .line 295
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    .line 304
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    .line 306
    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v13, 0x0

    move-object v9, v3

    .line 304
    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x5

    aput-object v3, v1, v5

    .line 313
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    .line 315
    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v9, v4, [Ljava/lang/Class;

    .line 316
    const-class v5, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v5, v9, v2

    const-string v5, "textView"

    .line 317
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    .line 321
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v11, 0x0

    move-object v6, v3

    .line 313
    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v6, 0x6

    aput-object v3, v1, v6

    .line 323
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    .line 325
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    .line 326
    const-class v6, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v6, v10, v2

    const-string v6, "valueTextView"

    .line 327
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    .line 331
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/4 v14, 0x0

    move-object v7, v3

    .line 323
    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v7, 0x7

    aput-object v3, v1, v7

    .line 333
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    .line 335
    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v11, v4, [Ljava/lang/Class;

    .line 336
    const-class v7, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v7, v11, v2

    const-string v7, "deleteImageView"

    .line 337
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    .line 341
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/4 v15, 0x0

    move-object v8, v3

    move/from16 v16, v21

    .line 333
    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0x8

    aput-object v3, v1, v7

    .line 343
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 345
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v7, v4, [Ljava/lang/Class;

    .line 346
    const-class v8, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v8, v7, v2

    const-string v8, "moveImageView"

    .line 347
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v7

    .line 343
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0x9

    aput-object v3, v1, v7

    .line 353
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    .line 355
    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v11, v4, [Ljava/lang/Class;

    .line 356
    const-class v7, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v7, v11, v2

    .line 357
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    .line 361
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v3

    move/from16 v16, v21

    .line 353
    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0xa

    aput-object v3, v1, v7

    .line 363
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    .line 365
    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v11, v4, [Ljava/lang/Class;

    .line 366
    const-class v7, Lcom/iMe/fork/ui/view/MovingReactionCell;

    aput-object v7, v11, v2

    .line 370
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v12, 0x0

    move-object v8, v3

    move v15, v7

    .line 363
    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v8, 0xb

    aput-object v3, v1, v8

    .line 372
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    .line 374
    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v12, v4, [Ljava/lang/Class;

    .line 375
    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v12, v2

    .line 379
    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/4 v15, 0x0

    move-object v9, v3

    .line 372
    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v8, 0xc

    aput-object v3, v1, v8

    .line 381
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    .line 383
    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v11, v8, v9

    new-array v12, v4, [Ljava/lang/Class;

    .line 384
    const-class v8, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v8, v12, v2

    .line 388
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v9, v3

    move/from16 v16, v8

    .line 381
    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0xd

    aput-object v3, v1, v9

    .line 390
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    .line 393
    const-class v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v9, v13, v2

    .line 394
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    .line 398
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v3

    .line 390
    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0xe

    aput-object v3, v1, v9

    .line 400
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    .line 403
    const-class v9, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v9, v13, v2

    .line 404
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    .line 408
    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v10, v3

    move/from16 v18, v30

    .line 400
    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0xf

    aput-object v3, v1, v9

    .line 410
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    .line 412
    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v13, v4, [Ljava/lang/Class;

    .line 413
    const-class v9, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v9, v13, v2

    const-string v9, "textView2"

    .line 414
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    .line 418
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object v10, v3

    .line 410
    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v10, 0x10

    aput-object v3, v1, v10

    .line 420
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    .line 422
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v14, v4, [Ljava/lang/Class;

    .line 423
    const-class v10, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v10, v14, v2

    .line 424
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v15

    .line 428
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v18, 0x0

    move-object v11, v3

    .line 420
    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x11

    aput-object v3, v1, v9

    .line 430
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    .line 432
    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v15, v4, [Ljava/lang/Class;

    .line 433
    const-class v9, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v9, v15, v2

    move-object v12, v3

    move/from16 v19, v7

    .line 430
    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x12

    aput-object v3, v1, v9

    .line 439
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 440
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    .line 442
    const-class v9, Landroid/view/View;

    aput-object v9, v13, v2

    .line 443
    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 446
    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v10, v3

    .line 439
    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x13

    aput-object v3, v1, v9

    .line 448
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    .line 451
    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v13, v2

    .line 452
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    .line 456
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/16 v17, 0x0

    move-object v10, v3

    .line 448
    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x14

    aput-object v3, v1, v9

    .line 458
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    .line 461
    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v13, v2

    const-string v9, "imageView"

    .line 462
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    .line 466
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object v10, v3

    .line 458
    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v10, 0x15

    aput-object v3, v1, v10

    .line 468
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    .line 470
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v14, v4, [Ljava/lang/Class;

    .line 471
    const-class v10, Lorg/telegram/ui/Cells/TextCell;

    aput-object v10, v14, v2

    .line 472
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v15

    .line 476
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v18, 0x0

    move-object v11, v3

    .line 468
    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x16

    aput-object v3, v1, v9

    .line 478
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    .line 480
    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v15, v4, [Ljava/lang/Class;

    .line 481
    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v15, v2

    move-object v12, v3

    move/from16 v19, v7

    .line 478
    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v9, 0x17

    aput-object v3, v1, v9

    .line 487
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    .line 489
    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v15, v4, [Ljava/lang/Class;

    .line 490
    const-class v9, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v9, v15, v2

    move-object v12, v3

    .line 487
    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0x18

    aput-object v3, v1, v7

    .line 496
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 498
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v15, v7, v9

    new-array v7, v4, [Ljava/lang/Class;

    .line 499
    const-class v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v9, v7, v2

    const/16 v19, 0x0

    move-object v13, v3

    move-object/from16 v16, v7

    move/from16 v20, v8

    .line 496
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0x19

    aput-object v3, v1, v7

    .line 505
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 507
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v7, v4, [Ljava/lang/Class;

    .line 508
    const-class v9, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v9, v7, v2

    .line 509
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v7

    .line 505
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    .line 515
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v23

    .line 517
    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v5, v4, [Ljava/lang/Class;

    .line 518
    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v5, v2

    .line 519
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v3

    move-object/from16 v25, v5

    .line 515
    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0x1b

    aput-object v3, v1, v5

    .line 525
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 526
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object v14

    .line 527
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v4, [Ljava/lang/Class;

    .line 528
    const-class v5, Landroid/widget/FrameLayout;

    aput-object v5, v4, v2

    .line 258
    new-instance v2, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V

    const/16 v17, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v2

    move/from16 v20, v8

    .line 525
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x1c

    aput-object v3, v1, v2

    .line 258
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public messageCreated()V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 255
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->delegate:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;->clearChat()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 181
    invoke-static {p0, v1, v2, v0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 169
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->setupActionBar()V

    .line 170
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getUploadView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 130
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    .line 134
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    .line 132
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 138
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    .line 136
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 140
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 141
    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 143
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 147
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 148
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    .line 151
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    .line 149
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 155
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    .line 153
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 157
    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 160
    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    .line 158
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getPresenter()Lcom/iMe/ui/reaction/ReactionPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lcom/iMe/ui/reaction/ReactionPresenter;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 164
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->emojiViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 165
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onUrlValid(ILjava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 249
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->addUrlAddress(ILjava/lang/String;)V

    .line 250
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

    .line 211
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->showEmojiView$default(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;ZLandroid/view/View;ILjava/lang/Object;)V

    .line 212
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->chat_reaction_button_position:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 214
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 216
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 217
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 222
    invoke-static {}, Lcom/iMe/model/reaction/ReactionButtonsRowsType;->values()[Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 223
    new-instance v8, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x40800000    # 4.0f

    .line 224
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v10, v0, v9, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 225
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 227
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    .line 228
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 226
    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 231
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

    .line 230
    :goto_1
    invoke-virtual {v8, v9, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 235
    new-instance v7, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v2}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
