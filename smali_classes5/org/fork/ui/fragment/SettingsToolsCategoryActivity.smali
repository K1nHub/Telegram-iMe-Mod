.class public final Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;
.super Lcom/smedialink/ui/base/mvp/MvpFragment;
.source "SettingsToolsCategoryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;
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
.field private final category:Lorg/fork/enums/SettingsToolsCategory;

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

.field private confirmationDeleteTwoSideRow:I

.field private confirmationSendingGifRow:I

.field private confirmationSendingStickerRow:I

.field private confirmationSpeakWithoutHoldRow:I

.field private confirmationVideoSpeakWithoutHoldRow:I

.field private confirmationVideoVoiceCameraRow:I

.field private customSharingRow:I

.field private customizationAutoOpenForwardingOptionsRow:I

.field private drawerHeaderSettingsRow:I

.field private drawerHolidayIconType:I

.field private drawerItemsRow:I

.field private final listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private messageWidePostsRow:I

.field private messagesContextMenu:I

.field private messagesTranslate:I

.field private multiReplyRow:I

.field private proxyButtonForceVisibleRow:I

.field private reactionSettingsRow:I

.field private final rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private sendMessages:I

.field private sendPopupReactionsRow:I

.field private settingsTopicsRow:I


# direct methods
.method public static synthetic $r8$lambda$BmRKT507N_86miY0h8W9YRgnh9g(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->createChooseSelectedIconHolidayDesignSideMenuDialog$lambda-15$lambda-14(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EQSt4pQ_xWlSVIEH3iklX7qLK98(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView$lambda-12$lambda-11$lambda-9(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GVxcM5J9oiLIslUc-sYT1fie4FA(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView$lambda-12$lambda-11$lambda-10(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L0b8BEMhuYsrLceW5JboyUsrY9o(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView$lambda-12$lambda-11$lambda-8(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WNO3gKSJeAnp_JtwELZrvwLZE6s(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView$lambda-12$lambda-11(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqK4Jq4PPO7Pa2dbx-yXa_GQEJ0(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->showChooseVideoVoiceCameraDialog$lambda-3(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 35
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 37
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lorg/fork/enums/SettingsToolsCategory;)V
    .locals 2

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->category:Lorg/fork/enums/SettingsToolsCategory;

    .line 35
    new-instance p1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$rootView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$rootView$2;-><init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 36
    new-instance p1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$listView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$listView$2;-><init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 37
    new-instance p1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$listAdapter$2;-><init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getChatAttachMenuButtonsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatAttachMenuButtonsRow:I

    return p0
.end method

.method public static final synthetic access$getChatBottomPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatBottomPanelRow:I

    return p0
.end method

.method public static final synthetic access$getChatExtendedAvatarPreviewerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatExtendedAvatarPreviewerRow:I

    return p0
.end method

.method public static final synthetic access$getChatFolderAndChatSortingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatFolderAndChatSortingRow:I

    return p0
.end method

.method public static final synthetic access$getChatHideKeyboardOnScrollRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatHideKeyboardOnScrollRow:I

    return p0
.end method

.method public static final synthetic access$getChatListActionBarAccountSwitchRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarAccountSwitchRow:I

    return p0
.end method

.method public static final synthetic access$getChatListActionBarMenuRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarMenuRow:I

    return p0
.end method

.method public static final synthetic access$getChatListRecentChatsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListRecentChatsRow:I

    return p0
.end method

.method public static final synthetic access$getChatMemoryRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMemoryRow:I

    return p0
.end method

.method public static final synthetic access$getChatMultiPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMultiPanelRow:I

    return p0
.end method

.method public static final synthetic access$getChatProfileTelegramIdRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatProfileTelegramIdRow:I

    return p0
.end method

.method public static final synthetic access$getChatSwipeToGoToNextUnreadDialogRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatSwipeToGoToNextUnreadDialogRow:I

    return p0
.end method

.method public static final synthetic access$getChatThemesEnableRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatThemesEnableRow:I

    return p0
.end method

.method public static final synthetic access$getChatsTemplatesRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatsTemplatesRow:I

    return p0
.end method

.method public static final synthetic access$getCloudAlbumsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationCallsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationCallsRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationDeleteCloudRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteCloudRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationDeleteTwoSideRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteTwoSideRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationSendingGifRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingGifRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationSendingStickerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingStickerRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSpeakWithoutHoldRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationVideoSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoSpeakWithoutHoldRow:I

    return p0
.end method

.method public static final synthetic access$getConfirmationVideoVoiceCameraRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    return p0
.end method

.method public static final synthetic access$getCustomSharingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->customSharingRow:I

    return p0
.end method

.method public static final synthetic access$getCustomizationAutoOpenForwardingOptionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->customizationAutoOpenForwardingOptionsRow:I

    return p0
.end method

.method public static final synthetic access$getDrawerHeaderSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHeaderSettingsRow:I

    return p0
.end method

.method public static final synthetic access$getDrawerHolidayIconType$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHolidayIconType:I

    return p0
.end method

.method public static final synthetic access$getDrawerItemsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerItemsRow:I

    return p0
.end method

.method public static final synthetic access$getHint(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getHint(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMessageWidePostsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->messageWidePostsRow:I

    return p0
.end method

.method public static final synthetic access$getMessagesContextMenu$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesContextMenu:I

    return p0
.end method

.method public static final synthetic access$getMessagesTranslate$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesTranslate:I

    return p0
.end method

.method public static final synthetic access$getMultiReplyRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    return p0
.end method

.method public static final synthetic access$getProxyButtonForceVisibleRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->proxyButtonForceVisibleRow:I

    return p0
.end method

.method public static final synthetic access$getReactionSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->reactionSettingsRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSendMessages$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->sendMessages:I

    return p0
.end method

.method public static final synthetic access$getSendPopupReactionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->sendPopupReactionsRow:I

    return p0
.end method

.method public static final synthetic access$getSettingsTopicsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->settingsTopicsRow:I

    return p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setChatAttachMenuButtonsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatAttachMenuButtonsRow:I

    return-void
.end method

.method public static final synthetic access$setChatBottomPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatBottomPanelRow:I

    return-void
.end method

.method public static final synthetic access$setChatExtendedAvatarPreviewerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatExtendedAvatarPreviewerRow:I

    return-void
.end method

.method public static final synthetic access$setChatFolderAndChatSortingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatFolderAndChatSortingRow:I

    return-void
.end method

.method public static final synthetic access$setChatHideKeyboardOnScrollRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatHideKeyboardOnScrollRow:I

    return-void
.end method

.method public static final synthetic access$setChatListActionBarAccountSwitchRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarAccountSwitchRow:I

    return-void
.end method

.method public static final synthetic access$setChatListActionBarMenuRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarMenuRow:I

    return-void
.end method

.method public static final synthetic access$setChatListRecentChatsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListRecentChatsRow:I

    return-void
.end method

.method public static final synthetic access$setChatMemoryRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMemoryRow:I

    return-void
.end method

.method public static final synthetic access$setChatMultiPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMultiPanelRow:I

    return-void
.end method

.method public static final synthetic access$setChatProfileTelegramIdRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatProfileTelegramIdRow:I

    return-void
.end method

.method public static final synthetic access$setChatSwipeToGoToNextUnreadDialogRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatSwipeToGoToNextUnreadDialogRow:I

    return-void
.end method

.method public static final synthetic access$setChatThemesEnableRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatThemesEnableRow:I

    return-void
.end method

.method public static final synthetic access$setChatsTemplatesRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatsTemplatesRow:I

    return-void
.end method

.method public static final synthetic access$setCloudAlbumsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationCallsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationCallsRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationDeleteCloudRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteCloudRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationDeleteTwoSideRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteTwoSideRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationSendingGifRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingGifRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationSendingStickerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingStickerRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSpeakWithoutHoldRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationVideoSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoSpeakWithoutHoldRow:I

    return-void
.end method

.method public static final synthetic access$setConfirmationVideoVoiceCameraRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    return-void
.end method

.method public static final synthetic access$setCustomSharingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->customSharingRow:I

    return-void
.end method

.method public static final synthetic access$setCustomizationAutoOpenForwardingOptionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->customizationAutoOpenForwardingOptionsRow:I

    return-void
.end method

.method public static final synthetic access$setDrawerHeaderSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHeaderSettingsRow:I

    return-void
.end method

.method public static final synthetic access$setDrawerHolidayIconType$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHolidayIconType:I

    return-void
.end method

.method public static final synthetic access$setDrawerItemsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerItemsRow:I

    return-void
.end method

.method public static final synthetic access$setMessageWidePostsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->messageWidePostsRow:I

    return-void
.end method

.method public static final synthetic access$setMessagesContextMenu$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesContextMenu:I

    return-void
.end method

.method public static final synthetic access$setMessagesTranslate$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesTranslate:I

    return-void
.end method

.method public static final synthetic access$setMultiReplyRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    return-void
.end method

.method public static final synthetic access$setProxyButtonForceVisibleRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->proxyButtonForceVisibleRow:I

    return-void
.end method

.method public static final synthetic access$setReactionSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->reactionSettingsRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setSendMessages$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->sendMessages:I

    return-void
.end method

.method public static final synthetic access$setSendPopupReactionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->sendPopupReactionsRow:I

    return-void
.end method

.method public static final synthetic access$setSettingsTopicsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->settingsTopicsRow:I

    return-void
.end method

.method private final createChooseSelectedIconHolidayDesignSideMenuDialog()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 11

    .line 288
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    sget v1, Lorg/telegram/messenger/R$string;->setting_tools_drawer_holiday_icon_menu:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 290
    sget v1, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 291
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 292
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 293
    invoke-static {}, Lorg/fork/enums/DrawerHolidayIconType;->values()[Lorg/fork/enums/DrawerHolidayIconType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    .line 294
    new-instance v8, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v9, 0x4

    .line 296
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v8, v10, v5, v9, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const-string v9, "radioBackground"

    .line 297
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    const-string v10, "dialogRadioBackgroundChecked"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 298
    invoke-virtual {v7}, Lorg/fork/enums/DrawerHolidayIconType;->getTextResId()I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lorg/fork/enums/DrawerHolidayIconType;

    if-ne v10, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v8, v9, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 299
    new-instance v7, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 294
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static final createChooseSelectedIconHolidayDesignSideMenuDialog$lambda-15$lambda-14(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 2

    const-string v0, "$builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.fork.enums.DrawerHolidayIconType"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/fork/enums/DrawerHolidayIconType;

    .line 301
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lorg/fork/enums/DrawerHolidayIconType;

    if-ne p1, v0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setDrawerHolidayIconType(Lorg/fork/enums/DrawerHolidayIconType;)V

    .line 305
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final getHint(I)Ljava/lang/String;
    .locals 1

    .line 146
    iget v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->customSharingRow:I

    if-ne p1, v0, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_custom_sharing_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_0
    iget v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    if-ne p1, v0, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_multi_reply_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 148
    :cond_1
    iget v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    if-ne p1, v0, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 149
    :cond_2
    iget v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->sendPopupReactionsRow:I

    if-ne p1, v0, :cond_3

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_send_popup_reactions_hint:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;
    .locals 3

    .line 37
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 36
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 35
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 164
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 166
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 167
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 168
    new-instance v1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda5;-><init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda-12$lambda-11(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;Landroid/view/View;IFF)V
    .locals 2

    const-string/jumbo p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    instance-of p4, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x1

    if-eqz p4, :cond_15

    .line 171
    invoke-direct {p0, p2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getHint(I)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 172
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v1, p3}, Lorg/telegram/ui/Cells/TextCheckCell;->checkSwitchLocation(F)Z

    move-result p3

    if-nez p3, :cond_0

    .line 173
    invoke-direct {p0, p4}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->showHintDialog(Ljava/lang/String;)V

    return-void

    .line 176
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 178
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->customizationAutoOpenForwardingOptionsRow:I

    if-ne p2, p1, :cond_1

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setOpenForwardingOptionsAutomaticallyEnabled(Z)V

    goto/16 :goto_0

    .line 179
    :cond_1
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->customSharingRow:I

    if-ne p2, p1, :cond_2

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCustomSharingModeEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setCustomSharingModeEnabled(Z)V

    goto/16 :goto_0

    .line 180
    :cond_2
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->multiReplyRow:I

    if-ne p2, p1, :cond_3

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setMultiReplyEnabled(Z)V

    goto/16 :goto_0

    .line 181
    :cond_3
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarAccountSwitchRow:I

    const/4 p3, 0x0

    if-ne p2, p1, :cond_4

    .line 182
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    xor-int/2addr p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setActionBarAccountSwitchEnabled(Z)V

    .line 183
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->needUpdateMainActionBarMenu:I

    new-array p2, p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 185
    :cond_4
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListActionBarMenuRow:I

    if-ne p2, p1, :cond_5

    .line 186
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    xor-int/2addr p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setMainActionBarMenuEnabled(Z)V

    .line 187
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->needUpdateMainActionBarMenu:I

    new-array p2, p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 189
    :cond_5
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->proxyButtonForceVisibleRow:I

    if-ne p2, p1, :cond_6

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isProxyButtonForceVisible:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setProxyButtonForceVisible(Z)V

    goto/16 :goto_0

    .line 190
    :cond_6
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->cloudAlbumsRow:I

    if-ne p2, p1, :cond_7

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setCloudAlbumsEnabled(Z)V

    goto/16 :goto_0

    .line 191
    :cond_7
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatListRecentChatsRow:I

    if-ne p2, p1, :cond_8

    .line 192
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/RecentChatsController;->toggleEnabled()V

    .line 193
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    new-array p2, p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    :cond_8
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatBottomPanelRow:I

    if-ne p2, p1, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p0

    .line 196
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/fork/controller/ToolsController;->setShowChannelBottomPanel(Z)V

    .line 197
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 199
    :cond_9
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatHideKeyboardOnScrollRow:I

    if-ne p2, p1, :cond_a

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setHideChatKeyboardOnScrollEnabled(Z)V

    goto/16 :goto_0

    .line 200
    :cond_a
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatThemesEnableRow:I

    if-ne p2, p1, :cond_b

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setChatThemesEnabled(Z)V

    goto/16 :goto_0

    .line 201
    :cond_b
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMemoryRow:I

    if-ne p2, p1, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/fork/controller/ToolsController;->setRememberLastDialogEnabled(Z)V

    .line 203
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 205
    :cond_c
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->sendPopupReactionsRow:I

    if-ne p2, p1, :cond_d

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setReactionsInSendPopupEnabled(Z)V

    goto/16 :goto_0

    .line 206
    :cond_d
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationCallsRow:I

    if-ne p2, p1, :cond_e

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setCallsConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 207
    :cond_e
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteCloudRow:I

    if-ne p2, p1, :cond_f

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setDeleteCloudConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 208
    :cond_f
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationDeleteTwoSideRow:I

    if-ne p2, p1, :cond_10

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isRevokeByDefault()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/fork/controller/ToolsController;->setRevokeByDefault(Z)V

    .line 210
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 212
    :cond_10
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingGifRow:I

    if-ne p2, p1, :cond_11

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSendingGifConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 213
    :cond_11
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSendingStickerRow:I

    if-ne p2, p1, :cond_12

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSendingStickerConfirmationEnabled(Z)V

    goto/16 :goto_0

    .line 214
    :cond_12
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationSpeakWithoutHoldRow:I

    if-ne p2, p1, :cond_13

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSpeakWithoutHoldEnabled(Z)V

    goto/16 :goto_0

    .line 215
    :cond_13
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoSpeakWithoutHoldRow:I

    if-ne p2, p1, :cond_14

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    xor-int/2addr p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setVideoSpeakWithoutHoldEnabled(Z)V

    goto/16 :goto_0

    .line 216
    :cond_14
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->messageWidePostsRow:I

    if-ne p2, p1, :cond_27

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/fork/controller/ToolsController;->setChannelWidePostsEnabled(Z)V

    .line 218
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_0

    .line 222
    :cond_15
    instance-of p4, p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v1, 0x0

    if-eqz p4, :cond_19

    .line 223
    iget p4, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatMultiPanelRow:I

    if-ne p2, p4, :cond_17

    .line 224
    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkSwitchLocation(F)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 226
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lorg/fork/controller/MultiPanelController;->setMultiPanelEnabled(Z)V

    .line 227
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/MultiPanelController;->saveConfig()V

    .line 228
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 230
    :cond_16
    new-instance p1, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {p1, v1, v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;-><init>(Lorg/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 233
    :cond_17
    iget p4, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatSwipeToGoToNextUnreadDialogRow:I

    if-ne p2, p4, :cond_27

    .line 234
    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkSwitchLocation(F)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 235
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lorg/fork/controller/ToolsController;->setSwipeToGoToNextUnreadDialogEnabled(Z)V

    .line 237
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ToolsController;->saveConfig()V

    .line 238
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 240
    :cond_18
    new-instance p1, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-direct {p1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 244
    :cond_19
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCell;

    if-eqz p3, :cond_23

    .line 245
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHeaderSettingsRow:I

    if-ne p2, p1, :cond_1a

    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->showChooseDrawerAccountDataDialog()V

    goto/16 :goto_0

    .line 246
    :cond_1a
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerItemsRow:I

    if-ne p2, p1, :cond_1b

    new-instance p1, Lorg/fork/ui/dialog/DrawerItemsSettingsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "parentActivity"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/fork/ui/dialog/DrawerItemsSettingsBottomSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 247
    :cond_1b
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatFolderAndChatSortingRow:I

    if-ne p2, p1, :cond_1c

    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p1}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 248
    :cond_1c
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->settingsTopicsRow:I

    if-ne p2, p1, :cond_1d

    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity;

    sget-object p2, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity;-><init>(Lorg/fork/enums/FilterActivityType;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 249
    :cond_1d
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatAttachMenuButtonsRow:I

    if-ne p2, p1, :cond_1e

    new-instance p1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-direct {p1, v1, v0, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;-><init>(Lorg/fork/enums/DialogType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 250
    :cond_1e
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatExtendedAvatarPreviewerRow:I

    if-ne p2, p1, :cond_1f

    new-instance p1, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-direct {p1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 251
    :cond_1f
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->reactionSettingsRow:I

    if-ne p2, p1, :cond_20

    new-instance p1, Lorg/fork/ui/fragment/ReactionsSettingsActivity;

    invoke-direct {p1}, Lorg/fork/ui/fragment/ReactionsSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 252
    :cond_20
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesTranslate:I

    if-ne p2, p1, :cond_21

    new-instance p1, Lorg/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-direct {p1, p2}, Lorg/fork/ui/fragment/SettingsToolsMessageActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 253
    :cond_21
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->messagesContextMenu:I

    if-ne p2, p1, :cond_22

    new-instance p1, Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-direct {p1, v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;-><init>(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 254
    :cond_22
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->sendMessages:I

    if-ne p2, p1, :cond_27

    new-instance p1, Lorg/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-direct {p1, p2}, Lorg/fork/ui/fragment/SettingsToolsMessageActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 256
    :cond_23
    instance-of p1, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p1, :cond_27

    .line 257
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatProfileTelegramIdRow:I

    if-ne p2, p1, :cond_24

    new-instance p1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda4;-><init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-static {p0, p1}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showChatProfileTelegramIdDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 260
    :cond_24
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatsTemplatesRow:I

    if-ne p2, p1, :cond_25

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createChooseTemplatesModeDialog(Landroid/content/Context;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    new-instance p3, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 261
    :cond_25
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    if-ne p2, p1, :cond_26

    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->showChooseVideoVoiceCameraDialog()V

    goto :goto_0

    .line 262
    :cond_26
    iget p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->drawerHolidayIconType:I

    if-ne p2, p1, :cond_27

    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->createChooseSelectedIconHolidayDesignSideMenuDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    new-instance p3, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    :cond_27
    :goto_0
    return-void
.end method

.method private static final initListView$lambda-12$lambda-11$lambda-10(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final initListView$lambda-12$lambda-11$lambda-8(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object v0

    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->chatProfileTelegramIdRow:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final initListView$lambda-12$lambda-11$lambda-9(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 141
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundGray"

    .line 142
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 270
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 271
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 272
    invoke-virtual {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getCategory()Lorg/fork/enums/SettingsToolsCategory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/enums/SettingsToolsCategory;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    new-instance v1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$setupActionBar$1$1;-><init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final showChooseDrawerAccountDataDialog()V
    .locals 3

    .line 284
    new-instance v0, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private final showChooseVideoVoiceCameraDialog()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/AlertsCreator;->createChooseVideoVoiceCamera(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showChooseVideoVoiceCameraDialog$lambda-3(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object p1

    iget p0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->confirmationVideoVoiceCameraRow:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final showHintDialog(Ljava/lang/String;)V
    .locals 2

    .line 154
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 156
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 157
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final getCategory()Lorg/fork/enums/SettingsToolsCategory;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->category:Lorg/fork/enums/SettingsToolsCategory;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 23
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

    .line 114
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "windowBackgroundGray"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 115
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 116
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "actionBarDefaultIcon"

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 117
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 118
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v13, 0x0

    const-string v14, "actionBarDefaultSelector"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 119
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v15, 0x5

    new-array v11, v15, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v8, v11, v2

    const-class v8, Lorg/telegram/ui/Cells/TextCell;

    aput-object v8, v11, v4

    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v11, v5

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v11, v6

    const-class v5, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v5, v11, v7

    const/4 v14, 0x0

    const-string/jumbo v5, "windowBackgroundWhite"

    move-object v8, v3

    const/4 v6, 0x5

    move-object v15, v5

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v3, v1, v6

    .line 120
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v6, v5, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string/jumbo v22, "windowBackgroundGrayShadow"

    move-object v15, v3

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x6

    aput-object v3, v1, v5

    .line 121
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v13, "actionBarDefault"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v3, v1, v5

    .line 122
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v13, "listSelectorSDK21"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 123
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v9, v2

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const-string v13, "divider"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 124
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v9, v2

    const-string/jumbo v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string/jumbo v14, "windowBackgroundWhiteBlackText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xa

    aput-object v3, v1, v6

    .line 125
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v10, v2

    const-string/jumbo v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "windowBackgroundWhiteValueText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xb

    aput-object v3, v1, v7

    .line 126
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v15, 0x0

    const-string/jumbo v16, "windowBackgroundWhiteBlackText"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xc

    aput-object v3, v1, v7

    .line 127
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "windowBackgroundWhiteBlackText"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xd

    aput-object v3, v1, v7

    .line 128
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "windowBackgroundWhiteGrayText2"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xe

    aput-object v3, v1, v7

    .line 129
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v7, v11, v2

    const-string v7, "checkBox"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "switchTrack"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v8, 0xf

    aput-object v3, v1, v8

    .line 130
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    new-array v12, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v12, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v13

    const/4 v11, 0x0

    const/16 v16, 0x0

    const-string/jumbo v17, "switchTrackChecked"

    move-object v9, v3

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v8, 0x10

    aput-object v3, v1, v8

    .line 131
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    new-array v12, v4, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v12, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v17, "windowBackgroundWhiteBlackText"

    move-object v9, v3

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x11

    aput-object v3, v1, v5

    .line 132
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-string/jumbo v16, "windowBackgroundWhiteGrayText2"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x12

    aput-object v3, v1, v5

    .line 133
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v11, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "switchTrack"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x13

    aput-object v3, v1, v5

    .line 134
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v11, v2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "switchTrackChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v3, v1, v2

    .line 113
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 100
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->setupActionBar()V

    .line 101
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 110
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
