.class public final Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "SettingsToolsCategoryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;
    }
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
.field private final category:Lcom/iMe/fork/enums/SettingsToolsCategory;

.field private chatAttachMenuButtonsRow:I

.field private chatBottomPanelRow:I

.field private chatExtendedAvatarPreviewerRow:I

.field private chatFolderAndChatSortingRow:I

.field private chatHideKeyboardOnScrollRow:I

.field private chatListActionBarAccountSwitchRow:I

.field private chatListActionBarMenuRow:I

.field private chatListRecentChatsRow:I

.field private chatMemoryRow:I

.field private chatMultiPanelRow:I

.field private chatProfileTelegramIdRow:I

.field private chatSwipeToGoToNextUnreadDialogRow:I

.field private chatThemesEnableRow:I

.field private chatsTemplatesRow:I

.field private cloudAlbumsRow:I

.field private confirmationCallsRow:I

.field private confirmationDeleteCloudRow:I

.field private confirmationSendingGifRow:I

.field private confirmationSendingStickerRow:I

.field private confirmationSpeakWithoutHoldRow:I

.field private confirmationVideoSpeakWithoutHoldRow:I

.field private confirmationVideoVoiceCameraRow:I

.field private customizationAutoOpenForwardingOptionsRow:I

.field private drawerHeaderSettingsRow:I

.field private drawerHolidayIconTypeRow:I

.field private drawerItemsRow:I

.field private enableProxyButtonRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private messageWidePostsRow:I

.field private messagesContextMenuRow:I

.field private messagesFormattingRow:I

.field private messagesTranslateRow:I

.field private multiReplyRow:I

.field private reactionSettingsRow:I

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private sendMessagesRow:I

.field private sendPopupReactionsRow:I

.field private settingsTopicsRow:I


# direct methods
.method public static synthetic $r8$lambda$2d2FFK2wSssqdHj2rX18wFiOmPQ(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->createChooseSelectedIconHolidayDesignSideMenuDialog$lambda$16$lambda$15(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GHJpbkTv7wQWniQshDQQykWSmAg(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView$lambda$13$lambda$12$lambda$9(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H8oZrp130KdKw7N4V1WhWvRhHO4(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView$lambda$13$lambda$12$lambda$11(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qgLEZ05O2sFu9B3J2Ud-qYD-YHY(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView$lambda$13$lambda$12$lambda$10(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t4Hjd90v7f_YtxVRwvJQCmXMOGY(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->showChooseVideoVoiceCameraDialog$lambda$3(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vIieEueCetrTDHmOS00oOoLgvDc(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView$lambda$13$lambda$12(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 45
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 46
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 47
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/enums/SettingsToolsCategory;)V
    .locals 2

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->category:Lcom/iMe/fork/enums/SettingsToolsCategory;

    .line 45
    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 46
    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 47
    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatAttachMenuButtonsRow:I

    return p0
.end method

.method public static final synthetic access$getChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatBottomPanelRow:I

    return p0
.end method

.method public static final synthetic access$getChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatExtendedAvatarPreviewerRow:I

    return p0
.end method

.method public static final synthetic access$getChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatFolderAndChatSortingRow:I

    return p0
.end method

.method public static final synthetic access$getChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatHideKeyboardOnScrollRow:I

    return p0
.end method

.method public static final synthetic access$getChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarAccountSwitchRow:I

    return p0
.end method

.method public static final synthetic access$getChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarMenuRow:I

    return p0
.end method

.method public static final synthetic access$getChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListRecentChatsRow:I

    return p0
.end method

.method public static final synthetic access$getChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMemoryRow:I

    return p0
.end method

.method public static final synthetic access$getChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMultiPanelRow:I

    return p0
.end method

.method public static final synthetic access$getChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatProfileTelegramIdRow:I

    return p0
.end method

.method public static final synthetic access$getChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatSwipeToGoToNextUnreadDialogRow:I

    return p0
.end method

.method public static final synthetic access$getChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatThemesEnableRow:I

    return p0
.end method

.method public static final synthetic access$getChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatsTemplatesRow:I

    return p0
.end method

.method public static final synthetic access$getCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationCallsRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteCloudRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingGifRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingStickerRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSpeakWithoutHoldRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoSpeakWithoutHoldRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    return p0
.end method

.method public static final synthetic access$getCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->customizationAutoOpenForwardingOptionsRow:I

    return p0
.end method

.method public static final synthetic access$getDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHeaderSettingsRow:I

    return p0
.end method

.method public static final synthetic access$getDrawerHolidayIconTypeRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHolidayIconTypeRow:I

    return p0
.end method

.method public static final synthetic access$getDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerItemsRow:I

    return p0
.end method

.method public static final synthetic access$getEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->enableProxyButtonRow:I

    return p0
.end method

.method public static final synthetic access$getHint(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getHint(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messageWidePostsRow:I

    return p0
.end method

.method public static final synthetic access$getMessagesContextMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesContextMenuRow:I

    return p0
.end method

.method public static final synthetic access$getMessagesFormattingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesFormattingRow:I

    return p0
.end method

.method public static final synthetic access$getMessagesTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesTranslateRow:I

    return p0
.end method

.method public static final synthetic access$getMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    return p0
.end method

.method public static final synthetic access$getReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->reactionSettingsRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSendMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->sendMessagesRow:I

    return p0
.end method

.method public static final synthetic access$getSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->sendPopupReactionsRow:I

    return p0
.end method

.method public static final synthetic access$getSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->settingsTopicsRow:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatAttachMenuButtonsRow:I

    return-void
.end method

.method public static final synthetic access$setChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatBottomPanelRow:I

    return-void
.end method

.method public static final synthetic access$setChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatExtendedAvatarPreviewerRow:I

    return-void
.end method

.method public static final synthetic access$setChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatFolderAndChatSortingRow:I

    return-void
.end method

.method public static final synthetic access$setChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatHideKeyboardOnScrollRow:I

    return-void
.end method

.method public static final synthetic access$setChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarAccountSwitchRow:I

    return-void
.end method

.method public static final synthetic access$setChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarMenuRow:I

    return-void
.end method

.method public static final synthetic access$setChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListRecentChatsRow:I

    return-void
.end method

.method public static final synthetic access$setChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMemoryRow:I

    return-void
.end method

.method public static final synthetic access$setChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMultiPanelRow:I

    return-void
.end method

.method public static final synthetic access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatProfileTelegramIdRow:I

    return-void
.end method

.method public static final synthetic access$setChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatSwipeToGoToNextUnreadDialogRow:I

    return-void
.end method

.method public static final synthetic access$setChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatThemesEnableRow:I

    return-void
.end method

.method public static final synthetic access$setChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatsTemplatesRow:I

    return-void
.end method

.method public static final synthetic access$setCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationCallsRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteCloudRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingGifRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingStickerRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSpeakWithoutHoldRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoSpeakWithoutHoldRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    return-void
.end method

.method public static final synthetic access$setCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->customizationAutoOpenForwardingOptionsRow:I

    return-void
.end method

.method public static final synthetic access$setDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHeaderSettingsRow:I

    return-void
.end method

.method public static final synthetic access$setDrawerHolidayIconTypeRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHolidayIconTypeRow:I

    return-void
.end method

.method public static final synthetic access$setDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerItemsRow:I

    return-void
.end method

.method public static final synthetic access$setEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->enableProxyButtonRow:I

    return-void
.end method

.method public static final synthetic access$setMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messageWidePostsRow:I

    return-void
.end method

.method public static final synthetic access$setMessagesContextMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesContextMenuRow:I

    return-void
.end method

.method public static final synthetic access$setMessagesFormattingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesFormattingRow:I

    return-void
.end method

.method public static final synthetic access$setMessagesTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesTranslateRow:I

    return-void
.end method

.method public static final synthetic access$setMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    return-void
.end method

.method public static final synthetic access$setReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->reactionSettingsRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setSendMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->sendMessagesRow:I

    return-void
.end method

.method public static final synthetic access$setSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->sendPopupReactionsRow:I

    return-void
.end method

.method public static final synthetic access$setSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->settingsTopicsRow:I

    return-void
.end method

.method private final createChooseSelectedIconHolidayDesignSideMenuDialog()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 11

    .line 550
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    sget v1, Lorg/telegram/messenger/R$string;->settings_tools_design_icon:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 552
    sget v1, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 553
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 554
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 555
    invoke-static {}, Lcom/iMe/fork/enums/DrawerHolidayIconType;->values()[Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 556
    new-instance v8, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 557
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v9, 0x4

    .line 558
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v8, v10, v5, v9, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 560
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    .line 561
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 559
    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 563
    invoke-virtual {v7}, Lcom/iMe/fork/enums/DrawerHolidayIconType;->getTitle()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    if-ne v10, v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    invoke-virtual {v8, v9, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 564
    new-instance v7, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static final createChooseSelectedIconHolidayDesignSideMenuDialog$lambda$16$lambda$15(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 2

    const-string v0, "$builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.enums.DrawerHolidayIconType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/enums/DrawerHolidayIconType;

    .line 566
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    if-ne p1, v0, :cond_0

    return-void

    .line 569
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setDrawerHolidayIconType(Lcom/iMe/fork/enums/DrawerHolidayIconType;)V

    .line 570
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 571
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 572
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final getHint(I)Ljava/lang/String;
    .locals 1

    .line 341
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    if-ne p1, v0, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_multi_reply_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 342
    :cond_0
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    if-ne p1, v0, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 343
    :cond_1
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->sendPopupReactionsRow:I

    if-ne p1, v0, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_send_popup_reactions_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 362
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 363
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 364
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 365
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 366
    new-instance v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$13$lambda$12(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFF)V
    .locals 3

    const-string p5, "this$0"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$this_apply"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    instance-of p5, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_12

    .line 369
    invoke-direct {p0, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getHint(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 370
    move-object p5, p2

    check-cast p5, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p5, p4}, Lorg/telegram/ui/Cells/TextCheckCell;->isInSwitch(F)Z

    move-result p4

    if-nez p4, :cond_0

    .line 371
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->showHintDialog(Ljava/lang/String;)V

    return-void

    .line 374
    :cond_0
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 376
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->customizationAutoOpenForwardingOptionsRow:I

    if-ne p3, p1, :cond_1

    .line 377
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    xor-int/2addr p0, v1

    .line 376
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setOpenForwardingOptionsAutomaticallyEnabled(Z)V

    goto/16 :goto_0

    .line 380
    :cond_1
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    if-ne p3, p1, :cond_2

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setMultiReplyEnabled(Z)V

    goto/16 :goto_0

    .line 381
    :cond_2
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarAccountSwitchRow:I

    if-ne p3, p1, :cond_3

    .line 382
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setActionBarAccountSwitchEnabled(Z)V

    .line 383
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->needUpdateMainActionBarMenu:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 386
    :cond_3
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarMenuRow:I

    if-ne p3, p1, :cond_4

    .line 387
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setMainActionBarMenuEnabled(Z)V

    .line 388
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->needUpdateMainActionBarMenu:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 391
    :cond_4
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->enableProxyButtonRow:I

    if-ne p3, p1, :cond_5

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setProxyButtonEnabled(Z)V

    goto/16 :goto_0

    .line 392
    :cond_5
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    if-ne p3, p1, :cond_6

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setCloudAlbumsEnabled(Z)V

    goto/16 :goto_0

    .line 393
    :cond_6
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatBottomPanelRow:I

    if-ne p3, p1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    .line 394
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ToolsController;->setShowChannelBottomPanel(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 398
    :cond_7
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatHideKeyboardOnScrollRow:I

    if-ne p3, p1, :cond_8

    .line 399
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    xor-int/2addr p0, v1

    .line 398
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setHideChatKeyboardOnScrollEnabled(Z)V

    goto/16 :goto_0

    .line 402
    :cond_8
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatThemesEnableRow:I

    if-ne p3, p1, :cond_9

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setChatThemesEnabled(Z)V

    goto/16 :goto_0

    .line 403
    :cond_9
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMemoryRow:I

    if-ne p3, p1, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    .line 404
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ToolsController;->setRememberLastDialogEnabled(Z)V

    .line 405
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 408
    :cond_a
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->sendPopupReactionsRow:I

    if-ne p3, p1, :cond_b

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setReactionsInSendPopupEnabled(Z)V

    goto/16 :goto_0

    .line 409
    :cond_b
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationCallsRow:I

    if-ne p3, p1, :cond_c

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setCallsConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 410
    :cond_c
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteCloudRow:I

    if-ne p3, p1, :cond_d

    .line 411
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    xor-int/2addr p0, v1

    .line 410
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setDeleteCloudConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 414
    :cond_d
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingGifRow:I

    if-ne p3, p1, :cond_e

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSendingGifConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 415
    :cond_e
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingStickerRow:I

    if-ne p3, p1, :cond_f

    .line 416
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    xor-int/2addr p0, v1

    .line 415
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSendingStickerConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 419
    :cond_f
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSpeakWithoutHoldRow:I

    if-ne p3, p1, :cond_10

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSpeakWithoutHoldEnabled(Z)V

    goto/16 :goto_0

    .line 420
    :cond_10
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoSpeakWithoutHoldRow:I

    if-ne p3, p1, :cond_11

    .line 421
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    xor-int/2addr p0, v1

    .line 420
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setVideoSpeakWithoutHoldEnabled(Z)V

    goto/16 :goto_0

    .line 424
    :cond_11
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messageWidePostsRow:I

    if-ne p3, p1, :cond_28

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    .line 425
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ToolsController;->setChannelWidePostsEnabled(Z)V

    .line 426
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 431
    :cond_12
    instance-of p5, p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v2, 0x0

    if-eqz p5, :cond_1a

    .line 432
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMultiPanelRow:I

    if-ne p3, p1, :cond_14

    .line 433
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 434
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 435
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p1

    .line 436
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    .line 435
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/MultiPanelController;->setMultiPanelEnabled(Z)V

    .line 437
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/MultiPanelController;->saveConfig()V

    .line 438
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 440
    :cond_13
    new-instance p1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {p1, v2, v1, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 444
    :cond_14
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatSwipeToGoToNextUnreadDialogRow:I

    if-ne p3, p1, :cond_16

    .line 445
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 446
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 447
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    .line 448
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    .line 447
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ToolsController;->setSwipeToGoToNextUnreadDialogEnabled(Z)V

    .line 449
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    .line 450
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 452
    :cond_15
    new-instance p1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 456
    :cond_16
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListRecentChatsRow:I

    if-ne p3, p1, :cond_18

    .line 457
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 458
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 459
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/RecentChatsController;->setRecentChatsEnabled(Z)V

    .line 461
    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    .line 463
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 464
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 466
    :cond_17
    new-instance p1, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 470
    :cond_18
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatProfileTelegramIdRow:I

    if-ne p3, p1, :cond_28

    .line 471
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 472
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 473
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ChatProfileController;->setChatProfileEnabled(Z)V

    .line 475
    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->saveConfig()V

    .line 477
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 478
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 479
    sget p1, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array p2, v1, [Ljava/lang/Object;

    .line 480
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p3, p2, v0

    .line 478
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 483
    :cond_19
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 488
    :cond_1a
    instance-of p4, p2, Lorg/telegram/ui/Cells/TextCell;

    if-eqz p4, :cond_24

    .line 489
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHeaderSettingsRow:I

    if-ne p3, p1, :cond_1b

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->showChooseDrawerAccountDataDialog()V

    goto/16 :goto_0

    .line 490
    :cond_1b
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerItemsRow:I

    if-ne p3, p1, :cond_1c

    new-instance p1, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "parentActivity"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 491
    :cond_1c
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatFolderAndChatSortingRow:I

    if-ne p3, p1, :cond_1d

    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p1}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 492
    :cond_1d
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->settingsTopicsRow:I

    if-ne p3, p1, :cond_1e

    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity;

    sget-object p2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity;-><init>(Lcom/iMe/fork/enums/FilterActivityType;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 493
    :cond_1e
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatAttachMenuButtonsRow:I

    if-ne p3, p1, :cond_1f

    .line 494
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-direct {p1, v2, v1, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 493
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 497
    :cond_1f
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatExtendedAvatarPreviewerRow:I

    if-ne p3, p1, :cond_20

    .line 498
    new-instance p1, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;-><init>()V

    .line 497
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 501
    :cond_20
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->reactionSettingsRow:I

    if-ne p3, p1, :cond_21

    new-instance p1, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 502
    :cond_21
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesTranslateRow:I

    if-ne p3, p1, :cond_22

    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-direct {p1, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 503
    :cond_22
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesContextMenuRow:I

    if-ne p3, p1, :cond_23

    new-instance p1, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-direct {p1, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;-><init>(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 504
    :cond_23
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->sendMessagesRow:I

    if-ne p3, p1, :cond_28

    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-direct {p1, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 507
    :cond_24
    instance-of p2, p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p2, :cond_28

    .line 508
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatsTemplatesRow:I

    if-ne p3, p2, :cond_25

    .line 510
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 509
    invoke-static {p1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createChooseTemplatesModeDialog(Landroid/content/Context;Lorg/telegram/ui/Components/UndoView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 508
    new-instance p2, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 515
    :cond_25
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    if-ne p3, p2, :cond_26

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->showChooseVideoVoiceCameraDialog()V

    goto :goto_0

    .line 516
    :cond_26
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHolidayIconTypeRow:I

    if-ne p3, p2, :cond_27

    .line 517
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->createChooseSelectedIconHolidayDesignSideMenuDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 516
    new-instance p2, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 520
    :cond_27
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesFormattingRow:I

    if-ne p3, p2, :cond_28

    .line 521
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object p2

    .line 522
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2, p1}, Lcom/iMe/fork/controller/FormattingTextController;->createChooseSelectedFormattingPanelType(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 520
    new-instance p2, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    :cond_28
    :goto_0
    return-void
.end method

.method private static final initListView$lambda$13$lambda$12$lambda$10(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final initListView$lambda$13$lambda$12$lambda$11(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final initListView$lambda$13$lambda$12$lambda$9(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 336
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 337
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 2

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 532
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 533
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 534
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->category:Lcom/iMe/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Lcom/iMe/fork/enums/SettingsToolsCategory;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 535
    new-instance v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final showChooseDrawerAccountDataDialog()V
    .locals 3

    .line 546
    new-instance v0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private final showChooseVideoVoiceCameraDialog()V
    .locals 2

    .line 355
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/AlertsCreator;->createChooseVideoVoiceCamera(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showChooseVideoVoiceCameraDialog$lambda$3(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p1

    .line 357
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    .line 356
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final showHintDialog(Ljava/lang/String;)V
    .locals 2

    .line 348
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 350
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 351
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 348
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final getCategory()Lcom/iMe/fork/enums/SettingsToolsCategory;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->category:Lcom/iMe/fork/enums/SettingsToolsCategory;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x15

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 124
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 125
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 126
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 131
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 124
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 133
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 134
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 135
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 140
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    .line 133
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 142
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 143
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 144
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 149
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    .line 142
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 151
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 152
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 153
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 158
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .line 151
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 160
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 161
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 162
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 167
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    .line 160
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v6, 0x4

    aput-object v3, v1, v6

    .line 169
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v21

    .line 171
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Class;

    .line 173
    const-class v9, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v9, v8, v2

    const-class v9, Lorg/telegram/ui/Cells/TextCell;

    aput-object v9, v8, v12

    const-class v9, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v9, v8, v4

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v8, v5

    const-class v4, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v4, v8, v6

    .line 182
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object/from16 v20, v3

    move-object/from16 v23, v8

    .line 169
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v3, v1, v7

    .line 184
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v29

    .line 186
    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 187
    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v2

    .line 191
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v3

    move-object/from16 v31, v4

    .line 184
    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 193
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 195
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move/from16 v11, v19

    .line 193
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 202
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 204
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 209
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    .line 202
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 211
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 214
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    .line 215
    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 218
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 211
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 220
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 223
    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    .line 224
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 228
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v6

    .line 220
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 230
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 233
    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v4, v2

    const-string v7, "valueTextView"

    .line 234
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 238
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 230
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 240
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 243
    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v4, v2

    .line 244
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v6

    .line 240
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 250
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 253
    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v4, v2

    .line 254
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    .line 250
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 260
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 263
    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v4, v2

    .line 264
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 268
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v8

    .line 260
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 270
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 273
    const-class v9, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v9, v4, v2

    const-string v9, "checkBox"

    .line 274
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v17

    .line 278
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v10

    .line 270
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 280
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 281
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 283
    const-class v11, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v11, v4, v2

    .line 284
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v17

    .line 288
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v11

    .line 280
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 290
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 291
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 293
    const-class v13, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v13, v4, v2

    .line 294
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    .line 290
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 300
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 303
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 304
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v8

    .line 300
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 310
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 313
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 314
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v10

    .line 310
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 320
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 323
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 324
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v11

    .line 320
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x14

    aput-object v3, v1, v2

    .line 123
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 110
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->setupActionBar()V

    .line 111
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
