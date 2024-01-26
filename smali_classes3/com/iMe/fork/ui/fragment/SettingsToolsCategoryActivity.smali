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

.field private replyColorsRow:I

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

.method public static final synthetic access$getReplyColorsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->replyColorsRow:I

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

.method public static final synthetic access$setReplyColorsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->replyColorsRow:I

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

    .line 553
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    sget v1, Lorg/telegram/messenger/R$string;->settings_tools_design_icon:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 555
    sget v1, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 556
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 557
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 558
    invoke-static {}, Lcom/iMe/fork/enums/DrawerHolidayIconType;->values()[Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 559
    new-instance v8, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 560
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v9, 0x4

    .line 561
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v8, v10, v5, v9, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 563
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    .line 564
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 562
    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 566
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

    .line 567
    new-instance v7, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 579
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

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.enums.DrawerHolidayIconType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/enums/DrawerHolidayIconType;

    .line 569
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    if-ne p1, v0, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setDrawerHolidayIconType(Lcom/iMe/fork/enums/DrawerHolidayIconType;)V

    .line 573
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 574
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final getHint(I)Ljava/lang/String;
    .locals 1

    .line 342
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    if-ne p1, v0, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_multi_reply_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 343
    :cond_0
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    if-ne p1, v0, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 344
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

    .line 363
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 364
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 365
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 366
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 367
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

    .line 369
    instance-of p5, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_13

    .line 370
    invoke-direct {p0, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getHint(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 371
    move-object p5, p2

    check-cast p5, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p5, p4}, Lorg/telegram/ui/Cells/TextCheckCell;->isInSwitch(F)Z

    move-result p4

    if-nez p4, :cond_0

    .line 372
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->showHintDialog(Ljava/lang/String;)V

    return-void

    .line 375
    :cond_0
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 377
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->customizationAutoOpenForwardingOptionsRow:I

    if-ne p3, p1, :cond_1

    .line 378
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    xor-int/2addr p0, v1

    .line 377
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setOpenForwardingOptionsAutomaticallyEnabled(Z)V

    goto/16 :goto_0

    .line 381
    :cond_1
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    if-ne p3, p1, :cond_2

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setMultiReplyEnabled(Z)V

    goto/16 :goto_0

    .line 382
    :cond_2
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarAccountSwitchRow:I

    if-ne p3, p1, :cond_3

    .line 383
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setActionBarAccountSwitchEnabled(Z)V

    .line 384
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->needUpdateMainActionBarMenu:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 387
    :cond_3
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarMenuRow:I

    if-ne p3, p1, :cond_4

    .line 388
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setMainActionBarMenuEnabled(Z)V

    .line 389
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->needUpdateMainActionBarMenu:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 392
    :cond_4
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->enableProxyButtonRow:I

    if-ne p3, p1, :cond_5

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setProxyButtonEnabled(Z)V

    goto/16 :goto_0

    .line 393
    :cond_5
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    if-ne p3, p1, :cond_6

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setCloudAlbumsEnabled(Z)V

    goto/16 :goto_0

    .line 394
    :cond_6
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatBottomPanelRow:I

    if-ne p3, p1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ToolsController;->setShowChannelBottomPanel(Z)V

    .line 396
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 399
    :cond_7
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatHideKeyboardOnScrollRow:I

    if-ne p3, p1, :cond_8

    .line 400
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    xor-int/2addr p0, v1

    .line 399
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setHideChatKeyboardOnScrollEnabled(Z)V

    goto/16 :goto_0

    .line 403
    :cond_8
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatThemesEnableRow:I

    if-ne p3, p1, :cond_9

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setChatThemesEnabled(Z)V

    goto/16 :goto_0

    .line 404
    :cond_9
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMemoryRow:I

    if-ne p3, p1, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    .line 405
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ToolsController;->setRememberLastDialogEnabled(Z)V

    .line 406
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 409
    :cond_a
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->sendPopupReactionsRow:I

    if-ne p3, p1, :cond_b

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setReactionsInSendPopupEnabled(Z)V

    goto/16 :goto_0

    .line 410
    :cond_b
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationCallsRow:I

    if-ne p3, p1, :cond_c

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setCallsConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 411
    :cond_c
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteCloudRow:I

    if-ne p3, p1, :cond_d

    .line 412
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    xor-int/2addr p0, v1

    .line 411
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setDeleteCloudConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 415
    :cond_d
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingGifRow:I

    if-ne p3, p1, :cond_e

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSendingGifConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 416
    :cond_e
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingStickerRow:I

    if-ne p3, p1, :cond_f

    .line 417
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    xor-int/2addr p0, v1

    .line 416
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSendingStickerConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 420
    :cond_f
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSpeakWithoutHoldRow:I

    if-ne p3, p1, :cond_10

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSpeakWithoutHoldEnabled(Z)V

    goto/16 :goto_0

    .line 421
    :cond_10
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoSpeakWithoutHoldRow:I

    if-ne p3, p1, :cond_11

    .line 422
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    xor-int/2addr p0, v1

    .line 421
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setVideoSpeakWithoutHoldEnabled(Z)V

    goto/16 :goto_0

    .line 425
    :cond_11
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messageWidePostsRow:I

    if-ne p3, p1, :cond_12

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    .line 426
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ToolsController;->setChannelWidePostsEnabled(Z)V

    .line 427
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 430
    :cond_12
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->replyColorsRow:I

    if-ne p3, p0, :cond_29

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReplyColorsEnabled:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setReplyColorsEnabled(Z)V

    goto/16 :goto_0

    .line 434
    :cond_13
    instance-of p5, p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v2, 0x0

    if-eqz p5, :cond_1b

    .line 435
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMultiPanelRow:I

    if-ne p3, p1, :cond_15

    .line 436
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 437
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 438
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p1

    .line 439
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    .line 438
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/MultiPanelController;->setMultiPanelEnabled(Z)V

    .line 440
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/MultiPanelController;->saveConfig()V

    .line 441
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 443
    :cond_14
    new-instance p1, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {p1, v2, v1, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 447
    :cond_15
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatSwipeToGoToNextUnreadDialogRow:I

    if-ne p3, p1, :cond_17

    .line 448
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 449
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 450
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    .line 451
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    .line 450
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ToolsController;->setSwipeToGoToNextUnreadDialogEnabled(Z)V

    .line 452
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    .line 453
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 455
    :cond_16
    new-instance p1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 459
    :cond_17
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListRecentChatsRow:I

    if-ne p3, p1, :cond_19

    .line 460
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 461
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 462
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    .line 463
    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/RecentChatsController;->setRecentChatsEnabled(Z)V

    .line 464
    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    .line 466
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 467
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 469
    :cond_18
    new-instance p1, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 473
    :cond_19
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatProfileTelegramIdRow:I

    if-ne p3, p1, :cond_29

    .line 474
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 475
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 476
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p1

    .line 477
    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ChatProfileController;->setChatProfileEnabled(Z)V

    .line 478
    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->saveConfig()V

    .line 480
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 481
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 482
    sget p1, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array p2, v1, [Ljava/lang/Object;

    .line 483
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p3, p2, v0

    .line 481
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 486
    :cond_1a
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 491
    :cond_1b
    instance-of p4, p2, Lorg/telegram/ui/Cells/TextCell;

    if-eqz p4, :cond_25

    .line 492
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHeaderSettingsRow:I

    if-ne p3, p1, :cond_1c

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->showChooseDrawerAccountDataDialog()V

    goto/16 :goto_0

    .line 493
    :cond_1c
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerItemsRow:I

    if-ne p3, p1, :cond_1d

    new-instance p1, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "parentActivity"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 494
    :cond_1d
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatFolderAndChatSortingRow:I

    if-ne p3, p1, :cond_1e

    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p1}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 495
    :cond_1e
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->settingsTopicsRow:I

    if-ne p3, p1, :cond_1f

    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity;

    sget-object p2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity;-><init>(Lcom/iMe/fork/enums/FilterActivityType;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 496
    :cond_1f
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatAttachMenuButtonsRow:I

    if-ne p3, p1, :cond_20

    .line 497
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-direct {p1, v2, v1, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 496
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 500
    :cond_20
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatExtendedAvatarPreviewerRow:I

    if-ne p3, p1, :cond_21

    .line 501
    new-instance p1, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;-><init>()V

    .line 500
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 504
    :cond_21
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->reactionSettingsRow:I

    if-ne p3, p1, :cond_22

    new-instance p1, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-direct {p1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 505
    :cond_22
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesTranslateRow:I

    if-ne p3, p1, :cond_23

    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-direct {p1, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 506
    :cond_23
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesContextMenuRow:I

    if-ne p3, p1, :cond_24

    new-instance p1, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-direct {p1, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;-><init>(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 507
    :cond_24
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->sendMessagesRow:I

    if-ne p3, p1, :cond_29

    new-instance p1, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-direct {p1, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 510
    :cond_25
    instance-of p2, p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p2, :cond_29

    .line 511
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->chatsTemplatesRow:I

    if-ne p3, p2, :cond_26

    .line 513
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 512
    invoke-static {p1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createChooseTemplatesModeDialog(Landroid/content/Context;Lorg/telegram/ui/Components/UndoView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 511
    new-instance p2, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 518
    :cond_26
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    if-ne p3, p2, :cond_27

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->showChooseVideoVoiceCameraDialog()V

    goto :goto_0

    .line 519
    :cond_27
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHolidayIconTypeRow:I

    if-ne p3, p2, :cond_28

    .line 520
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->createChooseSelectedIconHolidayDesignSideMenuDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 519
    new-instance p2, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 523
    :cond_28
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesFormattingRow:I

    if-ne p3, p2, :cond_29

    .line 524
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object p2

    .line 525
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2, p1}, Lcom/iMe/fork/controller/FormattingTextController;->createChooseSelectedFormattingPanelType(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 523
    new-instance p2, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    :cond_29
    :goto_0
    return-void
.end method

.method private static final initListView$lambda$13$lambda$12$lambda$10(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final initListView$lambda$13$lambda$12$lambda$11(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final initListView$lambda$13$lambda$12$lambda$9(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 337
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 338
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 2

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 535
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 536
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 537
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->category:Lcom/iMe/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Lcom/iMe/fork/enums/SettingsToolsCategory;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 538
    new-instance v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final showChooseDrawerAccountDataDialog()V
    .locals 3

    .line 549
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

    .line 356
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

    .line 357
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p1

    .line 358
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    .line 357
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final showHintDialog(Ljava/lang/String;)V
    .locals 2

    .line 349
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 351
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 352
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 349
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

    .line 125
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 126
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 127
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 132
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 125
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 134
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 135
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 136
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 141
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    .line 134
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 143
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 144
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 145
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 150
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    .line 143
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 152
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 153
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 154
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 159
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .line 152
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 161
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 162
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 163
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 168
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    .line 161
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v6, 0x4

    aput-object v3, v1, v6

    .line 170
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v21

    .line 172
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Class;

    .line 174
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

    .line 183
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object/from16 v20, v3

    move-object/from16 v23, v8

    .line 170
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v3, v1, v7

    .line 185
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v29

    .line 187
    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 188
    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v2

    .line 192
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v3

    move-object/from16 v31, v4

    .line 185
    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 194
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 196
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move/from16 v11, v19

    .line 194
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 203
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 205
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 210
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    .line 203
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 212
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 215
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    .line 216
    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 219
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 212
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 221
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 224
    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    .line 225
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 229
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v6

    .line 221
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 231
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 234
    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v4, v2

    const-string v7, "valueTextView"

    .line 235
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 239
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 231
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 241
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 244
    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v4, v2

    .line 245
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v6

    .line 241
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 251
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 254
    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v4, v2

    .line 255
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    .line 251
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 261
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 264
    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v4, v2

    .line 265
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 269
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v8

    .line 261
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 271
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 274
    const-class v9, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v9, v4, v2

    const-string v9, "checkBox"

    .line 275
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v17

    .line 279
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v10

    .line 271
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 281
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 284
    const-class v11, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v11, v4, v2

    .line 285
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v17

    .line 289
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v11

    .line 281
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 291
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 294
    const-class v13, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v13, v4, v2

    .line 295
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    .line 291
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 301
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 304
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 305
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v8

    .line 301
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 311
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 314
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 315
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v10

    .line 311
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 321
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 324
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 325
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v26, v11

    .line 321
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x14

    aput-object v3, v1, v2

    .line 124
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

    .line 110
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 111
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->setupActionBar()V

    .line 112
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
