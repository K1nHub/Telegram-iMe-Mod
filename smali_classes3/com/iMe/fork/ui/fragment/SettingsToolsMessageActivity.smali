.class public final Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "SettingsToolsMessageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$Companion;,
        Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsToolsMessageActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsToolsMessageActivity.kt\ncom/iMe/fork/ui/fragment/SettingsToolsMessageActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,272:1\n1#2:273\n13579#3,2:274\n*S KotlinDebug\n*F\n+ 1 SettingsToolsMessageActivity.kt\ncom/iMe/fork/ui/fragment/SettingsToolsMessageActivity\n*L\n100#1:274,2\n*E\n"
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
.field private botHelpTranslateRow:I

.field private combineMessagesRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private messageQuickTranslateRow:I

.field private messagesSilentSendingRow:I

.field private final position:I

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private sendPopupTranslateRow:I

.field private sentMessageTextFont:I


# direct methods
.method public static synthetic $r8$lambda$AHhyDEwzGU2LHVivXOVUnm_euEw(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->initListView$lambda$12$lambda$11(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$DJg5D2e4vkJGzLu0aR4JDkN928U(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->initListView$lambda$12$lambda$11$lambda$10(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jzw8stFSQd9RYU8USUlzAPhPAsU(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->createChooseSentMessageFontDialog$lambda$7$lambda$6$lambda$5(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 28
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 29
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 30
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->position:I

    .line 28
    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 29
    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 30
    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getBotHelpTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->botHelpTranslateRow:I

    return p0
.end method

.method public static final synthetic access$getCombineMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->combineMessagesRow:I

    return p0
.end method

.method public static final synthetic access$getMessageQuickTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->messageQuickTranslateRow:I

    return p0
.end method

.method public static final synthetic access$getMessagesSilentSendingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->messagesSilentSendingRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSendPopupTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->sendPopupTranslateRow:I

    return p0
.end method

.method public static final synthetic access$getSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->sentMessageTextFont:I

    return p0
.end method

.method public static final synthetic access$hasHint(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->hasHint(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setBotHelpTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->botHelpTranslateRow:I

    return-void
.end method

.method public static final synthetic access$setCombineMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->combineMessagesRow:I

    return-void
.end method

.method public static final synthetic access$setMessageQuickTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->messageQuickTranslateRow:I

    return-void
.end method

.method public static final synthetic access$setMessagesSilentSendingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->messagesSilentSendingRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setSendPopupTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->sendPopupTranslateRow:I

    return-void
.end method

.method public static final synthetic access$setSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->sentMessageTextFont:I

    return-void
.end method

.method private final createChooseSentMessageFontDialog(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 11

    .line 95
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    sget v1, Lorg/telegram/messenger/R$string;->settings_tools_sent_message_font:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 97
    sget v1, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 99
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    invoke-static {}, Lcom/iMe/fork/enums/SentMessageFont;->values()[Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v3

    .line 13579
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 101
    new-instance v8, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v8, p1}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v9, 0x4

    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 104
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 105
    invoke-virtual {v7}, Lcom/iMe/fork/enums/SentMessageFont;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iMe/fork/controller/ToolsController;->getSelectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v10

    if-ne v10, v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    invoke-virtual {v8, v9, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 106
    new-instance v7, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const-string v0, "builder.setView(linearLayout).create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final createChooseSentMessageFontDialog$lambda$7$lambda$6$lambda$5(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.enums.SentMessageFont"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/fork/enums/SentMessageFont;

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->getSelectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p2}, Lcom/iMe/fork/controller/ToolsController;->setSelectedSentMessageFont(Lcom/iMe/fork/enums/SentMessageFont;)V

    .line 113
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    .line 115
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final getHint(I)Ljava/lang/String;
    .locals 1

    .line 88
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->sendPopupTranslateRow:I

    if-ne p1, v0, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_send_popup_translate_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_0
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->messagesSilentSendingRow:I

    if-ne p1, v0, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_silent_sending:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_1
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->combineMessagesRow:I

    if-ne p1, v0, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_combine_messages_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final hasHint(I)Z
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getHint(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 129
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 131
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    new-instance v1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$12$lambda$11(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;Landroid/view/View;IFF)V
    .locals 1

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    instance-of p4, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p4, :cond_5

    .line 136
    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getHint(I)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 137
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Cells/TextCheckCell;->isInSwitch(F)Z

    move-result p3

    if-nez p3, :cond_0

    .line 138
    invoke-direct {p0, p4}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->showHintDialog(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 143
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->messageQuickTranslateRow:I

    if-ne p2, p1, :cond_1

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setMessageQuickTranslateEnabled(Z)V

    goto :goto_0

    .line 144
    :cond_1
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->botHelpTranslateRow:I

    if-ne p2, p1, :cond_2

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setBotHelpTranslateEnabled(Z)V

    goto :goto_0

    .line 145
    :cond_2
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->sendPopupTranslateRow:I

    if-ne p2, p1, :cond_3

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setTranslateInSendPopupEnabled(Z)V

    goto :goto_0

    .line 146
    :cond_3
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->messagesSilentSendingRow:I

    if-ne p2, p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ToolsController;->setSilentSendingEnabled(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto :goto_0

    .line 150
    :cond_4
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->combineMessagesRow:I

    if-ne p2, p0, :cond_6

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setCombineMessagesEnabled(Z)V

    goto :goto_0

    .line 153
    :cond_5
    instance-of p1, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p1, :cond_6

    .line 155
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->sentMessageTextFont:I

    if-ne p2, p1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p3, "parentActivity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->createChooseSentMessageFontDialog(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    new-instance p3, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    :cond_6
    :goto_0
    return-void
.end method

.method private static final initListView$lambda$12$lambda$11$lambda$10(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 83
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 164
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 166
    iget v1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->position:I

    if-nez v1, :cond_0

    .line 167
    sget v1, Lorg/telegram/messenger/R$string;->settings_tools_translator:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->sending_settings_send:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final showHintDialog(Ljava/lang/String;)V
    .locals 2

    .line 123
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 125
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 126
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final getPosition()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->position:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 61
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 62
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 63
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 64
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 65
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v6, 0x4

    aput-object v3, v1, v6

    .line 66
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v21

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v2

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v5, v12

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v5, v4

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object/from16 v20, v3

    move-object/from16 v23, v5

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 67
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 68
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 69
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 70
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 71
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v4, v2

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 72
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v6

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 73
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 75
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 76
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0xf

    aput-object v3, v1, v2

    .line 60
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 47
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->setupActionBar()V

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 53
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
