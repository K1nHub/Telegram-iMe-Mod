package org.telegram.p044ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Property;
import android.util.StateSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Keep;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.bots.usecase.AiBotsManager;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.FiltersController;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.enums.FilterActivityType;
import com.iMe.fork.enums.LockedSection;
import com.iMe.fork.enums.SortingFilter;
import com.iMe.fork.p024ui.dialog.SelectFabsBottomSheet;
import com.iMe.fork.p024ui.fragment.MusicActivity;
import com.iMe.fork.p024ui.fragment.RecentChatsDialogTypeSettingsActivity;
import com.iMe.fork.p024ui.fragment.SettingsToolsActivity;
import com.iMe.fork.p024ui.fragment.SortingFilterSettingsActivity;
import com.iMe.fork.p024ui.view.AvatarDrawableCell;
import com.iMe.fork.p024ui.view.FragmentPreviewMenu;
import com.iMe.fork.p024ui.view.PinnedPlayerView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p031ui.base.mvp.JavaMvpFragment;
import com.iMe.p031ui.common.ColorBlenderAnimator;
import com.iMe.p031ui.multifab.MiniFabsContainer;
import com.iMe.p031ui.recent_chats.RecentChatsBar;
import com.iMe.p031ui.topics.TopicView;
import com.iMe.p031ui.topics.TopicsAlert;
import com.iMe.p031ui.topics.TopicsBar;
import com.iMe.p031ui.wallet.airdrop.WalletAirdropPresenter;
import com.iMe.p031ui.wallet.airdrop.WalletAirdropView;
import com.iMe.p031ui.wallet.airdrop.dialog.WalletAirdropDialog;
import com.iMe.p031ui.wallet.common.WalletRootFragment;
import com.iMe.storage.domain.model.HistoryDialogModel;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.storage.domain.model.filters.FilterSettingsModel;
import com.iMe.storage.domain.model.topics.TopicModel;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.model.filter.FilterFabExtKt;
import com.iMe.utils.helper.wallet.WalletHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FilesMigrationService;
import org.telegram.messenger.ForwardingMessagesParams;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.XiaomiUtilities;
import org.telegram.p044ui.ActionBar.ActionBarMenu;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p044ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.BackDrawable;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.BottomSheet;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.INavigationLayout;
import org.telegram.p044ui.ActionBar.MenuDrawable;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Adapters.DialogsAdapter;
import org.telegram.p044ui.Adapters.DialogsSearchAdapter;
import org.telegram.p044ui.Adapters.FiltersView;
import org.telegram.p044ui.CameraScanActivity;
import org.telegram.p044ui.Cells.AccountSelectCell;
import org.telegram.p044ui.Cells.ArchiveHintCell;
import org.telegram.p044ui.Cells.CheckBoxCell;
import org.telegram.p044ui.Cells.DialogCell;
import org.telegram.p044ui.Cells.DialogsHintCell;
import org.telegram.p044ui.Cells.DrawerProfileCell;
import org.telegram.p044ui.Cells.DrawerUserCell;
import org.telegram.p044ui.Cells.HeaderCell;
import org.telegram.p044ui.Cells.HintDialogCell;
import org.telegram.p044ui.Cells.ProfileSearchCell;
import org.telegram.p044ui.Cells.RequestPeerRequirementsCell;
import org.telegram.p044ui.Cells.TextCell;
import org.telegram.p044ui.Cells.UserCell;
import org.telegram.p044ui.ChatActivity;
import org.telegram.p044ui.Components.AlertsCreator;
import org.telegram.p044ui.Components.AnimatedEmojiDrawable;
import org.telegram.p044ui.Components.AnimationProperties;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.BlurredRecyclerView;
import org.telegram.p044ui.Components.Bulletin;
import org.telegram.p044ui.Components.BulletinFactory;
import org.telegram.p044ui.Components.ChatActivityEnterView;
import org.telegram.p044ui.Components.ChatAvatarContainer;
import org.telegram.p044ui.Components.CombinedDrawable;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.DialogsItemAnimator;
import org.telegram.p044ui.Components.EditTextBoldCursor;
import org.telegram.p044ui.Components.FilterTabsView;
import org.telegram.p044ui.Components.FiltersListBottomSheet;
import org.telegram.p044ui.Components.FlickerLoadingView;
import org.telegram.p044ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.p044ui.Components.FloatingDebug.FloatingDebugProvider;
import org.telegram.p044ui.Components.FolderBottomSheet;
import org.telegram.p044ui.Components.ForwardingPreviewView;
import org.telegram.p044ui.Components.FragmentContextView;
import org.telegram.p044ui.Components.GroupCreateSpan;
import org.telegram.p044ui.Components.HintView;
import org.telegram.p044ui.Components.ItemOptions;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.NumberTextView;
import org.telegram.p044ui.Components.PacmanAnimation;
import org.telegram.p044ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p044ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p044ui.Components.ProxyDrawable;
import org.telegram.p044ui.Components.PullForegroundDrawable;
import org.telegram.p044ui.Components.RLottieDrawable;
import org.telegram.p044ui.Components.RLottieImageView;
import org.telegram.p044ui.Components.RadialProgress2;
import org.telegram.p044ui.Components.RadialProgressView;
import org.telegram.p044ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p044ui.Components.RecyclerAnimationScrollHelper;
import org.telegram.p044ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.p044ui.Components.SearchViewPager;
import org.telegram.p044ui.Components.SizeNotifierFrameLayout;
import org.telegram.p044ui.Components.UndoView;
import org.telegram.p044ui.Components.ViewPagerFixed;
import org.telegram.p044ui.DialogsActivity;
import org.telegram.p044ui.FilterCreateActivity;
import org.telegram.p044ui.GroupCreateFinalActivity;
import org.telegram.p044ui.SelectAnimatedEmojiDialog;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessagesFilter;
import org.telegram.tgnet.TLRPC$RequestPeerType;
import org.telegram.tgnet.TLRPC$TL_auth_acceptLoginToken;
import org.telegram.tgnet.TLRPC$TL_authorization;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_chatlists_chatlistUpdates;
import org.telegram.tgnet.TLRPC$TL_contacts_toggleTopPeers;
import org.telegram.tgnet.TLRPC$TL_dialog;
import org.telegram.tgnet.TLRPC$TL_dialogFolder;
import org.telegram.tgnet.TLRPC$TL_emojiStatus;
import org.telegram.tgnet.TLRPC$TL_emojiStatusEmpty;
import org.telegram.tgnet.TLRPC$TL_emojiStatusUntil;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_help_premiumPromo;
import org.telegram.tgnet.TLRPC$TL_messages_checkHistoryImportPeer;
import org.telegram.tgnet.TLRPC$TL_messages_checkedHistoryImportPeer;
import org.telegram.tgnet.TLRPC$TL_messages_updateDialogFilter;
import org.telegram.tgnet.TLRPC$TL_peerChannel;
import org.telegram.tgnet.TLRPC$TL_peerChat;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_requestPeerTypeBroadcast;
import org.telegram.tgnet.TLRPC$TL_requestPeerTypeChat;
import org.telegram.tgnet.TLRPC$TL_requestPeerTypeUser;
import org.telegram.tgnet.TLRPC$User;
import p034j$.util.concurrent.ConcurrentHashMap;
/* renamed from: org.telegram.ui.DialogsActivity */
/* loaded from: classes5.dex */
public class DialogsActivity extends JavaMvpFragment implements NotificationCenter.NotificationCenterDelegate, FloatingDebugProvider, WalletAirdropView {
    public final Property<DialogsActivity, Float> SCROLL_Y;
    private ValueAnimator actionBarColorAnimator;
    private Paint actionBarDefaultPaint;
    private ActionBarMenuItem actionModeOtherItem;
    private ArrayList<View> actionModeViews;
    private ActionBarMenuSubItem addToFolderItem;
    private String addToGroupAlertString;
    private float additionalFloatingTranslation;
    private float additionalFloatingTranslation2;
    private float additionalOffset;
    private boolean afterSignup;
    private boolean allowBots;
    private boolean allowChannels;
    private boolean allowGlobalSearch;
    private boolean allowGroups;
    private boolean allowLegacyGroups;
    private boolean allowMegagroups;
    private boolean allowMoving;
    private boolean allowSwipeDuringCurrentTouch;
    private boolean allowSwitchAccount;
    private boolean allowUsers;
    private DrawerProfileCell.AnimatedStatusView animatedStatusView;
    private boolean animatingForward;
    private ActionBarMenuItem archive2Item;
    private ArchiveHintCell archiveHintCell;
    private ActionBarMenuSubItem archiveItem;
    private boolean askAboutContacts;
    private boolean askingForPermissions;
    private ChatAvatarContainer avatarContainer;
    private boolean backAnimation;
    private BackDrawable backDrawable;
    private ActionBarMenuSubItem blockItem;
    private View blurredView;
    private ArrayList<TLRPC$Dialog> botShareDialogs;
    private Long cacheSize;
    private int canClearCacheCount;
    private boolean canDeletePsaSelected;
    private int canMuteCount;
    private int canPinCount;
    private int canReadCount;
    private int canReportSpamCount;
    private boolean canSelectTopics;
    private boolean canShowFilterTabsView;
    private boolean canShowHiddenArchive;
    private int canUnarchiveCount;
    private int canUnmuteCount;
    private boolean cantSendToChannels;
    private boolean checkCanWrite;
    private boolean checkPermission;
    private boolean checkingImportDialog;
    private ActionBarMenuSubItem clearItem;
    private boolean closeFragment;
    private boolean closeSearchFieldOnHide;
    private ActionBarMenuItem cloudItem;
    private ChatActivityEnterView commentView;
    private AnimatorSet commentViewAnimator;
    private View commentViewBg;
    private float contactsAlpha;
    private ValueAnimator contactsAlphaAnimator;
    private LongSparseArray<Integer> crossForwardCounter;
    private ArrayList<Integer> crossForwardMessages;
    private AlertDialog crossForwardProgressDialog;
    private long crossForwardSelectedDialogs;
    private int currentConnectionState;
    private int currentQrScannerType;
    View databaseMigrationHint;
    private int debugLastUpdateAction;
    private DialogsActivityDelegate delegate;
    private ActionBarMenuItem deleteItem;
    private Long deviceSize;
    private DialogsHintCell dialogsHintCell;
    private boolean dialogsListFrozen;
    private boolean disableActionBarScrolling;
    private ActionBarMenuItem doneItem;
    private AnimatorSet doneItemAnimator;
    private ActionBarMenuItem downloadsItem;
    private boolean downloadsItemVisible;
    private Dialog enableSortingByDefaultAlert;
    private ItemOptions filterOptions;
    private float filterTabsMoveFrom;
    private float filterTabsProgress;
    private FilterTabsView filterTabsView;
    private boolean filterTabsViewIsVisible;
    private ValueAnimator filtersTabAnimator;
    private FiltersView filtersView;
    private RLottieImageView floatingButton;
    private FrameLayout floatingButtonContainer;
    private float floatingButtonHideProgress;
    private float floatingButtonPanOffset;
    private float floatingButtonTranslation;
    private boolean floatingForceVisible;
    private boolean floatingHidden;
    private final AccelerateDecelerateInterpolator floatingInterpolator;
    private AnimatorSet floatingProgressAnimator;
    private RadialProgressView floatingProgressView;
    private boolean floatingProgressVisible;
    private int folderId;
    private int forumCount;
    private GroupCreateSpan forwardCurrentDeletingSpan;
    private int forwardLastSelectedArchiveFilterTab;
    private int forwardLastSelectedFilterTab;
    private EditTextBoldCursor forwardSearchEditText;
    private int forwardSearchEditTextTranslationY;
    private final ArrayList<GroupCreateSpan> forwardSpans;
    private final LongSparseArray<GroupCreateSpan> forwardSpansByDialogIds;
    private SpansContainer forwardSpansContainer;
    private int forwardSpansContainerHeight;
    private ScrollView forwardSpansScrollView;
    private AnimatorSet forwardSwitchArchiveAnimator;
    private ImageView forwardSwitchArchiveButton;
    private ActionBarMenuItem forwardSwitchArchiveItem;
    private ArrayList<MessageObject> forwardingMessages;
    private ImageView forwardingOptionsButton;
    private HintView forwardingOptionsHintView;
    private ForwardingMessagesParams forwardingParams;
    private ForwardingPreviewView forwardingPreviewView;
    private FragmentContextView fragmentContextView;
    private FragmentContextView fragmentLocationContextView;
    private ArrayList<TLRPC$Dialog> frozenDialogsList;
    private boolean hasInvoice;
    private int hasPoll;
    private ActionBarMenuItem headerItem;
    private ActionBarMenuSubItem hiddenChatsItem;
    private int initialDialogsType;
    private String initialSearchString;
    private int initialSearchType;
    private boolean isCrossForward;
    boolean isDrawerTransition;
    private boolean isFirstTab;
    private boolean isForwardToArchive;
    private boolean isNeedIgnoreForwardSpansContainerScroll;
    private boolean isNextButton;
    private boolean isPremiumHintUpgrade;
    private boolean isRecentChatsBarVisible;
    boolean isSlideBackTransition;
    private boolean isTopicsBarVisible;
    private int lastMeasuredTopPadding;
    private int maximumVelocity;
    private boolean maybeStartTracking;
    private MenuDrawable menuDrawable;
    private int messagesCount;
    private MiniFabsContainer miniFabsContainer;
    private ActionBarMenuSubItem moveToFolderItem;
    private ArrayList<MessagesController.DialogFilter> movingDialogFilters;
    private DialogCell movingView;
    private boolean movingWas;
    private boolean multiFabExpanded;
    private ActionBarMenuItem muteItem;
    private boolean needForceHideForwardAuthor;
    private boolean neuroBotDataAlreadyFetched;
    private AnimationNotificationsLocker notificationsLocker;
    public boolean notify;
    private boolean onlySelect;
    private ActionBarMenuSubItem openCloudInsteadAlbumsItem;
    private MessagesStorage.TopicKey openedDialogId;
    private PacmanAnimation pacmanAnimation;
    private Paint paint;
    private RLottieDrawable passcodeDrawable;
    private ActionBarMenuItem passcodeItem;
    private boolean passcodeItemVisible;
    private int pendingUpdateInterfaceMask;
    private AlertDialog permissionDialog;
    private ActionBarMenuSubItem pin2Item;
    private Bulletin pinBulletin;
    private int pinBulletinTag;
    private ActionBarMenuItem pinItem;
    private Drawable premiumStar;
    @InjectPresenter
    public WalletAirdropPresenter presenter;
    private int prevPosition;
    private int prevTop;
    private float progressToActionMode;
    private ProxyDrawable proxyDrawable;
    private ActionBarMenuItem proxyItem;
    private boolean proxyItemVisible;
    private ActionBarMenuSubItem readItem;
    private Animator recentChatsAlphaAnimator;
    private RecentChatsBar recentChatsBar;
    private ValueAnimator recentChatsBarTranslationYAnimator;
    private RectF rect;
    private ActionBarMenuSubItem removeFromFolderItem;
    private long requestPeerBotId;
    private TLRPC$RequestPeerType requestPeerType;
    private boolean resetDelegate;
    private boolean rightFragmentTransitionInProgress;
    public RightSlidingDialogContainer rightSlidingDialogContainer;
    public int scheduleDate;
    private float scrollAdditionalOffset;
    private boolean scrollBarVisible;
    private boolean scrollUpdated;
    private boolean scrollingManually;
    private float searchAnimationProgress;
    private boolean searchAnimationTabsDelayedCrossfade;
    private AnimatorSet searchAnimator;
    private long searchDialogId;
    private boolean searchFiltersWasShowed;
    private boolean searchIsShowed;
    private ActionBarMenuItem searchItem;
    private ActionBarMenuItem searchMenuItem;
    private TLObject searchObject;
    private String searchString;
    private ViewPagerFixed.TabsView searchTabsView;
    private SearchViewPager searchViewPager;
    private boolean searchWas;
    private boolean searchWasFullyShowed;
    private boolean searching;
    private String selectAlertString;
    private String selectAlertStringGroup;
    private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialog;
    private ActionBarMenuItem selectTopicItem;
    private View selectedCountView;
    private ArrayList<Long> selectedDialogs;
    private NumberTextView selectedDialogsCountTextView;
    private int selectedFilterIdToRestore;
    private ActionBarPopupWindow sendPopupWindow;
    private boolean sharePhotoVideo;
    private boolean showForwardingOptionsButton;
    private boolean showPinBulletin;
    private boolean showSetPasswordConfirm;
    private String showingSuggestion;
    private RecyclerView sideMenu;
    ValueAnimator slideBackTransitionAnimator;
    boolean slideFragmentLite;
    float slideFragmentProgress;
    private DialogCell slidingView;
    private boolean slowedReloadAfterDialogClick;
    private ActionBarMenuSubItem sortCloudAlbumsItem;
    private AnimatorSet speedAnimator;
    private ActionBarMenuItem speedItem;
    private long startArchivePullingTime;
    private boolean startedTracking;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable statusDrawable;
    private ActionBarMenuItem switchItem;
    private AvatarDrawable switchItemAvatarDrawable;
    private BackupImageView switchItemImageView;
    private Animator tabsAlphaAnimator;
    private AnimatorSet tabsAnimation;
    private boolean tabsAnimationInProgress;
    private float tabsYOffset;
    private TextPaint textPaint;
    private Bulletin topBulletin;
    private int topPadding;
    private TopicsBar topicsBar;
    private Animator topicsBarAlphaAnimator;
    private ValueAnimator topicsBarTranslationYAnimator;
    private UndoView[] undoView;
    private int undoViewIndex;
    private FrameLayout updateLayout;
    private AnimatorSet updateLayoutAnimator;
    private RadialProgress2 updateLayoutIcon;
    private boolean updatePullAfterScroll;
    private TextView updateTextView;
    private ViewPage[] viewPages;
    private boolean waitingForScrollFinished;
    private final Lazy<WalletFlowCoordinator> walletFlowCoordinator;
    public boolean whiteActionBar;
    private ImageView[] writeButton;
    private FrameLayout writeButtonContainer;
    public static final int DIALOGS_TYPE_ALBUMS = SortingFilter.ARCHIVE_ALBUMS.generateIdWithExtra();
    private static final int[] observers = {NotificationCenter.mainUserInfoChanged, NotificationCenter.neuroBotEnableChanged, NotificationCenter.topicsDidLoad, NotificationCenter.filterTabsAtBottomUpdated, NotificationCenter.needUpdateMainActionBarMenu, NotificationCenter.topicsSettingsChanged, NotificationCenter.recentChatsDidLoad, NotificationCenter.updateWalletDialogVisibility};
    public static boolean[] dialogsLoaded = new boolean[5];
    private static final Interpolator interpolator = DialogsActivity$$ExternalSyntheticLambda61.INSTANCE;
    public static float viewOffset = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: org.telegram.ui.DialogsActivity$DialogsActivityDelegate */
    /* loaded from: classes5.dex */
    public interface DialogsActivityDelegate {
        boolean didSelectDialogs(DialogsActivity dialogsActivity, ArrayList<MessagesStorage.TopicKey> arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1<ArrayList<MessageObject>> callbacks$Callback1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createActionMode$76(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$24(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCommentView() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPreviewChatOpened(Bundle bundle) {
    }

    public boolean shouldShowNextButton(DialogsActivity dialogsActivity, ArrayList<Long> arrayList, CharSequence charSequence, boolean z) {
        return false;
    }

    static /* synthetic */ int access$38804(DialogsActivity dialogsActivity) {
        int i = dialogsActivity.pinBulletinTag + 1;
        dialogsActivity.pinBulletinTag = i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public WalletAirdropPresenter providePresenter() {
        return (WalletAirdropPresenter) KoinJavaComponent.get(WalletAirdropPresenter.class);
    }

    public static DialogsActivity newInstanceInAlbumsMode() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putBoolean("checkCanWrite", false);
        bundle.putBoolean("resetDelegate", false);
        bundle.putInt("dialogsType", DIALOGS_TYPE_ALBUMS);
        bundle.putInt("folderId", 1);
        DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        dialogsActivity.setDelegate(DialogsActivity$$ExternalSyntheticLambda155.INSTANCE);
        return dialogsActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$newInstanceInAlbumsMode$0(DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(null);
            return true;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", -((MessagesStorage.TopicKey) arrayList.get(0)).dialogId);
        dialogsActivity.presentFragment(new ChatActivity(bundle));
        return true;
    }

    public static DialogsActivity newInstanceInArchiveMode() {
        Bundle bundle = new Bundle();
        bundle.putInt("folderId", 1);
        return new DialogsActivity(bundle);
    }

    public static DialogsActivity newInstanceInManagementMode() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putBoolean("checkCanWrite", false);
        bundle.putBoolean("resetDelegate", false);
        bundle.putInt("dialogsType", 400);
        return new DialogsActivity(bundle);
    }

    public void processQr(String str) {
        final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        alertDialog.setCanCancel(false);
        alertDialog.show();
        byte[] decode = Base64.decode(str.substring(17).replaceAll("\\/", "_").replaceAll("\\+", "-"), 8);
        TLRPC$TL_auth_acceptLoginToken tLRPC$TL_auth_acceptLoginToken = new TLRPC$TL_auth_acceptLoginToken();
        tLRPC$TL_auth_acceptLoginToken.token = decode;
        getConnectionsManager().sendRequest(tLRPC$TL_auth_acceptLoginToken, new RequestDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda144
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                DialogsActivity.this.lambda$processQr$3(alertDialog, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processQr$3(final AlertDialog alertDialog, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda120
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$processQr$2(alertDialog, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processQr$2(AlertDialog alertDialog, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        try {
            alertDialog.dismiss();
        } catch (Exception unused) {
        }
        if (tLObject instanceof TLRPC$TL_authorization) {
            getUndoView().showWithAction(0L, 11, (TLRPC$TL_authorization) tLObject);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda118
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$processQr$1(tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processQr$1(TLRPC$TL_error tLRPC$TL_error) {
        String str;
        if (tLRPC$TL_error.text.equals("AUTH_TOKEN_EXCEPTION")) {
            str = LocaleController.getString("AccountAlreadyLoggedIn", C3290R.string.AccountAlreadyLoggedIn);
        } else {
            str = LocaleController.getString("ErrorOccurred", C3290R.string.ErrorOccurred) + "\n" + tLRPC$TL_error.text;
        }
        AlertsCreator.showSimpleAlert(this, LocaleController.getString("AuthAnotherClient", C3290R.string.AuthAnotherClient), str);
    }

    @Keep
    public void setForwardSpansContainerHeight(int i) {
        this.forwardSpansContainerHeight = i;
        SpansContainer spansContainer = this.forwardSpansContainer;
        if (spansContainer != null) {
            spansContainer.requestLayout();
        }
    }

    @Keep
    public int getForwardSpansContainerHeight() {
        return this.forwardSpansContainerHeight;
    }

    public ForwardingMessagesParams getForwardingParams() {
        return this.forwardingParams;
    }

    public boolean isMainNoFolderDialogList() {
        return isMainDialogList() && this.folderId == 0;
    }

    public boolean needDisableContactsActivityFabAnimations() {
        if (isMainNoFolderDialogList()) {
            if (isFilterTabsAtBottom()) {
                return true;
            }
            List<FilterFab> fabsForPage = getFabsForPage(this.viewPages[0]);
            return (fabsForPage.size() == 1 && fabsForPage.get(0) == FilterFab.CREATE_CHAT) ? false : true;
        }
        return false;
    }

    public void filterSelectedForwardingMessages(ArrayList<MessageObject> arrayList) {
        ForwardingMessagesParams forwardingMessagesParams = this.forwardingParams;
        if (forwardingMessagesParams == null || this.forwardingMessages == null) {
            return;
        }
        forwardingMessagesParams.getSelectedMessages(arrayList);
    }

    public boolean isInMultiSelect() {
        return !this.selectedDialogs.isEmpty();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return canBeginSlide();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public LockedSection getLockedSection() {
        if (isArchive() && !isAlbums()) {
            return LockedSection.ARCHIVE;
        }
        return super.getLockedSection();
    }

    @Override // com.iMe.p031ui.wallet.airdrop.WalletAirdropView
    public void showAirdropDialog() {
        showDialog(WalletAirdropDialog.newInstance(this));
    }

    @Override // com.iMe.p031ui.wallet.airdrop.WalletAirdropView
    public void checkNeedToShowAirdropDialog() {
        if (BaseFragmentExtKt.containsFragmentInStack(this, WalletRootFragment.class)) {
            return;
        }
        showAirdropDialog();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean isAllowPinnedPlayer() {
        return isMainDialogList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToTop() {
        scrollToTop(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performSelectedDialogsAction(ArrayList<Long> arrayList, int i, boolean z, boolean z2) {
        performSelectedDialogsAction(arrayList, i, z, z2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isForwardingPreviewShowing() {
        ForwardingPreviewView forwardingPreviewView = this.forwardingPreviewView;
        return forwardingPreviewView != null && forwardingPreviewView.isShowing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToFilterTab(int i) {
        if (this.filterTabsView == null || this.viewPages[0].selectedType == i) {
            return;
        }
        this.filterTabsView.selectTabWithId(i, 1.0f);
        this.parentLayout.getDrawerLayoutContainer().setAllowOpenDrawerBySwipe(false);
        ViewPage[] viewPageArr = this.viewPages;
        viewPageArr[1].selectedType = viewPageArr[0].selectedType;
        this.viewPages[0].selectedType = i;
        switchToCurrentSelectedMode(false);
        switchToCurrentSelectedMode(true);
        updateCounters(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MessagesController.DialogFilter getFilterById(int i) {
        if (getMessagesController().dialogFiltersLoaded) {
            if (SortingFilter.isSortingFilter(true, i)) {
                int removeExtraFromId = SortingFilter.removeExtraFromId(true, i);
                if (removeExtraFromId < 0 || removeExtraFromId >= getMessagesController().archiveSortingDialogFilters.size()) {
                    return null;
                }
                return getMessagesController().archiveSortingDialogFilters.get(SortingFilter.removeExtraFromId(true, i));
            } else if (SortingFilter.isSortingFilter(false, i)) {
                int removeExtraFromId2 = SortingFilter.removeExtraFromId(false, i);
                if (removeExtraFromId2 < 0 || removeExtraFromId2 >= getMessagesController().sortingDialogFilters.size()) {
                    return null;
                }
                return getMessagesController().sortingDialogFilters.get(removeExtraFromId2);
            } else if (i < 0 || i >= getMessagesController().getDialogFilters().size()) {
                return null;
            } else {
                return getMessagesController().getDialogFilters().get(i);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openQrCodeScan() {
        int i = this.currentQrScannerType;
        int i2 = IdFabric$CustomType.QR_CODE_SCANNER_CHAT_LINK;
        CameraScanActivity.showAsSheet(this, i == i2, i, new CameraScanActivity.CameraScanActivityDelegate() { // from class: org.telegram.ui.DialogsActivity.1
            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p044ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String str) {
                if (DialogsActivity.this.currentQrScannerType == IdFabric$CustomType.QR_CODE_SCANNER_CHAT_LINK) {
                    ((BaseFragment) DialogsActivity.this).actionBar.closeSearchField();
                    AlertsCreator.showOpenUrlAlert(DialogsActivity.this, str, false, true);
                    return;
                }
                DialogsActivity.this.processQr(str);
            }
        }, this.currentQrScannerType == i2);
    }

    private void showReadAllDialog(final Runnable runnable) {
        if (SharedConfig.isReadAllChatsConfirmationShown) {
            runnable.run();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getInternalString(C3290R.string.dialogs_mark_folder_dialogs_as_read_alert_title));
        final CheckBoxCell checkBoxCell = new CheckBoxCell(getParentActivity(), 1);
        checkBoxCell.setText(LocaleController.getInternalString(C3290R.string.dialogs_mark_all_folder_dialogs_as_read_alert_not_show_again_check_box), "", false, false);
        checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.m54dp(16) : AndroidUtilities.m54dp(8), 0, LocaleController.isRTL ? AndroidUtilities.m54dp(8) : AndroidUtilities.m54dp(16), 0);
        checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.lambda$showReadAllDialog$4(CheckBoxCell.this, view);
            }
        });
        builder.setView(checkBoxCell);
        builder.setPositiveButton(LocaleController.getInternalString(C3290R.string.common_ok), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda14
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogsActivity.lambda$showReadAllDialog$5(CheckBoxCell.this, runnable, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getInternalString(C3290R.string.common_cancel), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showReadAllDialog$4(CheckBoxCell checkBoxCell, View view) {
        checkBoxCell.setChecked(!checkBoxCell.isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showReadAllDialog$5(CheckBoxCell checkBoxCell, Runnable runnable, DialogInterface dialogInterface, int i) {
        if (checkBoxCell.isChecked()) {
            SharedConfig.setReadAllChatsConfirmationShown(true);
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readAllCurrentFolderDialogs$6() {
        getMessagesStorage().readAllDialogs(this.folderId);
    }

    private void readAllCurrentFolderDialogs() {
        showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda96
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$readAllCurrentFolderDialogs$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expandMultiFab(boolean z) {
        MiniFabsContainer miniFabsContainer = this.miniFabsContainer;
        if (miniFabsContainer == null || this.multiFabExpanded == z) {
            return;
        }
        this.multiFabExpanded = z;
        miniFabsContainer.show(z);
    }

    private boolean needForceActivateTabs() {
        return (isArchive() && !isAlbums()) || isManagement();
    }

    private FilterTabsView.TabMode getFilterTabsMode() {
        if (isArchive()) {
            return FilterTabsView.TabMode.ARCHIVE;
        }
        if (isForward()) {
            return FilterTabsView.TabMode.FORWARD;
        }
        if (isManagement()) {
            return FilterTabsView.TabMode.MANAGEMENT;
        }
        return FilterTabsView.TabMode.MAIN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showClearCacheBottomSheet() {
        if (getParentActivity() == null) {
            return;
        }
        if (isArchive()) {
            CacheControlActivity.newInstanceAsBackend(this).showClearCacheArchive();
        } else {
            CacheControlActivity.newInstanceAsBackend(this).showDiagramBottomSheet(getParentActivity());
        }
    }

    private void checkAndRunNeurobots() {
        if (isMainNoFolderDialogList() && getNeuroBotsController().isNeuroBotsEnabled() && !this.neuroBotDataAlreadyFetched) {
            ApplicationLoader.postInitApplication();
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            boolean z = MessagesController.getMainSettings(this.currentAccount).getBoolean("aigramBotsInstalled", false);
            if (clientUserId != 0) {
                if (!z) {
                    try {
                        ApplicationLoader.smartBotsManager.sendAppInstalledEvent(clientUserId, new AiBotsManager.AppInstalledCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda62
                            @Override // com.iMe.bots.usecase.AiBotsManager.AppInstalledCallback
                            public final void onSuccess() {
                                DialogsActivity.this.lambda$checkAndRunNeurobots$7();
                            }
                        });
                    } catch (Exception unused) {
                    }
                }
                ApplicationLoader.smartBotsManager.fetchVotes(clientUserId);
            }
            ApplicationLoader.smartBotsManager.listenForRemoteBotUpdates(DialogsActivity$$ExternalSyntheticLambda64.INSTANCE);
            ApplicationLoader.smartBotsManager.setBotDisableCallback(new AiBotsManager.BotsListChangedCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda63
                @Override // com.iMe.bots.usecase.AiBotsManager.BotsListChangedCallback
                public final void onSuccess() {
                    DialogsActivity.this.lambda$checkAndRunNeurobots$9();
                }
            });
            this.neuroBotDataAlreadyFetched = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAndRunNeurobots$7() {
        MessagesController.getMainSettings(this.currentAccount).edit().putBoolean("aigramBotsInstalled", true).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkAndRunNeurobots$8() {
        ApplicationLoader.purchaseHelper.preloadPurchasesInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAndRunNeurobots$9() {
        NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.botsListChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<FilterFab> getFabsForPage(ViewPage viewPage) {
        Collection fabs;
        boolean isSortingFilter = SortingFilter.isSortingFilter(isArchive(), viewPage.selectedType);
        if (isAlbums()) {
            fabs = Collections.singletonList(FilterFab.CREATE_ALBUM);
        } else if ((this.filterTabsView == null || viewPage.selectedType != this.filterTabsView.getDefaultTabId()) && (isSortingFilter || !getMessagesController().dialogFilters.isEmpty())) {
            if (isSortingFilter) {
                fabs = getFiltersController().getSortingFilterState(SortingFilter.getFilterByIdWithExtra(isArchive(), viewPage.selectedType)).getFabs();
            } else {
                fabs = (viewPage.selectedType < 0 || viewPage.selectedType >= getMessagesController().dialogFilters.size()) ? null : getFiltersController().getSettings(getMessagesController().dialogFilters.get(viewPage.selectedType).f1373id).getFabs();
            }
        } else if (isArchive()) {
            fabs = Collections.singletonList(FilterFab.MARK_ALL_READ);
        } else {
            fabs = getFiltersController().getSelectedAllChatsTabFabs();
        }
        return (fabs == null || fabs.isEmpty()) ? Collections.singletonList(FilterFab.CREATE_CHAT) : new ArrayList(fabs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTopicsBar() {
        ItemOptions itemOptions;
        List<TopicModel> topicsNotEmpty = getTopicsController().getTopicsNotEmpty(isArchive());
        boolean z = true;
        final boolean z2 = (this.inPreviewMode || topicsNotEmpty.isEmpty() || !getTopicsController().isTopicsBarEnabled()) ? false : true;
        if (z2) {
            this.topicsBar.setSelectedTopicId(getTopicsController().getSelectedTopicId(isArchive()));
            boolean data = this.topicsBar.setData(topicsNotEmpty);
            this.topicsBar.setTag(1);
            this.topicsBar.setVisibility(0);
            z = data;
        } else {
            this.topicsBar.setTag(null);
            this.topicsBar.resetSelectedTopic();
        }
        if (z && (itemOptions = this.filterOptions) != null && itemOptions.isShown()) {
            this.filterOptions.dismiss();
            this.filterOptions = null;
        }
        if (this.isTopicsBarVisible != z2) {
            this.isTopicsBarVisible = z2;
            ValueAnimator valueAnimator = this.topicsBarTranslationYAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                this.topicsBar.setVisibility(z2 ? 0 : 8);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.topicsBar.getLayoutParams();
                layoutParams.topMargin = z2 ? 0 : AndroidUtilities.m54dp(-36);
                this.topicsBar.setLayoutParams(layoutParams);
                updateFloatingButtonOffset();
                View view = this.fragmentView;
                if (view != null) {
                    view.requestLayout();
                    return;
                }
                return;
            }
            if (z2) {
                if (this.topicsBar.getVisibility() != 0) {
                    this.topicsBar.setVisibility(0);
                }
                this.topicsBarTranslationYAnimator = ValueAnimator.ofInt(-36, 0);
            } else {
                this.topicsBarTranslationYAnimator = ValueAnimator.ofInt(0, -36);
            }
            this.topicsBarTranslationYAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (!z2) {
                        DialogsActivity.this.topicsBar.setVisibility(8);
                    }
                    if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                        ((BaseFragment) DialogsActivity.this).fragmentView.requestLayout();
                    }
                }
            });
            this.topicsBarTranslationYAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    DialogsActivity.this.lambda$updateTopicsBar$10(z2, valueAnimator2);
                }
            });
            this.topicsBarTranslationYAnimator.setDuration(220L);
            this.topicsBarTranslationYAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.topicsBarTranslationYAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTopicsBar$10(boolean z, ValueAnimator valueAnimator) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.topicsBar.getLayoutParams();
        layoutParams.topMargin = AndroidUtilities.m54dp(((Integer) valueAnimator.getAnimatedValue()).intValue());
        this.topicsBar.setLayoutParams(layoutParams);
        float animatedFraction = valueAnimator.getAnimatedFraction();
        TopicsBar topicsBar = this.topicsBar;
        if (!z) {
            animatedFraction = 1.0f - animatedFraction;
        }
        topicsBar.setAlpha(animatedFraction);
        updateFloatingButtonOffset();
        View view = this.fragmentView;
        if (view != null) {
            view.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRecentChatsBar() {
        if (this.recentChatsBar == null) {
            return;
        }
        List<HistoryDialogModel> recentChatsFilter = getRecentChatsController().getRecentChatsFilter();
        final boolean z = (!getRecentChatsController().isRecentChatsEnabled() || this.inPreviewMode || recentChatsFilter.isEmpty()) ? false : true;
        if (z) {
            this.recentChatsBar.setData(recentChatsFilter);
            this.recentChatsBar.setTag(1);
            this.recentChatsBar.setVisibility(0);
        } else {
            this.recentChatsBar.setTag(null);
        }
        if (this.isRecentChatsBarVisible != z) {
            this.isRecentChatsBarVisible = z;
            ValueAnimator valueAnimator = this.recentChatsBarTranslationYAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                this.recentChatsBar.setVisibility(z ? 0 : 8);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.recentChatsBar.getLayoutParams();
                layoutParams.topMargin = z ? 0 : AndroidUtilities.m54dp(-60);
                this.recentChatsBar.setLayoutParams(layoutParams);
                updateFloatingButtonOffset();
                View view = this.fragmentView;
                if (view != null) {
                    view.requestLayout();
                    return;
                }
                return;
            }
            if (z) {
                if (this.recentChatsBar.getVisibility() != 0) {
                    this.recentChatsBar.setVisibility(0);
                }
                this.recentChatsBarTranslationYAnimator = ValueAnimator.ofInt(-60, 0);
            } else {
                this.recentChatsBarTranslationYAnimator = ValueAnimator.ofInt(0, -60);
            }
            this.recentChatsBarTranslationYAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (!z) {
                        DialogsActivity.this.recentChatsBar.setVisibility(8);
                    }
                    if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                        ((BaseFragment) DialogsActivity.this).fragmentView.requestLayout();
                    }
                }
            });
            this.recentChatsBarTranslationYAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    DialogsActivity.this.lambda$updateRecentChatsBar$11(z, valueAnimator2);
                }
            });
            this.recentChatsBarTranslationYAnimator.setDuration(220L);
            this.recentChatsBarTranslationYAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.recentChatsBarTranslationYAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRecentChatsBar$11(boolean z, ValueAnimator valueAnimator) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.recentChatsBar.getLayoutParams();
        layoutParams.topMargin = AndroidUtilities.m54dp(((Integer) valueAnimator.getAnimatedValue()).intValue());
        this.recentChatsBar.setLayoutParams(layoutParams);
        float animatedFraction = valueAnimator.getAnimatedFraction();
        RecentChatsBar recentChatsBar = this.recentChatsBar;
        if (!z) {
            animatedFraction = 1.0f - animatedFraction;
        }
        recentChatsBar.setAlpha(animatedFraction);
        updateFloatingButtonOffset();
        View view = this.fragmentView;
        if (view != null) {
            view.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showHeaderItem(boolean z) {
        ActionBarMenuItem actionBarMenuItem = this.headerItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility((!z || (isMainNoFolderDialogList() && !SharedConfig.isMainActionBarMenuEnabled)) ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveToFolder() {
        final MessagesController.DialogFilter dialogFilter = getMessagesController().dialogFilters.get(this.viewPages[0].selectedType);
        if (dialogFilter == null) {
            return;
        }
        final ArrayList<Long> dialogsCount = FiltersListBottomSheet.getDialogsCount(this, dialogFilter, this.selectedDialogs, false, false);
        if (dialogFilter.neverShow.size() + dialogsCount.size() > 100) {
            showDialog(AlertsCreator.createSimpleAlert(getParentActivity(), LocaleController.getString("FilterAddToAlertFullTitle", C3290R.string.FilterAddToAlertFullTitle), LocaleController.getString("FilterAddToAlertFullText", C3290R.string.FilterAddToAlertFullText)).create());
            return;
        }
        FiltersListBottomSheet filtersListBottomSheet = new FiltersListBottomSheet(this, this.selectedDialogs, dialogFilter.f1373id);
        filtersListBottomSheet.setDelegate(new FiltersListBottomSheet.FiltersListBottomSheetDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda151
            @Override // org.telegram.p044ui.Components.FiltersListBottomSheet.FiltersListBottomSheetDelegate
            public final void didSelectFilter(MessagesController.DialogFilter dialogFilter2) {
                DialogsActivity.this.lambda$moveToFolder$14(dialogsCount, dialogFilter, dialogFilter2);
            }
        });
        showDialog(filtersListBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$moveToFolder$14(final ArrayList arrayList, final MessagesController.DialogFilter dialogFilter, MessagesController.DialogFilter dialogFilter2) {
        boolean z;
        char c;
        long j;
        ArrayList<Long> dialogsCount = FiltersListBottomSheet.getDialogsCount(this, dialogFilter2, this.selectedDialogs, true, false);
        int size = (dialogFilter2 != null ? dialogFilter2.alwaysShow.size() : 0) + dialogsCount.size();
        if ((size > getMessagesController().dialogFiltersChatsLimitDefault && !getUserConfig().isPremium()) || size > getMessagesController().dialogFiltersChatsLimitPremium) {
            showDialog(AlertsCreator.createSimpleAlert(getParentActivity(), LocaleController.getString("FilterAddToAlertFullTitle", C3290R.string.FilterAddToAlertFullTitle), LocaleController.getString("FilterAddToAlertFullText", C3290R.string.FilterAddToAlertFullText)).create());
            return;
        }
        final Callbacks$Callback callbacks$Callback = new Callbacks$Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda75
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                DialogsActivity.this.lambda$moveToFolder$12(arrayList, dialogFilter);
            }
        };
        if (dialogFilter2 != null) {
            callbacks$Callback.invoke();
            if (!dialogsCount.isEmpty()) {
                for (int i = 0; i < dialogsCount.size(); i++) {
                    dialogFilter2.neverShow.remove(dialogsCount.get(i));
                }
                dialogFilter2.alwaysShow.addAll(dialogsCount);
                FilterCreateActivity.saveFilterToServer(dialogFilter2, dialogFilter2.flags, dialogFilter2.name, dialogFilter2.alwaysShow, dialogFilter2.neverShow, dialogFilter2.pinnedDialogs, false, false, true, true, false, this, null);
            }
            z = true;
            if (arrayList.size() == 1) {
                c = 0;
                j = ((Long) arrayList.get(0)).longValue();
            } else {
                c = 0;
                j = 0;
            }
            UndoView undoView = getUndoView();
            int i2 = IdFabric$CustomType.UNDO_MOVE_TO_FOLDER;
            Object valueOf = Integer.valueOf(arrayList.size());
            MessagesController.DialogFilter[] dialogFilterArr = new MessagesController.DialogFilter[2];
            dialogFilterArr[c] = dialogFilter;
            dialogFilterArr[1] = dialogFilter2;
            undoView.showWithAction(j, i2, valueOf, dialogFilterArr, (Runnable) null, (Runnable) null);
        } else {
            z = true;
            if ((getMessagesController().dialogFilters.size() - 1 >= getMessagesController().dialogFiltersLimitDefault && !getUserConfig().isPremium()) || getMessagesController().dialogFilters.size() >= getMessagesController().dialogFiltersLimitPremium) {
                showDialog(new LimitReachedBottomSheet(this, getParentActivity(), 3, this.currentAccount));
            } else {
                FilterCreateActivity filterCreateActivity = new FilterCreateActivity(null, dialogsCount);
                filterCreateActivity.setDoneCallback(new Callbacks$Callback2() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda73
                    @Override // com.iMe.fork.utils.Callbacks$Callback2
                    public final void invoke(Object obj, Object obj2) {
                        MessagesController.DialogFilter dialogFilter3 = (MessagesController.DialogFilter) obj;
                        TopicModel topicModel = (TopicModel) obj2;
                        Callbacks$Callback.this.invoke();
                    }
                });
                presentFragment(filterCreateActivity);
            }
        }
        hideActionMode(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$moveToFolder$12(ArrayList arrayList, MessagesController.DialogFilter dialogFilter) {
        if (arrayList.isEmpty()) {
            return;
        }
        dialogFilter.neverShow.addAll(arrayList);
        for (int i = 0; i < arrayList.size(); i++) {
            long longValue = ((Long) arrayList.get(i)).longValue();
            dialogFilter.alwaysShow.remove(Long.valueOf(longValue));
            dialogFilter.pinnedDialogs.delete(longValue);
        }
        FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, false, false, true, false, false, this, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRecentChatsBarHeight() {
        RecentChatsBar recentChatsBar = this.recentChatsBar;
        if (recentChatsBar == null || recentChatsBar.getVisibility() != 0) {
            return 0;
        }
        return AndroidUtilities.m54dp(60) + ((FrameLayout.LayoutParams) this.recentChatsBar.getLayoutParams()).topMargin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDialogsHintCellHeight() {
        DialogsHintCell dialogsHintCell = this.dialogsHintCell;
        if (dialogsHintCell == null) {
            return 0;
        }
        return dialogsHintCell.height();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTopicsBarHeight(boolean z) {
        TopicsBar topicsBar = this.topicsBar;
        if (topicsBar == null || topicsBar.getVisibility() != 0) {
            return 0;
        }
        if (z && getTopicsController().isTopicsBarAtBottomEnabled()) {
            return 0;
        }
        return AndroidUtilities.m54dp(36) + ((FrameLayout.LayoutParams) this.topicsBar.getLayoutParams()).topMargin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getArchiveHintCellHeight() {
        if (this.archiveHintCell == null) {
            return 0;
        }
        return AndroidUtilities.m54dp(204);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getForwardSpansScrollViewHeight() {
        ScrollView scrollView = this.forwardSpansScrollView;
        if (scrollView == null) {
            return 0;
        }
        return scrollView.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSwitchItemVisibility(boolean z) {
        RightSlidingDialogContainer rightSlidingDialogContainer;
        if (this.switchItem == null) {
            return;
        }
        boolean z2 = true;
        boolean z3 = UserConfig.getActivatedAccountsCount() > 1;
        boolean z4 = this.allowSwitchAccount && z3;
        if ((!(getParentActivity() instanceof LaunchActivity) || !isMainNoFolderDialogList() || !SharedConfig.isActionBarAccountSwitchEnabled || ((rightSlidingDialogContainer = this.rightSlidingDialogContainer) != null && rightSlidingDialogContainer.hasFragment())) && (!isForward() || !z3)) {
            z2 = false;
        }
        if (z && (z4 || z2)) {
            this.switchItem.setVisibility(0);
            updateAccountSwitchItems();
            return;
        }
        this.switchItem.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateAccountSwitchItems() {
        AccountSelectCell accountSelectCell;
        ActionBarMenuItem actionBarMenuItem = this.switchItem;
        if (actionBarMenuItem == null || actionBarMenuItem.getVisibility() != 0) {
            return;
        }
        TLRPC$User currentUser = getUserConfig().getCurrentUser();
        this.switchItemAvatarDrawable.setInfo(currentUser);
        this.switchItemImageView.getImageReceiver().setCurrentAccount(this.currentAccount);
        this.switchItemImageView.setImage(ImageLocation.getForUserOrChat(currentUser, 1), "50_50", ImageLocation.getForUserOrChat(currentUser, 2), "50_50", this.switchItemAvatarDrawable, currentUser);
        this.switchItem.dropPopupLayout();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 5; i++) {
            if (UserConfig.getInstance(i).isClientActivated()) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Collections.sort(arrayList, DialogsActivity$$ExternalSyntheticLambda128.INSTANCE);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            final int intValue = ((Integer) it.next()).intValue();
            if (UserConfig.getInstance(intValue).getCurrentUser() != null) {
                if (isMainNoFolderDialogList()) {
                    DrawerUserCell drawerUserCell = new DrawerUserCell(getParentActivity(), IdFabric$CustomType.DRAWER_USER_CELL_ACTION_BAR_ACCOUNT_SWITCH);
                    drawerUserCell.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda58
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean lambda$updateAccountSwitchItems$16;
                            lambda$updateAccountSwitchItems$16 = DialogsActivity.this.lambda$updateAccountSwitchItems$16(intValue, view);
                            return lambda$updateAccountSwitchItems$16;
                        }
                    });
                    drawerUserCell.setAccount(intValue);
                    accountSelectCell = drawerUserCell;
                } else {
                    AccountSelectCell accountSelectCell2 = new AccountSelectCell(getParentActivity(), false);
                    accountSelectCell2.setAccount(intValue, true, this.currentAccount);
                    accountSelectCell = accountSelectCell2;
                }
                this.switchItem.addSubItem(intValue + 10, accountSelectCell, AndroidUtilities.m54dp(230), AndroidUtilities.m54dp(56));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateAccountSwitchItems$15(Integer num, Integer num2) {
        int i = (UserConfig.getInstance(num.intValue()).loginTime > UserConfig.getInstance(num2.intValue()).loginTime ? 1 : (UserConfig.getInstance(num.intValue()).loginTime == UserConfig.getInstance(num2.intValue()).loginTime ? 0 : -1));
        if (i > 0) {
            return 1;
        }
        return i < 0 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$updateAccountSwitchItems$16(int i, View view) {
        if (i == UserConfig.selectedAccount) {
            return true;
        }
        prepareBlurBitmap();
        this.parentLayout.setHighlightActionButtons(true);
        this.switchItem.closeSubMenu();
        C55394 c55394 = new C55394(null, (LaunchActivity) getParentActivity(), i);
        c55394.setCurrentAccount(i);
        presentFragmentAsPreviewWithMenu(c55394, new FragmentPreviewMenu(this.parentLayout, c55394, null));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$4 */
    /* loaded from: classes5.dex */
    public class C55394 extends DialogsActivity {
        private Bundle chatArgs;
        final /* synthetic */ int val$accountNumberFinal;
        final /* synthetic */ LaunchActivity val$launchActivity;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C55394(Bundle bundle, LaunchActivity launchActivity, int i) {
            super(bundle);
            this.val$launchActivity = launchActivity;
            this.val$accountNumberFinal = i;
        }

        @Override // org.telegram.p044ui.DialogsActivity
        protected void onPreviewChatOpened(Bundle bundle) {
            super.onPreviewChatOpened(bundle);
            this.chatArgs = bundle;
            finishPreviewFragment();
        }

        @Override // org.telegram.p044ui.DialogsActivity, org.telegram.p044ui.ActionBar.BaseFragment
        public void onTransitionAnimationEnd(boolean z, boolean z2) {
            super.onTransitionAnimationEnd(z, z2);
            if (z || !z2 || this.chatArgs == null) {
                return;
            }
            final LaunchActivity launchActivity = this.val$launchActivity;
            final int i = this.val$accountNumberFinal;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C55394.this.lambda$onTransitionAnimationEnd$0(launchActivity, i);
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTransitionAnimationEnd$0(final LaunchActivity launchActivity, final int i) {
            ChatActivity chatActivity = new ChatActivity(this, this.chatArgs) { // from class: org.telegram.ui.DialogsActivity.4.1
                @Override // org.telegram.p044ui.ActionBar.BaseFragment
                public void onPreviewOpenAnimationEnd() {
                    super.onPreviewOpenAnimationEnd();
                    launchActivity.switchToAccount(i, true, this, false);
                }
            };
            chatActivity.setCurrentAccount(i);
            DialogsActivity.this.prepareBlurBitmap();
            DialogsActivity.this.parentLayout.setHighlightActionButtons(true);
            DialogsActivity.this.presentFragmentAsPreviewWithMenu(chatActivity, new FragmentPreviewMenu(DialogsActivity.this.parentLayout, chatActivity, null));
        }

        @Override // org.telegram.p044ui.ActionBar.BaseFragment
        public void onPreviewOpenAnimationEnd() {
            super.onPreviewOpenAnimationEnd();
            this.val$launchActivity.switchToAccount(this.val$accountNumberFinal, true);
        }
    }

    private void updateAccountSwitchUnreadCounters() {
        ActionBarMenuItem actionBarMenuItem = this.switchItem;
        if (actionBarMenuItem != null && actionBarMenuItem.getVisibility() == 0 && this.switchItem.hasSubMenu()) {
            for (int i = 0; i < this.switchItem.getPopupLayout().getLinearLayout().getChildCount(); i++) {
                this.switchItem.getPopupLayout().getLinearLayout().getChildAt(i).invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAlbumsMenu() {
        ActionBarMenuItem actionBarMenuItem = this.cloudItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(getAlbumsController().isOpenAlbumsInsteadCloudEnabled() ? 0 : 8);
        }
        ActionBarMenuSubItem actionBarMenuSubItem = this.openCloudInsteadAlbumsItem;
        if (actionBarMenuSubItem != null) {
            actionBarMenuSubItem.setVisibility(getAlbumsController().isOpenAlbumsInsteadCloudEnabled() ? 8 : 0);
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = this.sortCloudAlbumsItem;
        if (actionBarMenuSubItem2 != null) {
            if (SharedConfig.isSortCloudAlbumsByNameEnabled) {
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3290R.string.dialogs_albums_sort_date), C3290R.C3292drawable.msg_contacts_time);
            } else {
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3290R.string.dialogs_albums_sort_alphabetically), C3290R.C3292drawable.msg_contacts_name);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void crossAccountsForward() {
        if (this.crossForwardProgressDialog == null) {
            AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
            this.crossForwardProgressDialog = alertDialog;
            alertDialog.setCanCancel(false);
            this.crossForwardProgressDialog.show();
        }
        AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
        AccountInstance accountInstance2 = AccountInstance.getInstance(this.currentAccount);
        long clientUserId = accountInstance.getUserConfig().getClientUserId();
        long clientUserId2 = accountInstance2.getUserConfig().getClientUserId();
        if (accountInstance.getMessagesController().blockePeers.indexOfKey(clientUserId2) >= 0) {
            accountInstance.getMessagesController().unblockPeer(clientUserId2, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda92
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.crossAccountsForward();
                }
            });
        } else if (accountInstance2.getMessagesController().blockePeers.indexOfKey(clientUserId) >= 0) {
            accountInstance2.getMessagesController().unblockPeer(clientUserId, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda92
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.crossAccountsForward();
                }
            });
        } else if (!accountInstance2.getMessagesController().isDialogMuted(clientUserId, 0)) {
            accountInstance2.getNotificationsController().setDialogNotificationsSettings(clientUserId, 0, 3, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda92
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.crossAccountsForward();
                }
            }, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda94
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.closeCrossAccountsForwardLoading();
                }
            });
        } else {
            getNotificationCenter().addObserver(this, NotificationCenter.didReceiveNewMessages);
            accountInstance.getSendMessagesHelper().sendMessage(this.forwardingMessages, clientUserId2, false, false, false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeCrossAccountsForwardLoading() {
        AlertDialog alertDialog = this.crossForwardProgressDialog;
        if (alertDialog == null) {
            return;
        }
        alertDialog.dismiss();
        this.crossForwardProgressDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateSwitchArchive(boolean z) {
        int i;
        final int i2;
        final int i3;
        if (this.isForwardToArchive) {
            i = Theme.key_actionBarDefault;
            i2 = Theme.key_actionBarDefaultArchived;
            i3 = Theme.key_actionBarDefaultArchivedSelector;
        } else {
            i = Theme.key_actionBarDefaultArchived;
            i2 = Theme.key_actionBarDefault;
            i3 = Theme.key_actionBarDefaultSelector;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.forwardSwitchArchiveAnimator = animatorSet;
            animatorSet.playTogether(ObjectAnimator.ofFloat(this.actionBar, new ColorBlenderAnimator(i, i2), BitmapDescriptorFactory.HUE_RED, 1.0f));
            this.forwardSwitchArchiveAnimator.setDuration(300L);
            this.forwardSwitchArchiveAnimator.start();
            this.actionBar.setItemsBackgroundColor(Theme.getColor(i3), false);
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ViewPage viewPage = this.viewPages[0];
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        float f = BitmapDescriptorFactory.HUE_RED;
        fArr[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(viewPage, property, fArr));
        ViewPage viewPage2 = this.viewPages[0];
        Property property2 = View.SCALE_X;
        float[] fArr2 = new float[1];
        fArr2[0] = z ? 0.9f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(viewPage2, property2, fArr2));
        ViewPage viewPage3 = this.viewPages[0];
        Property property3 = View.SCALE_Y;
        float[] fArr3 = new float[1];
        fArr3[0] = z ? 0.9f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(viewPage3, property3, fArr3));
        ScrollView scrollView = this.forwardSpansScrollView;
        Property property4 = View.TRANSLATION_Y;
        float[] fArr4 = new float[1];
        fArr4[0] = z ? -AndroidUtilities.m54dp(44) : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(scrollView, property4, fArr4));
        RecyclerListView listView = this.filterTabsView.getListView();
        Property property5 = View.ALPHA;
        float[] fArr5 = new float[1];
        fArr5[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(listView, property5, fArr5));
        FilterTabsView filterTabsView = this.filterTabsView;
        Property property6 = View.TRANSLATION_Y;
        float[] fArr6 = new float[1];
        fArr6[0] = z ? -AndroidUtilities.m54dp(44) : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(filterTabsView, property6, fArr6));
        ImageView imageView = this.forwardSwitchArchiveButton;
        Property property7 = View.ALPHA;
        float[] fArr7 = new float[1];
        fArr7[0] = z ? 0.9f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(imageView, property7, fArr7));
        ImageView imageView2 = this.forwardSwitchArchiveButton;
        Property property8 = View.SCALE_X;
        float[] fArr8 = new float[1];
        fArr8[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(imageView2, property8, fArr8));
        ImageView imageView3 = this.forwardSwitchArchiveButton;
        Property property9 = View.SCALE_Y;
        float[] fArr9 = new float[1];
        fArr9[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(imageView3, property9, fArr9));
        float[] fArr10 = new float[2];
        fArr10[0] = this.searchAnimationProgress;
        if (z) {
            f = 1.0f;
        }
        fArr10[1] = f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr10);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogsActivity.this.lambda$animateSwitchArchive$17(valueAnimator);
            }
        });
        arrayList.add(ofFloat);
        animatorSet2.playTogether(arrayList);
        animatorSet2.setDuration(150L);
        if (z) {
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ViewPage[] viewPageArr;
                    DialogsActivity.this.forwardSwitchArchiveButton.setImageResource(DialogsActivity.this.isForwardToArchive ? C3290R.C3292drawable.msg_list : C3290R.C3292drawable.msg_archive);
                    DialogsActivity.this.actionBarDefaultPaint.setColor(Theme.getColor(i2));
                    DialogsActivity.this.filterTabsView.getTabsContainer().setSelectorDrawableColor(Theme.getColor(i3));
                    DialogsActivity.this.forwardSpansScrollView.setTranslationY(-AndroidUtilities.m54dp(44));
                    DialogsActivity.this.filterTabsView.setTranslationY(-AndroidUtilities.m54dp(44));
                    for (ViewPage viewPage4 : DialogsActivity.this.viewPages) {
                        viewPage4.dialogsAdapter.setFolderId(DialogsActivity.this.isForwardToArchive ? 1 : 0);
                        viewPage4.dialogsAdapter.notifyDataSetChanged();
                    }
                    DialogsActivity.this.filterTabsView.setForwardToArchive(DialogsActivity.this.isForwardToArchive);
                    if (DialogsActivity.this.isForwardToArchive) {
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        dialogsActivity.forwardLastSelectedFilterTab = dialogsActivity.filterTabsView.getCurrentTabId();
                    } else {
                        DialogsActivity dialogsActivity2 = DialogsActivity.this;
                        dialogsActivity2.forwardLastSelectedArchiveFilterTab = dialogsActivity2.filterTabsView.getCurrentTabId();
                    }
                    DialogsActivity.this.updateFilterTabs(true, false);
                    if (DialogsActivity.this.isForwardToArchive) {
                        DialogsActivity dialogsActivity3 = DialogsActivity.this;
                        dialogsActivity3.scrollToFilterTab(dialogsActivity3.forwardLastSelectedArchiveFilterTab);
                    } else {
                        DialogsActivity dialogsActivity4 = DialogsActivity.this;
                        dialogsActivity4.scrollToFilterTab(dialogsActivity4.forwardLastSelectedFilterTab);
                    }
                    DialogsActivity.this.animateSwitchArchive(false);
                }
            });
        }
        animatorSet2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateSwitchArchive$17(ValueAnimator valueAnimator) {
        this.searchAnimationProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
    }

    private void checkForwardSwitchArchiveItem() {
        if (this.forwardSwitchArchiveItem == null) {
            return;
        }
        if (getMessagesController().getDialogs(1).isEmpty()) {
            this.forwardSwitchArchiveItem.setVisibility(8);
            if (this.isForwardToArchive) {
                toggleForwardSwitchArchive();
                return;
            }
            return;
        }
        this.forwardSwitchArchiveItem.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleForwardSwitchArchive() {
        this.isForwardToArchive = !this.isForwardToArchive;
        animateSwitchArchive(true);
    }

    private void resolveFabClickByType(FilterFab filterFab) {
        if (filterFab == FilterFab.CREATE_CHAT) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("destroyAfterSelect", true);
            presentFragment(new ContactsActivity(bundle));
        } else if (filterFab == FilterFab.ARCHIVE) {
            presentFragment(newInstanceInArchiveMode());
        } else if (filterFab == FilterFab.CLOUD) {
            if (SharedConfig.isCloudAlbumsEnabled && getAlbumsController().isOpenAlbumsInsteadCloudEnabled()) {
                presentFragment(newInstanceInAlbumsMode());
            } else {
                presentFragment(ChatActivity.newInstanceInCloudMode());
            }
        } else if (filterFab == FilterFab.MARK_ALL_READ) {
            if (getTopicsController().hasSelectedTopic(isArchive())) {
                showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda101
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.this.lambda$resolveFabClickByType$18();
                    }
                });
                return;
            }
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null && filterTabsView.currentTabIsDefault()) {
                readAllCurrentFolderDialogs();
            } else {
                showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda88
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.this.lambda$resolveFabClickByType$19();
                    }
                });
            }
        } else if (filterFab == FilterFab.WALLET) {
            WalletHelper.safeRunWithActivationCheck(this, new Callbacks$Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda74
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    DialogsActivity.this.lambda$resolveFabClickByType$20();
                }
            });
        } else if (filterFab == FilterFab.CONTACTS) {
            presentFragment(new ContactsActivity(null));
        } else if (filterFab == FilterFab.MUSIC) {
            if (SharedConfig.isMusicIntroShown) {
                presentFragment(new MusicActivity());
            } else {
                presentFragment(new ActionIntroActivity(101));
            }
        } else if (filterFab == FilterFab.ALBUMS) {
            if (SharedConfig.isAlbumsIntroShown) {
                presentFragment(newInstanceInAlbumsMode());
            } else {
                presentFragment(new ActionIntroActivity(100));
            }
        } else if (filterFab == FilterFab.CREATE_ALBUM) {
            if (SharedConfig.isAlbumsIntroShown) {
                presentFragment(ChannelCreateActivity.newInstanceInAlbumMode(new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda67
                    @Override // com.iMe.fork.utils.Callbacks$Callback1
                    public final void invoke(Object obj) {
                        DialogsActivity.this.lambda$resolveFabClickByType$21((Long) obj);
                    }
                }));
            } else {
                presentFragment(new ActionIntroActivity(110));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveFabClickByType$18() {
        TopicModel topic = getTopicsController().getTopic(getTopicsController().getSelectedTopicId(isArchive()));
        if (topic != null) {
            getMessagesController().readDialogs(topic.getDialogs());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveFabClickByType$19() {
        MessagesController.DialogFilter filterById = getFilterById(this.viewPages[0].selectedType);
        if (filterById != null) {
            getMessagesController().readDialogs(filterById.dialogs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveFabClickByType$20() {
        this.walletFlowCoordinator.getValue().start(this.parentLayout, WalletRootFragment.newInstance(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveFabClickByType$21(Long l) {
        presentFragment(ChatActivity.newInstanceForDialogId(l.longValue(), 0));
    }

    private void showEnableSortingByDefaultAlert() {
        Dialog dialog = this.enableSortingByDefaultAlert;
        if ((dialog != null && dialog.isShowing()) || this.askingForPermissions || this.isPaused || this.inPreviewMode || SharedConfig.hasPreferenceKey(TelegramPreferenceKeys.Global.isChatSortingEnabledByDefault()) || getUserConfig().hasPreferenceKey(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
            return;
        }
        Dialog createTopAnimationDialog = AlertsCreator.createTopAnimationDialog(getParentActivity(), C3290R.raw.fork_dialogs_sorting, 300, LocaleController.getInternalString(C3290R.string.sorting_enable_alert_message), LocaleController.getString("Enable", C3290R.string.Enable), new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda66
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                DialogsActivity.this.lambda$showEnableSortingByDefaultAlert$22((Boolean) obj);
            }
        });
        this.enableSortingByDefaultAlert = createTopAnimationDialog;
        createTopAnimationDialog.setCanceledOnTouchOutside(false);
        this.enableSortingByDefaultAlert.setCancelable(false);
        this.enableSortingByDefaultAlert.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda25
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                DialogsActivity.this.lambda$showEnableSortingByDefaultAlert$23(dialogInterface);
            }
        });
        this.enableSortingByDefaultAlert.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEnableSortingByDefaultAlert$22(Boolean bool) {
        SharedConfig.setChatSortingEnabledByDefault(bool.booleanValue());
        for (int i = 0; i < 5; i++) {
            FiltersController filtersController = FiltersController.getInstance(i);
            filtersController.setSortingEnabled(false, bool.booleanValue());
            filtersController.setSortingEnabled(true, bool.booleanValue());
            filtersController.saveConfig();
        }
        updateFilterTabs(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEnableSortingByDefaultAlert$23(DialogInterface dialogInterface) {
        this.enableSortingByDefaultAlert = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openForwardingPreview() {
        EditText editField;
        if (getParentActivity() == null || !checkSelectedSecrets()) {
            return;
        }
        SharedConfig.setMultiForwardingOptionsHintShown(true);
        showForwardingOptionsHint(false);
        prepareBlurBitmap();
        if (this.forwardingParams == null) {
            ForwardingMessagesParams forwardingMessagesParams = new ForwardingMessagesParams(this.forwardingMessages, this.selectedDialogs.get(0).longValue());
            this.forwardingParams = forwardingMessagesParams;
            if (this.needForceHideForwardAuthor) {
                forwardingMessagesParams.hideForwardSendersName = true;
                forwardingMessagesParams.needForceHideForwardAuthor = true;
            }
        }
        EditTextBoldCursor editTextBoldCursor = this.forwardSearchEditText;
        if (editTextBoldCursor != null && editTextBoldCursor.isFocused()) {
            editField = this.forwardSearchEditText;
        } else {
            ChatActivityEnterView chatActivityEnterView = this.commentView;
            editField = (chatActivityEnterView == null || !chatActivityEnterView.isKeyboardVisible()) ? null : this.commentView.getEditField();
        }
        C55636 c55636 = new C55636(getParentActivity(), this.forwardingParams, null, null, this.currentAccount, null, editField);
        this.forwardingPreviewView = c55636;
        ((ContentView) this.fragmentView).addView(c55636);
        if (editField != null) {
            AndroidUtilities.hideKeyboard(editField);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$6 */
    /* loaded from: classes5.dex */
    public class C55636 extends ForwardingPreviewView {
        final /* synthetic */ EditText val$focusedEditText;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C55636(Context context, ForwardingMessagesParams forwardingMessagesParams, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, int i, ForwardingPreviewView.ResourcesDelegate resourcesDelegate, EditText editText) {
            super(context, forwardingMessagesParams, tLRPC$User, tLRPC$Chat, i, resourcesDelegate);
            this.val$focusedEditText = editText;
        }

        @Override // org.telegram.p044ui.Components.ForwardingPreviewView
        protected void onDismiss(boolean z) {
            final EditText editText = this.val$focusedEditText;
            if (editText == null || !z) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$6$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C55636.lambda$onDismiss$0(editText);
                }
            }, 50L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onDismiss$0(EditText editText) {
            if (AndroidUtilities.showKeyboard(editText)) {
                return;
            }
            editText.clearFocus();
            editText.requestFocus();
        }

        @Override // org.telegram.p044ui.Components.ForwardingPreviewView
        protected void didSendPressed() {
            dismiss(true);
            DialogsActivity.this.commentView.getSendButton().callOnClick();
        }

        @Override // org.telegram.p044ui.Components.ForwardingPreviewView
        protected void onTransitionAnimationProgress(boolean z, float f) {
            if (z || f != BitmapDescriptorFactory.HUE_RED) {
                DialogsActivity.this.blurredView.setAlpha(f);
                return;
            }
            if (DialogsActivity.this.isForward()) {
                DialogsActivity.this.blurredView.setVisibility(8);
            } else {
                AndroidUtilities.removeFromParent(DialogsActivity.this.blurredView);
            }
            DialogsActivity.this.blurredView.setBackground(null);
        }

        @Override // org.telegram.p044ui.Components.ForwardingPreviewView
        protected void didOpenEditorPressed() {
            if (DialogsActivity.this.forwardingParams == null) {
                return;
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            dialogsActivity.presentFragment(ChatActivity.newInstanceInForwardingEditor(((Long) dialogsActivity.selectedDialogs.get(0)).longValue(), DialogsActivity.this.forwardingParams, new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$6$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DialogsActivity.C55636.this.lambda$didOpenEditorPressed$1((ForwardingMessagesParams) obj);
                }
            }));
            dismiss(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didOpenEditorPressed$1(ForwardingMessagesParams forwardingMessagesParams) {
            DialogsActivity.this.forwardingParams = forwardingMessagesParams;
            DialogsActivity.this.openForwardingPreview();
        }
    }

    private boolean checkSelectedSecrets() {
        if (this.selectedDialogs.isEmpty()) {
            return false;
        }
        Iterator<Long> it = this.selectedDialogs.iterator();
        Boolean bool = null;
        while (it.hasNext()) {
            boolean isEncryptedDialog = DialogObject.isEncryptedDialog(it.next().longValue());
            if (bool == null) {
                bool = Boolean.valueOf(isEncryptedDialog);
            } else if (isEncryptedDialog != bool.booleanValue()) {
                this.forwardingParams = null;
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showForwardingOptionsHint(boolean z) {
        if (getParentActivity() == null || this.fragmentView == null) {
            return;
        }
        if (z && SharedConfig.isMultiForwardingOptionsHintShown) {
            return;
        }
        if (z) {
            if (this.forwardingOptionsHintView == null) {
                HintView hintView = new HintView(getParentActivity(), 1);
                this.forwardingOptionsHintView = hintView;
                hintView.setText(LocaleController.getString("TapForForwardingOptions", C3290R.string.TapForForwardingOptions));
                this.forwardingOptionsHintView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.forwardingOptionsHintView.setVisibility(4);
                ((ContentView) this.fragmentView).addView(this.forwardingOptionsHintView, LayoutHelper.createFrame(-2, -2, 51, 0, 0, 20, 0));
            }
            this.forwardingOptionsHintView.showForView(this.forwardingOptionsButton, true, false);
            return;
        }
        HintView hintView2 = this.forwardingOptionsHintView;
        if (hintView2 != null) {
            hintView2.hide();
            this.forwardingOptionsHintView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFilterTabsAtBottom() {
        return (!SharedConfig.isFilterTabsAtBottomEnabled || isForward() || isManagement()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isForward() {
        return this.initialDialogsType == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAlbums() {
        return this.initialDialogsType == DIALOGS_TYPE_ALBUMS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isManagement() {
        return this.initialDialogsType == 400;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHiddenChats() {
        return this.folderId == 2;
    }

    private ViewPage getCurrentViewPage() {
        ViewPage[] viewPageArr;
        for (ViewPage viewPage : this.viewPages) {
            if (viewPage != null && viewPage.getVisibility() == 0) {
                return viewPage;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.DialogsActivity$SpansContainer */
    /* loaded from: classes5.dex */
    public class SpansContainer extends ViewGroup {
        private View addingSpan;
        private boolean animationStarted;
        private final ArrayList<Animator> animators;
        private AnimatorSet currentAnimation;
        private View removingSpan;

        public SpansContainer(Context context) {
            super(context);
            this.animators = new ArrayList<>();
        }

        public void addSpan(GroupCreateSpan groupCreateSpan, boolean z) {
            DialogsActivity.this.forwardSpans.add(groupCreateSpan);
            DialogsActivity.this.forwardSpansByDialogIds.put(groupCreateSpan.getDialogId(), groupCreateSpan);
            DialogsActivity.this.forwardSearchEditText.setHintVisible(false, TextUtils.isEmpty(DialogsActivity.this.forwardSearchEditText.getText()));
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.setupEndValues();
                this.currentAnimation.cancel();
            }
            this.animationStarted = false;
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.currentAnimation = animatorSet2;
                animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.SpansContainer.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SpansContainer.this.addingSpan = null;
                        SpansContainer.this.currentAnimation = null;
                        SpansContainer.this.animationStarted = false;
                        DialogsActivity.this.forwardSearchEditText.setAllowDrawCursor(true);
                    }
                });
                this.currentAnimation.setDuration(150L);
                this.addingSpan = groupCreateSpan;
                this.animators.clear();
                this.animators.add(ObjectAnimator.ofFloat(this.addingSpan, View.SCALE_X, 0.01f, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(this.addingSpan, View.SCALE_Y, 0.01f, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(this.addingSpan, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
            }
            addView(groupCreateSpan);
        }

        public void removeSpan(final GroupCreateSpan groupCreateSpan) {
            DialogsActivity.this.isNeedIgnoreForwardSpansContainerScroll = true;
            DialogsActivity.this.forwardSpansByDialogIds.remove(groupCreateSpan.getDialogId());
            DialogsActivity.this.forwardSpans.remove(groupCreateSpan);
            groupCreateSpan.setOnClickListener(null);
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.setupEndValues();
                this.currentAnimation.cancel();
            }
            this.animationStarted = false;
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.SpansContainer.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SpansContainer.this.removeView(groupCreateSpan);
                    SpansContainer.this.removingSpan = null;
                    SpansContainer.this.currentAnimation = null;
                    SpansContainer.this.animationStarted = false;
                    DialogsActivity.this.forwardSearchEditText.setAllowDrawCursor(true);
                    if (DialogsActivity.this.forwardSpans.isEmpty()) {
                        DialogsActivity.this.forwardSearchEditText.setHintVisible(true, true);
                    }
                }
            });
            this.currentAnimation.setDuration(150L);
            this.removingSpan = groupCreateSpan;
            this.animators.clear();
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, View.SCALE_X, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, View.SCALE_Y, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
            requestLayout();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int min;
            int childCount = getChildCount();
            int size = View.MeasureSpec.getSize(i);
            int m54dp = size - AndroidUtilities.m54dp(26);
            int m54dp2 = AndroidUtilities.m54dp(10);
            int m54dp3 = AndroidUtilities.m54dp(10);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt instanceof GroupCreateSpan) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(32), 1073741824));
                    if (childAt != this.removingSpan && childAt.getMeasuredWidth() + i3 > m54dp) {
                        m54dp2 += childAt.getMeasuredHeight() + AndroidUtilities.m54dp(8);
                        i3 = 0;
                    }
                    if (childAt.getMeasuredWidth() + i4 > m54dp) {
                        m54dp3 += childAt.getMeasuredHeight() + AndroidUtilities.m54dp(8);
                        i4 = 0;
                    }
                    int m54dp4 = AndroidUtilities.m54dp(13) + i3;
                    if (!this.animationStarted) {
                        View view = this.removingSpan;
                        if (childAt == view) {
                            childAt.setTranslationX(AndroidUtilities.m54dp(13) + i4);
                            childAt.setTranslationY(m54dp3);
                        } else if (view != null) {
                            float f = m54dp4;
                            if (childAt.getTranslationX() != f) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, View.TRANSLATION_X, f));
                            }
                            float f2 = m54dp2;
                            if (childAt.getTranslationY() != f2) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, View.TRANSLATION_Y, f2));
                            }
                        } else {
                            childAt.setTranslationX(m54dp4);
                            childAt.setTranslationY(m54dp2);
                        }
                    }
                    if (childAt != this.removingSpan) {
                        i3 += childAt.getMeasuredWidth() + AndroidUtilities.m54dp(9);
                    }
                    i4 += childAt.getMeasuredWidth() + AndroidUtilities.m54dp(9);
                }
            }
            if (AndroidUtilities.isTablet()) {
                min = AndroidUtilities.m54dp(372) / 3;
            } else {
                Point point = AndroidUtilities.displaySize;
                min = (Math.min(point.x, point.y) - AndroidUtilities.m54dp(158)) / 3;
            }
            if (m54dp - i3 < min) {
                m54dp2 += AndroidUtilities.m54dp(40);
                i3 = 0;
            }
            if (m54dp - i4 < min) {
                m54dp3 += AndroidUtilities.m54dp(40);
            }
            DialogsActivity.this.forwardSearchEditText.measure(View.MeasureSpec.makeMeasureSpec(m54dp - i3, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(32), 1073741824));
            if (!this.animationStarted) {
                int m54dp5 = m54dp3 + AndroidUtilities.m54dp(42);
                int m54dp6 = i3 + AndroidUtilities.m54dp(16);
                DialogsActivity.this.forwardSearchEditTextTranslationY = m54dp2;
                if (this.currentAnimation == null) {
                    DialogsActivity.this.forwardSpansContainerHeight = m54dp5;
                    DialogsActivity.this.forwardSearchEditText.setTranslationX(m54dp6);
                    DialogsActivity.this.forwardSearchEditText.setTranslationY(DialogsActivity.this.forwardSearchEditTextTranslationY);
                } else {
                    int m54dp7 = m54dp2 + AndroidUtilities.m54dp(42);
                    if (DialogsActivity.this.forwardSpansContainerHeight != m54dp7) {
                        this.animators.add(ObjectAnimator.ofInt(DialogsActivity.this, "forwardSpansContainerHeight", m54dp7));
                    }
                    float f3 = m54dp6;
                    if (DialogsActivity.this.forwardSearchEditText.getTranslationX() != f3) {
                        this.animators.add(ObjectAnimator.ofFloat(DialogsActivity.this.forwardSearchEditText, View.TRANSLATION_X, f3));
                    }
                    if (DialogsActivity.this.forwardSearchEditText.getTranslationY() != DialogsActivity.this.forwardSearchEditTextTranslationY) {
                        this.animators.add(ObjectAnimator.ofFloat(DialogsActivity.this.forwardSearchEditText, View.TRANSLATION_Y, DialogsActivity.this.forwardSearchEditTextTranslationY));
                    }
                    DialogsActivity.this.forwardSearchEditText.setAllowDrawCursor(false);
                    this.currentAnimation.playTogether(this.animators);
                    this.currentAnimation.start();
                    this.animationStarted = true;
                }
            } else if (this.currentAnimation != null && !DialogsActivity.this.isNeedIgnoreForwardSpansContainerScroll && this.removingSpan == null) {
                DialogsActivity.this.forwardSearchEditText.bringPointIntoView(DialogsActivity.this.forwardSearchEditText.getSelectionStart());
            }
            setMeasuredDimension(size, DialogsActivity.this.forwardSpansContainerHeight);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }
    }

    public MessagesStorage.TopicKey getOpenedDialogId() {
        return this.openedDialogId;
    }

    /* renamed from: org.telegram.ui.DialogsActivity$ViewPage */
    /* loaded from: classes5.dex */
    public class ViewPage extends FrameLayout {
        private DialogsAdapter animationSupportDialogsAdapter;
        private RecyclerListView animationSupportListView;
        private int archivePullViewState;
        private DialogsAdapter dialogsAdapter;
        private DialogsItemAnimator dialogsItemAnimator;
        private int dialogsType;
        private boolean isLocked;
        private ItemTouchHelper itemTouchhelper;
        private int lastItemsCount;
        private LinearLayoutManager layoutManager;
        private DialogsRecyclerView listView;
        private FlickerLoadingView progressView;
        private PullForegroundDrawable pullForegroundDrawable;
        private RecyclerItemsEnterAnimator recyclerItemsEnterAnimator;
        private RecyclerAnimationScrollHelper scrollHelper;
        private int selectedType;
        private SwipeController swipeController;
        Runnable updateListRunnable;
        boolean updating;

        public ViewPage(Context context) {
            super(context);
            this.updateListRunnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$ViewPage$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.ViewPage.this.lambda$new$0();
                }
            };
        }

        public boolean isDefaultDialogType() {
            int i = this.dialogsType;
            return i == 0 || i == 7 || i == 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            this.dialogsAdapter.updateList(this.listView, this.dialogsType == 0 && DialogsActivity.this.hasHiddenArchive() && this.archivePullViewState == 2, ((BaseFragment) DialogsActivity.this).actionBar.getTranslationY());
            this.listView.updateDialogsOnNextDraw = true;
            this.updating = false;
        }

        public void updateList(boolean z) {
            if (((BaseFragment) DialogsActivity.this).isPaused) {
                return;
            }
            if (z) {
                AndroidUtilities.cancelRunOnUIThread(this.updateListRunnable);
                this.listView.setItemAnimator(this.dialogsItemAnimator);
                this.updateListRunnable.run();
            } else if (this.updating) {
            } else {
                this.updating = true;
                if (!this.dialogsItemAnimator.isRunning()) {
                    this.listView.setItemAnimator(null);
                }
                AndroidUtilities.runOnUIThread(this.updateListRunnable, 36L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.DialogsActivity$ContentView */
    /* loaded from: classes5.dex */
    public class ContentView extends SizeNotifierFrameLayout {
        private Paint actionBarSearchPaint;
        private int inputFieldHeight;
        private int startedTrackingPointerId;
        private int startedTrackingX;
        private int startedTrackingY;
        private VelocityTracker velocityTracker;
        private boolean wasPortrait;
        private Paint windowBackgroundPaint;

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (DialogsActivity.this.multiFabExpanded) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                DialogsActivity dialogsActivity = DialogsActivity.this;
                if (!dialogsActivity.checkTouchEventOnView(dialogsActivity.miniFabsContainer, x, y)) {
                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                    if (!dialogsActivity2.checkTouchEventOnView(dialogsActivity2.floatingButtonContainer, x, y)) {
                        DialogsActivity.this.expandMultiFab(false);
                        return true;
                    }
                }
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1 && DialogsActivity.this.isForwardingPreviewShowing()) {
                DialogsActivity.this.forwardingPreviewView.dismiss(true);
                return true;
            }
            return super.dispatchKeyEvent(keyEvent);
        }

        public ContentView(Context context) {
            super(context);
            this.actionBarSearchPaint = new Paint(1);
            this.windowBackgroundPaint = new Paint();
            this.needBlur = true;
            this.blurBehindViews.add(this);
        }

        private boolean prepareForMoving(MotionEvent motionEvent, boolean z) {
            int nextPageId;
            if (DialogsActivity.this.canShowFilterTabsView && (nextPageId = DialogsActivity.this.filterTabsView.getNextPageId(z)) >= 0) {
                getParent().requestDisallowInterceptTouchEvent(true);
                DialogsActivity.this.maybeStartTracking = false;
                DialogsActivity.this.startedTracking = true;
                this.startedTrackingX = (int) (motionEvent.getX() + DialogsActivity.this.additionalOffset);
                ((BaseFragment) DialogsActivity.this).actionBar.setEnabled(false);
                DialogsActivity.this.filterTabsView.setEnabled(false);
                DialogsActivity.this.viewPages[1].selectedType = nextPageId;
                DialogsActivity.this.viewPages[1].setVisibility(0);
                DialogsActivity.this.animatingForward = z;
                DialogsActivity.this.showScrollbars(false);
                DialogsActivity.this.switchToCurrentSelectedMode(true);
                if (z) {
                    DialogsActivity.this.viewPages[1].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth());
                } else {
                    DialogsActivity.this.viewPages[1].setTranslationX(-DialogsActivity.this.viewPages[0].getMeasuredWidth());
                }
                return true;
            }
            return false;
        }

        @Override // android.view.View
        public void setPadding(int i, int i2, int i3, int i4) {
            DialogsActivity.this.topPadding = i2;
            DialogsActivity.this.updateContextViewPosition();
            DialogsActivity dialogsActivity = DialogsActivity.this;
            RightSlidingDialogContainer rightSlidingDialogContainer = dialogsActivity.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer != null) {
                rightSlidingDialogContainer.setFragmentViewPadding(dialogsActivity.topPadding);
            }
            DialogsActivity dialogsActivity2 = DialogsActivity.this;
            if (dialogsActivity2.whiteActionBar && dialogsActivity2.searchViewPager != null) {
                DialogsActivity.this.searchViewPager.setTranslationY(DialogsActivity.this.topPadding - DialogsActivity.this.lastMeasuredTopPadding);
            } else {
                requestLayout();
            }
        }

        public boolean checkTabsAnimationInProgress() {
            boolean z;
            if (DialogsActivity.this.tabsAnimationInProgress) {
                if (DialogsActivity.this.backAnimation) {
                    if (Math.abs(DialogsActivity.this.viewPages[0].getTranslationX()) < 1.0f) {
                        DialogsActivity.this.viewPages[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        DialogsActivity.this.viewPages[1].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth() * (DialogsActivity.this.animatingForward ? 1 : -1));
                        z = true;
                    }
                    z = false;
                } else {
                    if (Math.abs(DialogsActivity.this.viewPages[1].getTranslationX()) < 1.0f) {
                        DialogsActivity.this.viewPages[0].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth() * (DialogsActivity.this.animatingForward ? -1 : 1));
                        DialogsActivity.this.viewPages[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        z = true;
                    }
                    z = false;
                }
                if (z) {
                    DialogsActivity.this.showScrollbars(true);
                    if (DialogsActivity.this.tabsAnimation != null) {
                        DialogsActivity.this.tabsAnimation.cancel();
                        DialogsActivity.this.tabsAnimation = null;
                    }
                    DialogsActivity.this.tabsAnimationInProgress = false;
                }
                return DialogsActivity.this.tabsAnimationInProgress;
            }
            return false;
        }

        public int getActionBarFullHeight() {
            float height = ((BaseFragment) DialogsActivity.this).actionBar.getHeight();
            boolean isFilterTabsAtBottom = DialogsActivity.this.isFilterTabsAtBottom();
            float f = BitmapDescriptorFactory.HUE_RED;
            float measuredHeight = (isFilterTabsAtBottom || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() == 8) ? 0.0f : DialogsActivity.this.filterTabsView.getMeasuredHeight() - ((1.0f - DialogsActivity.this.filterTabsProgress) * DialogsActivity.this.filterTabsView.getMeasuredHeight());
            if (DialogsActivity.this.searchTabsView != null && DialogsActivity.this.searchTabsView.getVisibility() != 8) {
                f = DialogsActivity.this.searchTabsView.getMeasuredHeight();
            }
            return (int) (height + (measuredHeight * (1.0f - DialogsActivity.this.searchAnimationProgress)) + (f * DialogsActivity.this.searchAnimationProgress));
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == DialogsActivity.this.fragmentContextView && DialogsActivity.this.fragmentContextView.isCallStyle()) {
                return true;
            }
            ScrollView scrollView = DialogsActivity.this.forwardSpansScrollView;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (view != scrollView) {
                if (view != DialogsActivity.this.viewPages[0] && ((DialogsActivity.this.viewPages.length <= 1 || view != DialogsActivity.this.viewPages[1]) && view != DialogsActivity.this.fragmentContextView && view != DialogsActivity.this.fragmentLocationContextView && view != DialogsActivity.this.dialogsHintCell && view != DialogsActivity.this.topicsBar && view != DialogsActivity.this.recentChatsBar && view != DialogsActivity.this.archiveHintCell)) {
                    if (view == ((BaseFragment) DialogsActivity.this).actionBar && DialogsActivity.this.slideFragmentProgress != 1.0f) {
                        canvas.save();
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        if (dialogsActivity.slideFragmentLite) {
                            canvas.translate((dialogsActivity.isDrawerTransition ? 1 : -1) * AndroidUtilities.m54dp(40) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                        } else {
                            float f2 = 1.0f - ((1.0f - dialogsActivity.slideFragmentProgress) * 0.05f);
                            canvas.translate((dialogsActivity.isDrawerTransition ? AndroidUtilities.m54dp(4) : -AndroidUtilities.m54dp(4)) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                            if (DialogsActivity.this.isDrawerTransition) {
                                f = getMeasuredWidth();
                            }
                            canvas.scale(f2, f2, f, (((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + (C3356ActionBar.getCurrentActionBarHeight() / 2.0f));
                        }
                        boolean drawChild = super.drawChild(canvas, view, j);
                        canvas.restore();
                        return drawChild;
                    }
                    return super.drawChild(canvas, view, j);
                }
                canvas.save();
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, (-getY()) + ((BaseFragment) DialogsActivity.this).actionBar.getY() + getActionBarFullHeight(), getMeasuredWidth(), getMeasuredHeight());
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                if (dialogsActivity2.slideFragmentProgress != 1.0f && view != dialogsActivity2.topicsBar && view != DialogsActivity.this.recentChatsBar && view != DialogsActivity.this.archiveHintCell) {
                    DialogsActivity dialogsActivity3 = DialogsActivity.this;
                    if (dialogsActivity3.slideFragmentLite) {
                        canvas.translate((dialogsActivity3.isDrawerTransition ? 1 : -1) * AndroidUtilities.m54dp(40) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                    } else {
                        float f3 = 1.0f - ((1.0f - dialogsActivity3.slideFragmentProgress) * 0.05f);
                        canvas.translate((dialogsActivity3.isDrawerTransition ? AndroidUtilities.m54dp(4) : -AndroidUtilities.m54dp(4)) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                        if (DialogsActivity.this.isDrawerTransition) {
                            f = getMeasuredWidth();
                        }
                        canvas.scale(f3, f3, f, (-getY()) + ((BaseFragment) DialogsActivity.this).actionBar.getY() + getActionBarFullHeight() + DialogsActivity.this.getTopicsBarHeight(true) + DialogsActivity.this.getRecentChatsBarHeight() + DialogsActivity.this.getArchiveHintCellHeight());
                    }
                }
                boolean drawChild2 = super.drawChild(canvas, view, j);
                canvas.restore();
                return drawChild2;
            }
            canvas.save();
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), DialogsActivity.this.forwardSpansScrollView.getBottom() + DialogsActivity.this.forwardSpansScrollView.getTranslationY());
            boolean drawChild3 = super.drawChild(canvas, view, j);
            canvas.restore();
            return drawChild3;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            int y;
            Paint paint;
            int i;
            int actionBarFullHeight = getActionBarFullHeight();
            if (!((BaseFragment) DialogsActivity.this).inPreviewMode) {
                y = (int) ((-getY()) + ((BaseFragment) DialogsActivity.this).actionBar.getY());
            } else {
                y = AndroidUtilities.statusBarHeight;
            }
            int i2 = y;
            int i3 = i2 + actionBarFullHeight;
            DialogsActivity.this.rightSlidingDialogContainer.setCurrentTop(i3);
            DialogsActivity dialogsActivity = DialogsActivity.this;
            boolean z = dialogsActivity.whiteActionBar;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (z) {
                if (dialogsActivity.searchAnimationProgress != 1.0f) {
                    if (DialogsActivity.this.searchAnimationProgress == BitmapDescriptorFactory.HUE_RED && DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0) {
                        DialogsActivity.this.filterTabsView.setTranslationY(((BaseFragment) DialogsActivity.this).actionBar.getTranslationY());
                    }
                } else {
                    this.actionBarSearchPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    if (DialogsActivity.this.searchTabsView != null) {
                        DialogsActivity.this.searchTabsView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        DialogsActivity.this.searchTabsView.setAlpha(1.0f);
                        if (DialogsActivity.this.filtersView != null) {
                            DialogsActivity.this.filtersView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                            DialogsActivity.this.filtersView.setAlpha(1.0f);
                        }
                    }
                }
                Rect rect = AndroidUtilities.rectTmp2;
                rect.set(0, i2, getMeasuredWidth(), i3);
                drawBlurRect(canvas, BitmapDescriptorFactory.HUE_RED, rect, DialogsActivity.this.searchAnimationProgress == 1.0f ? this.actionBarSearchPaint : DialogsActivity.this.actionBarDefaultPaint, true);
                if (DialogsActivity.this.searchAnimationProgress > BitmapDescriptorFactory.HUE_RED && DialogsActivity.this.searchAnimationProgress < 1.0f) {
                    this.actionBarSearchPaint.setColor(ColorUtils.blendARGB(Theme.getColor(DialogsActivity.this.folderId == 0 ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived), Theme.getColor(Theme.key_windowBackgroundWhite), DialogsActivity.this.searchAnimationProgress));
                    if (DialogsActivity.this.searchIsShowed || !DialogsActivity.this.searchWasFullyShowed) {
                        canvas.save();
                        canvas.clipRect(0, i2, getMeasuredWidth(), i3);
                        drawBlurCircle(canvas, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth() - AndroidUtilities.m54dp(24), (((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + ((((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight() - i) / 2.0f), getMeasuredWidth() * 1.3f * DialogsActivity.this.searchAnimationProgress, this.actionBarSearchPaint, true);
                        canvas.restore();
                    } else {
                        rect.set(0, i2, getMeasuredWidth(), i3);
                        drawBlurRect(canvas, BitmapDescriptorFactory.HUE_RED, rect, this.actionBarSearchPaint, true);
                    }
                    if (DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0) {
                        if (DialogsActivity.this.isFilterTabsAtBottom()) {
                            DialogsActivity.this.filterTabsView.setTranslationY(actionBarFullHeight - ((BaseFragment) DialogsActivity.this).actionBar.getHeight());
                        } else {
                            DialogsActivity.this.filterTabsView.setTranslationY(actionBarFullHeight - (((BaseFragment) DialogsActivity.this).actionBar.getHeight() + DialogsActivity.this.filterTabsView.getMeasuredHeight()));
                        }
                    }
                    if (DialogsActivity.this.searchTabsView != null) {
                        float height = actionBarFullHeight - (((BaseFragment) DialogsActivity.this).actionBar.getHeight() + DialogsActivity.this.searchTabsView.getMeasuredHeight());
                        float f2 = DialogsActivity.this.searchAnimationTabsDelayedCrossfade ? DialogsActivity.this.searchAnimationProgress < 0.5f ? 0.0f : (DialogsActivity.this.searchAnimationProgress - 0.5f) / 0.5f : DialogsActivity.this.searchAnimationProgress;
                        DialogsActivity.this.searchTabsView.setTranslationY(height);
                        DialogsActivity.this.searchTabsView.setAlpha(f2);
                        if (DialogsActivity.this.filtersView != null) {
                            DialogsActivity.this.filtersView.setTranslationY(height);
                            DialogsActivity.this.filtersView.setAlpha(f2);
                        }
                    }
                }
            } else if (!((BaseFragment) dialogsActivity).inPreviewMode) {
                if (DialogsActivity.this.progressToActionMode > BitmapDescriptorFactory.HUE_RED) {
                    this.actionBarSearchPaint.setColor(ColorUtils.blendARGB(Theme.getColor(DialogsActivity.this.folderId == 0 ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived), Theme.getColor(Theme.key_windowBackgroundWhite), DialogsActivity.this.progressToActionMode));
                    Rect rect2 = AndroidUtilities.rectTmp2;
                    rect2.set(0, i2, getMeasuredWidth(), i3);
                    drawBlurRect(canvas, BitmapDescriptorFactory.HUE_RED, rect2, this.actionBarSearchPaint, true);
                } else {
                    Rect rect3 = AndroidUtilities.rectTmp2;
                    rect3.set(0, i2, getMeasuredWidth(), i3);
                    drawBlurRect(canvas, BitmapDescriptorFactory.HUE_RED, rect3, DialogsActivity.this.actionBarDefaultPaint, true);
                }
            }
            DialogsActivity.this.tabsYOffset = BitmapDescriptorFactory.HUE_RED;
            if ((DialogsActivity.this.filtersTabAnimator != null || DialogsActivity.this.rightSlidingDialogContainer.hasFragment()) && DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0) {
                if (DialogsActivity.this.isFilterTabsAtBottom()) {
                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                    dialogsActivity2.tabsYOffset = (1.0f - dialogsActivity2.filterTabsProgress) * DialogsActivity.this.filterTabsView.getMeasuredHeight();
                } else {
                    DialogsActivity dialogsActivity3 = DialogsActivity.this;
                    dialogsActivity3.tabsYOffset = (-(1.0f - dialogsActivity3.filterTabsProgress)) * DialogsActivity.this.filterTabsView.getMeasuredHeight();
                }
                DialogsActivity.this.filterTabsView.setTranslationY(((BaseFragment) DialogsActivity.this).actionBar.getTranslationY() + DialogsActivity.this.tabsYOffset);
                DialogsActivity.this.filterTabsView.setAlpha(DialogsActivity.this.filterTabsProgress);
                if (!DialogsActivity.this.isFilterTabsAtBottom()) {
                    DialogsActivity.this.viewPages[0].setTranslationY((-(1.0f - DialogsActivity.this.filterTabsProgress)) * DialogsActivity.this.filterTabsMoveFrom);
                }
            } else if (DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0 && DialogsActivity.this.searchAnimationProgress == BitmapDescriptorFactory.HUE_RED) {
                DialogsActivity.this.filterTabsView.setTranslationY(((BaseFragment) DialogsActivity.this).actionBar.getTranslationY());
                DialogsActivity.this.filterTabsView.setAlpha(1.0f);
            }
            DialogsActivity.this.updateContextViewPosition();
            super.dispatchDraw(canvas);
            DialogsActivity dialogsActivity4 = DialogsActivity.this;
            if (dialogsActivity4.whiteActionBar && dialogsActivity4.searchAnimationProgress > BitmapDescriptorFactory.HUE_RED && DialogsActivity.this.searchAnimationProgress < 1.0f && DialogsActivity.this.searchTabsView != null) {
                this.windowBackgroundPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                this.windowBackgroundPaint.setAlpha((int) (paint.getAlpha() * DialogsActivity.this.searchAnimationProgress));
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, i3, getMeasuredWidth(), i2 + ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight() + DialogsActivity.this.searchTabsView.getMeasuredHeight(), this.windowBackgroundPaint);
            }
            if (((BaseFragment) DialogsActivity.this).parentLayout != null && ((BaseFragment) DialogsActivity.this).actionBar != null && !((BaseFragment) DialogsActivity.this).actionBar.getCastShadows()) {
                int y2 = (int) (((BaseFragment) DialogsActivity.this).actionBar.getY() + getActionBarFullHeight());
                if (!DialogsActivity.this.isForward() || (DialogsActivity.this.searchAnimationProgress != 1.0f && !DialogsActivity.this.isForwardingPreviewShowing())) {
                    ((BaseFragment) DialogsActivity.this).parentLayout.drawHeaderShadow(canvas, (int) ((1.0f - DialogsActivity.this.searchAnimationProgress) * 255.0f), y2);
                }
                if ((!DialogsActivity.this.isForward() || (DialogsActivity.this.searchAnimationProgress != 1.0f && !DialogsActivity.this.isForwardingPreviewShowing())) && DialogsActivity.this.searchAnimationProgress > BitmapDescriptorFactory.HUE_RED) {
                    if (DialogsActivity.this.searchAnimationProgress < 1.0f) {
                        int alpha = Theme.dividerPaint.getAlpha();
                        Theme.dividerPaint.setAlpha((int) (alpha * DialogsActivity.this.searchAnimationProgress));
                        float f3 = y2;
                        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, f3, getMeasuredWidth(), f3, Theme.dividerPaint);
                        Theme.dividerPaint.setAlpha(alpha);
                    } else {
                        float f4 = y2;
                        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, f4, getMeasuredWidth(), f4, Theme.dividerPaint);
                    }
                }
                if (DialogsActivity.this.isForward() && !DialogsActivity.this.isForwardingPreviewShowing()) {
                    ((BaseFragment) DialogsActivity.this).parentLayout.drawHeaderShadow(canvas, y2 + DialogsActivity.this.getForwardSpansScrollViewHeight());
                }
            }
            if (DialogsActivity.this.filterTabsView != null && DialogsActivity.this.isFilterTabsAtBottom()) {
                int alpha2 = Theme.dividerPaint.getAlpha();
                Theme.dividerPaint.setAlpha((int) (DialogsActivity.this.filterTabsView.getAlpha() * 255.0f));
                float y3 = DialogsActivity.this.filterTabsView.getY();
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, y3, getMeasuredWidth(), y3, Theme.dividerPaint);
                Theme.dividerPaint.setAlpha(alpha2);
            }
            if (DialogsActivity.this.topicsBar != null && DialogsActivity.this.topicsBar.getVisibility() == 0) {
                int alpha3 = Theme.dividerPaint.getAlpha();
                Theme.dividerPaint.setAlpha((int) (DialogsActivity.this.topicsBar.getAlpha() * 255.0f));
                float translationY = (int) (DialogsActivity.this.topicsBar.getTranslationY() + (DialogsActivity.this.getTopicsController().isTopicsBarAtBottomEnabled() ? DialogsActivity.this.topicsBar.getTop() : DialogsActivity.this.topicsBar.getBottom()));
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, translationY, getMeasuredWidth(), translationY, Theme.dividerPaint);
                Theme.dividerPaint.setAlpha(alpha3);
            }
            if (DialogsActivity.this.recentChatsBar != null && DialogsActivity.this.recentChatsBar.getVisibility() == 0) {
                int alpha4 = Theme.dividerPaint.getAlpha();
                Theme.dividerPaint.setAlpha((int) (DialogsActivity.this.recentChatsBar.getAlpha() * 255.0f));
                float translationY2 = (int) (DialogsActivity.this.recentChatsBar.getTranslationY() + DialogsActivity.this.recentChatsBar.getBottom());
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, translationY2, getMeasuredWidth(), translationY2, Theme.dividerPaint);
                Theme.dividerPaint.setAlpha(alpha4);
            }
            if (DialogsActivity.this.fragmentContextView == null || !DialogsActivity.this.fragmentContextView.isCallStyle()) {
                return;
            }
            canvas.save();
            canvas.translate(DialogsActivity.this.fragmentContextView.getX(), DialogsActivity.this.fragmentContextView.getY());
            DialogsActivity dialogsActivity5 = DialogsActivity.this;
            float f5 = dialogsActivity5.slideFragmentProgress;
            if (f5 != 1.0f) {
                if (dialogsActivity5.slideFragmentLite) {
                    canvas.translate((dialogsActivity5.isDrawerTransition ? 1 : -1) * AndroidUtilities.m54dp(40) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                } else {
                    float f6 = 1.0f - ((1.0f - f5) * 0.05f);
                    canvas.translate((dialogsActivity5.isDrawerTransition ? AndroidUtilities.m54dp(4) : -AndroidUtilities.m54dp(4)) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                    if (DialogsActivity.this.isDrawerTransition) {
                        f = getMeasuredWidth();
                    }
                    canvas.scale(f6, 1.0f, f, DialogsActivity.this.fragmentContextView.getY());
                }
            }
            DialogsActivity.this.fragmentContextView.setDrawOverlay(true);
            DialogsActivity.this.fragmentContextView.draw(canvas);
            DialogsActivity.this.fragmentContextView.setDrawOverlay(false);
            canvas.restore();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:96:0x024f  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r19, int r20) {
            /*
                Method dump skipped, instructions count: 1074
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.ContentView.onMeasure(int, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0() {
            if (DialogsActivity.this.selectAnimatedEmojiDialog != null) {
                DialogsActivity.this.selectAnimatedEmojiDialog.dismiss();
                DialogsActivity.this.selectAnimatedEmojiDialog = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00e6  */
        @Override // org.telegram.p044ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onLayout(boolean r18, int r19, int r20, int r21, int r22) {
            /*
                Method dump skipped, instructions count: 1122
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.ContentView.onLayout(boolean, int, int, int, int):void");
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if ((actionMasked == 1 || actionMasked == 3) && ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) {
                DialogsActivity.this.allowMoving = true;
            }
            if (checkTabsAnimationInProgress()) {
                return true;
            }
            return (DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.isAnimatingIndicator()) || onTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void requestDisallowInterceptTouchEvent(boolean z) {
            if (DialogsActivity.this.maybeStartTracking && !DialogsActivity.this.startedTracking) {
                onTouchEvent(null);
            }
            super.requestDisallowInterceptTouchEvent(z);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            float f;
            float f2;
            float measuredWidth;
            int measuredWidth2;
            if ((DialogsActivity.this.topicsBar != null && DialogsActivity.this.topicsBar.isEditing()) || DialogsActivity.this.isForwardingPreviewShowing() || ((DialogsActivity.this.isManagement() && ((BaseFragment) DialogsActivity.this).actionBar != null && ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) || ((DialogsActivity.this.forwardSwitchArchiveAnimator != null && DialogsActivity.this.forwardSwitchArchiveAnimator.isRunning()) || ((BaseFragment) DialogsActivity.this).parentLayout == null || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.isEditing() || DialogsActivity.this.searching || DialogsActivity.this.rightSlidingDialogContainer.hasFragment() || ((BaseFragment) DialogsActivity.this).parentLayout.checkTransitionAnimation() || ((BaseFragment) DialogsActivity.this).parentLayout.isInPreviewMode() || ((BaseFragment) DialogsActivity.this).parentLayout.isPreviewOpenAnimationInProgress() || ((BaseFragment) DialogsActivity.this).parentLayout.getDrawerLayoutContainer().isDrawerOpened() || ((motionEvent != null && !DialogsActivity.this.startedTracking && motionEvent.getY() <= ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight() + ((BaseFragment) DialogsActivity.this).actionBar.getTranslationY()) || (DialogsActivity.this.isMainNoFolderDialogList() && DialogsActivity.this.initialDialogsType != 3 && SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 5 && (SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 2 || DialogsActivity.this.viewPages[0] == null || (DialogsActivity.this.viewPages[0].dialogsAdapter.getDialogsType() != 7 && DialogsActivity.this.viewPages[0].dialogsAdapter.getDialogsType() != 8))))))) {
                return false;
            }
            if (motionEvent != null) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                this.velocityTracker.addMovement(motionEvent);
            }
            if (motionEvent != null && motionEvent.getAction() == 0 && checkTabsAnimationInProgress()) {
                DialogsActivity.this.startedTracking = true;
                this.startedTrackingPointerId = motionEvent.getPointerId(0);
                this.startedTrackingX = (int) motionEvent.getX();
                ((BaseFragment) DialogsActivity.this).parentLayout.getDrawerLayoutContainer().setAllowOpenDrawerBySwipe(false);
                if (DialogsActivity.this.animatingForward) {
                    if (this.startedTrackingX >= DialogsActivity.this.viewPages[0].getMeasuredWidth() + DialogsActivity.this.viewPages[0].getTranslationX()) {
                        ViewPage viewPage = DialogsActivity.this.viewPages[0];
                        DialogsActivity.this.viewPages[0] = DialogsActivity.this.viewPages[1];
                        DialogsActivity.this.viewPages[1] = viewPage;
                        DialogsActivity.this.animatingForward = false;
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        dialogsActivity.additionalOffset = dialogsActivity.viewPages[0].getTranslationX();
                        DialogsActivity.this.filterTabsView.selectTabWithId(DialogsActivity.this.viewPages[0].selectedType, 1.0f);
                        DialogsActivity.this.filterTabsView.selectTabWithId(DialogsActivity.this.viewPages[1].selectedType, DialogsActivity.this.additionalOffset / DialogsActivity.this.viewPages[0].getMeasuredWidth());
                        DialogsActivity.this.switchToCurrentSelectedMode(true);
                        DialogsActivity.this.viewPages[0].dialogsAdapter.resume();
                        DialogsActivity.this.viewPages[1].dialogsAdapter.pause();
                    } else {
                        DialogsActivity dialogsActivity2 = DialogsActivity.this;
                        dialogsActivity2.additionalOffset = dialogsActivity2.viewPages[0].getTranslationX();
                    }
                } else if (this.startedTrackingX < DialogsActivity.this.viewPages[1].getMeasuredWidth() + DialogsActivity.this.viewPages[1].getTranslationX()) {
                    ViewPage viewPage2 = DialogsActivity.this.viewPages[0];
                    DialogsActivity.this.viewPages[0] = DialogsActivity.this.viewPages[1];
                    DialogsActivity.this.viewPages[1] = viewPage2;
                    DialogsActivity.this.animatingForward = true;
                    DialogsActivity dialogsActivity3 = DialogsActivity.this;
                    dialogsActivity3.additionalOffset = dialogsActivity3.viewPages[0].getTranslationX();
                    DialogsActivity.this.filterTabsView.selectTabWithId(DialogsActivity.this.viewPages[0].selectedType, 1.0f);
                    DialogsActivity.this.filterTabsView.selectTabWithId(DialogsActivity.this.viewPages[1].selectedType, (-DialogsActivity.this.additionalOffset) / DialogsActivity.this.viewPages[0].getMeasuredWidth());
                    DialogsActivity.this.switchToCurrentSelectedMode(true);
                    DialogsActivity.this.viewPages[0].dialogsAdapter.resume();
                    DialogsActivity.this.viewPages[1].dialogsAdapter.pause();
                } else {
                    DialogsActivity dialogsActivity4 = DialogsActivity.this;
                    dialogsActivity4.additionalOffset = dialogsActivity4.viewPages[0].getTranslationX();
                }
                DialogsActivity.this.tabsAnimation.removeAllListeners();
                DialogsActivity.this.tabsAnimation.cancel();
                DialogsActivity.this.tabsAnimationInProgress = false;
            } else if (motionEvent != null && motionEvent.getAction() == 0) {
                DialogsActivity.this.additionalOffset = BitmapDescriptorFactory.HUE_RED;
            }
            if (motionEvent != null && motionEvent.getAction() == 0 && !DialogsActivity.this.startedTracking && !DialogsActivity.this.maybeStartTracking && DialogsActivity.this.filterTabsView.getVisibility() == 0) {
                this.startedTrackingPointerId = motionEvent.getPointerId(0);
                DialogsActivity.this.maybeStartTracking = true;
                this.startedTrackingX = (int) motionEvent.getX();
                this.startedTrackingY = (int) motionEvent.getY();
                this.velocityTracker.clear();
            } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                int x = (int) ((motionEvent.getX() - this.startedTrackingX) + DialogsActivity.this.additionalOffset);
                int abs = Math.abs(((int) motionEvent.getY()) - this.startedTrackingY);
                if (DialogsActivity.this.startedTracking && ((DialogsActivity.this.animatingForward && x > 0) || (!DialogsActivity.this.animatingForward && x < 0))) {
                    if (!prepareForMoving(motionEvent, x < 0)) {
                        DialogsActivity.this.maybeStartTracking = true;
                        DialogsActivity.this.startedTracking = false;
                        DialogsActivity.this.viewPages[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        DialogsActivity.this.viewPages[1].setTranslationX(DialogsActivity.this.animatingForward ? DialogsActivity.this.viewPages[0].getMeasuredWidth() : -DialogsActivity.this.viewPages[0].getMeasuredWidth());
                        DialogsActivity.this.filterTabsView.selectTabWithId(DialogsActivity.this.viewPages[1].selectedType, BitmapDescriptorFactory.HUE_RED);
                    }
                }
                if (!DialogsActivity.this.maybeStartTracking || DialogsActivity.this.startedTracking) {
                    if (DialogsActivity.this.startedTracking) {
                        DialogsActivity.this.viewPages[0].setTranslationX(x);
                        if (DialogsActivity.this.animatingForward) {
                            DialogsActivity.this.viewPages[1].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth() + x);
                        } else {
                            DialogsActivity.this.viewPages[1].setTranslationX(x - DialogsActivity.this.viewPages[0].getMeasuredWidth());
                        }
                        float abs2 = Math.abs(x) / DialogsActivity.this.viewPages[0].getMeasuredWidth();
                        if (!DialogsActivity.this.viewPages[1].isLocked || abs2 <= 0.3f) {
                            DialogsActivity.this.filterTabsView.selectTabWithId(DialogsActivity.this.viewPages[1].selectedType, abs2);
                        } else {
                            dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                            DialogsActivity.this.filterTabsView.shakeLock(DialogsActivity.this.viewPages[1].selectedType);
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$ContentView$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogsActivity.ContentView.this.lambda$onTouchEvent$1();
                                }
                            }, 200L);
                            return false;
                        }
                    }
                } else {
                    float pixelsInCM = AndroidUtilities.getPixelsInCM(0.3f, true);
                    int x2 = (int) (motionEvent.getX() - this.startedTrackingX);
                    if (Math.abs(x2) >= pixelsInCM && Math.abs(x2) > abs) {
                        prepareForMoving(motionEvent, x < 0);
                    }
                }
            } else if (motionEvent == null || (motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6))) {
                this.velocityTracker.computeCurrentVelocity(1000, DialogsActivity.this.maximumVelocity);
                if (motionEvent == null || motionEvent.getAction() == 3) {
                    f = 0.0f;
                    f2 = 0.0f;
                } else {
                    f = this.velocityTracker.getXVelocity();
                    f2 = this.velocityTracker.getYVelocity();
                    if (!DialogsActivity.this.startedTracking && Math.abs(f) >= 3000.0f && Math.abs(f) > Math.abs(f2)) {
                        prepareForMoving(motionEvent, f < BitmapDescriptorFactory.HUE_RED);
                    }
                }
                if (DialogsActivity.this.startedTracking) {
                    float x3 = DialogsActivity.this.viewPages[0].getX();
                    DialogsActivity.this.tabsAnimation = new AnimatorSet();
                    if (DialogsActivity.this.viewPages[1].isLocked) {
                        DialogsActivity.this.backAnimation = true;
                    } else if (DialogsActivity.this.additionalOffset != BitmapDescriptorFactory.HUE_RED) {
                        if (Math.abs(f) <= 1500.0f) {
                            if (DialogsActivity.this.animatingForward) {
                                DialogsActivity dialogsActivity5 = DialogsActivity.this;
                                dialogsActivity5.backAnimation = dialogsActivity5.viewPages[1].getX() > ((float) (DialogsActivity.this.viewPages[0].getMeasuredWidth() >> 1));
                            } else {
                                DialogsActivity dialogsActivity6 = DialogsActivity.this;
                                dialogsActivity6.backAnimation = dialogsActivity6.viewPages[0].getX() < ((float) (DialogsActivity.this.viewPages[0].getMeasuredWidth() >> 1));
                            }
                        } else {
                            DialogsActivity dialogsActivity7 = DialogsActivity.this;
                            dialogsActivity7.backAnimation = !dialogsActivity7.animatingForward ? f >= BitmapDescriptorFactory.HUE_RED : f <= BitmapDescriptorFactory.HUE_RED;
                        }
                    } else {
                        DialogsActivity.this.backAnimation = Math.abs(x3) < ((float) DialogsActivity.this.viewPages[0].getMeasuredWidth()) / 3.0f && (Math.abs(f) < 3500.0f || Math.abs(f) < Math.abs(f2));
                    }
                    if (!DialogsActivity.this.backAnimation) {
                        measuredWidth = DialogsActivity.this.viewPages[0].getMeasuredWidth() - Math.abs(x3);
                        if (DialogsActivity.this.animatingForward) {
                            DialogsActivity.this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(DialogsActivity.this.viewPages[0], View.TRANSLATION_X, -DialogsActivity.this.viewPages[0].getMeasuredWidth()), ObjectAnimator.ofFloat(DialogsActivity.this.viewPages[1], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                        } else {
                            DialogsActivity.this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(DialogsActivity.this.viewPages[0], View.TRANSLATION_X, DialogsActivity.this.viewPages[0].getMeasuredWidth()), ObjectAnimator.ofFloat(DialogsActivity.this.viewPages[1], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                        }
                    } else {
                        measuredWidth = Math.abs(x3);
                        if (DialogsActivity.this.animatingForward) {
                            DialogsActivity.this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(DialogsActivity.this.viewPages[0], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(DialogsActivity.this.viewPages[1], View.TRANSLATION_X, DialogsActivity.this.viewPages[1].getMeasuredWidth()));
                        } else {
                            DialogsActivity.this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(DialogsActivity.this.viewPages[0], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(DialogsActivity.this.viewPages[1], View.TRANSLATION_X, -DialogsActivity.this.viewPages[1].getMeasuredWidth()));
                        }
                    }
                    DialogsActivity.this.tabsAnimation.setInterpolator(DialogsActivity.interpolator);
                    int measuredWidth3 = getMeasuredWidth();
                    float f3 = measuredWidth3 / 2;
                    float distanceInfluenceForSnapDuration = f3 + (AndroidUtilities.distanceInfluenceForSnapDuration(Math.min(1.0f, (measuredWidth * 1.0f) / measuredWidth3)) * f3);
                    float abs3 = Math.abs(f);
                    if (abs3 > BitmapDescriptorFactory.HUE_RED) {
                        measuredWidth2 = Math.round(Math.abs(distanceInfluenceForSnapDuration / abs3) * 1000.0f) * 4;
                    } else {
                        measuredWidth2 = (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f);
                    }
                    DialogsActivity.this.tabsAnimation.setDuration(Math.max((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION, Math.min(measuredWidth2, 600)));
                    DialogsActivity.this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.ContentView.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            DialogsActivity.this.tabsAnimation = null;
                            if (!DialogsActivity.this.backAnimation) {
                                ViewPage viewPage3 = DialogsActivity.this.viewPages[0];
                                DialogsActivity.this.viewPages[0] = DialogsActivity.this.viewPages[1];
                                DialogsActivity.this.viewPages[1] = viewPage3;
                                DialogsActivity.this.filterTabsView.selectTabWithId(DialogsActivity.this.viewPages[0].selectedType, 1.0f);
                                DialogsActivity.this.updateCounters(false);
                                DialogsActivity.this.viewPages[0].dialogsAdapter.resume();
                                DialogsActivity.this.viewPages[1].dialogsAdapter.pause();
                            }
                            DialogsActivity dialogsActivity8 = DialogsActivity.this;
                            dialogsActivity8.isFirstTab = dialogsActivity8.viewPages[0].selectedType == DialogsActivity.this.filterTabsView.getFirstTabId();
                            DialogsActivity.this.updateDrawerSwipeEnabled();
                            DialogsActivity.this.viewPages[1].setVisibility(8);
                            DialogsActivity.this.showScrollbars(true);
                            DialogsActivity.this.tabsAnimationInProgress = false;
                            DialogsActivity.this.maybeStartTracking = false;
                            ((BaseFragment) DialogsActivity.this).actionBar.setEnabled(true);
                            DialogsActivity.this.filterTabsView.setEnabled(true);
                            DialogsActivity dialogsActivity9 = DialogsActivity.this;
                            dialogsActivity9.checkListLoad(dialogsActivity9.viewPages[0]);
                        }
                    });
                    DialogsActivity.this.tabsAnimation.start();
                    DialogsActivity.this.tabsAnimationInProgress = true;
                    DialogsActivity.this.startedTracking = false;
                } else {
                    DialogsActivity dialogsActivity8 = DialogsActivity.this;
                    dialogsActivity8.isFirstTab = dialogsActivity8.viewPages[0].selectedType == DialogsActivity.this.filterTabsView.getFirstTabId();
                    DialogsActivity.this.updateDrawerSwipeEnabled();
                    DialogsActivity.this.maybeStartTracking = false;
                    ((BaseFragment) DialogsActivity.this).actionBar.setEnabled(true);
                    DialogsActivity.this.filterTabsView.setEnabled(true);
                }
                VelocityTracker velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.velocityTracker = null;
                }
            }
            return DialogsActivity.this.startedTracking;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$1() {
            DialogsActivity.this.showDialog(new LimitReachedBottomSheet(DialogsActivity.this, getContext(), 3, ((BaseFragment) DialogsActivity.this).currentAccount));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.SizeNotifierFrameLayout
        public void drawList(Canvas canvas, boolean z) {
            if (DialogsActivity.this.searchIsShowed) {
                if (DialogsActivity.this.searchViewPager == null || DialogsActivity.this.searchViewPager.getVisibility() != 0) {
                    return;
                }
                DialogsActivity.this.searchViewPager.drawForBlur(canvas);
                return;
            }
            for (int i = 0; i < DialogsActivity.this.viewPages.length; i++) {
                if (DialogsActivity.this.viewPages[i] != null && DialogsActivity.this.viewPages[i].getVisibility() == 0) {
                    for (int i2 = 0; i2 < DialogsActivity.this.viewPages[i].listView.getChildCount(); i2++) {
                        View childAt = DialogsActivity.this.viewPages[i].listView.getChildAt(i2);
                        if (childAt.getY() < DialogsActivity.this.viewPages[i].listView.blurTopPadding + AndroidUtilities.m54dp(100)) {
                            int save = canvas.save();
                            canvas.translate(DialogsActivity.this.viewPages[i].getX(), DialogsActivity.this.viewPages[i].getY() + DialogsActivity.this.viewPages[i].listView.getY() + childAt.getY());
                            if (childAt instanceof DialogCell) {
                                DialogCell dialogCell = (DialogCell) childAt;
                                if (!dialogCell.isFolderCell() || (!DialogsActivity.this.isArchive() ? !SharedConfig.archiveHidden : !DialogsActivity.this.getHiddenChatsController().isHiddenChatsHidden())) {
                                    dialogCell.drawingForBlur = true;
                                    dialogCell.draw(canvas);
                                    dialogCell.drawingForBlur = false;
                                }
                            } else {
                                childAt.draw(canvas);
                            }
                            canvas.restoreToCount(save);
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (DialogsActivity.this.statusDrawable != null) {
                DialogsActivity.this.statusDrawable.attach();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (DialogsActivity.this.statusDrawable != null) {
                DialogsActivity.this.statusDrawable.detach();
            }
        }
    }

    /* renamed from: org.telegram.ui.DialogsActivity$DialogsRecyclerView */
    /* loaded from: classes5.dex */
    public class DialogsRecyclerView extends BlurredRecyclerView {
        float animateFromSelectorPosition;
        boolean animateSwitchingSelector;
        private RecyclerListView animationSupportListView;
        LongSparseArray<View> animationSupportViewsByDialogId;
        private int appliedPaddingTop;
        private boolean firstLayout;
        private boolean ignoreLayout;
        float lastDrawSelectorY;
        private int lastListPadding;
        Paint paint;
        private final ViewPage parentPage;
        RectF rectF;
        private float rightFragmentOpenedProgress;
        private Paint selectorPaint;
        float selectorPositionProgress;
        public boolean updateDialogsOnNextDraw;

        @Override // org.telegram.p044ui.Components.RecyclerListView
        protected boolean updateEmptyViewAnimated() {
            return true;
        }

        public DialogsRecyclerView(Context context, ViewPage viewPage) {
            super(context);
            this.firstLayout = true;
            this.paint = new Paint();
            this.rectF = new RectF();
            this.selectorPositionProgress = 1.0f;
            this.parentPage = viewPage;
            this.additionalClipBottom = AndroidUtilities.m54dp(200);
        }

        public void prepareSelectorForAnimation() {
            this.selectorPositionProgress = BitmapDescriptorFactory.HUE_RED;
            this.animateFromSelectorPosition = this.lastDrawSelectorY;
            this.animateSwitchingSelector = this.rightFragmentOpenedProgress != BitmapDescriptorFactory.HUE_RED;
        }

        public void setViewsOffset(float f) {
            View findViewByPosition;
            DialogsActivity.viewOffset = f;
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).setTranslationY(f);
            }
            if (this.selectorPosition != -1 && (findViewByPosition = getLayoutManager().findViewByPosition(this.selectorPosition)) != null) {
                this.selectorRect.set(findViewByPosition.getLeft(), (int) (findViewByPosition.getTop() + f), findViewByPosition.getRight(), (int) (findViewByPosition.getBottom() + f));
                this.selectorDrawable.setBounds(this.selectorRect);
            }
            invalidate();
        }

        public float getViewOffset() {
            return DialogsActivity.viewOffset;
        }

        @Override // android.view.ViewGroup
        public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
            super.addView(view, i, layoutParams);
            view.setTranslationY(DialogsActivity.viewOffset);
            view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            view.setAlpha(1.0f);
        }

        @Override // android.view.ViewGroup, android.view.ViewManager
        public void removeView(View view) {
            super.removeView(view);
            view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            view.setAlpha(1.0f);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onDraw(Canvas canvas) {
            if (this.parentPage.pullForegroundDrawable != null && DialogsActivity.viewOffset != BitmapDescriptorFactory.HUE_RED) {
                int paddingTop = getPaddingTop();
                if (paddingTop != 0) {
                    canvas.save();
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, paddingTop);
                }
                this.parentPage.pullForegroundDrawable.drawOverScroll(canvas);
                if (paddingTop != 0) {
                    canvas.restore();
                }
            }
            super.onDraw(canvas);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:101:0x02cd  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0292  */
        @Override // org.telegram.p044ui.Components.BlurredRecyclerView, org.telegram.p044ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void dispatchDraw(android.graphics.Canvas r23) {
            /*
                Method dump skipped, instructions count: 1146
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.DialogsRecyclerView.dispatchDraw(android.graphics.Canvas):void");
        }

        private boolean drawMovingViewsOverlayed() {
            return getItemAnimator() != null && getItemAnimator().isRunning();
        }

        @Override // org.telegram.p044ui.Components.BlurredRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if (drawMovingViewsOverlayed() && (view instanceof DialogCell) && ((DialogCell) view).isMoving()) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView
        public void setAdapter(RecyclerView.Adapter adapter) {
            super.setAdapter(adapter);
            this.firstLayout = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.BlurredRecyclerView, org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onMeasure(int i, int i2) {
            int measuredHeight;
            RecyclerView.ViewHolder findViewHolderForAdapterPosition;
            if (DialogsActivity.this.onlySelect && DialogsActivity.this.initialDialogsType != 3 && !DialogsActivity.this.isManagement()) {
                measuredHeight = 0;
            } else if (DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0 || DialogsActivity.this.isFilterTabsAtBottom()) {
                measuredHeight = ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight();
            } else {
                measuredHeight = AndroidUtilities.m54dp(44);
            }
            int findFirstVisibleItemPosition = this.parentPage.layoutManager.findFirstVisibleItemPosition();
            if (findFirstVisibleItemPosition != -1 && this.parentPage.itemTouchhelper.isIdle() && (findViewHolderForAdapterPosition = this.parentPage.listView.findViewHolderForAdapterPosition(findFirstVisibleItemPosition)) != null) {
                int top = findViewHolderForAdapterPosition.itemView.getTop();
                if (this.parentPage.dialogsType == 0 && DialogsActivity.this.hasHiddenArchive() && this.parentPage.archivePullViewState == 2) {
                    findFirstVisibleItemPosition = Math.max(1, findFirstVisibleItemPosition);
                }
                this.ignoreLayout = true;
                this.parentPage.layoutManager.scrollToPositionWithOffset(findFirstVisibleItemPosition, (int) ((top - this.lastListPadding) + DialogsActivity.this.scrollAdditionalOffset));
                this.ignoreLayout = false;
            }
            if (!DialogsActivity.this.onlySelect || DialogsActivity.this.initialDialogsType == 3 || DialogsActivity.this.isManagement()) {
                this.ignoreLayout = true;
                if (DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0 || DialogsActivity.this.isFilterTabsAtBottom()) {
                    measuredHeight = (!((BaseFragment) DialogsActivity.this).inPreviewMode || Build.VERSION.SDK_INT < 21) ? 0 : AndroidUtilities.statusBarHeight;
                } else {
                    measuredHeight = C3356ActionBar.getCurrentActionBarHeight() + (((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0);
                }
                setTopGlowOffset(measuredHeight);
                setPadding(0, measuredHeight, 0, 0);
                this.parentPage.progressView.setPaddingTop(measuredHeight);
                this.ignoreLayout = false;
            }
            if (this.firstLayout && DialogsActivity.this.getMessagesController().dialogsLoaded) {
                if (this.parentPage.dialogsType == 0 && DialogsActivity.this.hasHiddenArchive()) {
                    this.ignoreLayout = true;
                    ((LinearLayoutManager) getLayoutManager()).scrollToPositionWithOffset(1, 0);
                    this.ignoreLayout = false;
                }
                this.firstLayout = false;
            }
            super.onMeasure(i, i2);
            if (DialogsActivity.this.onlySelect || this.appliedPaddingTop == measuredHeight || DialogsActivity.this.viewPages == null || DialogsActivity.this.viewPages.length <= 1 || DialogsActivity.this.startedTracking) {
                return;
            }
            if ((DialogsActivity.this.tabsAnimation != null && DialogsActivity.this.tabsAnimation.isRunning()) || DialogsActivity.this.tabsAnimationInProgress || DialogsActivity.this.filterTabsView == null) {
                return;
            }
            DialogsActivity.this.filterTabsView.isAnimatingIndicator();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            this.lastListPadding = getPaddingTop();
            DialogsActivity.this.scrollAdditionalOffset = BitmapDescriptorFactory.HUE_RED;
            if (!DialogsActivity.this.isArchive() || DialogsActivity.this.isFilterTabsAtBottom()) {
                return;
            }
            int childCount = getChildCount();
            int i5 = 0;
            for (int i6 = 0; i6 < childCount; i6++) {
                i5 = Math.max(getChildAt(i6).getBottom(), i5);
            }
            if (i5 == 0 || i5 >= getMeasuredHeight() - getPaddingBottom()) {
                return;
            }
            DialogsActivity.this.resetScroll();
        }

        @Override // org.telegram.p044ui.Components.BlurredRecyclerView, org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void toggleArchiveHidden(boolean z, DialogCell dialogCell) {
            if (DialogsActivity.this.isArchive()) {
                DialogsActivity.this.getHiddenChatsController().toggleHiddenChatsHidden();
            } else {
                SharedConfig.toggleArchiveHidden();
            }
            UndoView undoView = DialogsActivity.this.getUndoView();
            if (!DialogsActivity.this.isArchive() ? SharedConfig.archiveHidden : DialogsActivity.this.getHiddenChatsController().isHiddenChatsHidden()) {
                if (undoView != null) {
                    undoView.showWithAction(0L, 7, Boolean.valueOf(DialogsActivity.this.isArchive()), null, null);
                }
                updatePullState();
                if (!z || dialogCell == null) {
                    return;
                }
                dialogCell.resetPinnedArchiveState();
                dialogCell.invalidate();
                return;
            }
            if (dialogCell != null) {
                DialogsActivity.this.disableActionBarScrolling = true;
                DialogsActivity.this.waitingForScrollFinished = true;
                smoothScrollBy(0, dialogCell.getMeasuredHeight() + (dialogCell.getTop() - getPaddingTop()), CubicBezierInterpolator.EASE_OUT);
                if (z) {
                    DialogsActivity.this.updatePullAfterScroll = true;
                } else {
                    updatePullState();
                }
            }
            if (undoView != null) {
                undoView.showWithAction(0L, 6, Boolean.valueOf(DialogsActivity.this.isArchive()), null, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updatePullState() {
            this.parentPage.archivePullViewState = (!DialogsActivity.this.isArchive() ? SharedConfig.archiveHidden : DialogsActivity.this.getHiddenChatsController().isHiddenChatsHidden()) ? 0 : 2;
            if (this.parentPage.pullForegroundDrawable != null) {
                this.parentPage.pullForegroundDrawable.setWillDraw(this.parentPage.archivePullViewState != 0);
            }
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            LinearLayoutManager linearLayoutManager;
            int findFirstVisibleItemPosition;
            if (this.fastScrollAnimationRunning || DialogsActivity.this.waitingForScrollFinished || DialogsActivity.this.rightFragmentTransitionInProgress) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                setOverScrollMode(0);
            }
            if ((action == 1 || action == 3) && !this.parentPage.itemTouchhelper.isIdle() && this.parentPage.swipeController.swipingFolder) {
                this.parentPage.swipeController.swipeFolderBack = true;
                if (this.parentPage.itemTouchhelper.checkHorizontalSwipe(null, 4) != 0 && this.parentPage.swipeController.currentItemViewHolder != null) {
                    View view = this.parentPage.swipeController.currentItemViewHolder.itemView;
                    if (view instanceof DialogCell) {
                        DialogCell dialogCell = (DialogCell) view;
                        long dialogId = dialogCell.getDialogId();
                        if (DialogObject.isFolderDialogId(dialogId)) {
                            toggleArchiveHidden(false, dialogCell);
                        } else {
                            TLRPC$Dialog tLRPC$Dialog = DialogsActivity.this.getMessagesController().dialogs_dict.get(dialogId);
                            if (tLRPC$Dialog != null) {
                                if (SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 1) {
                                    if (SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 3) {
                                        if (SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 0) {
                                            if (SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) == 4) {
                                                ArrayList arrayList = new ArrayList();
                                                arrayList.add(Long.valueOf(dialogId));
                                                DialogsActivity.this.performSelectedDialogsAction(arrayList, 102, true, false);
                                            }
                                        } else {
                                            ArrayList arrayList2 = new ArrayList();
                                            arrayList2.add(Long.valueOf(dialogId));
                                            DialogsActivity.this.canPinCount = !DialogsActivity.this.isDialogPinned(tLRPC$Dialog) ? 1 : 0;
                                            DialogsActivity.this.performSelectedDialogsAction(arrayList2, 100, true, false);
                                        }
                                    } else if (!DialogsActivity.this.getMessagesController().isDialogMuted(dialogId, 0)) {
                                        NotificationsController.getInstance(UserConfig.selectedAccount).setDialogNotificationsSettings(dialogId, 0, 3);
                                        if (BulletinFactory.canShowBulletin(DialogsActivity.this)) {
                                            BulletinFactory.createMuteBulletin(DialogsActivity.this, 3).show();
                                        }
                                    } else {
                                        ArrayList arrayList3 = new ArrayList();
                                        arrayList3.add(Long.valueOf(dialogId));
                                        DialogsActivity dialogsActivity = DialogsActivity.this;
                                        dialogsActivity.canMuteCount = !MessagesController.getInstance(((BaseFragment) dialogsActivity).currentAccount).isDialogMuted(dialogId, 0);
                                        DialogsActivity dialogsActivity2 = DialogsActivity.this;
                                        dialogsActivity2.canUnmuteCount = dialogsActivity2.canMuteCount > 0 ? 0 : 1;
                                        DialogsActivity.this.performSelectedDialogsAction(arrayList3, 104, true, false);
                                    }
                                } else {
                                    ArrayList arrayList4 = new ArrayList();
                                    arrayList4.add(Long.valueOf(dialogId));
                                    DialogsActivity.this.canReadCount = (tLRPC$Dialog.unread_count > 0 || tLRPC$Dialog.unread_mark) ? 1 : 0;
                                    DialogsActivity.this.performSelectedDialogsAction(arrayList4, 101, true, false);
                                }
                            }
                        }
                    }
                }
            }
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (this.parentPage.dialogsType == 0 && ((action == 1 || action == 3) && this.parentPage.archivePullViewState == 2 && DialogsActivity.this.hasHiddenArchive() && (findFirstVisibleItemPosition = (linearLayoutManager = (LinearLayoutManager) getLayoutManager()).findFirstVisibleItemPosition()) == 0)) {
                int paddingTop = getPaddingTop();
                View findViewByPosition = linearLayoutManager.findViewByPosition(findFirstVisibleItemPosition);
                int m54dp = (int) (AndroidUtilities.m54dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72) * 0.85f);
                int top = (findViewByPosition.getTop() - paddingTop) + findViewByPosition.getMeasuredHeight();
                if (findViewByPosition instanceof DialogCell) {
                    long currentTimeMillis = System.currentTimeMillis() - DialogsActivity.this.startArchivePullingTime;
                    if (top < m54dp || currentTimeMillis < 200) {
                        DialogsActivity.this.disableActionBarScrolling = true;
                        smoothScrollBy(0, top, CubicBezierInterpolator.EASE_OUT_QUINT);
                        this.parentPage.archivePullViewState = 2;
                    } else if (this.parentPage.archivePullViewState != 1) {
                        if (getViewOffset() == BitmapDescriptorFactory.HUE_RED) {
                            DialogsActivity.this.disableActionBarScrolling = true;
                            smoothScrollBy(0, findViewByPosition.getTop() - paddingTop, CubicBezierInterpolator.EASE_OUT_QUINT);
                        }
                        if (!DialogsActivity.this.canShowHiddenArchive) {
                            DialogsActivity.this.canShowHiddenArchive = true;
                            performHapticFeedback(3, 2);
                            if (this.parentPage.pullForegroundDrawable != null) {
                                this.parentPage.pullForegroundDrawable.colorize(true);
                            }
                        }
                        ((DialogCell) findViewByPosition).startOutAnimation();
                        this.parentPage.archivePullViewState = 1;
                        if (AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
                            AndroidUtilities.makeAccessibilityAnnouncement(LocaleController.getString(C3290R.string.AccDescrArchivedChatsShown));
                        }
                    }
                    if (getViewOffset() != BitmapDescriptorFactory.HUE_RED) {
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(getViewOffset(), BitmapDescriptorFactory.HUE_RED);
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$DialogsRecyclerView$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                DialogsActivity.DialogsRecyclerView.this.lambda$onTouchEvent$0(valueAnimator);
                            }
                        });
                        ofFloat.setDuration(Math.max(100L, 350.0f - ((getViewOffset() / PullForegroundDrawable.getMaxOverscroll()) * 120.0f)));
                        ofFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                        setScrollEnabled(false);
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.DialogsRecyclerView.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                super.onAnimationEnd(animator);
                                DialogsRecyclerView.this.setScrollEnabled(true);
                            }
                        });
                        ofFloat.start();
                    }
                }
            }
            return onTouchEvent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$0(ValueAnimator valueAnimator) {
            setViewsOffset(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (this.fastScrollAnimationRunning || DialogsActivity.this.waitingForScrollFinished || this.parentPage.dialogsItemAnimator.isRunning()) {
                return false;
            }
            if (motionEvent.getAction() == 0) {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.allowSwipeDuringCurrentTouch = !((BaseFragment) dialogsActivity).actionBar.isActionModeShowed();
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.RecyclerListView
        public boolean allowSelectChildAtPosition(View view) {
            return !(view instanceof HeaderCell) || view.isClickable();
        }

        public void setOpenRightFragmentProgress(float f) {
            this.rightFragmentOpenedProgress = f;
            invalidate();
        }

        public void setAnimationSupportView(RecyclerListView recyclerListView, float f, boolean z) {
            RecyclerListView recyclerListView2 = recyclerListView == null ? this.animationSupportListView : this;
            if (recyclerListView2 == null) {
                this.animationSupportListView = recyclerListView;
                return;
            }
            int i = Integer.MAX_VALUE;
            boolean z2 = false;
            DialogCell dialogCell = null;
            DialogCell dialogCell2 = null;
            for (int i2 = 0; i2 < recyclerListView2.getChildCount(); i2++) {
                View childAt = recyclerListView2.getChildAt(i2);
                if (childAt instanceof DialogCell) {
                    DialogCell dialogCell3 = (DialogCell) childAt;
                    if (dialogCell3.getDialogId() == DialogsActivity.this.rightSlidingDialogContainer.getCurrentFragmetDialogId()) {
                        dialogCell = dialogCell3;
                    }
                    if (childAt.getTop() >= getPaddingTop() && dialogCell3.getDialogId() != 0 && childAt.getTop() < i) {
                        DialogCell dialogCell4 = (DialogCell) childAt;
                        i = dialogCell4.getTop();
                        dialogCell2 = dialogCell4;
                    }
                }
            }
            if (dialogCell == null || getAdapter().getItemCount() * AndroidUtilities.m54dp(70) <= getMeasuredHeight() || dialogCell2.getTop() - getPaddingTop() <= (getMeasuredHeight() - getPaddingTop()) / 2.0f) {
                dialogCell = dialogCell2;
            }
            this.animationSupportListView = recyclerListView;
            if (dialogCell != null) {
                if (recyclerListView != null) {
                    recyclerListView.setPadding(getPaddingLeft(), this.topPadding, getPaddingLeft(), getPaddingBottom());
                    DialogsAdapter dialogsAdapter = (DialogsAdapter) recyclerListView.getAdapter();
                    int findDialogPosition = dialogsAdapter.findDialogPosition(dialogCell.getDialogId());
                    int top = (int) ((dialogCell.getTop() - recyclerListView2.getPaddingTop()) + f);
                    if (findDialogPosition >= 0) {
                        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerListView.getLayoutManager();
                        if (this.parentPage.dialogsType == 0 && this.parentPage.archivePullViewState == 2 && DialogsActivity.this.hasHiddenArchive()) {
                            z2 = true;
                        }
                        linearLayoutManager.scrollToPositionWithOffset(findDialogPosition, dialogsAdapter.fixScrollGap(this, findDialogPosition, top, z2, z));
                    }
                }
                int findDialogPosition2 = ((DialogsAdapter) getAdapter()).findDialogPosition(dialogCell.getDialogId());
                int top2 = dialogCell.getTop() - getPaddingTop();
                if (findDialogPosition2 >= 0) {
                    ((LinearLayoutManager) getLayoutManager()).scrollToPositionWithOffset(findDialogPosition2, top2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.DialogsActivity$SwipeController */
    /* loaded from: classes5.dex */
    public class SwipeController extends ItemTouchHelper.Callback {
        private RecyclerView.ViewHolder currentItemViewHolder;
        private ViewPage parentPage;
        private boolean swipeFolderBack;
        private boolean swipingFolder;

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public float getSwipeEscapeVelocity(float f) {
            return 3500.0f;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public float getSwipeThreshold(RecyclerView.ViewHolder viewHolder) {
            return 0.45f;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public float getSwipeVelocityThreshold(float f) {
            return Float.MAX_VALUE;
        }

        public SwipeController(ViewPage viewPage) {
            this.parentPage = viewPage;
        }

        /* JADX WARN: Code restructure failed: missing block: B:124:0x0256, code lost:
            if (org.telegram.messenger.DialogObject.isFolderDialogId(r12.getDialogId()) == false) goto L117;
         */
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int getMovementFlags(androidx.recyclerview.widget.RecyclerView r12, androidx.recyclerview.widget.RecyclerView.ViewHolder r13) {
            /*
                Method dump skipped, instructions count: 614
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.SwipeController.getMovementFlags(androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$ViewHolder):int");
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            long dialogId;
            TLRPC$Dialog tLRPC$Dialog;
            View view = viewHolder2.itemView;
            if ((view instanceof DialogCell) && (tLRPC$Dialog = DialogsActivity.this.getMessagesController().dialogs_dict.get((dialogId = ((DialogCell) view).getDialogId()))) != null && DialogsActivity.this.isDialogPinned(tLRPC$Dialog) && !DialogObject.isFolderDialogId(dialogId)) {
                int adapterPosition = viewHolder.getAdapterPosition();
                int adapterPosition2 = viewHolder2.getAdapterPosition();
                if (this.parentPage.listView.getItemAnimator() == null) {
                    this.parentPage.listView.setItemAnimator(this.parentPage.dialogsItemAnimator);
                }
                this.parentPage.dialogsAdapter.moveDialogs(this.parentPage.listView, adapterPosition, adapterPosition2);
                if (DialogsActivity.this.viewPages[0].dialogsType != 7 && DialogsActivity.this.viewPages[0].dialogsType != 8) {
                    DialogsActivity.this.movingWas = true;
                } else {
                    MessagesController.DialogFilter dialogFilter = DialogsActivity.this.getMessagesController().selectedDialogFilter[DialogsActivity.this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
                    if (!DialogsActivity.this.movingDialogFilters.contains(dialogFilter)) {
                        DialogsActivity.this.movingDialogFilters.add(dialogFilter);
                    }
                }
                return true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int convertToAbsoluteDirection(int i, int i2) {
            if (this.swipeFolderBack) {
                return 0;
            }
            return super.convertToAbsoluteDirection(i, i2);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder == null) {
                DialogsActivity.this.slidingView = null;
                return;
            }
            DialogCell dialogCell = (DialogCell) viewHolder.itemView;
            long dialogId = dialogCell.getDialogId();
            if (DialogObject.isFolderDialogId(dialogId)) {
                this.parentPage.listView.toggleArchiveHidden(false, dialogCell);
                return;
            }
            final TLRPC$Dialog tLRPC$Dialog = DialogsActivity.this.getMessagesController().dialogs_dict.get(dialogId);
            if (tLRPC$Dialog == null) {
                return;
            }
            if (DialogsActivity.this.getMessagesController().isPromoDialog(dialogId, false) || DialogsActivity.this.folderId != 0 || SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 1) {
                DialogsActivity.this.slidingView = dialogCell;
                final int adapterPosition = viewHolder.getAdapterPosition();
                final int itemCount = this.parentPage.dialogsAdapter.getItemCount();
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$SwipeController$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.SwipeController.this.lambda$onSwiped$3(tLRPC$Dialog, itemCount, adapterPosition);
                    }
                };
                DialogsActivity.this.setDialogsListFrozen(true);
                if (Utilities.random.nextInt(1000) == 1) {
                    if (DialogsActivity.this.pacmanAnimation == null) {
                        DialogsActivity.this.pacmanAnimation = new PacmanAnimation(this.parentPage.listView);
                    }
                    DialogsActivity.this.pacmanAnimation.setFinishRunnable(runnable);
                    DialogsActivity.this.pacmanAnimation.start();
                    return;
                }
                runnable.run();
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(Long.valueOf(dialogId));
            DialogsActivity.this.canReadCount = (tLRPC$Dialog.unread_count > 0 || tLRPC$Dialog.unread_mark) ? 1 : 0;
            DialogsActivity.this.performSelectedDialogsAction(arrayList, 101, true, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSwiped$3(final TLRPC$Dialog tLRPC$Dialog, int i, int i2) {
            if (DialogsActivity.this.frozenDialogsList == null) {
                return;
            }
            DialogsActivity.this.frozenDialogsList.remove(tLRPC$Dialog);
            final int i3 = tLRPC$Dialog.pinnedNum;
            DialogsActivity.this.slidingView = null;
            this.parentPage.listView.invalidate();
            int findLastVisibleItemPosition = this.parentPage.layoutManager.findLastVisibleItemPosition();
            if (findLastVisibleItemPosition == i - 1) {
                this.parentPage.layoutManager.findViewByPosition(findLastVisibleItemPosition).requestLayout();
            }
            boolean z = false;
            if (!DialogsActivity.this.getMessagesController().isPromoDialog(tLRPC$Dialog.f1439id, false)) {
                if (!DialogsActivity.this.isHiddenChats()) {
                    int addDialogToFolder = DialogsActivity.this.getMessagesController().addDialogToFolder(tLRPC$Dialog.f1439id, DialogsActivity.this.folderId == 0 ? 1 : 0, -1, 0L);
                    int i4 = 2;
                    if (addDialogToFolder != 2 || i2 != 0) {
                        this.parentPage.dialogsItemAnimator.prepareForRemove();
                        this.parentPage.updateList(true);
                    }
                    if (DialogsActivity.this.folderId == 0 || DialogsActivity.this.isArchive()) {
                        if (addDialogToFolder == 2) {
                            this.parentPage.dialogsItemAnimator.prepareForRemove();
                            if (i2 == 0) {
                                DialogsActivity.this.setDialogsListFrozen(true);
                                this.parentPage.updateList(true);
                                DialogsActivity.this.checkAnimationFinished();
                            } else {
                                this.parentPage.updateList(true);
                                if (!DialogsActivity.this.isArchive() ? !SharedConfig.archiveHidden : !DialogsActivity.this.getHiddenChatsController().isHiddenChatsHidden()) {
                                    if (this.parentPage.layoutManager.findFirstVisibleItemPosition() == 0) {
                                        DialogsActivity.this.disableActionBarScrolling = true;
                                        this.parentPage.listView.smoothScrollBy(0, -AndroidUtilities.m54dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72));
                                    }
                                }
                            }
                            DialogsActivity dialogsActivity = DialogsActivity.this;
                            ArrayList<TLRPC$Dialog> dialogsArray = dialogsActivity.getDialogsArray(((BaseFragment) dialogsActivity).currentAccount, this.parentPage.dialogsType, DialogsActivity.this.folderId, false);
                            if (!dialogsArray.isEmpty()) {
                                DialogsActivity.this.frozenDialogsList.add(0, dialogsArray.get(0));
                            }
                        } else if (addDialogToFolder == 1) {
                            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.parentPage.listView.findViewHolderForAdapterPosition(0);
                            if (findViewHolderForAdapterPosition != null) {
                                View view = findViewHolderForAdapterPosition.itemView;
                                if (view instanceof DialogCell) {
                                    DialogCell dialogCell = (DialogCell) view;
                                    dialogCell.checkCurrentDialogIndex(true);
                                    dialogCell.animateArchiveAvatar();
                                }
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$SwipeController$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogsActivity.SwipeController.this.lambda$onSwiped$1();
                                }
                            }, 300L);
                        }
                        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                        if (DialogsActivity.this.isArchive() || globalMainSettings.getBoolean("archivehint_l", false) || SharedConfig.archiveHidden) {
                            z = true;
                        }
                        if (!z) {
                            globalMainSettings.edit().putBoolean("archivehint_l", true).commit();
                        }
                        UndoView undoView = DialogsActivity.this.getUndoView();
                        if (undoView != null) {
                            long j = tLRPC$Dialog.f1439id;
                            if (DialogsActivity.this.isArchive()) {
                                i4 = 23;
                            } else if (!z) {
                                i4 = 3;
                            }
                            undoView.showWithAction(j, i4, null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$SwipeController$$ExternalSyntheticLambda3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogsActivity.SwipeController.this.lambda$onSwiped$2(tLRPC$Dialog, i3);
                                }
                            });
                        }
                    }
                    if (DialogsActivity.this.folderId == 0 || DialogsActivity.this.frozenDialogsList == null || !DialogsActivity.this.frozenDialogsList.isEmpty()) {
                        return;
                    }
                    this.parentPage.listView.setEmptyView(null);
                    this.parentPage.progressView.setVisibility(4);
                    return;
                }
                final List<Long> singletonList = Collections.singletonList(Long.valueOf(tLRPC$Dialog.f1439id));
                if (DialogsActivity.this.getHiddenChatsController().hideChats(singletonList, false)) {
                    return;
                }
                if (DialogsActivity.this.getUndoView() != null) {
                    DialogsActivity.this.getUndoView().showWithAction(0L, 23, Boolean.TRUE, null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$SwipeController$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.SwipeController.this.lambda$onSwiped$0(singletonList);
                        }
                    });
                }
                this.parentPage.updateList(true);
                return;
            }
            DialogsActivity.this.getMessagesController().hidePromoDialog();
            this.parentPage.dialogsItemAnimator.prepareForRemove();
            this.parentPage.updateList(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSwiped$0(List list) {
            DialogsActivity.this.getHiddenChatsController().hideChats(list, true);
            DialogsActivity.this.setDialogsListFrozen(true);
            this.parentPage.dialogsItemAnimator.prepareForRemove();
            this.parentPage.updateList(true);
            DialogsActivity.this.checkAnimationFinished();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSwiped$1() {
            DialogsActivity.this.setDialogsListFrozen(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSwiped$2(TLRPC$Dialog tLRPC$Dialog, int i) {
            DialogsActivity.this.dialogsListFrozen = true;
            DialogsActivity.this.getMessagesController().addDialogToFolder(tLRPC$Dialog.f1439id, DialogsActivity.this.isArchive() ? 1 : 0, i, 0L);
            DialogsActivity.this.dialogsListFrozen = false;
            ArrayList<TLRPC$Dialog> dialogs = DialogsActivity.this.getMessagesController().getDialogs(DialogsActivity.this.folderId);
            int indexOf = dialogs.indexOf(tLRPC$Dialog);
            if (indexOf >= 0) {
                ArrayList<TLRPC$Dialog> dialogs2 = DialogsActivity.this.getMessagesController().getDialogs(DialogsActivity.this.folderId);
                if (!dialogs2.isEmpty() || indexOf != 1) {
                    DialogsActivity.this.setDialogsListFrozen(true);
                    this.parentPage.dialogsItemAnimator.prepareForRemove();
                    this.parentPage.updateList(true);
                    DialogsActivity.this.checkAnimationFinished();
                }
                if (dialogs2.isEmpty()) {
                    dialogs.remove(0);
                    if (indexOf == 1) {
                        DialogsActivity.this.setDialogsListFrozen(true);
                        this.parentPage.updateList(true);
                        DialogsActivity.this.checkAnimationFinished();
                        return;
                    }
                    DialogsActivity.this.frozenDialogsList.remove(0);
                    this.parentPage.dialogsItemAnimator.prepareForRemove();
                    this.parentPage.updateList(true);
                    return;
                }
                return;
            }
            this.parentPage.updateList(false);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder != null) {
                this.parentPage.listView.hideSelector(false);
            }
            this.currentItemViewHolder = viewHolder;
            if (viewHolder != null) {
                View view = viewHolder.itemView;
                if (view instanceof DialogCell) {
                    ((DialogCell) view).swipeCanceled = false;
                }
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public long getAnimationDuration(RecyclerView recyclerView, int i, float f, float f2) {
            if (i == 4) {
                return 200L;
            }
            if (i == 8 && DialogsActivity.this.movingView != null) {
                final DialogCell dialogCell = DialogsActivity.this.movingView;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$SwipeController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dialogCell.setBackgroundDrawable(null);
                    }
                }, this.parentPage.dialogsItemAnimator.getMoveDuration());
                DialogsActivity.this.movingView = null;
            }
            return super.getAnimationDuration(recyclerView, i, f, f2);
        }
    }

    public DialogsActivity(Bundle bundle) {
        super(bundle);
        this.walletFlowCoordinator = KoinJavaComponent.inject(WalletFlowCoordinator.class);
        this.forwardSpans = new ArrayList<>();
        this.forwardSpansByDialogIds = new LongSparseArray<>();
        this.selectedFilterIdToRestore = -1;
        this.initialSearchType = -1;
        this.isFirstTab = true;
        this.allowGlobalSearch = true;
        this.contactsAlpha = 1.0f;
        this.undoView = new UndoView[2];
        this.movingDialogFilters = new ArrayList<>();
        this.actionBarDefaultPaint = new Paint();
        this.actionModeViews = new ArrayList<>();
        this.rect = new RectF();
        this.paint = new Paint(1);
        this.textPaint = new TextPaint(1);
        this.askAboutContacts = true;
        this.floatingInterpolator = new AccelerateDecelerateInterpolator();
        this.checkPermission = true;
        this.resetDelegate = true;
        this.openedDialogId = new MessagesStorage.TopicKey();
        this.selectedDialogs = new ArrayList<>();
        this.notify = true;
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.debugLastUpdateAction = -1;
        this.SCROLL_Y = new AnimationProperties.FloatProperty<DialogsActivity>("animationValue") { // from class: org.telegram.ui.DialogsActivity.7
            @Override // org.telegram.p044ui.Components.AnimationProperties.FloatProperty
            public void setValue(DialogsActivity dialogsActivity, float f) {
                dialogsActivity.setScrollY(f);
            }

            @Override // android.util.Property
            public Float get(DialogsActivity dialogsActivity) {
                return Float.valueOf(((BaseFragment) DialogsActivity.this).actionBar.getTranslationY());
            }
        };
        this.scrollBarVisible = true;
        this.isNextButton = false;
        this.slideFragmentProgress = 1.0f;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        Bundle bundle = this.arguments;
        if (bundle != null) {
            this.sharePhotoVideo = bundle.getBoolean("sharePhotoVideo", false);
            this.needForceHideForwardAuthor = this.arguments.getBoolean("force_hide_forward_author", false);
            this.onlySelect = this.arguments.getBoolean("onlySelect", false);
            this.canSelectTopics = this.arguments.getBoolean("canSelectTopics", false);
            this.cantSendToChannels = this.arguments.getBoolean("cantSendToChannels", false);
            this.initialDialogsType = this.arguments.getInt("dialogsType", 0);
            this.selectAlertString = this.arguments.getString("selectAlertString");
            this.selectAlertStringGroup = this.arguments.getString("selectAlertStringGroup");
            this.addToGroupAlertString = this.arguments.getString("addToGroupAlertString");
            this.allowSwitchAccount = this.arguments.getBoolean("allowSwitchAccount");
            this.checkCanWrite = this.arguments.getBoolean("checkCanWrite", true);
            this.afterSignup = this.arguments.getBoolean("afterSignup", false);
            this.folderId = this.arguments.getInt("folderId", 0);
            this.resetDelegate = this.arguments.getBoolean("resetDelegate", true);
            this.messagesCount = this.arguments.getInt("messagesCount", 0);
            this.hasPoll = this.arguments.getInt("hasPoll", 0);
            this.hasInvoice = this.arguments.getBoolean("hasInvoice", false);
            this.showSetPasswordConfirm = this.arguments.getBoolean("showSetPasswordConfirm", this.showSetPasswordConfirm);
            this.arguments.getInt("otherwiseRelogin");
            this.allowGroups = this.arguments.getBoolean("allowGroups", true);
            this.allowMegagroups = this.arguments.getBoolean("allowMegagroups", true);
            this.allowLegacyGroups = this.arguments.getBoolean("allowLegacyGroups", true);
            this.allowChannels = this.arguments.getBoolean("allowChannels", true);
            this.allowUsers = this.arguments.getBoolean("allowUsers", true);
            this.allowBots = this.arguments.getBoolean("allowBots", true);
            this.closeFragment = this.arguments.getBoolean("closeFragment", true);
            this.allowGlobalSearch = this.arguments.getBoolean("allowGlobalSearch", true);
            byte[] byteArray = this.arguments.getByteArray("requestPeerType");
            if (byteArray != null) {
                try {
                    SerializedData serializedData = new SerializedData(byteArray);
                    this.requestPeerType = TLRPC$RequestPeerType.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                    serializedData.cleanup();
                } catch (Exception unused) {
                }
            }
            this.requestPeerBotId = this.arguments.getLong("requestPeerBotId", 0L);
        }
        if (isManagement()) {
            getMessagesController().loadManagementBookmarks();
        }
        if (isHiddenChats()) {
            getMessagesController().sortDialogs(null);
        }
        checkAndRunNeurobots();
        if (this.initialDialogsType == 0) {
            this.askAboutContacts = MessagesController.getGlobalNotificationsSettings().getBoolean("askAboutContacts", true);
            SharedConfig.loadProxyList();
        }
        if (this.searchString == null) {
            this.currentConnectionState = getConnectionsManager().getConnectionState();
            getNotificationCenter().addObservers(this, observers);
            if (isMainNoFolderDialogList()) {
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.notificationsCountUpdated);
            }
            getNotificationCenter().addObserver(this, NotificationCenter.dialogsNeedReload);
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
            if (!this.onlySelect) {
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.closeSearchByActiveAction);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxySettingsChanged);
                getNotificationCenter().addObserver(this, NotificationCenter.filterSettingsUpdated);
                getNotificationCenter().addObserver(this, NotificationCenter.dialogFiltersUpdated);
                getNotificationCenter().addObserver(this, NotificationCenter.dialogsUnreadCounterChanged);
            }
            if (isForward()) {
                getNotificationCenter().addObserver(this, NotificationCenter.dialogFiltersUpdated);
            }
            getNotificationCenter().addObserver(this, NotificationCenter.updateInterfaces);
            getNotificationCenter().addObserver(this, NotificationCenter.encryptedChatUpdated);
            getNotificationCenter().addObserver(this, NotificationCenter.contactsDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.appDidLogout);
            getNotificationCenter().addObserver(this, NotificationCenter.openedChatChanged);
            getNotificationCenter().addObserver(this, NotificationCenter.notificationsSettingsUpdated);
            getNotificationCenter().addObserver(this, NotificationCenter.messageReceivedByAck);
            getNotificationCenter().addObserver(this, NotificationCenter.messageReceivedByServer);
            getNotificationCenter().addObserver(this, NotificationCenter.messageSendError);
            getNotificationCenter().addObserver(this, NotificationCenter.needReloadRecentDialogsSearch);
            getNotificationCenter().addObserver(this, NotificationCenter.replyMessagesDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.reloadHints);
            getNotificationCenter().addObserver(this, NotificationCenter.didUpdateConnectionState);
            getNotificationCenter().addObserver(this, NotificationCenter.onDownloadingFilesChanged);
            getNotificationCenter().addObserver(this, NotificationCenter.needDeleteDialog);
            getNotificationCenter().addObserver(this, NotificationCenter.folderBecomeEmpty);
            getNotificationCenter().addObserver(this, NotificationCenter.newSuggestionsAvailable);
            getNotificationCenter().addObserver(this, NotificationCenter.fileLoaded);
            getNotificationCenter().addObserver(this, NotificationCenter.fileLoadFailed);
            getNotificationCenter().addObserver(this, NotificationCenter.fileLoadProgressChanged);
            getNotificationCenter().addObserver(this, NotificationCenter.dialogsUnreadReactionsCounterChanged);
            getNotificationCenter().addObserver(this, NotificationCenter.forceImportContactsStart);
            getNotificationCenter().addObserver(this, NotificationCenter.userEmojiStatusUpdated);
            getNotificationCenter().addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didSetPasscode);
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.appUpdateAvailable);
        }
        getNotificationCenter().addObserver(this, NotificationCenter.messagesDeleted);
        getNotificationCenter().addObserver(this, NotificationCenter.onDatabaseMigration);
        getNotificationCenter().addObserver(this, NotificationCenter.onDatabaseOpened);
        getNotificationCenter().addObserver(this, NotificationCenter.didClearDatabase);
        getNotificationCenter().addObserver(this, NotificationCenter.onDatabaseReset);
        if (this.initialDialogsType == 0) {
            getNotificationCenter().addObserver(this, NotificationCenter.chatlistFolderUpdate);
            getNotificationCenter().addObserver(this, NotificationCenter.dialogTranslate);
        }
        loadDialogs(getAccountInstance());
        getMessagesController().loadPinnedDialogs(this.folderId, 0L, null);
        if (this.databaseMigrationHint != null && !getMessagesStorage().isDatabaseMigrationInProgress()) {
            View view = this.databaseMigrationHint;
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.databaseMigrationHint = null;
        }
        return true;
    }

    public static void loadDialogs(final AccountInstance accountInstance) {
        int currentAccount = accountInstance.getCurrentAccount();
        if (dialogsLoaded[currentAccount]) {
            return;
        }
        MessagesController messagesController = accountInstance.getMessagesController();
        messagesController.loadGlobalNotificationsSettings();
        messagesController.loadDialogs(0, 0, 100, true);
        messagesController.loadHintDialogs();
        messagesController.loadUserInfo(accountInstance.getUserConfig().getCurrentUser(), false, 0);
        accountInstance.getContactsController().checkInviteText();
        accountInstance.getMediaDataController().chekAllMedia(false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.lambda$loadDialogs$25(AccountInstance.this);
            }
        }, 200L);
        Iterator<String> it = messagesController.diceEmojies.iterator();
        while (it.hasNext()) {
            accountInstance.getMediaDataController().loadStickersByEmojiOrName(it.next(), true, true);
        }
        dialogsLoaded[currentAccount] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadDialogs$25(AccountInstance accountInstance) {
        accountInstance.getDownloadController().loadDownloadingFiles();
    }

    public void updateStatus(TLRPC$User tLRPC$User, boolean z) {
        if (this.statusDrawable == null || this.actionBar == null) {
            return;
        }
        boolean isShowPremiumBadgeEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumBadgeEnabled();
        boolean isShowPremiumStatusEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumStatusEnabled();
        Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(tLRPC$User);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = null;
        if (isShowPremiumStatusEnabled && emojiStatusDocumentId != null) {
            this.statusDrawable.set(emojiStatusDocumentId.longValue(), z);
            this.actionBar.setRightDrawableOnClick(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda33
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateStatus$26(view);
                }
            });
            SelectAnimatedEmojiDialog.preload(this.currentAccount);
        } else if ((isShowPremiumBadgeEnabled || isShowPremiumStatusEnabled) && tLRPC$User != null && MessagesController.getInstance(this.currentAccount).isPremiumUser(tLRPC$User)) {
            if (this.premiumStar == null) {
                this.premiumStar = getContext().getResources().getDrawable(C3290R.C3292drawable.msg_premium_liststar).mutate();
                this.premiumStar = new AnimatedEmojiDrawable.WrapSizeDrawable(this, this.premiumStar, AndroidUtilities.m54dp(18), AndroidUtilities.m54dp(18)) { // from class: org.telegram.ui.DialogsActivity.8
                    @Override // org.telegram.p044ui.Components.AnimatedEmojiDrawable.WrapSizeDrawable, android.graphics.drawable.Drawable
                    public void draw(Canvas canvas) {
                        canvas.save();
                        canvas.translate(AndroidUtilities.m54dp(-2), AndroidUtilities.m54dp(1));
                        super.draw(canvas);
                        canvas.restore();
                    }
                };
            }
            this.premiumStar.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_profile_verifiedBackground), PorterDuff.Mode.MULTIPLY));
            this.statusDrawable.set(this.premiumStar, z);
            this.actionBar.setRightDrawableOnClick(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda32
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateStatus$27(view);
                }
            });
            SelectAnimatedEmojiDialog.preload(this.currentAccount);
        } else {
            this.statusDrawable.set((Drawable) null, z);
            this.actionBar.setRightDrawableOnClick(null);
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.statusDrawable;
        int i = Theme.key_profile_verifiedBackground;
        swapAnimatedEmojiDrawable2.setColor(Integer.valueOf(Theme.getColor(i)));
        DrawerProfileCell.AnimatedStatusView animatedStatusView = this.animatedStatusView;
        if (animatedStatusView != null) {
            animatedStatusView.setColor(Theme.getColor(i));
        }
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = this.selectAnimatedEmojiDialog;
        if (selectAnimatedEmojiDialogWindow == null || !(selectAnimatedEmojiDialogWindow.getContentView() instanceof SelectAnimatedEmojiDialog)) {
            return;
        }
        SimpleTextView titleTextView = this.actionBar.getTitleTextView();
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = (SelectAnimatedEmojiDialog) this.selectAnimatedEmojiDialog.getContentView();
        if (titleTextView != null) {
            Drawable rightDrawable = titleTextView.getRightDrawable();
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable3 = this.statusDrawable;
            if (rightDrawable == swapAnimatedEmojiDrawable3) {
                swapAnimatedEmojiDrawable = swapAnimatedEmojiDrawable3;
            }
        }
        selectAnimatedEmojiDialog.setScrimDrawable(swapAnimatedEmojiDrawable, titleTextView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStatus$26(View view) {
        showSelectStatusDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStatus$27(View view) {
        showSelectStatusDialog();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (isMainDialogList() && isArchive()) {
            getTopicsController().selectTopic(true, -1L);
        }
        closeCrossAccountsForwardLoading();
        if (this.searchString == null) {
            getNotificationCenter().removeObservers(this, observers);
            if (isMainNoFolderDialogList()) {
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.notificationsCountUpdated);
            }
            getNotificationCenter().removeObserver(this, NotificationCenter.dialogsNeedReload);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
            if (!this.onlySelect) {
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.closeSearchByActiveAction);
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxySettingsChanged);
                getNotificationCenter().removeObserver(this, NotificationCenter.filterSettingsUpdated);
                getNotificationCenter().removeObserver(this, NotificationCenter.dialogFiltersUpdated);
                getNotificationCenter().removeObserver(this, NotificationCenter.dialogsUnreadCounterChanged);
            }
            if (isForward()) {
                getNotificationCenter().removeObserver(this, NotificationCenter.dialogFiltersUpdated);
            }
            getNotificationCenter().removeObserver(this, NotificationCenter.updateInterfaces);
            getNotificationCenter().removeObserver(this, NotificationCenter.encryptedChatUpdated);
            getNotificationCenter().removeObserver(this, NotificationCenter.contactsDidLoad);
            getNotificationCenter().removeObserver(this, NotificationCenter.appDidLogout);
            getNotificationCenter().removeObserver(this, NotificationCenter.openedChatChanged);
            getNotificationCenter().removeObserver(this, NotificationCenter.notificationsSettingsUpdated);
            getNotificationCenter().removeObserver(this, NotificationCenter.messageReceivedByAck);
            getNotificationCenter().removeObserver(this, NotificationCenter.messageReceivedByServer);
            getNotificationCenter().removeObserver(this, NotificationCenter.messageSendError);
            getNotificationCenter().removeObserver(this, NotificationCenter.needReloadRecentDialogsSearch);
            getNotificationCenter().removeObserver(this, NotificationCenter.replyMessagesDidLoad);
            getNotificationCenter().removeObserver(this, NotificationCenter.reloadHints);
            getNotificationCenter().removeObserver(this, NotificationCenter.didUpdateConnectionState);
            getNotificationCenter().removeObserver(this, NotificationCenter.onDownloadingFilesChanged);
            getNotificationCenter().removeObserver(this, NotificationCenter.needDeleteDialog);
            getNotificationCenter().removeObserver(this, NotificationCenter.folderBecomeEmpty);
            getNotificationCenter().removeObserver(this, NotificationCenter.newSuggestionsAvailable);
            getNotificationCenter().removeObserver(this, NotificationCenter.fileLoaded);
            getNotificationCenter().removeObserver(this, NotificationCenter.fileLoadFailed);
            getNotificationCenter().removeObserver(this, NotificationCenter.fileLoadProgressChanged);
            getNotificationCenter().removeObserver(this, NotificationCenter.dialogsUnreadReactionsCounterChanged);
            getNotificationCenter().removeObserver(this, NotificationCenter.forceImportContactsStart);
            getNotificationCenter().removeObserver(this, NotificationCenter.userEmojiStatusUpdated);
            getNotificationCenter().removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didSetPasscode);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.appUpdateAvailable);
        }
        getNotificationCenter().removeObserver(this, NotificationCenter.messagesDeleted);
        getNotificationCenter().removeObserver(this, NotificationCenter.onDatabaseMigration);
        getNotificationCenter().removeObserver(this, NotificationCenter.onDatabaseOpened);
        getNotificationCenter().removeObserver(this, NotificationCenter.didClearDatabase);
        getNotificationCenter().removeObserver(this, NotificationCenter.onDatabaseReset);
        if (this.initialDialogsType == 0) {
            getNotificationCenter().removeObserver(this, NotificationCenter.chatlistFolderUpdate);
            getNotificationCenter().removeObserver(this, NotificationCenter.dialogTranslate);
        }
        ChatActivityEnterView chatActivityEnterView = this.commentView;
        if (chatActivityEnterView != null) {
            chatActivityEnterView.onDestroy();
        }
        UndoView[] undoViewArr = this.undoView;
        if (undoViewArr[0] != null) {
            undoViewArr[0].hide(true, 0);
        }
        Bulletin bulletin = this.pinBulletin;
        if (bulletin != null) {
            bulletin.hide(false, 0L);
        }
        this.notificationsLocker.unlock();
        this.delegate = null;
        SuggestClearDatabaseBottomSheet.dismissDialog();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public C3356ActionBar createActionBar(Context context) {
        C3356ActionBar c3356ActionBar = new C3356ActionBar(context) { // from class: org.telegram.ui.DialogsActivity.9
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar, android.view.View
            public void setTranslationY(float f) {
                if (f != getTranslationY() && ((BaseFragment) DialogsActivity.this).fragmentView != null) {
                    ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                }
                super.setTranslationY(f);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar
            public boolean shouldClipChild(View view) {
                return super.shouldClipChild(view) || view == DialogsActivity.this.doneItem;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (!((BaseFragment) DialogsActivity.this).inPreviewMode || DialogsActivity.this.avatarContainer == null || view == DialogsActivity.this.avatarContainer) {
                    return super.drawChild(canvas, view, j);
                }
                return false;
            }

            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar
            public void setTitleOverlayText(String str, int i, Runnable runnable) {
                super.setTitleOverlayText(str, i, runnable);
                if (DialogsActivity.this.selectAnimatedEmojiDialog == null || !(DialogsActivity.this.selectAnimatedEmojiDialog.getContentView() instanceof SelectAnimatedEmojiDialog)) {
                    return;
                }
                SimpleTextView titleTextView = getTitleTextView();
                ((SelectAnimatedEmojiDialog) DialogsActivity.this.selectAnimatedEmojiDialog.getContentView()).setScrimDrawable((titleTextView == null || titleTextView.getRightDrawable() != DialogsActivity.this.statusDrawable) ? null : DialogsActivity.this.statusDrawable, titleTextView);
            }

            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar
            protected boolean onSearchChangedIgnoreTitles() {
                RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
                return rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment();
            }

            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar
            public void onSearchFieldVisibilityChanged(boolean z) {
                RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
                if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                    getBackButton().animate().alpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED).start();
                }
                super.onSearchFieldVisibilityChanged(z);
            }
        };
        c3356ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSelector), false);
        c3356ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), true);
        c3356ActionBar.setItemsColor(Theme.getColor(Theme.key_actionBarDefaultIcon), false);
        c3356ActionBar.setItemsColor(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon), true);
        if (this.inPreviewMode || (AndroidUtilities.isTablet() && this.folderId != 0)) {
            c3356ActionBar.setOccupyStatusBar(false);
        }
        return c3356ActionBar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:140:0x0605, code lost:
        if (r0 == 3) goto L348;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0616  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x087d  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0964  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x096b  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x096d  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x09ed  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x09f5  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0a02  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0a08  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0a3a  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0a3d  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0a41  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0a44  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0a4a  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0a50  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0a53  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0a59  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0a5c  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0a6d  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0aa5  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0aad  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0ae2  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0b58  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0b85  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0bd8  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0cf3  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0faf  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0fc1  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0ff0  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0ffd  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x1011  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x1022  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x1038  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x105c  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x10f9  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x1101  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x111f  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x116c  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x1189  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x11b9  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x11cb  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x11da  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x11dd  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x11ea  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x1274  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x127f  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x12a9  */
    /* JADX WARN: Type inference failed for: r0v10, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v373 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r3v134 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createView(final android.content.Context r48) {
        /*
            Method dump skipped, instructions count: 4820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.createView(android.content.Context):android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$29(View view) {
        TopicsBar topicsBar = this.topicsBar;
        if (topicsBar != null && topicsBar.isEditing()) {
            this.topicsBar.setEditing(false);
        } else {
            this.filterTabsView.setIsEditing(false);
        }
        showDoneItem(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$32(View view) {
        this.filterOptions = ItemOptions.makeOptions(this, this.proxyItem).setScrimViewBackground(Theme.createCircleDrawable(AndroidUtilities.m54dp(46), Theme.getColor(isArchive() ? Theme.key_actionBarDefaultArchived : Theme.key_actionBarDefault))).add(C3290R.C3292drawable.poll_remove, LocaleController.getString("Disable", C3290R.string.Disable), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda91
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$31();
            }
        }).translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(-4)).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$31() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda104
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$30();
            }
        }, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$30() {
        SharedConfig.setProxyButtonEnabled(false);
        updateProxyButton(false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$10 */
    /* loaded from: classes5.dex */
    public class C550710 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        boolean isSpeedItemCreated = false;
        final /* synthetic */ Context val$context;
        final /* synthetic */ ActionBarMenu val$menu;

        C550710(Context context, ActionBarMenu actionBarMenu) {
            this.val$context = context;
            this.val$menu = actionBarMenu;
        }

        @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onPreToggleSearch() {
            if (this.isSpeedItemCreated) {
                return;
            }
            this.isSpeedItemCreated = true;
            DialogsActivity dialogsActivity = DialogsActivity.this;
            Context context = this.val$context;
            ActionBarMenu actionBarMenu = this.val$menu;
            int color = Theme.getColor(Theme.key_actionBarActionModeDefaultSelector);
            int i = Theme.key_actionBarActionModeDefaultIcon;
            dialogsActivity.speedItem = new ActionBarMenuItem(context, actionBarMenu, color, Theme.getColor(i));
            DialogsActivity.this.speedItem.setIcon(C3290R.C3292drawable.avd_speed);
            DialogsActivity.this.speedItem.getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN));
            DialogsActivity.this.speedItem.setTranslationX(AndroidUtilities.m54dp(32));
            DialogsActivity.this.speedItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
            DialogsActivity.this.speedItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$10$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.C550710.this.lambda$onPreToggleSearch$0(view);
                }
            });
            DialogsActivity.this.speedItem.setClickable(false);
            DialogsActivity.this.speedItem.setFixBackground(true);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AndroidUtilities.m54dp(42), -1);
            int m54dp = AndroidUtilities.m54dp(38);
            layoutParams.rightMargin = m54dp;
            layoutParams.leftMargin = m54dp;
            layoutParams.gravity = 5;
            ((FrameLayout) DialogsActivity.this.searchItem.getSearchClearButton().getParent()).addView(DialogsActivity.this.speedItem, layoutParams);
            DialogsActivity.this.searchItem.setSearchAdditionalButton(DialogsActivity.this.speedItem);
            DialogsActivity dialogsActivity2 = DialogsActivity.this;
            dialogsActivity2.updateSpeedItem(dialogsActivity2.searchViewPager.getCurrentPosition() == 2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPreToggleSearch$0(View view) {
            DialogsActivity.this.showDialog(new PremiumFeatureBottomSheet(DialogsActivity.this, 2, true));
        }

        @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchExpand() {
            DialogsActivity.this.searching = true;
            DialogsActivity.this.updateSwitchItemVisibility(false);
            DialogsActivity.this.showHeaderItem(false);
            if (DialogsActivity.this.searchMenuItem != null) {
                DialogsActivity.this.searchMenuItem.setVisibility(0);
            }
            if (DialogsActivity.this.proxyItem != null && DialogsActivity.this.proxyItemVisible) {
                DialogsActivity.this.proxyItem.setVisibility(8);
            }
            if (DialogsActivity.this.downloadsItem != null && DialogsActivity.this.downloadsItemVisible) {
                DialogsActivity.this.downloadsItem.setVisibility(8);
            }
            if (DialogsActivity.this.viewPages[0] != null) {
                if (DialogsActivity.this.searchString != null) {
                    DialogsActivity.this.viewPages[0].listView.hide();
                    if (DialogsActivity.this.searchViewPager != null) {
                        DialogsActivity.this.searchViewPager.searchListView.show();
                    }
                }
                if (!DialogsActivity.this.onlySelect || DialogsActivity.this.isAlbums() || DialogsActivity.this.isHiddenChats()) {
                    DialogsActivity.this.floatingButtonContainer.setVisibility(8);
                }
            }
            DialogsActivity.this.setScrollY(BitmapDescriptorFactory.HUE_RED);
            DialogsActivity.this.updatePasscodeButton();
            DialogsActivity.this.updateProxyButton(false, false);
            ((BaseFragment) DialogsActivity.this).actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrGoBack", C3290R.string.AccDescrGoBack));
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            ((SizeNotifierFrameLayout) ((BaseFragment) DialogsActivity.this).fragmentView).invalidateBlur();
        }

        @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public boolean canCollapseSearch() {
            DialogsActivity.this.updateSwitchItemVisibility(true);
            DialogsActivity.this.showHeaderItem(true);
            if (DialogsActivity.this.searchMenuItem != null) {
                DialogsActivity.this.searchMenuItem.setVisibility(8);
            }
            if (DialogsActivity.this.proxyItem != null && DialogsActivity.this.proxyItemVisible) {
                DialogsActivity.this.proxyItem.setVisibility(0);
            }
            if (DialogsActivity.this.downloadsItem != null && DialogsActivity.this.downloadsItemVisible) {
                DialogsActivity.this.downloadsItem.setVisibility(0);
            }
            if (DialogsActivity.this.searchString != null) {
                DialogsActivity.this.finishFragment();
                return false;
            }
            return true;
        }

        @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchCollapse() {
            DialogsActivity.this.searching = false;
            DialogsActivity.this.searchWas = false;
            DialogsActivity.this.updateSwitchItemVisibility(true);
            DialogsActivity.this.showHeaderItem(true);
            if (DialogsActivity.this.searchMenuItem != null) {
                DialogsActivity.this.searchMenuItem.setVisibility(8);
            }
            if (DialogsActivity.this.viewPages[0] != null) {
                DialogsActivity.this.viewPages[0].listView.setEmptyView(DialogsActivity.this.folderId == 0 ? DialogsActivity.this.viewPages[0].progressView : null);
                if (!DialogsActivity.this.onlySelect || DialogsActivity.this.isAlbums()) {
                    DialogsActivity.this.floatingButtonContainer.setVisibility(0);
                    DialogsActivity.this.floatingHidden = true;
                    DialogsActivity.this.floatingButtonTranslation = AndroidUtilities.m54dp(100);
                    DialogsActivity.this.floatingButtonHideProgress = 1.0f;
                    DialogsActivity.this.updateFloatingButtonOffset();
                }
                DialogsActivity.this.showSearch(false, false, true);
            }
            DialogsActivity.this.updateProxyButton(false, false);
            DialogsActivity.this.updatePasscodeButton();
            if (DialogsActivity.this.menuDrawable != null) {
                if (((BaseFragment) DialogsActivity.this).actionBar.getBackButton().getDrawable() != DialogsActivity.this.menuDrawable) {
                    ((BaseFragment) DialogsActivity.this).actionBar.setBackButtonDrawable(DialogsActivity.this.menuDrawable);
                    DialogsActivity.this.menuDrawable.setRotation(BitmapDescriptorFactory.HUE_RED, true);
                }
                ((BaseFragment) DialogsActivity.this).actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrOpenMenu", C3290R.string.AccDescrOpenMenu));
            }
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
            ((SizeNotifierFrameLayout) ((BaseFragment) DialogsActivity.this).fragmentView).invalidateBlur();
        }

        @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onTextChanged(EditText editText) {
            String obj = editText.getText().toString();
            if (obj.length() != 0 || ((DialogsActivity.this.searchViewPager.dialogsSearchAdapter != null && DialogsActivity.this.searchViewPager.dialogsSearchAdapter.hasRecentSearch()) || DialogsActivity.this.searchFiltersWasShowed)) {
                DialogsActivity.this.searchWas = true;
                if (!DialogsActivity.this.searchIsShowed) {
                    DialogsActivity.this.showSearch(true, false, true);
                }
            }
            DialogsActivity.this.searchViewPager.onTextChanged(obj);
        }

        @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchFilterCleared(FiltersView.MediaFilterData mediaFilterData) {
            if (DialogsActivity.this.searchIsShowed) {
                DialogsActivity.this.searchViewPager.removeSearchFilter(mediaFilterData);
                DialogsActivity.this.searchViewPager.onTextChanged(DialogsActivity.this.searchItem.getSearchField().getText().toString());
                DialogsActivity.this.updateFiltersView(true, null, null, false, true);
            }
        }

        @Override // org.telegram.p044ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public boolean canToggleSearch() {
            return !((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed() && DialogsActivity.this.databaseMigrationHint == null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$35(View view) {
        this.filterOptions = ItemOptions.makeOptions(this, this.headerItem).setScrimViewBackground(Theme.createCircleDrawable(AndroidUtilities.m54dp(46), Theme.getColor(Theme.key_actionBarDefault))).add(C3290R.C3292drawable.poll_remove, LocaleController.getString("Disable", C3290R.string.Disable), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda105
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$34();
            }
        }).translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(-4)).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$34() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda98
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$33();
            }
        }, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$33() {
        SharedConfig.setMainActionBarMenuEnabled(false);
        showHeaderItem(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$36() {
        if (this.initialDialogsType != 10) {
            hideFloatingButton(false);
        }
        scrollToTop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$11 */
    /* loaded from: classes5.dex */
    public class C550811 extends FilterTabsView {
        C550811(Context context, FilterTabsView.TabMode tabMode, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
            super(context, tabMode, sizeNotifierFrameLayout);
        }

        @Override // android.view.View
        public void setVisibility(int i) {
            super.setVisibility(i);
            DialogsActivity.this.updateFloatingButtonOffset();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            getParent().requestDisallowInterceptTouchEvent(true);
            DialogsActivity.this.maybeStartTracking = false;
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            if (getTranslationY() != f) {
                super.setTranslationY(f);
                DialogsActivity.this.updateFloatingButtonOffset();
                DialogsActivity.this.updateContextViewPosition();
                if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                    ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                }
            }
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView
        protected void onDefaultTabMoved() {
            if (DialogsActivity.this.getMessagesController().premiumLocked) {
                return;
            }
            try {
                performHapticFeedback(3, 1);
            } catch (Exception unused) {
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            dialogsActivity.topBulletin = BulletinFactory.m29of(dialogsActivity).createSimpleBulletin(C3290R.raw.filter_reorder, AndroidUtilities.replaceTags(LocaleController.formatString("LimitReachedReorderFolder", C3290R.string.LimitReachedReorderFolder, LocaleController.getString(C3290R.string.FilterAllChats))), LocaleController.getString("PremiumMore", C3290R.string.PremiumMore), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS, new Runnable() { // from class: org.telegram.ui.DialogsActivity$11$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C550811.this.lambda$onDefaultTabMoved$0();
                }
            }).show(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDefaultTabMoved$0() {
            DialogsActivity.this.showDialog(new PremiumFeatureBottomSheet(DialogsActivity.this, 9, true));
            DialogsActivity.this.filterTabsView.setIsEditing(false);
            DialogsActivity.this.showDoneItem(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$12 */
    /* loaded from: classes5.dex */
    public class C550912 implements FilterTabsView.FilterTabsViewDelegate {
        final /* synthetic */ Context val$context;

        C550912(Context context) {
            this.val$context = context;
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onTabSelected(int i) {
            if (!DialogsActivity.this.isMainDialogList() || i == DialogsActivity.this.viewPages[0].selectedType) {
                return;
            }
            if (DialogsActivity.this.miniFabsContainer != null) {
                DialogsActivity.this.miniFabsContainer.setVisibility(8);
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            List<? extends FilterFab> fabsForPage = dialogsActivity.getFabsForPage(dialogsActivity.viewPages[1]);
            if (DialogsActivity.this.miniFabsContainer == null || fabsForPage.size() <= 1) {
                DialogsActivity.this.floatingButton.setImageResource(FilterFabExtKt.iconResId((FilterFab) fabsForPage.get(0), true));
            } else {
                DialogsActivity.this.floatingButton.setImageResource(C3290R.C3292drawable.ic_ab_other);
                DialogsActivity.this.miniFabsContainer.setFabs(fabsForPage);
            }
            DialogsActivity.this.hideFloatingButton(false);
            if (DialogsActivity.this.isMainNoFolderDialogList()) {
                if (SortingFilter.isSortingFilter(false, i)) {
                    DialogsActivity.this.getForkCommonController().setLastFilterTab(i);
                } else if (i >= 0 && i < DialogsActivity.this.getMessagesController().dialogFilters.size()) {
                    DialogsActivity.this.getForkCommonController().setLastFilterTab(DialogsActivity.this.getMessagesController().dialogFilters.get(i).f1373id);
                }
                DialogsActivity.this.getForkCommonController().saveConfig();
            }
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onSwipeProgressChanged(float f) {
            if (!DialogsActivity.this.isMainDialogList() || f == 1.0f) {
                return;
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            List fabsForPage = dialogsActivity.getFabsForPage(dialogsActivity.viewPages[0]);
            DialogsActivity dialogsActivity2 = DialogsActivity.this;
            List fabsForPage2 = dialogsActivity2.getFabsForPage(dialogsActivity2.viewPages[1]);
            int iconResId = fabsForPage.size() > 1 ? C3290R.C3292drawable.ic_ab_other : FilterFabExtKt.iconResId((FilterFab) fabsForPage.get(0), true);
            int iconResId2 = fabsForPage2.size() > 1 ? C3290R.C3292drawable.ic_ab_other : FilterFabExtKt.iconResId((FilterFab) fabsForPage2.get(0), true);
            if (iconResId != iconResId2) {
                float abs = Math.abs(1.0f - (2.0f * f));
                RLottieImageView rLottieImageView = DialogsActivity.this.floatingButton;
                if (f >= 0.5f) {
                    iconResId = iconResId2;
                }
                rLottieImageView.setImageResource(iconResId);
                DialogsActivity.this.floatingButtonContainer.setScaleX(abs);
                DialogsActivity.this.floatingButtonContainer.setScaleY(abs);
                DialogsActivity.this.floatingButtonContainer.setAlpha(abs);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: showDeleteAlert */
        public void lambda$didSelectTab$8(final MessagesController.DialogFilter dialogFilter) {
            if (dialogFilter.isChatlist()) {
                FolderBottomSheet.showForDeletion(DialogsActivity.this, dialogFilter.f1373id, null);
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("FilterDelete", C3290R.string.FilterDelete));
            builder.setMessage(LocaleController.getString("FilterDeleteAlert", C3290R.string.FilterDeleteAlert));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("Delete", C3290R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C550912.this.lambda$showDeleteAlert$0(dialogFilter, dialogInterface, i);
                }
            });
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDeleteAlert$0(MessagesController.DialogFilter dialogFilter, DialogInterface dialogInterface, int i) {
            TLRPC$TL_messages_updateDialogFilter tLRPC$TL_messages_updateDialogFilter = new TLRPC$TL_messages_updateDialogFilter();
            tLRPC$TL_messages_updateDialogFilter.f1545id = dialogFilter.f1373id;
            DialogsActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFilter, null);
            DialogsActivity.this.getMessagesController().removeFilter(dialogFilter);
            DialogsActivity.this.getMessagesStorage().deleteDialogFilter(dialogFilter);
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onSamePageSelected() {
            DialogsActivity.this.hideFloatingButton(false);
            DialogsActivity.this.scrollToTop();
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onPageReorder(int i, int i2) {
            for (int i3 = 0; i3 < DialogsActivity.this.viewPages.length; i3++) {
                if (DialogsActivity.this.viewPages[i3].selectedType == i) {
                    DialogsActivity.this.viewPages[i3].selectedType = i2;
                } else if (DialogsActivity.this.viewPages[i3].selectedType == i2) {
                    DialogsActivity.this.viewPages[i3].selectedType = i;
                }
            }
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onPageSelected(FilterTabsView.Tab tab, boolean z) {
            int i;
            if (DialogsActivity.this.viewPages[0].selectedType == tab.f1649id) {
                return;
            }
            if (tab.isLocked) {
                DialogsActivity.this.filterTabsView.shakeLock(tab.f1649id);
                DialogsActivity dialogsActivity = DialogsActivity.this;
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                dialogsActivity.showDialog(new LimitReachedBottomSheet(dialogsActivity2, this.val$context, 3, ((BaseFragment) dialogsActivity2).currentAccount));
                return;
            }
            ArrayList<MessagesController.DialogFilter> dialogFilters = DialogsActivity.this.getMessagesController().getDialogFilters();
            if (SortingFilter.isSortingFilter(false, tab.f1649id)) {
                if (SortingFilter.removeExtraFromId(false, tab.f1649id) >= DialogsActivity.this.getMessagesController().sortingDialogFilters.size()) {
                    return;
                }
            } else if (SortingFilter.isSortingFilter(true, tab.f1649id)) {
                if (SortingFilter.removeExtraFromId(true, tab.f1649id) >= DialogsActivity.this.getMessagesController().archiveSortingDialogFilters.size()) {
                    return;
                }
            } else if (!tab.isDefault && (((i = tab.f1649id) < 0 || i >= dialogFilters.size()) && tab.f1649id != DialogsActivity.DIALOGS_TYPE_ALBUMS && !DialogsActivity.this.isArchive() && !DialogsActivity.this.isManagement())) {
                return;
            }
            DialogsActivity dialogsActivity3 = DialogsActivity.this;
            dialogsActivity3.isFirstTab = tab.f1649id == dialogsActivity3.filterTabsView.getFirstTabId();
            DialogsActivity.this.updateDrawerSwipeEnabled();
            DialogsActivity.this.viewPages[1].selectedType = tab.f1649id;
            DialogsActivity.this.viewPages[1].setVisibility(0);
            DialogsActivity.this.viewPages[1].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth());
            DialogsActivity.this.showScrollbars(false);
            DialogsActivity.this.switchToCurrentSelectedMode(true);
            DialogsActivity.this.animatingForward = z;
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public boolean canPerformActions() {
            if (DialogsActivity.this.topicsBar == null || !DialogsActivity.this.topicsBar.isEditing()) {
                if (DialogsActivity.this.isManagement() && ((BaseFragment) DialogsActivity.this).actionBar != null && ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) {
                    return false;
                }
                return !DialogsActivity.this.searching;
            }
            return false;
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onPageScrolled(float f) {
            int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
            if (i != 0 || DialogsActivity.this.viewPages[1].getVisibility() == 0 || DialogsActivity.this.searching) {
                if (DialogsActivity.this.animatingForward) {
                    DialogsActivity.this.viewPages[0].setTranslationX((-f) * DialogsActivity.this.viewPages[0].getMeasuredWidth());
                    DialogsActivity.this.viewPages[1].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth() - (f * DialogsActivity.this.viewPages[0].getMeasuredWidth()));
                } else {
                    DialogsActivity.this.viewPages[0].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth() * f);
                    DialogsActivity.this.viewPages[1].setTranslationX((f * DialogsActivity.this.viewPages[0].getMeasuredWidth()) - DialogsActivity.this.viewPages[0].getMeasuredWidth());
                }
                if (i == 0) {
                    ViewPage viewPage = DialogsActivity.this.viewPages[0];
                    DialogsActivity.this.viewPages[0] = DialogsActivity.this.viewPages[1];
                    DialogsActivity.this.viewPages[1] = viewPage;
                    DialogsActivity.this.viewPages[1].setVisibility(8);
                    DialogsActivity.this.showScrollbars(true);
                    DialogsActivity.this.updateCounters(false);
                    DialogsActivity.this.filterTabsView.stopAnimatingIndicator();
                    DialogsActivity dialogsActivity = DialogsActivity.this;
                    dialogsActivity.checkListLoad(dialogsActivity.viewPages[0]);
                    DialogsActivity.this.viewPages[0].dialogsAdapter.resume();
                    DialogsActivity.this.viewPages[1].dialogsAdapter.pause();
                }
            }
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public int getTabCounter(int i) {
            ArrayList<MessagesController.DialogFilter> arrayList;
            int removeExtraFromId;
            if (DialogsActivity.this.initialDialogsType != 3 && !DialogsActivity.this.isManagement() && i != DialogsActivity.DIALOGS_TYPE_ALBUMS) {
                if (!DialogsActivity.this.isArchive() || i != Math.max(0, DialogsActivity.this.filterTabsView.getDefaultTabId())) {
                    if (i == DialogsActivity.this.filterTabsView.getDefaultTabId()) {
                        return DialogsActivity.this.getMessagesStorage().getMainUnreadCount();
                    }
                    if (SortingFilter.isSortingFilter(false, i) || SortingFilter.isSortingFilter(true, i)) {
                        if (SortingFilter.isSortingFilter(true, i)) {
                            arrayList = DialogsActivity.this.getMessagesController().archiveSortingDialogFilters;
                            removeExtraFromId = SortingFilter.removeExtraFromId(true, i);
                        } else {
                            arrayList = DialogsActivity.this.getMessagesController().sortingDialogFilters;
                            removeExtraFromId = SortingFilter.removeExtraFromId(false, i);
                        }
                        if (removeExtraFromId >= 0 && removeExtraFromId < arrayList.size()) {
                            return arrayList.get(removeExtraFromId).unreadCount;
                        }
                    } else {
                        ArrayList<MessagesController.DialogFilter> dialogFilters = DialogsActivity.this.getMessagesController().getDialogFilters();
                        if (i < 0 || i >= dialogFilters.size()) {
                            return 0;
                        }
                        return DialogsActivity.this.getMessagesController().getDialogFilters().get(i).unreadCount;
                    }
                } else {
                    return DialogsActivity.this.getMessagesStorage().getArchiveUnreadCount();
                }
            }
            return 0;
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public boolean didSelectTab(final FilterTabsView.TabView tabView, boolean z) {
            final boolean z2;
            boolean z3;
            int i;
            String str;
            int i2;
            String str2;
            boolean z4;
            TLRPC$Chat chat;
            if (DialogsActivity.this.initialDialogsType == 0 && AndroidUtilities.isActivityRunning(DialogsActivity.this.getParentActivity()) && tabView != null) {
                if (((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) {
                    return false;
                }
                final MessagesController.DialogFilter dialogFilter = null;
                if (DialogsActivity.this.filterOptions == null || !DialogsActivity.this.filterOptions.isShown()) {
                    final MessagesController.DialogFilter filterById = tabView.getId() == DialogsActivity.this.filterTabsView.getDefaultTabId() ? null : DialogsActivity.this.getFilterById(tabView.getId());
                    final boolean z5 = filterById == null;
                    final boolean isSortingFilter = SortingFilter.isSortingFilter(DialogsActivity.this.isArchive(), tabView.getId());
                    boolean z6 = (DialogsActivity.this.isArchive() || z5 || isSortingFilter) ? false : true;
                    boolean z7 = tabView.getId() == DialogsActivity.DIALOGS_TYPE_ALBUMS;
                    final boolean[] zArr = {true};
                    MessagesController messagesController = DialogsActivity.this.getMessagesController();
                    final ArrayList arrayList = new ArrayList(z5 ? messagesController.getDialogs(DialogsActivity.this.folderId) : messagesController.getAllDialogs());
                    if (filterById != null) {
                        dialogFilter = DialogsActivity.this.getFilterById(tabView.getId());
                        int i3 = 0;
                        if (dialogFilter != null) {
                            while (i3 < arrayList.size()) {
                                if (!dialogFilter.includesDialog(DialogsActivity.this.getAccountInstance(), ((TLRPC$Dialog) arrayList.get(i3)).f1439id)) {
                                    arrayList.remove(i3);
                                    i3--;
                                }
                                i3++;
                            }
                            i3 = (!isSortingFilter && (dialogFilter.isChatlist() || (dialogFilter.neverShow.isEmpty() && (dialogFilter.flags & (~(MessagesController.DIALOG_FILTER_FLAG_CHATLIST | MessagesController.DIALOG_FILTER_FLAG_CHATLIST_ADMIN))) == 0))) ? 1 : 0;
                            if (i3 != 0) {
                                int i4 = 0;
                                while (true) {
                                    if (i4 >= dialogFilter.alwaysShow.size()) {
                                        break;
                                    }
                                    long longValue = dialogFilter.alwaysShow.get(i4).longValue();
                                    if (longValue < 0 && (chat = DialogsActivity.this.getMessagesController().getChat(Long.valueOf(-longValue))) != null && FilterCreateActivity.canAddToFolder(chat)) {
                                        zArr[0] = false;
                                        break;
                                    }
                                    i4++;
                                }
                            }
                        }
                        if (arrayList.isEmpty()) {
                            z3 = i3;
                            z2 = false;
                        } else {
                            int i5 = 0;
                            while (true) {
                                if (i5 >= arrayList.size()) {
                                    z3 = i3;
                                    z4 = true;
                                    break;
                                }
                                z3 = i3;
                                if (!DialogsActivity.this.getMessagesController().isDialogMuted(((TLRPC$Dialog) arrayList.get(i5)).f1439id, 0)) {
                                    z4 = false;
                                    break;
                                }
                                i5++;
                                i3 = z3;
                            }
                            z2 = !z4;
                        }
                    } else {
                        z2 = false;
                        z3 = 0;
                    }
                    boolean z8 = false;
                    for (int i6 = 0; i6 < arrayList.size(); i6++) {
                        if (((TLRPC$Dialog) arrayList.get(i6)).unread_mark || ((TLRPC$Dialog) arrayList.get(i6)).unread_count > 0) {
                            z8 = true;
                        }
                    }
                    DialogsActivity dialogsActivity = DialogsActivity.this;
                    boolean z9 = z3;
                    ItemOptions addIf = ItemOptions.makeOptions(dialogsActivity, tabView).setScrimViewBackground(Theme.createRoundRectDrawable(AndroidUtilities.m54dp(6), 0, Theme.getColor(DialogsActivity.this.isArchive() ? Theme.key_actionBarDefaultArchived : Theme.key_actionBarDefault))).addFuturePlacement().addIf(!(z5 && DialogsActivity.this.isArchive()) && (!isSortingFilter || DialogsActivity.this.getFiltersController().getActiveSortingTabsCount(DialogsActivity.this.isArchive()) > 1) && !DialogsActivity.this.getFiltersController().isFoldersHidden() && DialogsActivity.this.getMessagesController().getDialogFilters().size() > 1, C3290R.C3292drawable.tabs_reorder, LocaleController.getString("FilterReorder", C3290R.string.FilterReorder), new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C550912.this.lambda$didSelectTab$1(isSortingFilter);
                        }
                    }).addIf(!DialogsActivity.this.isArchive() && DialogsActivity.this.getMessagesController().dialogFilters.size() < DialogsActivity.this.getMessagesController().dialogFiltersLimitPremium, C3290R.C3292drawable.fork_create_folder, LocaleController.getInternalString(C3290R.string.dialogs_tab_popup_create_folder), new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C550912.this.lambda$didSelectTab$2();
                        }
                    }).addIf(!z6, C3290R.C3292drawable.msg_settings, LocaleController.getInternalString(C3290R.string.dialogs_tab_popup_sorting_settings), new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C550912.this.lambda$didSelectTab$3();
                        }
                    });
                    int i7 = C3290R.C3292drawable.msg_edit;
                    if (z5) {
                        i = C3290R.string.FilterEditAll;
                        str = "FilterEditAll";
                    } else {
                        i = C3290R.string.FilterEdit;
                        str = "FilterEdit";
                    }
                    ItemOptions add = addIf.add(i7, LocaleController.getString(str, i), new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C550912.this.lambda$didSelectTab$4(z5, filterById);
                        }
                    }, z6, false);
                    boolean z10 = (z7 || filterById == null || arrayList.isEmpty()) ? false : true;
                    int i8 = z2 ? C3290R.C3292drawable.msg_mute : C3290R.C3292drawable.msg_unmute;
                    if (z2) {
                        i2 = C3290R.string.FilterMuteAll;
                        str2 = "FilterMuteAll";
                    } else {
                        i2 = C3290R.string.FilterUnmuteAll;
                        str2 = "FilterUnmuteAll";
                    }
                    dialogsActivity.filterOptions = add.addIf(z10, i8, LocaleController.getString(str2, i2), new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C550912.this.lambda$didSelectTab$5(arrayList, z2);
                        }
                    }).addIf(z8, C3290R.C3292drawable.msg_markread, (CharSequence) LocaleController.getString("MarkAllAsRead", C3290R.string.MarkAllAsRead), new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C550912.this.lambda$didSelectTab$6(arrayList);
                        }
                    }, true).addIf(z9, C3290R.C3292drawable.msg_share, FilterCreateActivity.withNew((dialogFilter == null || !dialogFilter.isMyChatlist()) ? 0 : -1, LocaleController.getString("LinkActionShare", C3290R.string.LinkActionShare), true), new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C550912.this.lambda$didSelectTab$7(zArr, dialogFilter);
                        }
                    }).addIf((z5 || isSortingFilter) ? false : true, C3290R.C3292drawable.msg_delete, (CharSequence) LocaleController.getString("FilterDeleteItem", C3290R.string.FilterDeleteItem), true, new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C550912.this.lambda$didSelectTab$8(filterById);
                        }
                    }).addIf((z6 || (z5 && (DialogsActivity.this.isArchive() || !DialogsActivity.this.getFiltersController().isAllChatsTabEnabled() || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getTabsCount() == 2))) ? false : true, C3290R.C3292drawable.msg_disable, LocaleController.getInternalString(C3290R.string.dialogs_tab_popup_disable), new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C550912.this.lambda$didSelectTab$10(z5, isSortingFilter, tabView);
                        }
                    }).setGravity(3).translate(AndroidUtilities.m54dp(-8), AndroidUtilities.m54dp(DialogsActivity.this.isFilterTabsAtBottom() ? 10 : -10)).show();
                    return true;
                }
                DialogsActivity.this.filterOptions.dismiss();
                DialogsActivity.this.filterOptions = null;
                return false;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$1(boolean z) {
            if (!z) {
                DialogsActivity.this.resetScroll();
                DialogsActivity.this.filterTabsView.setIsEditing(true);
                DialogsActivity.this.showDoneItem(true);
                return;
            }
            DialogsActivity.this.presentFragment(new SortingFilterSettingsActivity(DialogsActivity.this.isArchive()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$2() {
            if (!DialogsActivity.this.getUserConfig().isPremium() && DialogsActivity.this.getMessagesController().dialogFilters.size() - 1 >= DialogsActivity.this.getMessagesController().dialogFiltersLimitDefault) {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                dialogsActivity.showDialog(new LimitReachedBottomSheet(dialogsActivity2, dialogsActivity2.getParentActivity(), 3, ((BaseFragment) DialogsActivity.this).currentAccount));
                return;
            }
            DialogsActivity.this.presentFragment(new FilterCreateActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$3() {
            DialogsActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$4(boolean z, MessagesController.DialogFilter dialogFilter) {
            DialogsActivity.this.presentFragment(z ? new FiltersSetupActivity() : new FilterCreateActivity(dialogFilter));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$5(ArrayList arrayList, boolean z) {
            int i = 0;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                TLRPC$Dialog tLRPC$Dialog = (TLRPC$Dialog) arrayList.get(i2);
                if (tLRPC$Dialog != null) {
                    DialogsActivity.this.getNotificationsController().setDialogNotificationsSettings(tLRPC$Dialog.f1439id, 0, z ? 3 : 4);
                    i++;
                }
            }
            BulletinFactory.createMuteBulletin(DialogsActivity.this, z, i, (Theme.ResourcesProvider) null).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$6(ArrayList arrayList) {
            DialogsActivity.this.markDialogsAsRead(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$7(boolean[] zArr, MessagesController.DialogFilter dialogFilter) {
            if (zArr[0]) {
                DialogsActivity.this.presentFragment(new FilterChatlistActivity(dialogFilter, null));
            } else {
                FilterCreateActivity.FilterInvitesBottomSheet.show(DialogsActivity.this, dialogFilter, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$10(boolean z, boolean z2, FilterTabsView.TabView tabView) {
            if (!z) {
                if (z2) {
                    DialogsActivity.this.getFiltersController().disableSortingFilter(SortingFilter.getFilterByIdWithExtra(DialogsActivity.this.isArchive(), tabView.getId()));
                    DialogsActivity.this.getFiltersController().saveConfig();
                    DialogsActivity.this.updateFilterTabs(true, true);
                    return;
                }
                return;
            }
            DialogsActivity.this.getFiltersController().setAllChatsTabEnabled(false);
            DialogsActivity.this.getFiltersController().saveConfig();
            DialogsActivity.this.updateFilterTabs(true, true);
            SharedConfig.setShowDrawerHeaderArchiveEnabled(true);
            DialogsActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
            UndoView undoView = DialogsActivity.this.getUndoView();
            if (undoView != null) {
                undoView.showInfo(AndroidUtilities.replaceTags(LocaleController.getInternalString(C3290R.string.undo_all_chats_tab_disabled)), new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C550912.this.lambda$didSelectTab$9();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$9() {
            DialogsActivity.this.getFiltersController().setAllChatsTabEnabled(true);
            DialogsActivity.this.getFiltersController().saveConfig();
            DialogsActivity.this.updateFilterTabs(true, true);
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public boolean isTabMenuVisible() {
            return DialogsActivity.this.filterOptions != null && DialogsActivity.this.filterOptions.isShown();
        }

        @Override // org.telegram.p044ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onDeletePressed(int i) {
            lambda$didSelectTab$8(DialogsActivity.this.getMessagesController().getDialogFilters().get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$39(View view) {
        this.filterOptions = ItemOptions.makeOptions(this, this.switchItem).setScrimViewBackground(Theme.createCircleDrawable(AndroidUtilities.m54dp(46), Theme.getColor(Theme.key_actionBarDefault))).add(C3290R.C3292drawable.poll_remove, LocaleController.getString("Disable", C3290R.string.Disable), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$38();
            }
        }).translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(-4)).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$38() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda93
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$37();
            }
        }, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$37() {
        SharedConfig.setActionBarAccountSwitchEnabled(false);
        updateSwitchItemVisibility(false);
    }

    /* renamed from: org.telegram.ui.DialogsActivity$15 */
    /* loaded from: classes5.dex */
    class C551215 extends LinearLayoutManager {
        private boolean fixOffset;
        final /* synthetic */ ViewPage val$viewPage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C551215(Context context, ViewPage viewPage) {
            super(context);
            this.val$viewPage = viewPage;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected int firstPosition() {
            return (this.val$viewPage.dialogsType == 0 && DialogsActivity.this.hasHiddenArchive() && this.val$viewPage.archivePullViewState == 2) ? 1 : 0;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void scrollToPositionWithOffset(int i, int i2) {
            if (this.fixOffset) {
                i2 -= this.val$viewPage.listView.getPaddingTop();
            }
            super.scrollToPositionWithOffset(i, i2);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
        public void prepareForDrop(View view, View view2, int i, int i2) {
            this.fixOffset = true;
            super.prepareForDrop(view, view2, i, i2);
            this.fixOffset = false;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
            if (DialogsActivity.this.hasHiddenArchive() && i == 1) {
                super.smoothScrollToPosition(recyclerView, state, i);
                return;
            }
            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 0);
            linearSmoothScrollerCustom.setTargetPosition(i);
            startSmoothScroll(linearSmoothScrollerCustom);
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x0155  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0159  */
        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int scrollVerticallyBy(int r18, androidx.recyclerview.widget.RecyclerView.Recycler r19, androidx.recyclerview.widget.RecyclerView.State r20) {
            /*
                Method dump skipped, instructions count: 758
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.C551215.scrollVerticallyBy(int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):int");
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
            if (BuildVars.DEBUG_PRIVATE_VERSION) {
                try {
                    super.onLayoutChildren(recycler, state);
                    return;
                } catch (IndexOutOfBoundsException unused) {
                    throw new RuntimeException("Inconsistency detected. dialogsListIsFrozen=" + DialogsActivity.this.dialogsListFrozen + " lastUpdateAction=" + DialogsActivity.this.debugLastUpdateAction);
                }
            }
            try {
                super.onLayoutChildren(recycler, state);
            } catch (IndexOutOfBoundsException e) {
                FileLog.m49e(e);
                final ViewPage viewPage = this.val$viewPage;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$15$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C551215.lambda$onLayoutChildren$0(DialogsActivity.ViewPage.this);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onLayoutChildren$0(ViewPage viewPage) {
            viewPage.dialogsAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$40(ViewPage viewPage, View view, int i) {
        TLRPC$TL_chatlists_chatlistUpdates chatlistUpdate;
        int i2 = this.initialDialogsType;
        if (i2 == 15 && (view instanceof TextCell)) {
            viewPage.dialogsAdapter.onCreateGroupForThisClick();
        } else if (i2 == 10) {
            onItemLongClick(viewPage.listView, view, i, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, viewPage.dialogsType, viewPage.dialogsAdapter);
        } else if ((i2 == 11 || i2 == 13) && i == 1) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("forImport", true);
            bundle.putLongArray("result", new long[]{getUserConfig().getClientUserId()});
            bundle.putInt("chatType", 4);
            String string = this.arguments.getString("importTitle");
            if (string != null) {
                bundle.putString("title", string);
            }
            GroupCreateFinalActivity groupCreateFinalActivity = new GroupCreateFinalActivity(bundle);
            groupCreateFinalActivity.setDelegate(new GroupCreateFinalActivity.GroupCreateFinalActivityDelegate() { // from class: org.telegram.ui.DialogsActivity.16
                @Override // org.telegram.p044ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
                public void didFailChatCreation() {
                }

                @Override // org.telegram.p044ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
                public void didStartChatCreation() {
                }

                @Override // org.telegram.p044ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
                public void didFinishChatCreation(GroupCreateFinalActivity groupCreateFinalActivity2, long j) {
                    ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                    arrayList.add(MessagesStorage.TopicKey.m46of(-j, 0));
                    DialogsActivityDelegate dialogsActivityDelegate = DialogsActivity.this.delegate;
                    if (DialogsActivity.this.closeFragment) {
                        DialogsActivity.this.removeSelfFromStack();
                    }
                    dialogsActivityDelegate.didSelectDialogs(DialogsActivity.this, arrayList, null, true, null, null);
                }
            });
            presentFragment(groupCreateFinalActivity);
        } else if (!(view instanceof DialogsHintCell) || ((viewPage.dialogsType != 7 && viewPage.dialogsType != 8) || (chatlistUpdate = viewPage.dialogsAdapter.getChatlistUpdate()) == null)) {
            if (viewPage.dialogsType == DIALOGS_TYPE_ALBUMS && this.actionBar.isActionModeShowed()) {
                return;
            }
            onItemClick(view, i, viewPage.dialogsAdapter);
        } else {
            MessagesController.DialogFilter dialogFilter = getMessagesController().selectedDialogFilter[viewPage.dialogsType - 7];
            if (dialogFilter != null) {
                showDialog(new FolderBottomSheet(this, dialogFilter.f1373id, chatlistUpdate));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$41(View view) {
        this.forwardSearchEditText.clearFocus();
        this.forwardSearchEditText.requestFocus();
        AndroidUtilities.showKeyboard(this.forwardSearchEditText);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$28 */
    /* loaded from: classes5.dex */
    public class C552628 implements DialogsSearchAdapter.DialogsSearchAdapterDelegate {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$clearTopPeers$0(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        }

        C552628() {
        }

        @Override // org.telegram.p044ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void clearTopPeers() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("ChatHintsDeleteAlertTitle", C3290R.string.ChatHintsDeleteAlertTitle));
            builder.setMessage(LocaleController.getString("SuggestContactsAlert", C3290R.string.SuggestContactsAlert));
            builder.setPositiveButton(LocaleController.getString("MuteDisable", C3290R.string.MuteDisable), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C552628.this.lambda$clearTopPeers$2(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$clearTopPeers$2(DialogInterface dialogInterface, int i) {
            DialogsActivity.this.getMediaDataController().clearTopPeers();
            DialogsActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.reloadHints, new Object[0]);
            TLRPC$TL_contacts_toggleTopPeers tLRPC$TL_contacts_toggleTopPeers = new TLRPC$TL_contacts_toggleTopPeers();
            tLRPC$TL_contacts_toggleTopPeers.enabled = false;
            DialogsActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_contacts_toggleTopPeers, new RequestDelegate() { // from class: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    DialogsActivity.C552628.this.lambda$clearTopPeers$1(tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$clearTopPeers$1(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            TLRPC$TL_contacts_toggleTopPeers tLRPC$TL_contacts_toggleTopPeers = new TLRPC$TL_contacts_toggleTopPeers();
            tLRPC$TL_contacts_toggleTopPeers.enabled = true;
            DialogsActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_contacts_toggleTopPeers, DialogsActivity$28$$ExternalSyntheticLambda5.INSTANCE);
        }

        @Override // org.telegram.p044ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void searchStateChanged(boolean z, boolean z2) {
            if (DialogsActivity.this.searchViewPager.emptyView.getVisibility() == 0) {
                z2 = true;
            }
            if (DialogsActivity.this.searching && DialogsActivity.this.searchWas && DialogsActivity.this.searchViewPager.emptyView != null) {
                if (z || DialogsActivity.this.searchViewPager.dialogsSearchAdapter.getItemCount() != 0) {
                    DialogsActivity.this.searchViewPager.emptyView.showProgress(true, z2);
                } else {
                    DialogsActivity.this.searchViewPager.emptyView.showProgress(false, z2);
                }
            }
            if (z && DialogsActivity.this.searchViewPager.dialogsSearchAdapter.getItemCount() == 0) {
                DialogsActivity.this.searchViewPager.cancelEnterAnimation();
            }
        }

        @Override // org.telegram.p044ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void didPressedOnSubDialog(long j) {
            if (DialogsActivity.this.onlySelect) {
                if (DialogsActivity.this.validateSlowModeDialog(j)) {
                    if (!DialogsActivity.this.selectedDialogs.isEmpty()) {
                        if (DialogsActivity.this.getMessagesController().isForum(j)) {
                            return;
                        }
                        DialogsActivity.this.findAndUpdateCheckBox(j, DialogsActivity.this.addOrRemoveSelectedDialog(j, null));
                        DialogsActivity.this.updateSelectedCount();
                        ((BaseFragment) DialogsActivity.this).actionBar.closeSearchField();
                        return;
                    }
                    DialogsActivity.this.didSelectResult(j, 0, true, false);
                    return;
                }
                return;
            }
            Bundle bundle = new Bundle();
            if (DialogObject.isUserDialog(j)) {
                bundle.putLong("user_id", j);
            } else {
                bundle.putLong("chat_id", -j);
            }
            DialogsActivity.this.closeSearch();
            if (AndroidUtilities.isTablet() && DialogsActivity.this.viewPages != null) {
                for (int i = 0; i < DialogsActivity.this.viewPages.length; i++) {
                    DialogsAdapter dialogsAdapter = DialogsActivity.this.viewPages[i].dialogsAdapter;
                    DialogsActivity.this.openedDialogId.dialogId = j;
                    dialogsAdapter.setOpenedDialogId(j);
                }
                DialogsActivity.this.updateVisibleRows(MessagesController.UPDATE_MASK_SELECT_DIALOG);
            }
            if (DialogsActivity.this.searchString != null) {
                if (DialogsActivity.this.getMessagesController().checkCanOpenChat(bundle, DialogsActivity.this)) {
                    DialogsActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.closeChats, new Object[0]);
                    DialogsActivity.this.presentFragment(new ChatActivity(bundle));
                }
            } else if (DialogsActivity.this.getMessagesController().checkCanOpenChat(bundle, DialogsActivity.this)) {
                DialogsActivity.this.presentFragment(new ChatActivity(bundle));
            }
        }

        @Override // org.telegram.p044ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void needRemoveHint(final long j) {
            TLRPC$User user;
            if (DialogsActivity.this.getParentActivity() == null || (user = DialogsActivity.this.getMessagesController().getUser(Long.valueOf(j))) == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("ChatHintsDeleteAlertTitle", C3290R.string.ChatHintsDeleteAlertTitle));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ChatHintsDeleteAlert", C3290R.string.ChatHintsDeleteAlert, ContactsController.formatName(user.first_name, user.last_name))));
            builder.setPositiveButton(LocaleController.getString("StickersRemove", C3290R.string.StickersRemove), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C552628.this.lambda$needRemoveHint$3(j, dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$needRemoveHint$3(long j, DialogInterface dialogInterface, int i) {
            DialogsActivity.this.getMediaDataController().removePeer(j);
        }

        @Override // org.telegram.p044ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void needClearList() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            if (DialogsActivity.this.searchViewPager.dialogsSearchAdapter.isSearchWas() && DialogsActivity.this.searchViewPager.dialogsSearchAdapter.isRecentSearchDisplayed()) {
                builder.setTitle(LocaleController.getString("ClearSearchAlertPartialTitle", C3290R.string.ClearSearchAlertPartialTitle));
                builder.setMessage(LocaleController.formatPluralString("ClearSearchAlertPartial", DialogsActivity.this.searchViewPager.dialogsSearchAdapter.getRecentResultsCount(), new Object[0]));
                builder.setPositiveButton(LocaleController.getString("Clear", C3290R.string.Clear), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        DialogsActivity.C552628.this.lambda$needClearList$4(dialogInterface, i);
                    }
                });
            } else {
                builder.setTitle(LocaleController.getString("ClearSearchAlertTitle", C3290R.string.ClearSearchAlertTitle));
                builder.setMessage(LocaleController.getString("ClearSearchAlert", C3290R.string.ClearSearchAlert));
                builder.setPositiveButton(LocaleController.getString("ClearButton", C3290R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        DialogsActivity.C552628.this.lambda$needClearList$5(dialogInterface, i);
                    }
                });
            }
            builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$needClearList$4(DialogInterface dialogInterface, int i) {
            DialogsActivity.this.searchViewPager.dialogsSearchAdapter.clearRecentSearch();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$needClearList$5(DialogInterface dialogInterface, int i) {
            if (DialogsActivity.this.searchViewPager.dialogsSearchAdapter.isRecentSearchDisplayed()) {
                DialogsActivity.this.searchViewPager.dialogsSearchAdapter.clearRecentSearch();
            } else {
                DialogsActivity.this.searchViewPager.dialogsSearchAdapter.clearRecentHashtags();
            }
        }

        @Override // org.telegram.p044ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void runResultsEnterAnimation() {
            if (DialogsActivity.this.searchViewPager != null) {
                DialogsActivity.this.searchViewPager.runResultsEnterAnimation();
            }
        }

        @Override // org.telegram.p044ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public boolean isSelected(long j) {
            return DialogsActivity.this.selectedDialogs.contains(Long.valueOf(j));
        }

        @Override // org.telegram.p044ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public long getSearchForumDialogId() {
            RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer == null || !(rightSlidingDialogContainer.getFragment() instanceof TopicsFragment)) {
                return 0L;
            }
            return ((TopicsFragment) DialogsActivity.this.rightSlidingDialogContainer.getFragment()).getDialogId();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$42(View view, int i) {
        if (this.initialDialogsType == 10) {
            SearchViewPager searchViewPager = this.searchViewPager;
            onItemLongClick(searchViewPager.searchListView, view, i, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1, searchViewPager.dialogsSearchAdapter);
            return;
        }
        onItemClick(view, i, this.searchViewPager.dialogsSearchAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$43(boolean z, ArrayList arrayList, ArrayList arrayList2, boolean z2) {
        updateFiltersView(z, arrayList, arrayList2, z2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$44(View view, int i) {
        this.filtersView.cancelClickRunnables(true);
        addSearchFilter(this.filtersView.getFilterAt(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$46(View view) {
        expandMultiFab(false);
        final ViewPage viewPage = this.viewPages[0];
        showDialog(new SelectFabsBottomSheet(getParentActivity(), new HashSet(getFabsForPage(this.viewPages[0])), new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda72
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                DialogsActivity.this.lambda$createView$45(viewPage, (Set) obj);
            }
        }));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$45(ViewPage viewPage, Set set) {
        if (viewPage.selectedType != this.filterTabsView.getDefaultTabId()) {
            if (SortingFilter.isSortingFilter(false, viewPage.selectedType)) {
                getFiltersController().getSortingFilterState(SortingFilter.getFilterByIdWithExtra(false, viewPage.selectedType)).setFabs(set);
                getFiltersController().saveConfig();
            } else if (viewPage.selectedType >= getMessagesController().dialogFilters.size()) {
                return;
            } else {
                FilterSettingsModel settings = getFiltersController().getSettings(getMessagesController().dialogFilters.get(viewPage.selectedType).f1373id);
                settings.setFabs(set);
                getFiltersController().addOrEditFilterSettings(settings);
            }
        } else {
            getFiltersController().setSelectedAllChatsTabFabs(set);
            getFiltersController().saveConfig();
        }
        updateFilterTabs(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$47(View view) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isInPreviewMode()) {
            finishPreviewFragment();
        } else if (this.initialDialogsType == 10) {
            if (this.delegate == null || this.selectedDialogs.isEmpty()) {
                return;
            }
            ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
            for (int i = 0; i < this.selectedDialogs.size(); i++) {
                arrayList.add(MessagesStorage.TopicKey.m46of(this.selectedDialogs.get(i).longValue(), 0));
            }
            this.delegate.didSelectDialogs(this, arrayList, null, false, null, null);
        } else if (this.floatingButton.getVisibility() == 0) {
            List<FilterFab> fabsForPage = getFabsForPage(this.viewPages[0]);
            if (fabsForPage.size() > 1) {
                expandMultiFab(!this.multiFabExpanded);
            } else {
                resolveFabClickByType(fabsForPage.get(0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$48(FilterFab filterFab) {
        expandMultiFab(false);
        resolveFabClickByType(filterFab);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$51(View view) {
        if (isPremiumRestoreHintVisible() || !isPremiumHintVisible()) {
            return false;
        }
        this.filterOptions = ItemOptions.makeOptions(this, this.dialogsHintCell).setScrimViewBackground(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundWhite))).add(C3290R.C3292drawable.fork_wallet_crypto_cipher_eye, LocaleController.getString("Hide", C3290R.string.Hide), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$50();
            }
        }).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$50() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda95
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$49();
            }
        }, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$49() {
        SharedConfig.setDialogsPremiumHintEnabled(false);
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$52(Long l) {
        this.cacheSize = l;
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$53(Long l, Long l2) {
        this.deviceSize = l;
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$32 */
    /* loaded from: classes5.dex */
    public class C553132 implements RecentChatsBar.Delegate {
        C553132() {
        }

        @Override // com.iMe.p031ui.recent_chats.RecentChatsBar.Delegate
        public void onRecentChatClick(HistoryDialogModel historyDialogModel, View view) {
            long dialogId = historyDialogModel.getDialogId();
            long j = -dialogId;
            TLRPC$Chat chat = DialogsActivity.this.getMessagesController().getChat(Long.valueOf(j));
            if (chat != null && chat.forum) {
                boolean z = (LocaleController.isRTL || DialogsActivity.this.searching || (AndroidUtilities.isTablet() && DialogsActivity.this.folderId != 0)) ? false : true;
                Bundle bundle = new Bundle();
                bundle.putLong("chat_id", j);
                bundle.putBoolean("forward_to", true);
                if (SharedConfig.getDevicePerformanceClass() == 0) {
                    DialogsActivity.this.presentFragment(new TopicsFragment(bundle));
                    return;
                } else if (z) {
                    if (DialogsActivity.this.searching) {
                        return;
                    }
                    BaseFragment baseFragment = DialogsActivity.this.rightSlidingDialogContainer.currentFragment;
                    if (baseFragment == null || ((TopicsFragment) baseFragment).getDialogId() != dialogId) {
                        DialogsActivity.this.viewPages[0].listView.prepareSelectorForAnimation();
                        TopicsFragment topicsFragment = new TopicsFragment(bundle);
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        topicsFragment.parentDialogsActivity = dialogsActivity;
                        dialogsActivity.rightSlidingDialogContainer.presentFragment(dialogsActivity.getParentLayout(), topicsFragment);
                    } else {
                        DialogsActivity.this.rightSlidingDialogContainer.lambda$presentFragment$1();
                    }
                    DialogsActivity.this.searchViewPager.updateTabs();
                    return;
                } else {
                    DialogsActivity.this.presentFragment(new TopicsFragment(bundle));
                    return;
                }
            }
            DialogsActivity.this.presentFragment(ChatActivity.newInstanceForDialogId(dialogId));
        }

        @Override // com.iMe.p031ui.recent_chats.RecentChatsBar.Delegate
        public void onRecentChatLongClick(HistoryDialogModel historyDialogModel, View view) {
            final long dialogId = historyDialogModel.getDialogId();
            LockedSectionsController.SectionPasscodeData sectionsPasscodeData = DialogsActivity.this.getLockedSectionsController().getSectionsPasscodeData(LockedSection.CLOUD);
            if (dialogId == DialogsActivity.this.getUserConfig().getClientUserId() && sectionsPasscodeData != null && !sectionsPasscodeData.getPasscodeHash().isEmpty()) {
                DialogsActivity.this.showToast(LocaleController.getInternalString(C3290R.string.section_is_locked));
                return;
            }
            ActionBarPopupWindow.ActionBarPopupWindowLayout[] actionBarPopupWindowLayoutArr = {new ActionBarPopupWindow.ActionBarPopupWindowLayout(DialogsActivity.this.getParentActivity(), C3290R.C3292drawable.popup_fixed_alert, DialogsActivity.this.getResourceProvider(), 2)};
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), true, false);
            if (historyDialogModel.isPinned()) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("UnpinMessage", C3290R.string.UnpinMessage), C3290R.C3292drawable.msg_unpin);
            } else {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("PinMessage", C3290R.string.PinMessage), C3290R.C3292drawable.msg_pin);
            }
            actionBarMenuSubItem.setMinimumWidth(160);
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C553132.this.lambda$onRecentChatLongClick$0(dialogId, view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem);
            ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, false);
            DialogsActivity dialogsActivity = DialogsActivity.this;
            int i = Theme.key_text_RedRegular;
            actionBarMenuSubItem2.setIconColor(dialogsActivity.getThemedColor(i));
            DialogsActivity dialogsActivity2 = DialogsActivity.this;
            int i2 = Theme.key_text_RedBold;
            actionBarMenuSubItem2.setTextColor(dialogsActivity2.getThemedColor(i2));
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("DeleteFromRecent", C3290R.string.DeleteFromRecent), C3290R.C3292drawable.msg_delete);
            actionBarMenuSubItem2.setMinimumWidth(160);
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C553132.this.lambda$onRecentChatLongClick$2(dialogId, view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem2);
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, false);
            actionBarMenuSubItem3.setIconColor(DialogsActivity.this.getThemedColor(i));
            actionBarMenuSubItem3.setTextColor(DialogsActivity.this.getThemedColor(i2));
            actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("ClearRecentHistory", C3290R.string.ClearRecentHistory), C3290R.C3292drawable.msg_clear);
            actionBarMenuSubItem3.setMinimumWidth(160);
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C553132.this.lambda$onRecentChatLongClick$3(view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem3);
            FrameLayout frameLayout = new FrameLayout(DialogsActivity.this.getParentActivity());
            frameLayout.setBackgroundColor(DialogsActivity.this.getThemedColor(Theme.key_actionBarDefaultSubmenuSeparator));
            actionBarPopupWindowLayoutArr[0].addView((View) frameLayout, LayoutHelper.createLinear(-1, 8));
            ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, false);
            actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString("Settings", C3290R.string.Settings), C3290R.C3292drawable.msg_settings);
            actionBarMenuSubItem4.setMinimumWidth(160);
            actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C553132.this.lambda$onRecentChatLongClick$5(view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem4);
            ActionBarMenuSubItem actionBarMenuSubItem5 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, true);
            actionBarMenuSubItem5.setTextAndIcon(LocaleController.getString("Disable", C3290R.string.Disable), C3290R.C3292drawable.msg_disable);
            actionBarMenuSubItem5.setMinimumWidth(160);
            actionBarMenuSubItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C553132.this.lambda$onRecentChatLongClick$8(view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem5);
            ChatActivity newInstanceForDialogId = ChatActivity.newInstanceForDialogId(dialogId);
            if (DialogsActivity.this.getMessagesController().checkCanOpenChat(newInstanceForDialogId.getArguments(), DialogsActivity.this)) {
                DialogsActivity.this.prepareBlurBitmap();
                ((BaseFragment) DialogsActivity.this).parentLayout.setHighlightActionButtons(true);
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    DialogsActivity.this.presentFragmentAsPreview(newInstanceForDialogId);
                    return;
                }
                DialogsActivity.this.presentFragmentAsPreviewWithMenu(newInstanceForDialogId, actionBarPopupWindowLayoutArr[0]);
                newInstanceForDialogId.allowExpandPreviewByClick = false;
                try {
                    newInstanceForDialogId.getAvatarContainer().getAvatarImageView().performAccessibilityAction(64, null);
                } catch (Exception unused) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$0(long j, View view) {
            if (DialogsActivity.this.recentChatsBar == null) {
                return;
            }
            DialogsActivity.this.getRecentChatsController().updatePin(j);
            DialogsActivity.this.recentChatsBar.scrollToStart();
            DialogsActivity.this.finishPreviewFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$2(long j, View view) {
            DialogsActivity.this.getRecentChatsController().removeRecentChat(j);
            DialogsActivity.this.finishPreviewFragment();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553132.this.lambda$onRecentChatLongClick$1();
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$1() {
            DialogsActivity.this.updateRecentChatsBar();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$3(View view) {
            showDeleteAlert();
            DialogsActivity.this.finishPreviewFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$5(View view) {
            DialogsActivity.this.finishPreviewFragment();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553132.this.lambda$onRecentChatLongClick$4();
                }
            }, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$4() {
            DialogsActivity.this.presentFragment(new RecentChatsDialogTypeSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$8(View view) {
            DialogsActivity.this.getRecentChatsController().setRecentChatsEnabled(false);
            DialogsActivity.this.getRecentChatsController().saveConfig();
            DialogsActivity.this.finishPreviewFragment();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553132.this.lambda$onRecentChatLongClick$7();
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$7() {
            DialogsActivity.this.updateRecentChatsBar();
            UndoView undoView = DialogsActivity.this.getUndoView();
            if (undoView != null) {
                undoView.showInfo(LocaleController.getInternalString(C3290R.string.undo_recent_chats_disabled), new Runnable() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C553132.this.lambda$onRecentChatLongClick$6();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$6() {
            DialogsActivity.this.getRecentChatsController().setRecentChatsEnabled(true);
            DialogsActivity.this.getRecentChatsController().saveConfig();
            DialogsActivity.this.updateRecentChatsBar();
        }

        @Override // com.iMe.p031ui.recent_chats.RecentChatsBar.Delegate
        public void onLongClickRelease() {
            DialogsActivity.this.finishPreviewFragment();
        }

        @Override // com.iMe.p031ui.recent_chats.RecentChatsBar.Delegate
        public void onMove(float f) {
            DialogsActivity.this.movePreviewFragment(f);
        }

        private void showDeleteAlert() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            int i = C3290R.string.ClearHistory;
            builder.setTitle(LocaleController.getString("ClearHistory", i));
            builder.setMessage(LocaleController.getInternalString(C3290R.string.recent_chats_clear_history));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    DialogsActivity.C553132.this.lambda$showDeleteAlert$9(dialogInterface, i2);
                }
            });
            builder.setPositiveButton(LocaleController.getString("ClearHistory", i), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    DialogsActivity.C553132.this.lambda$showDeleteAlert$11(dialogInterface, i2);
                }
            });
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDeleteAlert$9(DialogInterface dialogInterface, int i) {
            DialogsActivity.this.finishPreviewFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDeleteAlert$11(DialogInterface dialogInterface, int i) {
            DialogsActivity.this.getRecentChatsController().clearRecentChatsHistory();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553132.this.lambda$showDeleteAlert$10();
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDeleteAlert$10() {
            DialogsActivity.this.updateRecentChatsBar();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$33 */
    /* loaded from: classes5.dex */
    public class C553233 implements TopicsBar.Delegate {
        C553233() {
        }

        @Override // com.iMe.p031ui.topics.TopicsBar.Delegate
        public boolean canPerformActions() {
            return ((DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.isEditing()) || DialogsActivity.this.searching || ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) ? false : true;
        }

        @Override // com.iMe.p031ui.topics.TopicsBar.Delegate
        public boolean onTopicLongClick(TopicView topicView) {
            final TopicModel topic;
            boolean z = false;
            if (topicView == null || !AndroidUtilities.isActivityRunning(DialogsActivity.this.getParentActivity()) || ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed() || DialogsActivity.this.getTopicsController().hasSelectedTopic(DialogsActivity.this.isArchive()) || (topic = topicView.getTopic()) == null) {
                return false;
            }
            if (DialogsActivity.this.filterOptions != null && DialogsActivity.this.filterOptions.isShown()) {
                DialogsActivity.this.filterOptions.dismiss();
                DialogsActivity.this.filterOptions = null;
                return false;
            }
            boolean z2 = topic.getTopicId() == -2;
            DialogsActivity dialogsActivity = DialogsActivity.this;
            ItemOptions scrimViewBackground = ItemOptions.makeOptions(dialogsActivity, topicView).setScrimViewBackground(Theme.createRoundRectDrawable(AndroidUtilities.m54dp(4), Theme.getColor(Theme.key_windowBackgroundWhite)));
            if (DialogsActivity.this.topicsBar.allowReorder() && !z2) {
                z = true;
            }
            int i = C3290R.C3292drawable.tabs_reorder;
            ItemOptions addIf = scrimViewBackground.addIf(z, i, LocaleController.getString("FilterReorder", C3290R.string.FilterReorder), new Runnable() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553233.this.lambda$onTopicLongClick$0();
                }
            }).add(C3290R.C3292drawable.msg_settings, LocaleController.getString("Settings", C3290R.string.Settings), new Runnable() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553233.this.lambda$onTopicLongClick$1();
                }
            }).addIf(!z2, C3290R.C3292drawable.msg_edit, LocaleController.getInternalString(C3290R.string.topic_edit), new Runnable() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553233.this.lambda$onTopicLongClick$2(topic);
                }
            }).addIf(!z2, C3290R.C3292drawable.msg_delete, LocaleController.getString("Delete", C3290R.string.Delete), new Runnable() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553233.this.lambda$onTopicLongClick$3(topic);
                }
            });
            if (!DialogsActivity.this.getTopicsController().isNoTopicFirstEnabled()) {
                i = C3290R.C3292drawable.fork_move_to_beginning;
            }
            dialogsActivity.filterOptions = addIf.addIf(z2, i, LocaleController.getInternalString(DialogsActivity.this.getTopicsController().isNoTopicFirstEnabled() ? C3290R.string.topics_move_no_topic_to_end : C3290R.string.topics_move_no_topic_to_beginning), new Runnable() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553233.this.lambda$onTopicLongClick$5();
                }
            }).setGravity(3).translate(AndroidUtilities.m54dp(-8), AndroidUtilities.m54dp(DialogsActivity.this.getTopicsController().isTopicsBarAtBottomEnabled() ? 10 : -10)).show();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTopicLongClick$0() {
            DialogsActivity.this.resetScroll();
            DialogsActivity.this.topicsBar.setEditing(true);
            DialogsActivity.this.showDoneItem(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTopicLongClick$1() {
            DialogsActivity.this.presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTopicLongClick$2(TopicModel topicModel) {
            DialogsActivity.this.presentFragment(new FilterCreateActivity(topicModel, null, FilterActivityType.TOPIC));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTopicLongClick$5() {
            DialogsActivity.this.getTopicsController().setNoTopicFirstEnabled(!DialogsActivity.this.getTopicsController().isNoTopicFirstEnabled());
            DialogsActivity.this.getTopicsController().saveConfig();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C553233.this.lambda$onTopicLongClick$4();
                }
            }, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTopicLongClick$4() {
            DialogsActivity.this.updateTopicsBar();
        }

        @Override // com.iMe.p031ui.topics.TopicsBar.Delegate
        public void onTopicClick(long j) {
            if (j != -1) {
                DialogsActivity.this.hideFloatingButton(true);
                if (DialogsActivity.this.selectedFilterIdToRestore == -1) {
                    int currentTabId = DialogsActivity.this.filterTabsView.getCurrentTabId();
                    if (SortingFilter.isSortingFilter(DialogsActivity.this.isArchive(), currentTabId)) {
                        DialogsActivity.this.selectedFilterIdToRestore = currentTabId;
                    } else if (currentTabId >= 0 && currentTabId < DialogsActivity.this.getMessagesController().dialogFilters.size()) {
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        dialogsActivity.selectedFilterIdToRestore = dialogsActivity.getMessagesController().dialogFilters.get(currentTabId).f1373id;
                    }
                }
            } else {
                DialogsActivity.this.hideFloatingButton(false);
                if (DialogsActivity.this.filterTabsView != null) {
                    DialogsActivity.this.filterTabsView.notifyTabCounterChanged(DialogsActivity.this.filterTabsView.getDefaultTabId());
                }
            }
            DialogsActivity.this.getTopicsController().selectTopic(DialogsActivity.this.isArchive(), j);
            DialogsActivity.this.updateFilterTabs(true, true);
            DialogsActivity.this.setScrollY(BitmapDescriptorFactory.HUE_RED);
            DialogsActivity.this.switchToCurrentSelectedMode(false);
        }

        @Override // com.iMe.p031ui.topics.TopicsBar.Delegate
        public boolean isTabMenuVisible() {
            return DialogsActivity.this.filterOptions != null && DialogsActivity.this.filterOptions.isShown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: showDeleteAlert */
        public void lambda$onTopicLongClick$3(final TopicModel topicModel) {
            if (topicModel == null || !AndroidUtilities.isActivityRunning(DialogsActivity.this.getParentActivity())) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getInternalString(C3290R.string.topics_remove));
            builder.setMessage(LocaleController.getInternalString(C3290R.string.topics_remove_alert));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("Delete", C3290R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C553233.this.lambda$showDeleteAlert$6(topicModel, dialogInterface, i);
                }
            });
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDeleteAlert$6(TopicModel topicModel, DialogInterface dialogInterface, int i) {
            DialogsActivity.this.getTopicsController().removeTopicFilterDialogs(topicModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$54(View view) {
        if (this.delegate == null || this.selectedDialogs.isEmpty()) {
            return;
        }
        if (this.isCrossForward) {
            CharSequence fieldText = this.commentView.getFieldText();
            if (fieldText != null) {
                SendMessagesHelper.getInstance(UserConfig.selectedAccount).sendMessage(fieldText.toString(), getUserConfig().getClientUserId(), null, null, null, true, null, null, null, false, 0, null, false, null);
            }
            crossAccountsForward();
            return;
        }
        ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
        for (int i = 0; i < this.selectedDialogs.size(); i++) {
            arrayList.add(MessagesStorage.TopicKey.m46of(this.selectedDialogs.get(i).longValue(), 0));
        }
        this.delegate.didSelectDialogs(this, arrayList, this.commentView.getFieldText(), this.isNextButton, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$55(FrameLayout frameLayout, View view) {
        if (this.isNextButton) {
            return false;
        }
        onSendLongClick(frameLayout);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$56(View view) {
        openForwardingPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$57(View view) {
        if (SharedConfig.isAppUpdateAvailable()) {
            AndroidUtilities.openForView(SharedConfig.pendingAppUpdate.document, true, getParentActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$58(View view) {
        finishPreviewFragment();
    }

    public boolean isPremiumRestoreHintVisible() {
        return !MessagesController.getInstance(this.currentAccount).premiumLocked && this.folderId == 0 && MessagesController.getInstance(this.currentAccount).pendingSuggestions.contains("PREMIUM_RESTORE") && !getUserConfig().isPremium();
    }

    public boolean isPremiumHintVisible() {
        if (SharedConfig.isDialogsPremiumHintEnabled && !MessagesController.getInstance(this.currentAccount).premiumLocked && this.folderId == 0 && (((MessagesController.getInstance(this.currentAccount).pendingSuggestions.contains("PREMIUM_UPGRADE") && getUserConfig().isPremium()) || (MessagesController.getInstance(this.currentAccount).pendingSuggestions.contains("PREMIUM_ANNUAL") && !getUserConfig().isPremium())) && (!UserConfig.getInstance(this.currentAccount).isPremium() ? MediaDataController.getInstance(this.currentAccount).getPremiumHintAnnualDiscount(false) == null : BuildVars.useInvoiceBilling() || MediaDataController.getInstance(this.currentAccount).getPremiumHintAnnualDiscount(true) == null))) {
            this.isPremiumHintUpgrade = MessagesController.getInstance(this.currentAccount).pendingSuggestions.contains("PREMIUM_UPGRADE");
            return true;
        }
        return false;
    }

    private boolean isCacheHintVisible() {
        Long l = this.cacheSize;
        if (l == null || this.deviceSize == null) {
            return false;
        }
        if (((float) l.longValue()) / ((float) this.deviceSize.longValue()) >= 0.3f) {
            return System.currentTimeMillis() > MessagesController.getGlobalMainSettings().getLong("cache_hint_showafter", 0L);
        }
        clearCacheHintVisible();
        return false;
    }

    private void resetCacheHintVisible() {
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        long j = globalMainSettings.getLong("cache_hint_period", 604800000L);
        if (j <= 604800000) {
            j = 2592000000L;
        }
        globalMainSettings.edit().putLong("cache_hint_showafter", System.currentTimeMillis() + j).putLong("cache_hint_period", j).apply();
    }

    private void clearCacheHintVisible() {
        MessagesController.getGlobalMainSettings().edit().remove("cache_hint_showafter").remove("cache_hint_period").apply();
    }

    public void showSelectStatusDialog() {
        int i;
        int i2;
        if (this.selectAnimatedEmojiDialog != null || SharedConfig.appLocked) {
            return;
        }
        final SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
        TLRPC$User currentUser = UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
        SimpleTextView titleTextView = this.actionBar.getTitleTextView();
        if (titleTextView == null || titleTextView.getRightDrawable() == null) {
            i = 0;
            i2 = 0;
        } else {
            this.statusDrawable.play();
            boolean z = this.statusDrawable.getDrawable() instanceof AnimatedEmojiDrawable;
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set(titleTextView.getRightDrawable().getBounds());
            rect.offset((int) titleTextView.getX(), (int) titleTextView.getY());
            int m54dp = (-(this.actionBar.getHeight() - rect.centerY())) - AndroidUtilities.m54dp(16);
            i = rect.centerX() - AndroidUtilities.m54dp(16);
            DrawerProfileCell.AnimatedStatusView animatedStatusView = this.animatedStatusView;
            if (animatedStatusView != null) {
                animatedStatusView.translate(rect.centerX(), rect.centerY());
            }
            i2 = m54dp;
        }
        int i3 = i2;
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(this, getContext(), true, Integer.valueOf(i), 0, getResourceProvider()) { // from class: org.telegram.ui.DialogsActivity.43
            @Override // org.telegram.p044ui.SelectAnimatedEmojiDialog
            protected void onEmojiSelected(View view, Long l, TLRPC$Document tLRPC$Document, Integer num) {
                TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil;
                if (l == null) {
                    tLRPC$TL_emojiStatusUntil = new TLRPC$TL_emojiStatusEmpty();
                } else if (num != null) {
                    TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil2 = new TLRPC$TL_emojiStatusUntil();
                    tLRPC$TL_emojiStatusUntil2.document_id = l.longValue();
                    tLRPC$TL_emojiStatusUntil2.until = num.intValue();
                    tLRPC$TL_emojiStatusUntil = tLRPC$TL_emojiStatusUntil2;
                } else {
                    TLRPC$TL_emojiStatus tLRPC$TL_emojiStatus = new TLRPC$TL_emojiStatus();
                    tLRPC$TL_emojiStatus.document_id = l.longValue();
                    tLRPC$TL_emojiStatusUntil = tLRPC$TL_emojiStatus;
                }
                DialogsActivity.this.getMessagesController().updateEmojiStatus(tLRPC$TL_emojiStatusUntil);
                if (l != null && DialogsActivity.this.getForkCommonController().isShowPremiumStatusEnabled()) {
                    DialogsActivity.this.animatedStatusView.animateChange(ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(l));
                }
                if (selectAnimatedEmojiDialogWindowArr[0] != null) {
                    DialogsActivity.this.selectAnimatedEmojiDialog = null;
                    selectAnimatedEmojiDialogWindowArr[0].dismiss();
                }
            }
        };
        if (currentUser != null) {
            TLRPC$EmojiStatus tLRPC$EmojiStatus = currentUser.emoji_status;
            if ((tLRPC$EmojiStatus instanceof TLRPC$TL_emojiStatusUntil) && ((TLRPC$TL_emojiStatusUntil) tLRPC$EmojiStatus).until > ((int) (System.currentTimeMillis() / 1000))) {
                selectAnimatedEmojiDialog.setExpireDateHint(((TLRPC$TL_emojiStatusUntil) currentUser.emoji_status).until);
            }
        }
        if (currentUser != null && !getForkCommonController().isShowPremiumStatusEnabled()) {
            selectAnimatedEmojiDialog.setSelected(getUserConfig().getEmojiStatus());
        } else {
            selectAnimatedEmojiDialog.setSelected(this.statusDrawable.getDrawable() instanceof AnimatedEmojiDrawable ? Long.valueOf(((AnimatedEmojiDrawable) this.statusDrawable.getDrawable()).getDocumentId()) : null);
        }
        selectAnimatedEmojiDialog.setSaveState(1);
        selectAnimatedEmojiDialog.setScrimDrawable(this.statusDrawable, titleTextView);
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, -2, -2) { // from class: org.telegram.ui.DialogsActivity.44
            @Override // org.telegram.p044ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                DialogsActivity.this.selectAnimatedEmojiDialog = null;
            }
        };
        this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(this.actionBar, AndroidUtilities.m54dp(16), i3, 48);
        selectAnimatedEmojiDialogWindowArr[0].dimBehind();
    }

    private void updateDialogsHint() {
        if (this.dialogsHintCell == null) {
            return;
        }
        if (isPremiumRestoreHintVisible()) {
            this.dialogsHintCell.setVisibility(0);
            this.dialogsHintCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda43
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateDialogsHint$61(view);
                }
            });
            this.dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString(C3290R.string.RestorePremiumHintTitle, MediaDataController.getInstance(this.currentAccount).getPremiumHintAnnualDiscount(false)), Theme.key_windowBackgroundWhiteValueText, 0, null), LocaleController.getString(C3290R.string.RestorePremiumHintMessage));
        } else if (isPremiumHintVisible()) {
            this.dialogsHintCell.setVisibility(0);
            this.dialogsHintCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda29
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateDialogsHint$63(view);
                }
            });
            this.dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString(this.isPremiumHintUpgrade ? C3290R.string.SaveOnAnnualPremiumTitle : C3290R.string.UpgradePremiumTitle, MediaDataController.getInstance(this.currentAccount).getPremiumHintAnnualDiscount(false)), Theme.key_windowBackgroundWhiteValueText, 0, null), LocaleController.getString(this.isPremiumHintUpgrade ? C3290R.string.UpgradePremiumMessage : C3290R.string.SaveOnAnnualPremiumMessage));
        } else if (isCacheHintVisible()) {
            this.dialogsHintCell.setVisibility(0);
            this.dialogsHintCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda35
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateDialogsHint$65(view);
                }
            });
            this.dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString(C3290R.string.ClearStorageHintTitle, AndroidUtilities.formatFileSize(this.cacheSize.longValue())), Theme.key_windowBackgroundWhiteValueText, 0, null), LocaleController.getString(C3290R.string.ClearStorageHintMessage));
        } else {
            this.dialogsHintCell.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$61(View view) {
        presentFragment(new PremiumPreviewFragment("dialogs_hint").setSelectAnnualByDefault());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda97
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$updateDialogsHint$60();
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$60() {
        MessagesController.getInstance(this.currentAccount).removeSuggestion(0L, "PREMIUM_RESTORE");
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$63(View view) {
        presentFragment(new PremiumPreviewFragment("dialogs_hint").setSelectAnnualByDefault());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda85
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$updateDialogsHint$62();
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$62() {
        MessagesController.getInstance(this.currentAccount).removeSuggestion(0L, this.isPremiumHintUpgrade ? "PREMIUM_UPGRADE" : "PREMIUM_ANNUAL");
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$65(View view) {
        presentFragment(new CacheControlActivity());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$updateDialogsHint$64();
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$64() {
        resetCacheHintVisible();
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createGroupForThis() {
        final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
        TLRPC$RequestPeerType tLRPC$RequestPeerType = this.requestPeerType;
        if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeBroadcast) {
            Bundle bundle = new Bundle();
            bundle.putInt("step", 0);
            Boolean bool = this.requestPeerType.has_username;
            if (bool != null) {
                bundle.putBoolean("forcePublic", bool.booleanValue());
            }
            final ChannelCreateActivity channelCreateActivity = new ChannelCreateActivity(bundle);
            channelCreateActivity.setOnFinishListener(new Utilities.Callback2() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda137
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    DialogsActivity.this.lambda$createGroupForThis$75(channelCreateActivity, alertDialog, (BaseFragment) obj, (Long) obj2);
                }
            });
            presentFragment(channelCreateActivity);
        } else if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeChat) {
            Bundle bundle2 = new Bundle();
            Boolean bool2 = this.requestPeerType.bot_participant;
            bundle2.putLongArray("result", (bool2 == null || !bool2.booleanValue()) ? new long[]{getUserConfig().getClientUserId()} : new long[]{getUserConfig().getClientUserId(), this.requestPeerBotId});
            Boolean bool3 = this.requestPeerType.forum;
            bundle2.putInt("chatType", (bool3 == null || !bool3.booleanValue()) ? 4 : 5);
            bundle2.putBoolean("canToggleTopics", false);
            GroupCreateFinalActivity groupCreateFinalActivity = new GroupCreateFinalActivity(bundle2);
            groupCreateFinalActivity.setDelegate(new C554745(alertDialog));
            presentFragment(groupCreateFinalActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$75(final ChannelCreateActivity channelCreateActivity, final AlertDialog alertDialog, final BaseFragment baseFragment, final Long l) {
        Utilities.doCallbacks(new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda141
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$67(l, channelCreateActivity, baseFragment, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda142
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$69(alertDialog, l, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda139
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$71(l, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda140
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$73(l, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda143
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$74(alertDialog, l, channelCreateActivity, baseFragment, (Runnable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$67(Long l, final ChannelCreateActivity channelCreateActivity, final BaseFragment baseFragment, Runnable runnable) {
        showSendToBotAlert(getMessagesController().getChat(l), runnable, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda122
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createGroupForThis$66(channelCreateActivity, baseFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$66(ChannelCreateActivity channelCreateActivity, BaseFragment baseFragment) {
        removeSelfFromStack();
        channelCreateActivity.removeSelfFromStack();
        baseFragment.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$69(AlertDialog alertDialog, Long l, final Runnable runnable) {
        alertDialog.showDelayed(150L);
        Boolean bool = this.requestPeerType.bot_participant;
        if (bool != null && bool.booleanValue()) {
            getMessagesController().addUserToChat(l.longValue(), getMessagesController().getUser(Long.valueOf(this.requestPeerBotId)), 0, null, this, false, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda132
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean run;
                    run = runnable.run();
                    return run;
                }
            });
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$71(Long l, final Runnable runnable) {
        if (this.requestPeerType.bot_admin_rights != null) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.requestPeerBotId));
            MessagesController messagesController = getMessagesController();
            long longValue = l.longValue();
            TLRPC$RequestPeerType tLRPC$RequestPeerType = this.requestPeerType;
            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = tLRPC$RequestPeerType.bot_admin_rights;
            Boolean bool = tLRPC$RequestPeerType.bot_participant;
            messagesController.setUserAdminRole(longValue, user, tLRPC$TL_chatAdminRights, null, false, this, bool == null || !bool.booleanValue(), true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda130
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean run;
                    run = runnable.run();
                    return run;
                }
            });
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$73(Long l, final Runnable runnable) {
        if (this.requestPeerType.user_admin_rights != null) {
            getMessagesController().setUserAdminRole(l.longValue(), getAccountInstance().getUserConfig().getCurrentUser(), ChatRightsEditActivity.rightsOR(getMessagesController().getChat(l).admin_rights, this.requestPeerType.user_admin_rights), null, true, this, false, true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda131
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean run;
                    run = runnable.run();
                    return run;
                }
            });
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$74(AlertDialog alertDialog, Long l, ChannelCreateActivity channelCreateActivity, BaseFragment baseFragment, Runnable runnable) {
        alertDialog.dismiss();
        getMessagesController().loadChannelParticipants(l);
        DialogsActivityDelegate dialogsActivityDelegate = this.delegate;
        removeSelfFromStack();
        channelCreateActivity.removeSelfFromStack();
        baseFragment.finishFragment();
        if (dialogsActivityDelegate != null) {
            ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
            arrayList.add(MessagesStorage.TopicKey.m46of(-l.longValue(), 0));
            dialogsActivityDelegate.didSelectDialogs(this, arrayList, null, false, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$45 */
    /* loaded from: classes5.dex */
    public class C554745 implements GroupCreateFinalActivity.GroupCreateFinalActivityDelegate {
        final /* synthetic */ AlertDialog val$progress;

        @Override // org.telegram.p044ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
        public void didFailChatCreation() {
        }

        @Override // org.telegram.p044ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
        public void didStartChatCreation() {
        }

        C554745(AlertDialog alertDialog) {
            this.val$progress = alertDialog;
        }

        @Override // org.telegram.p044ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
        public void didFinishChatCreation(GroupCreateFinalActivity groupCreateFinalActivity, final long j) {
            final BaseFragment[] baseFragmentArr = {groupCreateFinalActivity, null};
            final AlertDialog alertDialog = this.val$progress;
            final AlertDialog alertDialog2 = this.val$progress;
            Utilities.doCallbacks(new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C554745.this.lambda$didFinishChatCreation$1(j, baseFragmentArr, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C554745.this.lambda$didFinishChatCreation$3(j, baseFragmentArr, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C554745.this.lambda$didFinishChatCreation$5(alertDialog, j, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C554745.this.lambda$didFinishChatCreation$7(j, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C554745.this.lambda$didFinishChatCreation$9(j, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C554745.this.lambda$didFinishChatCreation$10(alertDialog2, j, baseFragmentArr, (Runnable) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishChatCreation$1(long j, BaseFragment[] baseFragmentArr, final Runnable runnable) {
            if (DialogsActivity.this.requestPeerType.has_username != null && DialogsActivity.this.requestPeerType.has_username.booleanValue()) {
                Bundle bundle = new Bundle();
                bundle.putInt("step", 1);
                bundle.putLong("chat_id", j);
                bundle.putBoolean("forcePublic", DialogsActivity.this.requestPeerType.has_username.booleanValue());
                ChannelCreateActivity channelCreateActivity = new ChannelCreateActivity(bundle);
                channelCreateActivity.setOnFinishListener(new Utilities.Callback2() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        BaseFragment baseFragment = (BaseFragment) obj;
                        Long l = (Long) obj2;
                        runnable.run();
                    }
                });
                DialogsActivity.this.presentFragment(channelCreateActivity);
                baseFragmentArr[1] = channelCreateActivity;
                return;
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishChatCreation$3(long j, final BaseFragment[] baseFragmentArr, Runnable runnable) {
            DialogsActivity.this.showSendToBotAlert(DialogsActivity.this.getMessagesController().getChat(Long.valueOf(j)), runnable, new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C554745.this.lambda$didFinishChatCreation$2(baseFragmentArr);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishChatCreation$2(BaseFragment[] baseFragmentArr) {
            DialogsActivity.this.removeSelfFromStack();
            if (baseFragmentArr[1] != null) {
                baseFragmentArr[0].removeSelfFromStack();
                baseFragmentArr[1].finishFragment();
                return;
            }
            baseFragmentArr[0].finishFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishChatCreation$5(AlertDialog alertDialog, long j, final Runnable runnable) {
            alertDialog.showDelayed(150L);
            if (DialogsActivity.this.requestPeerType.bot_participant != null && DialogsActivity.this.requestPeerType.bot_participant.booleanValue()) {
                DialogsActivity.this.getMessagesController().addUserToChat(j, DialogsActivity.this.getMessagesController().getUser(Long.valueOf(DialogsActivity.this.requestPeerBotId)), 0, null, DialogsActivity.this, false, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                    public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                        boolean run;
                        run = runnable.run();
                        return run;
                    }
                });
                return;
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishChatCreation$7(long j, final Runnable runnable) {
            if (DialogsActivity.this.requestPeerType.bot_admin_rights != null) {
                TLRPC$User user = DialogsActivity.this.getMessagesController().getUser(Long.valueOf(DialogsActivity.this.requestPeerBotId));
                MessagesController messagesController = DialogsActivity.this.getMessagesController();
                TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = DialogsActivity.this.requestPeerType.bot_admin_rights;
                DialogsActivity dialogsActivity = DialogsActivity.this;
                messagesController.setUserAdminRole(j, user, tLRPC$TL_chatAdminRights, null, false, dialogsActivity, dialogsActivity.requestPeerType.bot_participant == null || !DialogsActivity.this.requestPeerType.bot_participant.booleanValue(), true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                    public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                        boolean run;
                        run = runnable.run();
                        return run;
                    }
                });
                return;
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishChatCreation$9(long j, final Runnable runnable) {
            if (DialogsActivity.this.requestPeerType.user_admin_rights != null) {
                DialogsActivity.this.getMessagesController().setUserAdminRole(j, DialogsActivity.this.getAccountInstance().getUserConfig().getCurrentUser(), ChatRightsEditActivity.rightsOR(DialogsActivity.this.getMessagesController().getChat(Long.valueOf(j)).admin_rights, DialogsActivity.this.requestPeerType.user_admin_rights), null, false, DialogsActivity.this, false, true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                    public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                        boolean run;
                        run = runnable.run();
                        return run;
                    }
                });
                return;
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishChatCreation$10(AlertDialog alertDialog, long j, BaseFragment[] baseFragmentArr, Runnable runnable) {
            alertDialog.dismiss();
            DialogsActivity.this.getMessagesController().loadChannelParticipants(Long.valueOf(j));
            DialogsActivityDelegate dialogsActivityDelegate = DialogsActivity.this.delegate;
            DialogsActivity.this.removeSelfFromStack();
            if (baseFragmentArr[1] != null) {
                baseFragmentArr[0].removeSelfFromStack();
                baseFragmentArr[1].finishFragment();
            } else {
                baseFragmentArr[0].finishFragment();
            }
            if (dialogsActivityDelegate != null) {
                ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                arrayList.add(MessagesStorage.TopicKey.m46of(-j, 0));
                dialogsActivityDelegate.didSelectDialogs(DialogsActivity.this, arrayList, null, false, null, null);
            }
        }
    }

    private void updateAppUpdateViews(boolean z) {
        boolean z2;
        if (this.updateLayout == null) {
            return;
        }
        if (SharedConfig.isAppUpdateAvailable()) {
            FileLoader.getAttachFileName(SharedConfig.pendingAppUpdate.document);
            z2 = getFileLoader().getPathToAttach(SharedConfig.pendingAppUpdate.document, true).exists();
        } else {
            z2 = false;
        }
        if (z2) {
            if (this.updateLayout.getTag() != null) {
                return;
            }
            AnimatorSet animatorSet = this.updateLayoutAnimator;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.updateLayout.setVisibility(0);
            this.updateLayout.setTag(1);
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.updateLayoutAnimator = animatorSet2;
                animatorSet2.setDuration(180L);
                this.updateLayoutAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                this.updateLayoutAnimator.playTogether(ObjectAnimator.ofFloat(this.updateLayout, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                this.updateLayoutAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.46
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        DialogsActivity.this.updateLayoutAnimator = null;
                    }
                });
                this.updateLayoutAnimator.start();
                return;
            }
            this.updateLayout.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        } else if (this.updateLayout.getTag() == null) {
        } else {
            this.updateLayout.setTag(null);
            if (z) {
                AnimatorSet animatorSet3 = new AnimatorSet();
                this.updateLayoutAnimator = animatorSet3;
                animatorSet3.setDuration(180L);
                this.updateLayoutAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                this.updateLayoutAnimator.playTogether(ObjectAnimator.ofFloat(this.updateLayout, View.TRANSLATION_Y, AndroidUtilities.m54dp(48)));
                this.updateLayoutAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.47
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (DialogsActivity.this.updateLayout.getTag() == null) {
                            DialogsActivity.this.updateLayout.setVisibility(4);
                        }
                        DialogsActivity.this.updateLayoutAnimator = null;
                    }
                });
                this.updateLayoutAnimator.start();
                return;
            }
            this.updateLayout.setTranslationY(AndroidUtilities.m54dp(48));
            this.updateLayout.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContextViewPosition() {
        FilterTabsView filterTabsView;
        boolean isFilterTabsAtBottom = isFilterTabsAtBottom();
        float f = BitmapDescriptorFactory.HUE_RED;
        float measuredHeight = ((isFilterTabsAtBottom || (filterTabsView = this.filterTabsView) == null || filterTabsView.getVisibility() == 8) ? 0.0f : this.filterTabsView.getMeasuredHeight()) + getTopicsBarHeight(true) + getRecentChatsBarHeight() + getDialogsHintCellHeight() + getArchiveHintCellHeight();
        ViewPagerFixed.TabsView tabsView = this.searchTabsView;
        float measuredHeight2 = (tabsView == null || tabsView.getVisibility() == 8) ? 0.0f : this.searchTabsView.getMeasuredHeight();
        if (this.fragmentContextView != null) {
            FragmentContextView fragmentContextView = this.fragmentLocationContextView;
            float m54dp = (fragmentContextView == null || fragmentContextView.getVisibility() != 0) ? 0.0f : AndroidUtilities.m54dp(36) + BitmapDescriptorFactory.HUE_RED;
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                FragmentContextView fragmentContextView2 = this.fragmentContextView;
                fragmentContextView2.setTranslationY(m54dp + fragmentContextView2.getTopPadding() + this.actionBar.getTranslationY() + (this.searchAnimationProgress * measuredHeight2));
            } else {
                FragmentContextView fragmentContextView3 = this.fragmentContextView;
                float topPadding = m54dp + fragmentContextView3.getTopPadding() + this.actionBar.getTranslationY();
                float f2 = this.searchAnimationProgress;
                fragmentContextView3.setTranslationY(topPadding + ((1.0f - f2) * measuredHeight) + (f2 * measuredHeight2) + this.tabsYOffset);
            }
        }
        if (this.fragmentLocationContextView != null) {
            FragmentContextView fragmentContextView4 = this.fragmentContextView;
            if (fragmentContextView4 != null && fragmentContextView4.getVisibility() == 0) {
                f = BitmapDescriptorFactory.HUE_RED + AndroidUtilities.m54dp(this.fragmentContextView.getStyleHeight()) + this.fragmentContextView.getTopPadding();
            }
            RightSlidingDialogContainer rightSlidingDialogContainer2 = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer2 != null && rightSlidingDialogContainer2.hasFragment()) {
                FragmentContextView fragmentContextView5 = this.fragmentLocationContextView;
                fragmentContextView5.setTranslationY(f + fragmentContextView5.getTopPadding() + this.actionBar.getTranslationY() + (measuredHeight2 * this.searchAnimationProgress));
                return;
            }
            FragmentContextView fragmentContextView6 = this.fragmentLocationContextView;
            float topPadding2 = f + fragmentContextView6.getTopPadding() + this.actionBar.getTranslationY();
            float f3 = this.searchAnimationProgress;
            fragmentContextView6.setTranslationY(topPadding2 + (measuredHeight * (1.0f - f3)) + (measuredHeight2 * f3) + this.tabsYOffset);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:58:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateFiltersView(boolean r11, java.util.ArrayList<java.lang.Object> r12, java.util.ArrayList<org.telegram.p044ui.Adapters.FiltersView.DateData> r13, boolean r14, boolean r15) {
        /*
            r10 = this;
            boolean r0 = r10.searchIsShowed
            if (r0 == 0) goto Lbf
            boolean r0 = r10.onlySelect
            if (r0 == 0) goto La
            goto Lbf
        La:
            org.telegram.ui.Components.SearchViewPager r0 = r10.searchViewPager
            java.util.ArrayList r0 = r0.getCurrentSearchFilters()
            r1 = 0
            r2 = r1
            r3 = r2
            r4 = r3
            r5 = r4
            r6 = r5
        L16:
            int r7 = r0.size()
            r8 = 1
            if (r2 >= r7) goto L54
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p044ui.Adapters.FiltersView.MediaFilterData) r7
            boolean r7 = r7.isMedia()
            if (r7 == 0) goto L2b
            r4 = r8
            goto L51
        L2b:
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p044ui.Adapters.FiltersView.MediaFilterData) r7
            int r7 = r7.filterType
            r9 = 4
            if (r7 != r9) goto L38
            r5 = r8
            goto L51
        L38:
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p044ui.Adapters.FiltersView.MediaFilterData) r7
            int r7 = r7.filterType
            r9 = 6
            if (r7 != r9) goto L45
            r6 = r8
            goto L51
        L45:
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p044ui.Adapters.FiltersView.MediaFilterData) r7
            int r7 = r7.filterType
            r9 = 7
            if (r7 != r9) goto L51
            r3 = r8
        L51:
            int r2 = r2 + 1
            goto L16
        L54:
            if (r3 == 0) goto L57
            r14 = r1
        L57:
            if (r12 == 0) goto L5f
            boolean r0 = r12.isEmpty()
            if (r0 == 0) goto L69
        L5f:
            if (r13 == 0) goto L67
            boolean r0 = r13.isEmpty()
            if (r0 == 0) goto L69
        L67:
            if (r14 == 0) goto L6b
        L69:
            r0 = r8
            goto L6c
        L6b:
            r0 = r1
        L6c:
            r2 = 0
            if (r4 != 0) goto L74
            if (r0 != 0) goto L74
            if (r11 == 0) goto L74
            goto L9b
        L74:
            if (r0 == 0) goto L9b
            if (r12 == 0) goto L81
            boolean r11 = r12.isEmpty()
            if (r11 != 0) goto L81
            if (r5 != 0) goto L81
            goto L82
        L81:
            r12 = r2
        L82:
            if (r13 == 0) goto L8d
            boolean r11 = r13.isEmpty()
            if (r11 != 0) goto L8d
            if (r6 != 0) goto L8d
            goto L8e
        L8d:
            r13 = r2
        L8e:
            if (r12 != 0) goto L94
            if (r13 != 0) goto L94
            if (r14 == 0) goto L9b
        L94:
            org.telegram.ui.Adapters.FiltersView r11 = r10.filtersView
            r11.setUsersAndDates(r12, r13, r14)
            r11 = r8
            goto L9c
        L9b:
            r11 = r1
        L9c:
            if (r11 != 0) goto La3
            org.telegram.ui.Adapters.FiltersView r12 = r10.filtersView
            r12.setUsersAndDates(r2, r2, r1)
        La3:
            if (r15 != 0) goto Lae
            org.telegram.ui.Adapters.FiltersView r12 = r10.filtersView
            androidx.recyclerview.widget.RecyclerView$Adapter r12 = r12.getAdapter()
            r12.notifyDataSetChanged()
        Lae:
            org.telegram.ui.Components.ViewPagerFixed$TabsView r12 = r10.searchTabsView
            if (r12 == 0) goto Lb5
            r12.hide(r11, r8)
        Lb5:
            org.telegram.ui.Adapters.FiltersView r12 = r10.filtersView
            r12.setEnabled(r11)
            org.telegram.ui.Adapters.FiltersView r11 = r10.filtersView
            r11.setVisibility(r1)
        Lbf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.updateFiltersView(boolean, java.util.ArrayList, java.util.ArrayList, boolean, boolean):void");
    }

    private void addSearchFilter(FiltersView.MediaFilterData mediaFilterData) {
        if (this.searchIsShowed) {
            ArrayList<FiltersView.MediaFilterData> currentSearchFilters = this.searchViewPager.getCurrentSearchFilters();
            if (!currentSearchFilters.isEmpty()) {
                for (int i = 0; i < currentSearchFilters.size(); i++) {
                    if (mediaFilterData.isSameType(currentSearchFilters.get(i))) {
                        return;
                    }
                }
            }
            currentSearchFilters.add(mediaFilterData);
            this.actionBar.setSearchFilter(mediaFilterData);
            this.actionBar.setSearchFieldText("");
            updateFiltersView(true, null, null, false, true);
        }
    }

    public void updateSpeedItem(boolean z) {
        boolean z2;
        if (this.speedItem == null) {
            return;
        }
        Iterator<MessageObject> it = getDownloadController().downloadingFiles.iterator();
        while (true) {
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            MessageObject next = it.next();
            if (next.getDocument() != null && next.getDocument().size >= 157286400) {
                z2 = true;
                break;
            }
        }
        Iterator<MessageObject> it2 = getDownloadController().recentDownloadingFiles.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            MessageObject next2 = it2.next();
            if (next2.getDocument() != null && next2.getDocument().size >= 157286400) {
                z2 = true;
                break;
            }
        }
        final boolean z3 = !getUserConfig().isPremium() && !getMessagesController().premiumLocked && z2 && z;
        if (z3 != (this.speedItem.getTag() != null)) {
            this.speedItem.setTag(z3 ? Boolean.TRUE : null);
            this.speedItem.setClickable(z3);
            AnimatorSet animatorSet = this.speedAnimator;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.setDuration(180L);
            Animator[] animatorArr = new Animator[3];
            ActionBarMenuItem actionBarMenuItem = this.speedItem;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z3 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            animatorArr[0] = ObjectAnimator.ofFloat(actionBarMenuItem, property, fArr);
            ActionBarMenuItem actionBarMenuItem2 = this.speedItem;
            Property property2 = View.SCALE_X;
            float[] fArr2 = new float[1];
            fArr2[0] = z3 ? 1.0f : 0.5f;
            animatorArr[1] = ObjectAnimator.ofFloat(actionBarMenuItem2, property2, fArr2);
            ActionBarMenuItem actionBarMenuItem3 = this.speedItem;
            Property property3 = View.SCALE_Y;
            float[] fArr3 = new float[1];
            fArr3[0] = z3 ? 1.0f : 0.5f;
            animatorArr[2] = ObjectAnimator.ofFloat(actionBarMenuItem3, property3, fArr3);
            animatorSet2.playTogether(animatorArr);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.48
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 21) {
                        AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) DialogsActivity.this.speedItem.getIconView().getDrawable();
                        if (!z3) {
                            if (i >= 23) {
                                animatedVectorDrawable.reset();
                                return;
                            } else {
                                animatedVectorDrawable.setVisible(false, true);
                                return;
                            }
                        }
                        animatedVectorDrawable.start();
                        if (SharedConfig.getDevicePerformanceClass() != 0) {
                            TLRPC$TL_help_premiumPromo premiumPromo = MediaDataController.getInstance(((BaseFragment) DialogsActivity.this).currentAccount).getPremiumPromo();
                            String featureTypeToServerString = PremiumPreviewFragment.featureTypeToServerString(2);
                            if (premiumPromo != null) {
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= premiumPromo.video_sections.size()) {
                                        i2 = -1;
                                        break;
                                    } else if (premiumPromo.video_sections.get(i2).equals(featureTypeToServerString)) {
                                        break;
                                    } else {
                                        i2++;
                                    }
                                }
                                if (i2 != -1) {
                                    FileLoader.getInstance(((BaseFragment) DialogsActivity.this).currentAccount).loadFile(premiumPromo.videos.get(i2), premiumPromo, 3, 0);
                                }
                            }
                        }
                    }
                }
            });
            animatorSet2.start();
            this.speedAnimator = animatorSet2;
        }
    }

    private void createActionMode(String str) {
        if (this.actionBar.actionModeIsExist(str)) {
            return;
        }
        ActionBarMenu createActionMode = this.actionBar.createActionMode(false, str);
        createActionMode.setBackgroundColor(0);
        createActionMode.drawBlur = false;
        NumberTextView numberTextView = new NumberTextView(createActionMode.getContext());
        this.selectedDialogsCountTextView = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedDialogsCountTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.selectedDialogsCountTextView.setTextColor(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon));
        createActionMode.addView(this.selectedDialogsCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, 72, 0, 0, 0));
        this.selectedDialogsCountTextView.setOnTouchListener(DialogsActivity$$ExternalSyntheticLambda60.INSTANCE);
        this.selectTopicItem = createActionMode.addItemWithWidth(IdFabric$Menu.DIALOGS_SELECT_TOPIC, C3290R.C3292drawable.fork_topic_select_26, AndroidUtilities.m54dp(54));
        int i = C3290R.C3292drawable.msg_pin;
        this.pinItem = createActionMode.addItemWithWidth(100, i, AndroidUtilities.m54dp(54));
        this.muteItem = createActionMode.addItemWithWidth(104, C3290R.C3292drawable.msg_mute, AndroidUtilities.m54dp(54));
        int i2 = C3290R.C3292drawable.msg_archive;
        this.archive2Item = createActionMode.addItemWithWidth(107, i2, AndroidUtilities.m54dp(54));
        this.deleteItem = createActionMode.addItemWithWidth(102, C3290R.C3292drawable.msg_delete, AndroidUtilities.m54dp(54), LocaleController.getString("Delete", C3290R.string.Delete));
        ActionBarMenuItem addItemWithWidth = createActionMode.addItemWithWidth(0, C3290R.C3292drawable.ic_ab_other, AndroidUtilities.m54dp(54), LocaleController.getString("AccDescrMoreOptions", C3290R.string.AccDescrMoreOptions));
        this.actionModeOtherItem = addItemWithWidth;
        this.archiveItem = addItemWithWidth.addSubItem(105, i2, LocaleController.getString("Archive", C3290R.string.Archive));
        this.pin2Item = addItemWithWidth.addSubItem(108, i, LocaleController.getString("DialogPin", C3290R.string.DialogPin));
        this.addToFolderItem = addItemWithWidth.addSubItem(109, C3290R.C3292drawable.msg_addfolder, LocaleController.getString("FilterAddTo", C3290R.string.FilterAddTo));
        this.removeFromFolderItem = addItemWithWidth.addSubItem(110, C3290R.C3292drawable.msg_removefolder, LocaleController.getString("FilterRemoveFrom", C3290R.string.FilterRemoveFrom));
        this.moveToFolderItem = addItemWithWidth.addSubItem(IdFabric$Menu.DIALOGS_MOVE_TO_FOLDER, C3290R.C3292drawable.fork_ic_replace_24, LocaleController.getInternalString(C3290R.string.dialogs_activity_move_to_folder));
        this.readItem = addItemWithWidth.addSubItem(101, C3290R.C3292drawable.msg_markread, LocaleController.getString("MarkAsRead", C3290R.string.MarkAsRead));
        this.clearItem = addItemWithWidth.addSubItem(103, C3290R.C3292drawable.msg_clear, LocaleController.getString("ClearHistory", C3290R.string.ClearHistory));
        this.blockItem = addItemWithWidth.addSubItem(106, C3290R.C3292drawable.msg_block, LocaleController.getString("BlockUser", C3290R.string.BlockUser));
        this.hiddenChatsItem = addItemWithWidth.addSubItem(IdFabric$Menu.TOGGLE_HIDDEN_CHATS, isHiddenChats() ? C3290R.C3292drawable.fork_hidden_chats_unhide : C3290R.C3292drawable.fork_hidden_chats_hide, LocaleController.getInternalString(isHiddenChats() ? C3290R.string.hidden_chats_unhide_chats : C3290R.string.hidden_chats_hide_chats));
        if (isHiddenChats()) {
            this.pin2Item.setVisibility(8);
            this.moveToFolderItem.setVisibility(8);
            this.blockItem.setVisibility(8);
            this.removeFromFolderItem.setVisibility(8);
            this.addToFolderItem.setVisibility(8);
            this.archiveItem.setVisibility(8);
            this.clearItem.setVisibility(8);
        }
        this.muteItem.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda52
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean lambda$createActionMode$77;
                lambda$createActionMode$77 = DialogsActivity.this.lambda$createActionMode$77(view);
                return lambda$createActionMode$77;
            }
        });
        this.actionModeViews.add(this.selectTopicItem);
        this.actionModeViews.add(this.pinItem);
        this.actionModeViews.add(this.archive2Item);
        this.actionModeViews.add(this.muteItem);
        this.actionModeViews.add(this.deleteItem);
        this.actionModeViews.add(addItemWithWidth);
        if (str == null) {
            this.actionBar.setActionBarMenuOnItemClick(new C555149());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createActionMode$77(View view) {
        performSelectedDialogsAction(this.selectedDialogs, 104, true, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$49 */
    /* loaded from: classes5.dex */
    public class C555149 extends C3356ActionBar.ActionBarMenuOnItemClick {
        C555149() {
        }

        @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == IdFabric$Menu.MESSAGE_FORWARD_CLOUD) {
                DialogsActivity.this.searchViewPager.onActionBarItemClick(i);
            } else if ((i == 201 || i == 200 || i == 202 || i == 203) && DialogsActivity.this.searchViewPager != null) {
                DialogsActivity.this.searchViewPager.onActionBarItemClick(i);
            } else {
                if (i == IdFabric$Menu.DIALOGS_MANAGEMENT_DELETE_ALL) {
                    if (DialogsActivity.this.getParentActivity() == null) {
                        return;
                    }
                    if (DialogsActivity.this.viewPages[0].dialogsType == 401) {
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        AlertsCreator.showConfirmationDialog(dialogsActivity, dialogsActivity.getParentActivity(), LocaleController.getString("DeleteAll", C3290R.string.DeleteAll), LocaleController.getInternalString(C3290R.string.management_bookmarks_delete_all_alert_message), LocaleController.getString("Delete", C3290R.string.Delete), true, DialogsActivity.this.getResourceProvider(), new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$49$$ExternalSyntheticLambda0
                            @Override // com.iMe.fork.utils.Callbacks$Callback1
                            public final void invoke(Object obj) {
                                DialogsActivity.C555149.this.lambda$onItemClick$0((Boolean) obj);
                            }
                        });
                        return;
                    }
                    AlertsCreator.showDeleteAllCloudDraftsAlert(DialogsActivity.this);
                } else if (i == IdFabric$Menu.DIALOGS_ARCHIVE_LOCK) {
                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                    dialogsActivity2.presentFragment(PasscodeActivity.determineOpenFragment(dialogsActivity2.getLockedSection()));
                } else {
                    int i2 = IdFabric$Menu.SEARCH_QR;
                    if (i == i2 || i == IdFabric$Menu.DIALOGS_SCAN_LOGIN_QR_CODE) {
                        if (DialogsActivity.this.getParentActivity() == null) {
                            return;
                        }
                        DialogsActivity.this.currentQrScannerType = i == i2 ? IdFabric$CustomType.QR_CODE_SCANNER_CHAT_LINK : 2;
                        if (DialogsActivity.this.getParentActivity().checkSelfPermission("android.permission.CAMERA") == 0) {
                            DialogsActivity.this.openQrCodeScan();
                        } else {
                            DialogsActivity.this.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
                        }
                    } else if (i == IdFabric$Menu.SEARCH_TEL) {
                        DialogsActivity.this.closeSearch();
                        Bundle bundle = new Bundle();
                        bundle.putInt("custom_screen_type", IdFabric$CustomType.LOGIN_SEARCH_BY_TEL);
                        DialogsActivity.this.presentFragment(new LoginActivity(bundle));
                    } else if (i == IdFabric$Menu.DIALOGS_TOOLS_SETTINGS) {
                        DialogsActivity.this.presentFragment(new SettingsToolsActivity());
                    } else if (i == IdFabric$Menu.DIALOGS_CHAT_SETTINGS) {
                        DialogsActivity.this.presentFragment(new ThemeActivity(0));
                    } else if (i == IdFabric$Menu.DIALOGS_CLEAR_CACHE) {
                        DialogsActivity.this.showClearCacheBottomSheet();
                    } else if (i == IdFabric$Menu.DIALOGS_SCROLL_TO_START || i == IdFabric$Menu.DIALOGS_SCROLL_TO_END) {
                        DialogsActivity.this.scrollToTop(i == IdFabric$Menu.DIALOGS_SCROLL_TO_END);
                    } else if (i == IdFabric$Menu.DIALOGS_MOVE_TO_FOLDER) {
                        DialogsActivity.this.moveToFolder();
                    } else if (i == IdFabric$Menu.DIALOGS_ALBUMS_CLOUD) {
                        DialogsActivity.this.presentFragment(ChatActivity.newInstanceInCloudMode());
                    } else if (i == IdFabric$Menu.DIALOGS_ALBUMS_OPEN_BY_DEFAULT) {
                        DialogsActivity.this.getAlbumsController().setOpenAlbumsInsteadCloudEnabled(true);
                        DialogsActivity.this.getAlbumsController().saveConfig();
                        DialogsActivity.this.updateAlbumsMenu();
                    } else if (i == IdFabric$Menu.DIALOGS_SORT_ALBUMS) {
                        SharedConfig.setSortCloudAlbumsByNameEnabled(!SharedConfig.isSortCloudAlbumsByNameEnabled);
                        DialogsActivity.this.updateAlbumsMenu();
                        for (ViewPage viewPage : DialogsActivity.this.viewPages) {
                            viewPage.dialogsAdapter.notifyDataSetChanged();
                        }
                    } else if (i == IdFabric$Menu.DIALOGS_SELECT_TOPIC) {
                        DialogsActivity dialogsActivity3 = DialogsActivity.this;
                        DialogsActivity dialogsActivity4 = DialogsActivity.this;
                        dialogsActivity3.showDialog(new TopicsAlert(dialogsActivity4, dialogsActivity4.selectedDialogs, new Callbacks$Callback2() { // from class: org.telegram.ui.DialogsActivity$49$$ExternalSyntheticLambda1
                            @Override // com.iMe.fork.utils.Callbacks$Callback2
                            public final void invoke(Object obj, Object obj2) {
                                DialogsActivity.C555149.this.lambda$onItemClick$1((Boolean) obj, (TopicModel) obj2);
                            }
                        }));
                    } else if (i == IdFabric$Menu.SWITCH_ACCOUNT) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("user_id", DialogsActivity.this.getUserConfig().getClientUserId());
                        if (DialogsActivity.this.switchItemImageView.getImageReceiver().hasNotThumb()) {
                            bundle2.putBoolean("expandPhoto", true);
                        }
                        DialogsActivity.this.presentFragment(new ProfileActivity(bundle2));
                    } else if (i == IdFabric$Menu.TOGGLE_ARCHIVE) {
                        if (DialogsActivity.this.forwardSwitchArchiveAnimator == null || !DialogsActivity.this.forwardSwitchArchiveAnimator.isRunning()) {
                            DialogsActivity.this.toggleForwardSwitchArchive();
                        }
                    } else if (i == -1) {
                        if (!DialogsActivity.this.isForward() || !DialogsActivity.this.searching) {
                            if (DialogsActivity.this.topicsBar != null && DialogsActivity.this.topicsBar.isEditing()) {
                                DialogsActivity.this.topicsBar.setEditing(false);
                                DialogsActivity.this.showDoneItem(false);
                                return;
                            }
                            RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
                            if (rightSlidingDialogContainer == null || !rightSlidingDialogContainer.hasFragment()) {
                                if (DialogsActivity.this.filterTabsView == null || !DialogsActivity.this.filterTabsView.isEditing()) {
                                    if (((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) {
                                        if (DialogsActivity.this.searchViewPager == null || DialogsActivity.this.searchViewPager.getVisibility() != 0 || !DialogsActivity.this.searchViewPager.actionModeShowing()) {
                                            DialogsActivity.this.hideActionMode(true);
                                            return;
                                        } else {
                                            DialogsActivity.this.searchViewPager.hideActionMode();
                                            return;
                                        }
                                    } else if (!DialogsActivity.this.onlySelect && DialogsActivity.this.folderId == 0) {
                                        if (((BaseFragment) DialogsActivity.this).parentLayout != null) {
                                            ((BaseFragment) DialogsActivity.this).parentLayout.getDrawerLayoutContainer().openDrawer(false);
                                            return;
                                        }
                                        return;
                                    } else {
                                        DialogsActivity.this.finishFragment();
                                        return;
                                    }
                                }
                                DialogsActivity.this.filterTabsView.setIsEditing(false);
                                DialogsActivity.this.showDoneItem(false);
                                return;
                            } else if (((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) {
                                if (DialogsActivity.this.searchViewPager == null || DialogsActivity.this.searchViewPager.getVisibility() != 0 || !DialogsActivity.this.searchViewPager.actionModeShowing()) {
                                    DialogsActivity.this.hideActionMode(true);
                                    return;
                                } else {
                                    DialogsActivity.this.searchViewPager.hideActionMode();
                                    return;
                                }
                            } else {
                                DialogsActivity.this.rightSlidingDialogContainer.lambda$presentFragment$1();
                                DialogsActivity.this.searchViewPager.updateTabs();
                                return;
                            }
                        }
                        DialogsActivity.this.forwardSearchEditText.setText((CharSequence) null);
                        DialogsActivity.this.commentView.hidePopup(false);
                        DialogsActivity.this.commentView.closeKeyboard();
                    } else if (i == 1) {
                        if (DialogsActivity.this.getParentActivity() == null) {
                            return;
                        }
                        SharedConfig.appLocked = true;
                        SharedConfig.saveConfig();
                        int[] iArr = new int[2];
                        DialogsActivity.this.passcodeItem.getLocationInWindow(iArr);
                        ((LaunchActivity) DialogsActivity.this.getParentActivity()).showPasscodeActivity(false, true, iArr[0] + (DialogsActivity.this.passcodeItem.getMeasuredWidth() / 2), iArr[1] + (DialogsActivity.this.passcodeItem.getMeasuredHeight() / 2), new Runnable() { // from class: org.telegram.ui.DialogsActivity$49$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.C555149.this.lambda$onItemClick$2();
                            }
                        }, new Runnable() { // from class: org.telegram.ui.DialogsActivity$49$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.C555149.this.lambda$onItemClick$3();
                            }
                        });
                        DialogsActivity.this.getNotificationsController().showNotifications();
                        DialogsActivity.this.updatePasscodeButton();
                    } else if (i == 2) {
                        DialogsActivity.this.presentFragment(new ProxyListActivity());
                    } else if (i == 3) {
                        DialogsActivity.this.showSearch(true, true, true);
                        ((BaseFragment) DialogsActivity.this).actionBar.openSearchField(true);
                    } else if (i >= 10 && i < 15) {
                        if (DialogsActivity.this.getParentActivity() != null && (DialogsActivity.this.getParentActivity() instanceof LaunchActivity)) {
                            DialogsActivityDelegate dialogsActivityDelegate = DialogsActivity.this.delegate;
                            LaunchActivity launchActivity = (LaunchActivity) DialogsActivity.this.getParentActivity();
                            int i3 = i - 10;
                            if (((BaseFragment) DialogsActivity.this).currentAccount == i3) {
                                return;
                            }
                            if (!DialogsActivity.this.isMainNoFolderDialogList()) {
                                if (DialogsActivity.this.isForward()) {
                                    if (i3 == UserConfig.selectedAccount) {
                                        ((BaseFragment) DialogsActivity.this).arguments.remove("selectAlertString");
                                        ((BaseFragment) DialogsActivity.this).arguments.remove("selectAlertStringGroup");
                                    } else {
                                        ((BaseFragment) DialogsActivity.this).arguments.putString("selectAlertString", LocaleController.getString("SendMessagesToText", C3290R.string.SendMessagesToText));
                                        ((BaseFragment) DialogsActivity.this).arguments.putString("selectAlertStringGroup", LocaleController.getString("SendMessagesToGroupText", C3290R.string.SendMessagesToGroupText));
                                    }
                                    DialogsActivity dialogsActivity5 = new DialogsActivity(((BaseFragment) DialogsActivity.this).arguments);
                                    dialogsActivity5.setCurrentAccount(i3);
                                    dialogsActivity5.setDelegate(dialogsActivityDelegate);
                                    launchActivity.presentFragment(dialogsActivity5, true, true);
                                    return;
                                }
                                launchActivity.switchToAccount(i3, true);
                                DialogsActivity dialogsActivity6 = new DialogsActivity(((BaseFragment) DialogsActivity.this).arguments);
                                dialogsActivity6.setDelegate(dialogsActivityDelegate);
                                launchActivity.presentFragment(dialogsActivity6, false, true);
                                return;
                            }
                            launchActivity.switchToAccount(i3, true);
                        }
                    } else if (i == 109) {
                        DialogsActivity dialogsActivity7 = DialogsActivity.this;
                        FiltersListBottomSheet filtersListBottomSheet = new FiltersListBottomSheet(dialogsActivity7, dialogsActivity7.selectedDialogs);
                        filtersListBottomSheet.setDelegate(new FiltersListBottomSheet.FiltersListBottomSheetDelegate() { // from class: org.telegram.ui.DialogsActivity$49$$ExternalSyntheticLambda4
                            @Override // org.telegram.p044ui.Components.FiltersListBottomSheet.FiltersListBottomSheetDelegate
                            public final void didSelectFilter(MessagesController.DialogFilter dialogFilter) {
                                DialogsActivity.C555149.this.lambda$onItemClick$4(dialogFilter);
                            }
                        });
                        DialogsActivity.this.showDialog(filtersListBottomSheet);
                    } else if (i == 110) {
                        MessagesController.DialogFilter dialogFilter = DialogsActivity.this.getMessagesController().getDialogFilters().get(DialogsActivity.this.viewPages[0].selectedType);
                        DialogsActivity dialogsActivity8 = DialogsActivity.this;
                        ArrayList<Long> dialogsCount = FiltersListBottomSheet.getDialogsCount(dialogsActivity8, dialogFilter, dialogsActivity8.selectedDialogs, false, false);
                        if ((dialogFilter != null ? dialogFilter.neverShow.size() : 0) + dialogsCount.size() > 100) {
                            DialogsActivity dialogsActivity9 = DialogsActivity.this;
                            dialogsActivity9.showDialog(AlertsCreator.createSimpleAlert(dialogsActivity9.getParentActivity(), LocaleController.getString("FilterAddToAlertFullTitle", C3290R.string.FilterAddToAlertFullTitle), LocaleController.getString("FilterAddToAlertFullText", C3290R.string.FilterAddToAlertFullText)).create());
                            return;
                        }
                        if (!dialogsCount.isEmpty()) {
                            dialogFilter.neverShow.addAll(dialogsCount);
                            for (int i4 = 0; i4 < dialogsCount.size(); i4++) {
                                Long l = dialogsCount.get(i4);
                                dialogFilter.alwaysShow.remove(l);
                                dialogFilter.pinnedDialogs.delete(l.longValue());
                            }
                            if (dialogFilter.isChatlist()) {
                                dialogFilter.neverShow.clear();
                            }
                            FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, false, false, true, false, false, DialogsActivity.this, null);
                        }
                        long longValue = dialogsCount.size() == 1 ? dialogsCount.get(0).longValue() : 0L;
                        UndoView undoView = DialogsActivity.this.getUndoView();
                        if (undoView != null) {
                            undoView.showWithAction(longValue, 21, Integer.valueOf(dialogsCount.size()), dialogFilter, (Runnable) null, (Runnable) null);
                        }
                        DialogsActivity.this.hideActionMode(false);
                    } else if (i == 100 || i == 101 || i == 102 || i == 103 || i == 104 || i == 105 || i == 106 || i == 107 || i == 108 || i == IdFabric$Menu.TOGGLE_HIDDEN_CHATS) {
                        DialogsActivity dialogsActivity10 = DialogsActivity.this;
                        dialogsActivity10.performSelectedDialogsAction(dialogsActivity10.selectedDialogs, i, true, false);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(Boolean bool) {
            if (bool.booleanValue()) {
                DialogsActivity.this.getBookmarksController().setNewBookmarks(new HashMap());
                DialogsActivity.this.getMessagesController().loadManagementBookmarks();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(Boolean bool, TopicModel topicModel) {
            if (DialogsActivity.this.getParentActivity() == null) {
                return;
            }
            DialogsActivity.this.getUndoView().showWithAction(DialogsActivity.this.selectedDialogs.size() == 1 ? ((Long) DialogsActivity.this.selectedDialogs.get(0)).longValue() : 0L, bool.booleanValue() ? 20 : 21, Integer.valueOf(DialogsActivity.this.selectedDialogs.size()), topicModel, (Runnable) null, (Runnable) null);
            DialogsActivity.this.hideActionMode(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2() {
            DialogsActivity.this.passcodeItem.setAlpha(1.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$3() {
            DialogsActivity.this.passcodeItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$4(MessagesController.DialogFilter dialogFilter) {
            ArrayList<Long> arrayList;
            ArrayList<Long> arrayList2;
            long j;
            DialogsActivity dialogsActivity = DialogsActivity.this;
            ArrayList<Long> dialogsCount = FiltersListBottomSheet.getDialogsCount(dialogsActivity, dialogFilter, dialogsActivity.selectedDialogs, true, false);
            int size = (dialogFilter != null ? dialogFilter.alwaysShow.size() : 0) + dialogsCount.size();
            if ((size <= DialogsActivity.this.getMessagesController().dialogFiltersChatsLimitDefault || DialogsActivity.this.getUserConfig().isPremium()) && size <= DialogsActivity.this.getMessagesController().dialogFiltersChatsLimitPremium) {
                if (dialogFilter != null) {
                    if (dialogsCount.isEmpty()) {
                        arrayList = dialogsCount;
                    } else {
                        for (int i = 0; i < dialogsCount.size(); i++) {
                            dialogFilter.neverShow.remove(dialogsCount.get(i));
                        }
                        dialogFilter.alwaysShow.addAll(dialogsCount);
                        arrayList = dialogsCount;
                        FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, false, false, true, true, false, DialogsActivity.this, null);
                    }
                    if (arrayList.size() == 1) {
                        arrayList2 = arrayList;
                        j = arrayList2.get(0).longValue();
                    } else {
                        arrayList2 = arrayList;
                        j = 0;
                    }
                    UndoView undoView = DialogsActivity.this.getUndoView();
                    if (undoView != null) {
                        undoView.showWithAction(j, 20, Integer.valueOf(arrayList2.size()), dialogFilter, (Runnable) null, (Runnable) null);
                    }
                } else if ((DialogsActivity.this.getMessagesController().dialogFilters.size() - 1 >= DialogsActivity.this.getMessagesController().dialogFiltersLimitDefault && !DialogsActivity.this.getUserConfig().isPremium()) || DialogsActivity.this.getMessagesController().dialogFilters.size() >= DialogsActivity.this.getMessagesController().dialogFiltersLimitPremium) {
                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                    DialogsActivity dialogsActivity3 = DialogsActivity.this;
                    dialogsActivity2.showDialog(new LimitReachedBottomSheet(dialogsActivity3, dialogsActivity3.getParentActivity(), 3, ((BaseFragment) DialogsActivity.this).currentAccount));
                } else {
                    DialogsActivity.this.presentFragment(new FilterCreateActivity(null, dialogsCount));
                }
                DialogsActivity.this.hideActionMode(true);
                return;
            }
            DialogsActivity dialogsActivity4 = DialogsActivity.this;
            DialogsActivity dialogsActivity5 = DialogsActivity.this;
            dialogsActivity4.showDialog(new LimitReachedBottomSheet(dialogsActivity5, ((BaseFragment) dialogsActivity5).fragmentView.getContext(), 4, ((BaseFragment) DialogsActivity.this).currentAccount));
        }
    }

    public void closeSearching() {
        C3356ActionBar c3356ActionBar = this.actionBar;
        if (c3356ActionBar == null || !c3356ActionBar.isSearchFieldVisible()) {
            return;
        }
        this.actionBar.closeSearchField();
        this.searchIsShowed = false;
        updateFilterTabs(true, true);
    }

    public void scrollToFolder(int i) {
        if (this.filterTabsView == null) {
            updateFilterTabs(true, true);
            if (this.filterTabsView == null) {
                return;
            }
        }
        int tabsCount = this.filterTabsView.getTabsCount() - 1;
        ArrayList<MessagesController.DialogFilter> dialogFilters = getMessagesController().getDialogFilters();
        int i2 = 0;
        while (true) {
            if (i2 >= dialogFilters.size()) {
                break;
            } else if (dialogFilters.get(i2).f1373id == i) {
                tabsCount = i2;
                break;
            } else {
                i2++;
            }
        }
        FilterTabsView.Tab tab = this.filterTabsView.getTab(tabsCount);
        if (tab != null) {
            this.filterTabsView.scrollToTab(tab, tabsCount);
        } else {
            this.filterTabsView.selectLastTab();
        }
    }

    public void switchToCurrentSelectedMode(boolean z) {
        ViewPage[] viewPageArr;
        int i = 0;
        int i2 = 0;
        while (true) {
            viewPageArr = this.viewPages;
            if (i2 >= viewPageArr.length) {
                break;
            }
            viewPageArr[i2].listView.stopScroll();
            i2++;
        }
        int i3 = viewPageArr[z ? 1 : 0].selectedType;
        Object[] objArr = (i3 == DIALOGS_TYPE_ALBUMS || isManagement()) ? 1 : null;
        if (objArr != null) {
            this.viewPages[z ? 1 : 0].dialogsType = i3;
        }
        MessagesController.DialogFilter filterById = getFilterById(i3);
        if (filterById != null && objArr == null) {
            if (filterById.isDefault()) {
                this.viewPages[z ? 1 : 0].dialogsType = this.initialDialogsType;
                this.viewPages[z ? 1 : 0].listView.updatePullState();
            } else {
                if (this.viewPages[!z ? 1 : 0].dialogsType == 7) {
                    this.viewPages[z ? 1 : 0].dialogsType = 8;
                } else {
                    this.viewPages[z ? 1 : 0].dialogsType = 7;
                }
                this.viewPages[z ? 1 : 0].listView.setScrollEnabled(true);
                getMessagesController().selectDialogFilter(filterById, this.viewPages[z ? 1 : 0].dialogsType == 8 ? 1 : 0, isArchive() ? getMessagesController().selectedArchiveDialogFilter : isForward() ? getMessagesController().selectedForwardDialogFilter : getMessagesController().selectedDialogFilter);
            }
        }
        if (filterById != null) {
            this.viewPages[1].isLocked = filterById.locked;
        }
        this.viewPages[z ? 1 : 0].dialogsAdapter.setDialogsType(this.viewPages[z ? 1 : 0].dialogsType);
        LinearLayoutManager linearLayoutManager = this.viewPages[z ? 1 : 0].layoutManager;
        if (this.viewPages[z ? 1 : 0].dialogsType == 0 && hasHiddenArchive() && this.viewPages[z ? 1 : 0].archivePullViewState == 2) {
            i = 1;
        }
        linearLayoutManager.scrollToPositionWithOffset(i, (int) this.actionBar.getTranslationY());
        checkListLoad(this.viewPages[z ? 1 : 0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showScrollbars(boolean z) {
        if (this.viewPages == null || this.scrollBarVisible == z) {
            return;
        }
        this.scrollBarVisible = z;
        int i = 0;
        while (true) {
            ViewPage[] viewPageArr = this.viewPages;
            if (i >= viewPageArr.length) {
                return;
            }
            if (z) {
                viewPageArr[i].listView.setScrollbarFadingEnabled(false);
            }
            this.viewPages[i].listView.setVerticalScrollBarEnabled(z);
            if (z) {
                this.viewPages[i].listView.setScrollbarFadingEnabled(true);
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0293, code lost:
        if (((getFiltersController().isFoldersHidden() ? 0 : r2.size() - r6) + r3.size()) == r6) goto L162;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateFilterTabs(boolean r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 1362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.updateFilterTabs(boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFilterTabs$78(int i) {
        this.filterTabsView.getListView().scrollToPosition(i);
        this.filterTabsView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDrawerSwipeEnabled() {
        RightSlidingDialogContainer rightSlidingDialogContainer;
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout == null || iNavigationLayout.getDrawerLayoutContainer() == null) {
            return;
        }
        this.parentLayout.getDrawerLayoutContainer().setAllowOpenDrawerBySwipe(((this.isFirstTab && SharedConfig.getChatSwipeAction(this.currentAccount) == 5) || SharedConfig.getChatSwipeAction(this.currentAccount) != 5) && !this.searchIsShowed && ((rightSlidingDialogContainer = this.rightSlidingDialogContainer) == null || !rightSlidingDialogContainer.hasFragment()));
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void finishFragment() {
        super.finishFragment();
        ItemOptions itemOptions = this.filterOptions;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        int i;
        View view;
        super.onResume();
        updateAlbumsMenu();
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer != null) {
            rightSlidingDialogContainer.onResume();
        }
        if (!this.parentLayout.isInPreviewMode() && (view = this.blurredView) != null && view.getVisibility() == 0 && !isForwardingPreviewShowing()) {
            if (!isForward()) {
                AndroidUtilities.removeFromParent(this.blurredView);
            } else {
                this.blurredView.setVisibility(8);
            }
            this.blurredView.setBackground(null);
        }
        updateDrawerSwipeEnabled();
        if (this.viewPages != null) {
            int i2 = 0;
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i2 >= viewPageArr.length) {
                    break;
                }
                viewPageArr[i2].dialogsAdapter.notifyDataSetChanged();
                i2++;
            }
        }
        ChatActivityEnterView chatActivityEnterView = this.commentView;
        if (chatActivityEnterView != null) {
            chatActivityEnterView.onResume();
        }
        if (!this.onlySelect && this.folderId == 0) {
            getMediaDataController().checkStickers(4);
        }
        SearchViewPager searchViewPager = this.searchViewPager;
        if (searchViewPager != null) {
            searchViewPager.onResume();
        }
        if ((this.afterSignup || getUserConfig().unacceptedTermsOfService == null) && this.checkPermission && !this.onlySelect && (i = Build.VERSION.SDK_INT) >= 23) {
            final Activity parentActivity = getParentActivity();
            if (parentActivity != null) {
                this.checkPermission = false;
                final boolean z = parentActivity.checkSelfPermission("android.permission.READ_CONTACTS") != 0;
                final boolean z2 = (i <= 28 || BuildVars.NO_SCOPED_STORAGE) && parentActivity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda124
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.this.lambda$onResume$80(z, z2, parentActivity);
                    }
                }, (this.afterSignup && z) ? 4000L : 0L);
            }
        } else if (!this.onlySelect && XiaomiUtilities.isMIUI() && Build.VERSION.SDK_INT >= 19 && !XiaomiUtilities.isCustomPermissionGranted(XiaomiUtilities.OP_SHOW_WHEN_LOCKED)) {
            if (getParentActivity() == null || MessagesController.getGlobalNotificationsSettings().getBoolean("askedAboutMiuiLockscreen", false)) {
                return;
            }
            showDialog(new AlertDialog.Builder(getParentActivity()).setTopAnimation(C3290R.raw.permission_request_apk, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(LocaleController.getString("PermissionXiaomiLockscreen", C3290R.string.PermissionXiaomiLockscreen)).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3290R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda16
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    DialogsActivity.this.lambda$onResume$81(dialogInterface, i3);
                }
            }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3290R.string.ContactsPermissionAlertNotNow), DialogsActivity$$ExternalSyntheticLambda23.INSTANCE).create());
        }
        showEnableSortingByDefaultAlert();
        showFiltersHint();
        if (this.viewPages != null) {
            int i3 = 0;
            while (true) {
                ViewPage[] viewPageArr2 = this.viewPages;
                if (i3 >= viewPageArr2.length) {
                    break;
                }
                if (viewPageArr2[i3].dialogsType == 0 && this.viewPages[i3].archivePullViewState == 2 && this.viewPages[i3].layoutManager.findFirstVisibleItemPosition() == 0 && hasHiddenArchive()) {
                    this.viewPages[i3].layoutManager.scrollToPositionWithOffset(1, (int) this.actionBar.getTranslationY());
                }
                if (i3 == 0) {
                    this.viewPages[i3].dialogsAdapter.resume();
                } else {
                    this.viewPages[i3].dialogsAdapter.pause();
                }
                i3++;
            }
        }
        showNextSupportedSuggestion();
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.DialogsActivity.50
            @Override // org.telegram.p044ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p044ui.Components.Bulletin.Delegate
            public /* synthetic */ int getBottomOffset(int i4) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i4);
            }

            @Override // org.telegram.p044ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p044ui.Components.Bulletin.Delegate
            public void onBottomOffsetChange(float f) {
                if (DialogsActivity.this.undoView[0] == null || DialogsActivity.this.undoView[0].getVisibility() != 0) {
                    DialogsActivity.this.additionalFloatingTranslation = f;
                    if (DialogsActivity.this.additionalFloatingTranslation < BitmapDescriptorFactory.HUE_RED) {
                        DialogsActivity.this.additionalFloatingTranslation = BitmapDescriptorFactory.HUE_RED;
                    }
                    if (DialogsActivity.this.floatingHidden) {
                        return;
                    }
                    DialogsActivity.this.updateFloatingButtonOffset();
                }
            }

            @Override // org.telegram.p044ui.Components.Bulletin.Delegate
            public void onShow(Bulletin bulletin) {
                if (DialogsActivity.this.undoView[0] == null || DialogsActivity.this.undoView[0].getVisibility() != 0) {
                    return;
                }
                DialogsActivity.this.undoView[0].hide(true, 2);
            }

            @Override // org.telegram.p044ui.Components.Bulletin.Delegate
            public int getTopOffset(int i4) {
                int i5 = 0;
                int measuredHeight = (((BaseFragment) DialogsActivity.this).actionBar != null ? ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight() + ((int) ((BaseFragment) DialogsActivity.this).actionBar.getTranslationY()) : 0) + ((DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0 || DialogsActivity.this.isFilterTabsAtBottom()) ? 0 : DialogsActivity.this.filterTabsView.getMeasuredHeight()) + ((DialogsActivity.this.fragmentContextView == null || !DialogsActivity.this.fragmentContextView.isCallTypeVisible()) ? 0 : AndroidUtilities.m54dp(DialogsActivity.this.fragmentContextView.getStyleHeight()));
                if (DialogsActivity.this.dialogsHintCell != null && DialogsActivity.this.dialogsHintCell.getVisibility() == 0) {
                    i5 = DialogsActivity.this.dialogsHintCell.getHeight();
                }
                return measuredHeight + i5 + DialogsActivity.this.getTopicsBarHeight(true) + DialogsActivity.this.getRecentChatsBarHeight() + DialogsActivity.this.getArchiveHintCellHeight();
            }
        });
        if (this.searchIsShowed) {
            AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        }
        int i4 = this.pendingUpdateInterfaceMask;
        if (i4 == 0) {
            i4 = 0;
        }
        updateVisibleRows(i4, false);
        this.pendingUpdateInterfaceMask = 0;
        updateProxyButton(false, true);
        checkSuggestClearDatabase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$80(boolean z, boolean z2, Activity activity) {
        this.afterSignup = false;
        if (z || z2) {
            this.askingForPermissions = true;
            if (z && this.askAboutContacts && getUserConfig().syncContacts && activity.shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS")) {
                AlertDialog create = AlertsCreator.createContactsPermissionDialog(activity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda134
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i) {
                        DialogsActivity.this.lambda$onResume$79(i);
                    }
                }).create();
                this.permissionDialog = create;
                showDialog(create);
            } else if (z2 && activity.shouldShowRequestPermissionRationale("android.permission.WRITE_EXTERNAL_STORAGE")) {
                if (activity instanceof BasePermissionsActivity) {
                    AlertDialog createPermissionErrorAlert = ((BasePermissionsActivity) activity).createPermissionErrorAlert(C3290R.raw.permission_request_folder, LocaleController.getString(C3290R.string.PermissionStorageWithHint));
                    this.permissionDialog = createPermissionErrorAlert;
                    showDialog(createPermissionErrorAlert);
                }
            } else {
                askForPermissons(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$79(int i) {
        this.askAboutContacts = i != 0;
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askAboutContacts", this.askAboutContacts).apply();
        askForPermissons(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$81(DialogInterface dialogInterface, int i) {
        Intent permissionManagerIntent = XiaomiUtilities.getPermissionManagerIntent();
        if (permissionManagerIntent != null) {
            try {
                try {
                    getParentActivity().startActivity(permissionManagerIntent);
                } catch (Exception unused) {
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
                    getParentActivity().startActivity(intent);
                }
            } catch (Exception e) {
                FileLog.m49e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onResume$82(DialogInterface dialogInterface, int i) {
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askedAboutMiuiLockscreen", true).commit();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean presentFragment(BaseFragment baseFragment) {
        boolean presentFragment = super.presentFragment(baseFragment);
        if (presentFragment && this.viewPages != null) {
            int i = 0;
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i >= viewPageArr.length) {
                    break;
                }
                viewPageArr[i].dialogsAdapter.pause();
                i++;
            }
        }
        return presentFragment;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        int i = 0;
        expandMultiFab(false);
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer != null) {
            rightSlidingDialogContainer.onPause();
        }
        ItemOptions itemOptions = this.filterOptions;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
        ChatActivityEnterView chatActivityEnterView = this.commentView;
        if (chatActivityEnterView != null) {
            chatActivityEnterView.onPause();
        }
        UndoView[] undoViewArr = this.undoView;
        if (undoViewArr[0] != null) {
            undoViewArr[0].hide(true, 0);
        }
        Bulletin bulletin = this.pinBulletin;
        if (bulletin != null) {
            bulletin.hide(false, 0L);
        }
        Bulletin.removeDelegate(this);
        if (this.viewPages == null) {
            return;
        }
        while (true) {
            ViewPage[] viewPageArr = this.viewPages;
            if (i >= viewPageArr.length) {
                return;
            }
            viewPageArr[i].dialogsAdapter.pause();
            i++;
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (isForwardingPreviewShowing()) {
            this.forwardingPreviewView.dismiss(true);
            return false;
        } else if (this.multiFabExpanded) {
            expandMultiFab(false);
            return false;
        } else if (isForward() && this.searching) {
            this.forwardSearchEditText.setText((CharSequence) null);
            return false;
        } else {
            TopicsBar topicsBar = this.topicsBar;
            if (topicsBar != null && topicsBar.isEditing()) {
                this.topicsBar.setEditing(false);
                showDoneItem(false);
                return false;
            } else if (this.isForwardToArchive) {
                toggleForwardSwitchArchive();
                return false;
            } else {
                RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
                if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                    if (this.rightSlidingDialogContainer.getFragment().onBackPressed()) {
                        this.rightSlidingDialogContainer.lambda$presentFragment$1();
                        this.searchViewPager.updateTabs();
                    }
                    return false;
                }
                ItemOptions itemOptions = this.filterOptions;
                if (itemOptions != null) {
                    itemOptions.dismiss();
                    this.filterOptions = null;
                    return false;
                }
                FilterTabsView filterTabsView = this.filterTabsView;
                if (filterTabsView != null && filterTabsView.isEditing()) {
                    this.filterTabsView.setIsEditing(false);
                    showDoneItem(false);
                    return false;
                }
                C3356ActionBar c3356ActionBar = this.actionBar;
                if (c3356ActionBar != null && c3356ActionBar.isActionModeShowed()) {
                    if (this.searchViewPager.getVisibility() == 0) {
                        this.searchViewPager.hideActionMode();
                        hideActionMode(true);
                    } else {
                        hideActionMode(true);
                    }
                    return false;
                }
                FilterTabsView filterTabsView2 = this.filterTabsView;
                if (filterTabsView2 != null && filterTabsView2.getVisibility() == 0 && !this.tabsAnimationInProgress && !this.filterTabsView.isAnimatingIndicator() && !this.startedTracking && !this.filterTabsView.isFirstTabSelected()) {
                    if (this.filterTabsView.getCurrentPosition() == 0 || isForward() || isManagement()) {
                        return super.onBackPressed();
                    }
                    this.filterTabsView.selectFirstTab();
                    return false;
                }
                ChatActivityEnterView chatActivityEnterView = this.commentView;
                if (chatActivityEnterView != null && chatActivityEnterView.isPopupShowing()) {
                    this.commentView.hidePopup(true);
                    return false;
                }
                return super.onBackPressed();
            }
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        if (this.closeSearchFieldOnHide) {
            C3356ActionBar c3356ActionBar = this.actionBar;
            if (c3356ActionBar != null) {
                c3356ActionBar.closeSearchField();
            }
            TLObject tLObject = this.searchObject;
            if (tLObject != null) {
                this.searchViewPager.dialogsSearchAdapter.putRecentSearch(this.searchDialogId, tLObject);
                this.searchObject = null;
            }
            this.closeSearchFieldOnHide = false;
        }
        FilterTabsView filterTabsView = this.filterTabsView;
        if (filterTabsView != null && filterTabsView.getVisibility() == 0 && this.filterTabsViewIsVisible) {
            int i = (int) (-this.actionBar.getTranslationY());
            int currentActionBarHeight = C3356ActionBar.getCurrentActionBarHeight();
            if (i != 0 && i != currentActionBarHeight) {
                if (i >= currentActionBarHeight / 2) {
                    if (this.viewPages[0].listView.canScrollVertically(1)) {
                        setScrollY(-currentActionBarHeight);
                    }
                } else {
                    setScrollY(BitmapDescriptorFactory.HUE_RED);
                }
            }
        }
        UndoView[] undoViewArr = this.undoView;
        if (undoViewArr[0] != null) {
            undoViewArr[0].hide(true, 0);
        }
        Bulletin bulletin = this.pinBulletin;
        if (bulletin != null) {
            bulletin.hide(false, 0L);
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void setInPreviewMode(boolean z) {
        super.setInPreviewMode(z);
        if (z || this.avatarContainer == null) {
            return;
        }
        this.actionBar.setBackground(null);
        ((ViewGroup.MarginLayoutParams) this.actionBar.getLayoutParams()).topMargin = 0;
        this.actionBar.removeView(this.avatarContainer);
        this.avatarContainer = null;
        updateFilterTabs(false, false);
        this.floatingButton.setVisibility(0);
        ContentView contentView = (ContentView) this.fragmentView;
        FragmentContextView fragmentContextView = this.fragmentContextView;
        if (fragmentContextView != null) {
            contentView.addView(fragmentContextView);
        }
        FragmentContextView fragmentContextView2 = this.fragmentLocationContextView;
        if (fragmentContextView2 != null) {
            contentView.addView(fragmentContextView2);
        }
    }

    public boolean addOrRemoveSelectedDialog(long j, View view) {
        Object chat;
        if (isForward()) {
            if (this.forwardSpansByDialogIds.indexOfKey(j) >= 0) {
                if (view instanceof ProfileSearchCell) {
                    ((ProfileSearchCell) view).setChecked(false, true);
                }
                this.forwardSpansContainer.removeSpan(this.forwardSpansByDialogIds.get(j));
            } else {
                if (view instanceof ProfileSearchCell) {
                    ((ProfileSearchCell) view).setChecked(true, true);
                }
                if (DialogObject.isEncryptedDialog(j)) {
                    chat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j)));
                } else if (DialogObject.isUserDialog(j)) {
                    chat = getMessagesController().getUser(Long.valueOf(j));
                } else {
                    chat = getMessagesController().getChat(Long.valueOf(-j));
                }
                GroupCreateSpan groupCreateSpan = new GroupCreateSpan(getParentActivity(), chat);
                groupCreateSpan.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda39
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        DialogsActivity.this.lambda$addOrRemoveSelectedDialog$83(view2);
                    }
                });
                this.forwardSpansContainer.addSpan(groupCreateSpan, true);
            }
        }
        if (this.onlySelect && getMessagesController().isForum(j)) {
            return false;
        }
        if (this.selectedDialogs.contains(Long.valueOf(j))) {
            this.selectedDialogs.remove(Long.valueOf(j));
            if (view instanceof DialogCell) {
                ((DialogCell) view).setChecked(false, true);
            } else if (view instanceof ProfileSearchCell) {
                ((ProfileSearchCell) view).setChecked(false, true);
            }
            return false;
        }
        this.selectedDialogs.add(Long.valueOf(j));
        if (view instanceof DialogCell) {
            ((DialogCell) view).setChecked(true, true);
        } else if (view instanceof ProfileSearchCell) {
            ((ProfileSearchCell) view).setChecked(true, true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addOrRemoveSelectedDialog$83(View view) {
        GroupCreateSpan groupCreateSpan = (GroupCreateSpan) view;
        if (groupCreateSpan.isDeleting()) {
            addOrRemoveSelectedDialog(groupCreateSpan.getDialogId(), null);
            findAndUpdateCheckBox(groupCreateSpan.getDialogId(), false);
            updateSelectedCount();
            this.forwardCurrentDeletingSpan = null;
            return;
        }
        GroupCreateSpan groupCreateSpan2 = this.forwardCurrentDeletingSpan;
        if (groupCreateSpan2 != null) {
            groupCreateSpan2.cancelDeleteAnimation();
        }
        this.forwardCurrentDeletingSpan = groupCreateSpan;
        groupCreateSpan.startDeleteAnimation();
    }

    public void search(String str, boolean z) {
        showSearch(true, false, z);
        this.actionBar.openSearchField(str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSearch(final boolean z, boolean z2, boolean z3) {
        FilterTabsView filterTabsView;
        RecentChatsBar recentChatsBar;
        TopicsBar topicsBar;
        RightSlidingDialogContainer rightSlidingDialogContainer;
        int i;
        if (!z) {
            updateSpeedItem(false);
        }
        int i2 = this.initialDialogsType;
        boolean z4 = (i2 == 0 || i2 == 3) ? z3 : false;
        Animator animator = this.topicsBarAlphaAnimator;
        if (animator != null) {
            animator.cancel();
            this.topicsBarAlphaAnimator = null;
        }
        Animator animator2 = this.recentChatsAlphaAnimator;
        if (animator2 != null) {
            animator2.cancel();
            this.recentChatsAlphaAnimator = null;
        }
        AnimatorSet animatorSet = this.searchAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.searchAnimator = null;
        }
        Animator animator3 = this.tabsAlphaAnimator;
        if (animator3 != null) {
            animator3.cancel();
            this.tabsAlphaAnimator = null;
        }
        this.searchIsShowed = z;
        ((SizeNotifierFrameLayout) this.fragmentView).invalidateBlur();
        if (z) {
            boolean onlyDialogsAdapter = this.searchFiltersWasShowed ? false : onlyDialogsAdapter();
            this.searchViewPager.showOnlyDialogsAdapter(onlyDialogsAdapter);
            boolean z5 = !onlyDialogsAdapter;
            this.whiteActionBar = z5;
            if (z5) {
                this.searchFiltersWasShowed = true;
            }
            ContentView contentView = (ContentView) this.fragmentView;
            ViewPagerFixed.TabsView tabsView = this.searchTabsView;
            if (tabsView == null && !onlyDialogsAdapter) {
                this.searchTabsView = this.searchViewPager.createTabsView(false, 8);
                if (this.filtersView != null) {
                    i = 0;
                    while (i < contentView.getChildCount()) {
                        if (contentView.getChildAt(i) == this.filtersView) {
                            break;
                        }
                        i++;
                    }
                }
                i = -1;
                if (i > 0) {
                    contentView.addView(this.searchTabsView, i, LayoutHelper.createFrame(-1, 44));
                } else {
                    contentView.addView(this.searchTabsView, LayoutHelper.createFrame(-1, 44));
                }
            } else if (tabsView != null && onlyDialogsAdapter) {
                ViewParent parent = tabsView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.searchTabsView);
                }
                this.searchTabsView = null;
            }
            EditTextBoldCursor searchField = this.searchItem.getSearchField();
            if (this.whiteActionBar) {
                searchField.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
                searchField.setHintTextColor(Theme.getColor(Theme.key_player_time));
                searchField.setCursorColor(Theme.getColor(Theme.key_chat_messagePanelCursor));
            } else {
                int i3 = Theme.key_actionBarDefaultSearch;
                searchField.setCursorColor(Theme.getColor(i3));
                searchField.setHintTextColor(Theme.getColor(Theme.key_actionBarDefaultSearchPlaceholder));
                searchField.setTextColor(Theme.getColor(i3));
            }
            this.searchViewPager.setKeyboardHeight(((ContentView) this.fragmentView).getKeyboardHeight());
            updateDrawerSwipeEnabled();
            this.searchViewPager.clear();
            if (this.folderId != 0 && ((rightSlidingDialogContainer = this.rightSlidingDialogContainer) == null || !rightSlidingDialogContainer.hasFragment())) {
                addSearchFilter(new FiltersView.MediaFilterData(C3290R.C3292drawable.chats_archive, C3290R.string.ArchiveSearchFilter, (TLRPC$MessagesFilter) null, 7));
            }
        } else {
            updateDrawerSwipeEnabled();
        }
        if (z4 && this.searchViewPager.dialogsSearchAdapter.hasRecentSearch()) {
            AndroidUtilities.setAdjustResizeToNothing(getParentActivity(), this.classGuid);
        } else {
            AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        }
        if (!z && (topicsBar = this.topicsBar) != null && topicsBar.getTag() != null) {
            this.topicsBar.setVisibility(0);
        }
        if (!z && (recentChatsBar = this.recentChatsBar) != null && recentChatsBar.getTag() != null) {
            this.recentChatsBar.setVisibility(0);
        }
        if (!z && (filterTabsView = this.filterTabsView) != null && this.canShowFilterTabsView) {
            filterTabsView.setVisibility(0);
        }
        boolean z6 = SharedConfig.getDevicePerformanceClass() == 0 || !LiteMode.isEnabled(LiteMode.FLAG_CHAT_SCALE);
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z4) {
            if (!z) {
                this.viewPages[0].listView.setVisibility(0);
                this.viewPages[0].setVisibility(0);
            } else {
                this.searchViewPager.setVisibility(0);
                this.searchViewPager.reset();
                updateFiltersView(true, null, null, false, false);
                ViewPagerFixed.TabsView tabsView2 = this.searchTabsView;
                if (tabsView2 != null) {
                    tabsView2.hide(false, false);
                    this.searchTabsView.setVisibility(0);
                }
            }
            setDialogsListFrozen(true);
            this.viewPages[0].listView.setVerticalScrollBarEnabled(false);
            SearchViewPager searchViewPager = this.searchViewPager;
            int i4 = Theme.key_windowBackgroundWhite;
            searchViewPager.setBackgroundColor(Theme.getColor(i4));
            this.searchAnimator = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            ViewPage viewPage = this.viewPages[0];
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 0.0f : 1.0f;
            arrayList.add(ObjectAnimator.ofFloat(viewPage, property, fArr));
            if (!z6) {
                ViewPage viewPage2 = this.viewPages[0];
                Property property2 = View.SCALE_X;
                float[] fArr2 = new float[1];
                fArr2[0] = z ? 0.9f : 1.0f;
                arrayList.add(ObjectAnimator.ofFloat(viewPage2, property2, fArr2));
                ViewPage viewPage3 = this.viewPages[0];
                Property property3 = View.SCALE_Y;
                float[] fArr3 = new float[1];
                fArr3[0] = z ? 0.9f : 1.0f;
                arrayList.add(ObjectAnimator.ofFloat(viewPage3, property3, fArr3));
            } else {
                this.viewPages[0].setScaleX(1.0f);
                this.viewPages[0].setScaleY(1.0f);
            }
            RightSlidingDialogContainer rightSlidingDialogContainer2 = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer2 != null) {
                rightSlidingDialogContainer2.setVisibility(0);
                RightSlidingDialogContainer rightSlidingDialogContainer3 = this.rightSlidingDialogContainer;
                Property property4 = View.ALPHA;
                float[] fArr4 = new float[1];
                fArr4[0] = z ? 0.0f : 1.0f;
                arrayList.add(ObjectAnimator.ofFloat(rightSlidingDialogContainer3, property4, fArr4));
            }
            SearchViewPager searchViewPager2 = this.searchViewPager;
            Property property5 = View.ALPHA;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(searchViewPager2, property5, fArr5));
            if (!z6) {
                SearchViewPager searchViewPager3 = this.searchViewPager;
                Property property6 = View.SCALE_X;
                float[] fArr6 = new float[1];
                fArr6[0] = z ? 1.0f : 1.05f;
                arrayList.add(ObjectAnimator.ofFloat(searchViewPager3, property6, fArr6));
                SearchViewPager searchViewPager4 = this.searchViewPager;
                Property property7 = View.SCALE_Y;
                float[] fArr7 = new float[1];
                fArr7[0] = z ? 1.0f : 1.05f;
                arrayList.add(ObjectAnimator.ofFloat(searchViewPager4, property7, fArr7));
            } else {
                this.searchViewPager.setScaleX(1.0f);
                this.searchViewPager.setScaleY(1.0f);
            }
            ActionBarMenuItem actionBarMenuItem = this.passcodeItem;
            if (actionBarMenuItem != null) {
                RLottieImageView iconView = actionBarMenuItem.getIconView();
                Property property8 = View.ALPHA;
                float[] fArr8 = new float[1];
                fArr8[0] = z ? 0.0f : 1.0f;
                arrayList.add(ObjectAnimator.ofFloat(iconView, property8, fArr8));
            }
            ActionBarMenuItem actionBarMenuItem2 = this.downloadsItem;
            if (actionBarMenuItem2 != null) {
                if (z) {
                    actionBarMenuItem2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                } else {
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem2, View.ALPHA, 1.0f));
                }
                updateProxyButton(false, false);
            }
            TopicsBar topicsBar2 = this.topicsBar;
            if (topicsBar2 != null && topicsBar2.getVisibility() == 0) {
                TopicsBar topicsBar3 = this.topicsBar;
                Property property9 = View.ALPHA;
                float[] fArr9 = new float[1];
                fArr9[0] = z ? 0.0f : 1.0f;
                ObjectAnimator duration = ObjectAnimator.ofFloat(topicsBar3, property9, fArr9).setDuration(100L);
                this.topicsBarAlphaAnimator = duration;
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.51
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator4) {
                        DialogsActivity.this.topicsBarAlphaAnimator = null;
                    }
                });
            }
            RecentChatsBar recentChatsBar2 = this.recentChatsBar;
            if (recentChatsBar2 != null && recentChatsBar2.getVisibility() == 0) {
                RecentChatsBar recentChatsBar3 = this.recentChatsBar;
                Property property10 = View.ALPHA;
                float[] fArr10 = new float[1];
                fArr10[0] = z ? 0.0f : 1.0f;
                ObjectAnimator duration2 = ObjectAnimator.ofFloat(recentChatsBar3, property10, fArr10).setDuration(100L);
                this.recentChatsAlphaAnimator = duration2;
                duration2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.52
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator4) {
                        DialogsActivity.this.recentChatsAlphaAnimator = null;
                    }
                });
            }
            FilterTabsView filterTabsView2 = this.filterTabsView;
            if (filterTabsView2 != null && filterTabsView2.getVisibility() == 0) {
                if (isForward()) {
                    ScrollView scrollView = this.forwardSpansScrollView;
                    Property property11 = View.TRANSLATION_Y;
                    float[] fArr11 = new float[1];
                    fArr11[0] = z ? -AndroidUtilities.m54dp(44) : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(scrollView, property11, fArr11));
                    FilterTabsView filterTabsView3 = this.filterTabsView;
                    Property property12 = View.TRANSLATION_Y;
                    float[] fArr12 = new float[1];
                    fArr12[0] = z ? -AndroidUtilities.m54dp(44) : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(filterTabsView3, property12, fArr12));
                    ActionBarMenuItem actionBarMenuItem3 = this.forwardSwitchArchiveItem;
                    Property property13 = View.ALPHA;
                    float[] fArr13 = new float[1];
                    fArr13[0] = z ? 0.0f : 1.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem3, property13, fArr13));
                    ActionBarMenuItem actionBarMenuItem4 = this.switchItem;
                    Property property14 = View.ALPHA;
                    float[] fArr14 = new float[1];
                    fArr14[0] = z ? 0.0f : 1.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem4, property14, fArr14));
                    this.forwardSwitchArchiveItem.setEnabled(!z);
                    this.switchItem.setEnabled(!z);
                } else if (isFilterTabsAtBottom()) {
                    FilterTabsView filterTabsView4 = this.filterTabsView;
                    Property property15 = View.TRANSLATION_Y;
                    float[] fArr15 = new float[1];
                    fArr15[0] = z ? AndroidUtilities.m54dp(44) : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(filterTabsView4, property15, fArr15));
                }
                RecyclerListView tabsContainer = this.filterTabsView.getTabsContainer();
                Property property16 = View.ALPHA;
                float[] fArr16 = new float[1];
                fArr16[0] = z ? 0.0f : 1.0f;
                ObjectAnimator duration3 = ObjectAnimator.ofFloat(tabsContainer, property16, fArr16).setDuration(100L);
                this.tabsAlphaAnimator = duration3;
                duration3.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.53
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator4) {
                        DialogsActivity.this.tabsAlphaAnimator = null;
                    }
                });
            }
            float[] fArr17 = new float[2];
            fArr17[0] = this.searchAnimationProgress;
            if (z) {
                f = 1.0f;
            }
            fArr17[1] = f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr17);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DialogsActivity.this.lambda$showSearch$84(valueAnimator);
                }
            });
            arrayList.add(ofFloat);
            this.searchAnimator.playTogether(arrayList);
            this.searchAnimator.setDuration(z ? 200L : 180L);
            this.searchAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            if (this.filterTabsViewIsVisible) {
                int color = Theme.getColor(this.folderId == 0 ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived);
                int color2 = Theme.getColor(i4);
                this.searchAnimationTabsDelayedCrossfade = ((float) ((Math.abs(Color.red(color) - Color.red(color2)) + Math.abs(Color.green(color) - Color.green(color2))) + Math.abs(Color.blue(color) - Color.blue(color2)))) / 255.0f > 0.3f;
            } else {
                this.searchAnimationTabsDelayedCrossfade = true;
            }
            if (!z) {
                this.searchAnimator.setStartDelay(20L);
                Animator animator4 = this.topicsBarAlphaAnimator;
                if (animator4 != null) {
                    animator4.setStartDelay(80L);
                }
                Animator animator5 = this.recentChatsAlphaAnimator;
                if (animator5 != null) {
                    animator5.setStartDelay(80L);
                }
                Animator animator6 = this.tabsAlphaAnimator;
                if (animator6 != null) {
                    if (this.searchAnimationTabsDelayedCrossfade) {
                        animator6.setStartDelay(80L);
                        this.tabsAlphaAnimator.setDuration(100L);
                    } else {
                        animator6.setDuration(z ? 200L : 180L);
                    }
                }
            }
            this.searchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.54
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator7) {
                    DialogsActivity.this.notificationsLocker.unlock();
                    if (DialogsActivity.this.searchAnimator != animator7) {
                        return;
                    }
                    DialogsActivity.this.setDialogsListFrozen(false);
                    if (!z) {
                        DialogsActivity.this.searchItem.collapseSearchFilters();
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        dialogsActivity.whiteActionBar = false;
                        dialogsActivity.searchViewPager.setVisibility(8);
                        if (DialogsActivity.this.searchTabsView != null) {
                            DialogsActivity.this.searchTabsView.setVisibility(8);
                        }
                        DialogsActivity.this.searchItem.clearSearchFilters();
                        DialogsActivity.this.searchViewPager.clear();
                        DialogsActivity.this.filtersView.setVisibility(8);
                        DialogsActivity.this.viewPages[0].listView.show();
                        if (!DialogsActivity.this.onlySelect) {
                            DialogsActivity.this.hideFloatingButton(false);
                        }
                        DialogsActivity.this.searchWasFullyShowed = false;
                        RightSlidingDialogContainer rightSlidingDialogContainer4 = DialogsActivity.this.rightSlidingDialogContainer;
                        if (rightSlidingDialogContainer4 != null) {
                            rightSlidingDialogContainer4.setVisibility(0);
                        }
                    } else {
                        DialogsActivity.this.viewPages[0].listView.hide();
                        if (DialogsActivity.this.topicsBar != null) {
                            DialogsActivity.this.topicsBar.setVisibility(8);
                        }
                        if (DialogsActivity.this.recentChatsBar != null) {
                            DialogsActivity.this.recentChatsBar.setVisibility(8);
                        }
                        if (DialogsActivity.this.filterTabsView != null) {
                            DialogsActivity.this.filterTabsView.setVisibility(8);
                        }
                        DialogsActivity.this.searchWasFullyShowed = true;
                        AndroidUtilities.requestAdjustResize(DialogsActivity.this.getParentActivity(), ((BaseFragment) DialogsActivity.this).classGuid);
                        DialogsActivity.this.searchItem.setVisibility(8);
                        RightSlidingDialogContainer rightSlidingDialogContainer5 = DialogsActivity.this.rightSlidingDialogContainer;
                        if (rightSlidingDialogContainer5 != null) {
                            rightSlidingDialogContainer5.setVisibility(8);
                        }
                    }
                    if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                        ((BaseFragment) DialogsActivity.this).fragmentView.requestLayout();
                    }
                    DialogsActivity.this.setSearchAnimationProgress(z ? 1.0f : 0.0f, false);
                    DialogsActivity.this.viewPages[0].listView.setVerticalScrollBarEnabled(true);
                    DialogsActivity.this.searchViewPager.setBackground(null);
                    DialogsActivity.this.searchAnimator = null;
                    if (DialogsActivity.this.downloadsItem != null) {
                        DialogsActivity.this.downloadsItem.setAlpha(z ? 0.0f : 1.0f);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator7) {
                    DialogsActivity.this.notificationsLocker.unlock();
                    if (DialogsActivity.this.searchAnimator == animator7) {
                        if (z) {
                            DialogsActivity.this.viewPages[0].listView.hide();
                        } else {
                            DialogsActivity.this.viewPages[0].listView.show();
                        }
                        DialogsActivity.this.searchAnimator = null;
                    }
                }
            });
            this.notificationsLocker.lock();
            this.searchAnimator.start();
            Animator animator7 = this.topicsBarAlphaAnimator;
            if (animator7 != null) {
                animator7.start();
            }
            Animator animator8 = this.recentChatsAlphaAnimator;
            if (animator8 != null) {
                animator8.start();
            }
            Animator animator9 = this.tabsAlphaAnimator;
            if (animator9 != null) {
                animator9.start();
            }
        } else {
            setDialogsListFrozen(false);
            if (z) {
                this.viewPages[0].listView.hide();
            } else {
                this.viewPages[0].listView.show();
            }
            this.viewPages[0].setAlpha(z ? 0.0f : 1.0f);
            if (!z6) {
                this.viewPages[0].setScaleX(z ? 0.9f : 1.0f);
                this.viewPages[0].setScaleY(z ? 0.9f : 1.0f);
            } else {
                this.viewPages[0].setScaleX(1.0f);
                this.viewPages[0].setScaleY(1.0f);
            }
            this.searchViewPager.setAlpha(z ? 1.0f : 0.0f);
            this.filtersView.setAlpha(z ? 1.0f : 0.0f);
            if (!z6) {
                this.searchViewPager.setScaleX(z ? 1.0f : 1.1f);
                this.searchViewPager.setScaleY(z ? 1.0f : 1.1f);
            } else {
                this.searchViewPager.setScaleX(1.0f);
                this.searchViewPager.setScaleY(1.0f);
            }
            TopicsBar topicsBar4 = this.topicsBar;
            if (topicsBar4 != null) {
                if (topicsBar4.getVisibility() == 0) {
                    this.topicsBar.setAlpha(z ? 0.0f : 1.0f);
                }
                if (this.topicsBar.getTag() != null && !z) {
                    this.topicsBar.setVisibility(0);
                } else {
                    this.topicsBar.setVisibility(8);
                }
            }
            RecentChatsBar recentChatsBar4 = this.recentChatsBar;
            if (recentChatsBar4 != null) {
                if (recentChatsBar4.getVisibility() == 0) {
                    this.recentChatsBar.setAlpha(z ? 0.0f : 1.0f);
                }
                if (this.recentChatsBar.getTag() != null && !z) {
                    this.recentChatsBar.setVisibility(0);
                } else {
                    this.recentChatsBar.setVisibility(8);
                }
            }
            FilterTabsView filterTabsView5 = this.filterTabsView;
            if (filterTabsView5 != null && filterTabsView5.getVisibility() == 0) {
                if (isFilterTabsAtBottom()) {
                    this.filterTabsView.setTranslationY(z ? AndroidUtilities.m54dp(44) : 0.0f);
                } else {
                    this.filterTabsView.setTranslationY(z ? -AndroidUtilities.m54dp(44) : 0.0f);
                }
                this.filterTabsView.getTabsContainer().setAlpha(z ? 0.0f : 1.0f);
            }
            FilterTabsView filterTabsView6 = this.filterTabsView;
            if (filterTabsView6 != null) {
                if (this.canShowFilterTabsView && !z) {
                    filterTabsView6.setVisibility(0);
                } else {
                    filterTabsView6.setVisibility(8);
                }
            }
            this.searchViewPager.setVisibility(z ? 0 : 8);
            setSearchAnimationProgress(z ? 1.0f : 0.0f, false);
            this.fragmentView.invalidate();
            ActionBarMenuItem actionBarMenuItem5 = this.downloadsItem;
            if (actionBarMenuItem5 != null) {
                if (!z) {
                    f = 1.0f;
                }
                actionBarMenuItem5.setAlpha(f);
            }
        }
        int i5 = this.initialSearchType;
        if (i5 >= 0) {
            SearchViewPager searchViewPager5 = this.searchViewPager;
            searchViewPager5.setPosition(searchViewPager5.getPositionForType(i5));
        }
        if (!z) {
            this.initialSearchType = -1;
        }
        if (z && z2) {
            this.searchViewPager.showDownloads();
            updateSpeedItem(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSearch$84(ValueAnimator valueAnimator) {
        setSearchAnimationProgress(((Float) valueAnimator.getAnimatedValue()).floatValue(), false);
    }

    public boolean onlyDialogsAdapter() {
        return this.onlySelect || !this.searchViewPager.dialogsSearchAdapter.hasRecentSearch() || getMessagesController().getTotalDialogsCount() <= 10;
    }

    private void updateFilterTabsVisibility(boolean z) {
        if (this.fragmentView == null) {
            return;
        }
        if (this.isPaused || this.databaseMigrationHint != null) {
            z = false;
        }
        if (this.searchIsShowed) {
            ValueAnimator valueAnimator = this.filtersTabAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            boolean z2 = this.canShowFilterTabsView;
            this.filterTabsViewIsVisible = z2;
            this.filterTabsProgress = z2 ? 1.0f : 0.0f;
            return;
        }
        final boolean z3 = this.canShowFilterTabsView;
        if (this.filterTabsViewIsVisible != z3) {
            ValueAnimator valueAnimator2 = this.filtersTabAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            this.filterTabsViewIsVisible = z3;
            if (z) {
                if (z3) {
                    if (this.filterTabsView.getVisibility() != 0) {
                        this.filterTabsView.setVisibility(0);
                    }
                    this.filtersTabAnimator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                    this.filterTabsMoveFrom = AndroidUtilities.m54dp(44);
                } else {
                    this.filtersTabAnimator = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
                    this.filterTabsMoveFrom = Math.max((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m54dp(44) + this.actionBar.getTranslationY());
                }
                final float translationY = this.actionBar.getTranslationY();
                this.filtersTabAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.55
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ViewPage[] viewPageArr;
                        DialogsActivity.this.filtersTabAnimator = null;
                        DialogsActivity.this.scrollAdditionalOffset = AndroidUtilities.m54dp(44) - DialogsActivity.this.filterTabsMoveFrom;
                        if (!z3) {
                            DialogsActivity.this.filterTabsView.setVisibility(8);
                        }
                        if (DialogsActivity.this.viewPages != null) {
                            for (ViewPage viewPage : DialogsActivity.this.viewPages) {
                                if (viewPage != null && viewPage.dialogsAdapter != null) {
                                    viewPage.dialogsAdapter.notifyDataSetChanged();
                                }
                            }
                        }
                        if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                            ((BaseFragment) DialogsActivity.this).fragmentView.requestLayout();
                        }
                        DialogsActivity.this.notificationsLocker.unlock();
                    }
                });
                this.filtersTabAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda9
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        DialogsActivity.this.lambda$updateFilterTabsVisibility$85(z3, translationY, valueAnimator3);
                    }
                });
                this.filtersTabAnimator.setDuration(220L);
                this.filtersTabAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.notificationsLocker.lock();
                this.filtersTabAnimator.start();
                View view = this.fragmentView;
                if (view != null) {
                    view.requestLayout();
                    return;
                }
                return;
            }
            this.filterTabsProgress = z3 ? 1.0f : 0.0f;
            float translationY2 = this.actionBar.getTranslationY();
            if (!z3) {
                setScrollY(this.filterTabsProgress * translationY2);
            }
            if (z3) {
                this.scrollAdditionalOffset = BitmapDescriptorFactory.HUE_RED;
            } else {
                int m54dp = AndroidUtilities.m54dp(44);
                if (translationY2 < (-m54dp)) {
                    translationY2 = m54dp;
                }
                this.scrollAdditionalOffset = translationY2;
            }
            this.filterTabsView.setVisibility(z3 ? 0 : 8);
            View view2 = this.fragmentView;
            if (view2 != null) {
                view2.requestLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFilterTabsVisibility$85(boolean z, float f, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.filterTabsProgress = floatValue;
        if (!z) {
            setScrollY(f * floatValue);
        }
        View view = this.fragmentView;
        if (view != null) {
            view.requestLayout();
        }
    }

    public void setSearchAnimationProgress(float f, boolean z) {
        this.searchAnimationProgress = f;
        boolean z2 = true;
        if (this.whiteActionBar) {
            int color = Theme.getColor(this.folderId != 0 ? Theme.key_actionBarDefaultArchivedIcon : Theme.key_actionBarDefaultIcon);
            C3356ActionBar c3356ActionBar = this.actionBar;
            int i = Theme.key_actionBarActionModeDefaultIcon;
            c3356ActionBar.setItemsColor(ColorUtils.blendARGB(color, Theme.getColor(i), this.searchAnimationProgress), false);
            this.actionBar.setItemsColor(ColorUtils.blendARGB(Theme.getColor(i), Theme.getColor(i), this.searchAnimationProgress), true);
            this.actionBar.setItemsBackgroundColor(ColorUtils.blendARGB(Theme.getColor(this.folderId != 0 ? Theme.key_actionBarDefaultArchivedSelector : Theme.key_actionBarDefaultSelector), Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), this.searchAnimationProgress), false);
        }
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
        DialogsHintCell dialogsHintCell = this.dialogsHintCell;
        if (dialogsHintCell != null) {
            dialogsHintCell.setAlpha(1.0f - f);
        }
        ArchiveHintCell archiveHintCell = this.archiveHintCell;
        if (archiveHintCell != null) {
            archiveHintCell.setAlpha(1.0f - f);
        }
        if (SharedConfig.getDevicePerformanceClass() != 0 && LiteMode.isEnabled(LiteMode.FLAG_CHAT_SCALE)) {
            z2 = false;
        }
        if (z) {
            ViewPage[] viewPageArr = this.viewPages;
            if (viewPageArr[0] != null) {
                if (f < 1.0f) {
                    viewPageArr[0].setVisibility(0);
                }
                this.viewPages[0].setAlpha(1.0f - f);
                if (!z2) {
                    float f2 = (0.1f * f) + 0.9f;
                    this.viewPages[0].setScaleX(f2);
                    this.viewPages[0].setScaleY(f2);
                }
            }
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer != null) {
                if (f >= 1.0f) {
                    rightSlidingDialogContainer.setVisibility(8);
                } else {
                    rightSlidingDialogContainer.setVisibility(0);
                    this.rightSlidingDialogContainer.setAlpha(1.0f - f);
                }
            }
            SearchViewPager searchViewPager = this.searchViewPager;
            if (searchViewPager != null) {
                searchViewPager.setAlpha(f);
                if (!z2) {
                    float f3 = ((1.0f - f) * 0.05f) + 1.0f;
                    this.searchViewPager.setScaleX(f3);
                    this.searchViewPager.setScaleY(f3);
                }
            }
            ActionBarMenuItem actionBarMenuItem = this.passcodeItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.getIconView().setAlpha(1.0f - f);
            }
            ActionBarMenuItem actionBarMenuItem2 = this.downloadsItem;
            if (actionBarMenuItem2 != null) {
                actionBarMenuItem2.setAlpha(1.0f - f);
            }
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null && filterTabsView.getVisibility() == 0) {
                this.filterTabsView.getTabsContainer().setAlpha(1.0f - f);
            }
        }
        updateContextViewPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findAndUpdateCheckBox(long j, boolean z) {
        if (this.viewPages == null) {
            return;
        }
        int i = 0;
        while (true) {
            ViewPage[] viewPageArr = this.viewPages;
            if (i >= viewPageArr.length) {
                break;
            }
            int childCount = viewPageArr[i].listView.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 < childCount) {
                    View childAt = this.viewPages[i].listView.getChildAt(i2);
                    if (childAt instanceof DialogCell) {
                        DialogCell dialogCell = (DialogCell) childAt;
                        if (dialogCell.getDialogId() == j) {
                            dialogCell.setChecked(z, true);
                            break;
                        }
                    }
                    i2++;
                }
            }
            i++;
        }
        if (isForward()) {
            int childCount2 = this.searchViewPager.searchListView.getChildCount();
            for (int i3 = 0; i3 < childCount2; i3++) {
                View childAt2 = this.searchViewPager.searchListView.getChildAt(i3);
                if (childAt2 instanceof ProfileSearchCell) {
                    ProfileSearchCell profileSearchCell = (ProfileSearchCell) childAt2;
                    if (profileSearchCell.getDialogId() == j) {
                        profileSearchCell.setChecked(z, true);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkListLoad(ViewPage viewPage) {
        final boolean z;
        final boolean z2;
        final boolean z3;
        final boolean z4;
        if (this.tabsAnimationInProgress || this.startedTracking) {
            return;
        }
        FilterTabsView filterTabsView = this.filterTabsView;
        if (filterTabsView != null && filterTabsView.getVisibility() == 0 && this.filterTabsView.isAnimatingIndicator()) {
            return;
        }
        int findFirstVisibleItemPosition = viewPage.layoutManager.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = viewPage.layoutManager.findLastVisibleItemPosition();
        int abs = Math.abs(viewPage.layoutManager.findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1;
        if (findLastVisibleItemPosition != -1) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = viewPage.listView.findViewHolderForAdapterPosition(findLastVisibleItemPosition);
            boolean z5 = findViewHolderForAdapterPosition != null && findViewHolderForAdapterPosition.getItemViewType() == 11;
            this.floatingForceVisible = z5;
            if (z5) {
                hideFloatingButton(false);
            }
        } else {
            this.floatingForceVisible = false;
        }
        if (viewPage.dialogsType == 7 || viewPage.dialogsType == 8 || (isForward() && !this.isForwardToArchive)) {
            ArrayList<MessagesController.DialogFilter> dialogFilters = getMessagesController().getDialogFilters();
            if ((viewPage.selectedType >= 0 && viewPage.selectedType < dialogFilters.size()) || SortingFilter.isSortingFilter(false, viewPage.selectedType)) {
                MessagesController.DialogFilter dialogFilter = null;
                if (SortingFilter.isSortingFilter(false, viewPage.selectedType)) {
                    int removeExtraFromId = SortingFilter.removeExtraFromId(false, viewPage.selectedType);
                    if (removeExtraFromId < getMessagesController().sortingDialogFilters.size()) {
                        dialogFilter = getMessagesController().sortingDialogFilters.get(removeExtraFromId);
                    }
                } else if (viewPage.selectedType < getMessagesController().dialogFilters.size()) {
                    dialogFilter = getMessagesController().dialogFilters.get(viewPage.selectedType);
                }
                if (dialogFilter != null && (dialogFilter.flags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED) == 0 && ((abs > 0 && findLastVisibleItemPosition >= getDialogsArray(this.currentAccount, viewPage.dialogsType, 1, this.dialogsListFrozen).size() - 10) || !getMessagesController().isDialogsEndReached(1))) {
                    boolean z6 = !getMessagesController().isDialogsEndReached(1);
                    if (z6 || !getMessagesController().isServerDialogsEndReached(1)) {
                        z = true;
                        z2 = z6;
                    } else {
                        z2 = z6;
                        z = false;
                    }
                    if ((abs > 0 || findLastVisibleItemPosition < getDialogsArray(this.currentAccount, viewPage.dialogsType, this.folderId, this.dialogsListFrozen).size() - 10) && (!(viewPage.dialogsType == 7 || viewPage.dialogsType == 8 || viewPage.dialogsType == DIALOGS_TYPE_ALBUMS) || getMessagesController().isDialogsEndReached(this.folderId))) {
                        z3 = false;
                        z4 = false;
                    } else {
                        boolean z7 = !getMessagesController().isDialogsEndReached(this.folderId);
                        if (z7 || !getMessagesController().isServerDialogsEndReached(this.folderId)) {
                            z4 = z7;
                            z3 = true;
                        } else {
                            z4 = z7;
                            z3 = false;
                        }
                    }
                    if (!z3 || z) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda125
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.this.lambda$checkListLoad$86(z3, z4, z, z2);
                            }
                        });
                    }
                    return;
                }
            }
        }
        z = false;
        z2 = false;
        if (abs > 0) {
        }
        z3 = false;
        z4 = false;
        if (z3) {
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda125
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$checkListLoad$86(z3, z4, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkListLoad$86(boolean z, boolean z2, boolean z3, boolean z4) {
        if (z) {
            getMessagesController().loadDialogs(this.folderId, -1, 100, z2);
        }
        if (z3) {
            getMessagesController().loadDialogs(1, -1, 100, z4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0282 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0283  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onItemClick(android.view.View r17, int r18, androidx.recyclerview.widget.RecyclerView.Adapter r19) {
        /*
            Method dump skipped, instructions count: 1457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.onItemClick(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Adapter):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$87(Long l) {
        presentFragment(ProfileActivity.newInstanceForDialogId(l.longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$88(String str) {
        getUndoView().showError(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$56 */
    /* loaded from: classes5.dex */
    public class C555956 implements ChatActivity.ChatActivityDelegate {
        final /* synthetic */ long val$finalDialogId;

        @Override // org.telegram.p044ui.ChatActivity.ChatActivityDelegate
        public /* synthetic */ void onForwardingMessagesChanged(ArrayList arrayList) {
            ChatActivity.ChatActivityDelegate.CC.$default$onForwardingMessagesChanged(this, arrayList);
        }

        @Override // org.telegram.p044ui.ChatActivity.ChatActivityDelegate
        public /* synthetic */ void onReport() {
            ChatActivity.ChatActivityDelegate.CC.$default$onReport(this);
        }

        @Override // org.telegram.p044ui.ChatActivity.ChatActivityDelegate
        public /* synthetic */ void setFieldText(CharSequence charSequence) {
            ChatActivity.ChatActivityDelegate.CC.$default$setFieldText(this, charSequence);
        }

        C555956(long j) {
            this.val$finalDialogId = j;
        }

        @Override // org.telegram.p044ui.ChatActivity.ChatActivityDelegate
        public void openReplyMessage(int i) {
            DialogsActivity.this.presentFragment(ChatActivity.newInstanceForDialogId(this.val$finalDialogId, i));
        }

        @Override // org.telegram.p044ui.ChatActivity.ChatActivityDelegate
        public void openSearch(String str) {
            Bundle bundle = new Bundle();
            bundle.putString("searchFromString", str);
            DialogsActivity.this.presentFragment(ChatActivity.newInstanceForDialogId(this.val$finalDialogId, 0, bundle));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.telegram.p044ui.ChatActivity.ChatActivityDelegate
        public void onUnpin(boolean z, boolean z2, final boolean z3, boolean z4, ChatActivity chatActivity, ArrayList<Integer> arrayList, HashMap<Integer, MessageObject> hashMap) {
            final int totalBookmarkMessagesCount = chatActivity.getTotalBookmarkMessagesCount();
            final ArrayList arrayList2 = new ArrayList(arrayList);
            final ArrayList arrayList3 = new ArrayList(hashMap.values());
            DialogsActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.didLoadBookmarkMessages, Long.valueOf(this.val$finalDialogId), arrayList2, Boolean.FALSE, null, null, 0, Integer.valueOf(totalBookmarkMessagesCount - arrayList3.size()), Boolean.TRUE);
            if (DialogsActivity.this.pinBulletin != null) {
                DialogsActivity.this.pinBulletin.hide();
            }
            DialogsActivity.this.showPinBulletin = true;
            final int access$38804 = DialogsActivity.access$38804(DialogsActivity.this);
            DialogsActivity dialogsActivity = DialogsActivity.this;
            ChatActivity chatActivity2 = z3 ? chatActivity : dialogsActivity;
            int size = arrayList3.size();
            final long j = this.val$finalDialogId;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$56$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C555956.this.lambda$onUnpin$0(j, arrayList2, arrayList3, totalBookmarkMessagesCount, access$38804);
                }
            };
            final long j2 = this.val$finalDialogId;
            dialogsActivity.pinBulletin = BulletinFactory.createUnpinAllMessagesBulletin(chatActivity2, size, false, runnable, new Runnable() { // from class: org.telegram.ui.DialogsActivity$56$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C555956.this.lambda$onUnpin$1(z3, j2, arrayList2, access$38804);
                }
            }, DialogsActivity.this.getResourceProvider());
            if (!z3 || DialogsActivity.this.pinBulletin == null) {
                return;
            }
            DialogsActivity.this.showPinBulletin = false;
            DialogsActivity.this.pinBulletin.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUnpin$0(long j, ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
            NotificationCenter notificationCenter = DialogsActivity.this.getNotificationCenter();
            int i3 = NotificationCenter.didLoadBookmarkMessages;
            Boolean bool = Boolean.TRUE;
            notificationCenter.postNotificationName(i3, Long.valueOf(j), arrayList, bool, arrayList2, null, 0, Integer.valueOf(i), bool);
            if (i2 == DialogsActivity.this.pinBulletinTag) {
                DialogsActivity.this.pinBulletin = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUnpin$1(boolean z, long j, ArrayList arrayList, int i) {
            if (z) {
                DialogsActivity.this.getBookmarksController().unbookmarkMessages(j, arrayList);
            } else {
                DialogsActivity.this.getBookmarksController().unbookmarkAllMessages(j);
            }
            DialogsActivity.this.getMessagesController().loadManagementBookmarks();
            if (i == DialogsActivity.this.pinBulletinTag) {
                DialogsActivity.this.pinBulletin = null;
            }
        }
    }

    public void setOpenedDialogId(long j, int i) {
        MessagesStorage.TopicKey topicKey = this.openedDialogId;
        topicKey.dialogId = j;
        topicKey.topicId = i;
        ViewPage[] viewPageArr = this.viewPages;
        if (viewPageArr == null) {
            return;
        }
        for (ViewPage viewPage : viewPageArr) {
            if (viewPage.isDefaultDialogType() && AndroidUtilities.isTablet()) {
                viewPage.dialogsAdapter.setOpenedDialogId(this.openedDialogId.dialogId);
            }
        }
        updateVisibleRows(MessagesController.UPDATE_MASK_SELECT_DIALOG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onItemLongClick(RecyclerListView recyclerListView, View view, int i, float f, float f2, final int i2, final RecyclerView.Adapter adapter) {
        TLRPC$Dialog tLRPC$Dialog;
        final ViewPage currentViewPage;
        TLRPC$EncryptedChat tLRPC$EncryptedChat;
        final long makeEncryptedDialogId;
        long makeEncryptedDialogId2;
        if (getParentActivity() != null && !(view instanceof DialogsHintCell) && !this.inPreviewMode) {
            if (!this.actionBar.isActionModeShowed() && !AndroidUtilities.isTablet() && !this.onlySelect && (view instanceof DialogCell)) {
                DialogCell dialogCell = (DialogCell) view;
                if (!getMessagesController().isForum(dialogCell.getDialogId()) && dialogCell.isPointInsideAvatar(f, f2)) {
                    return showChatPreview(dialogCell);
                }
            }
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer == null || !rightSlidingDialogContainer.hasFragment()) {
                DialogsSearchAdapter dialogsSearchAdapter = this.searchViewPager.dialogsSearchAdapter;
                if (adapter == dialogsSearchAdapter) {
                    Object item = dialogsSearchAdapter.getItem(i);
                    if (isForward()) {
                        if (item instanceof TLRPC$Chat) {
                            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) item;
                            if (tLRPC$Chat.forum) {
                                return false;
                            }
                            makeEncryptedDialogId2 = -tLRPC$Chat.f1433id;
                        } else if (item instanceof TLRPC$User) {
                            makeEncryptedDialogId2 = ((TLRPC$User) item).f1574id;
                        } else {
                            if (item instanceof TLRPC$EncryptedChat) {
                                makeEncryptedDialogId2 = DialogObject.makeEncryptedDialogId(((TLRPC$EncryptedChat) item).f1445id);
                            }
                            return false;
                        }
                        if (validateSlowModeDialog(makeEncryptedDialogId2) && checkCanWrite(makeEncryptedDialogId2)) {
                            boolean addOrRemoveSelectedDialog = addOrRemoveSelectedDialog(makeEncryptedDialogId2, view);
                            this.actionBar.closeSearchField();
                            this.forwardSearchEditText.setText((CharSequence) null);
                            findAndUpdateCheckBox(makeEncryptedDialogId2, addOrRemoveSelectedDialog);
                            updateSelectedCount();
                            return true;
                        }
                        return false;
                    } else if (!this.searchViewPager.dialogsSearchAdapter.isSearchWas()) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                        builder.setTitle(LocaleController.getString("ClearSearchSingleAlertTitle", C3290R.string.ClearSearchSingleAlertTitle));
                        if (item instanceof TLRPC$Chat) {
                            TLRPC$Chat tLRPC$Chat2 = (TLRPC$Chat) item;
                            builder.setMessage(LocaleController.formatString("ClearSearchSingleChatAlertText", C3290R.string.ClearSearchSingleChatAlertText, tLRPC$Chat2.title));
                            makeEncryptedDialogId = -tLRPC$Chat2.f1433id;
                        } else if (item instanceof TLRPC$User) {
                            TLRPC$User tLRPC$User = (TLRPC$User) item;
                            if (tLRPC$User.f1574id == getUserConfig().clientUserId) {
                                builder.setMessage(LocaleController.formatString("ClearSearchSingleChatAlertText", C3290R.string.ClearSearchSingleChatAlertText, LocaleController.getString("SavedMessages", C3290R.string.SavedMessages)));
                            } else {
                                builder.setMessage(LocaleController.formatString("ClearSearchSingleUserAlertText", C3290R.string.ClearSearchSingleUserAlertText, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name)));
                            }
                            makeEncryptedDialogId = tLRPC$User.f1574id;
                        } else if (!(item instanceof TLRPC$EncryptedChat)) {
                            return false;
                        } else {
                            TLRPC$User user = getMessagesController().getUser(Long.valueOf(((TLRPC$EncryptedChat) item).user_id));
                            builder.setMessage(LocaleController.formatString("ClearSearchSingleUserAlertText", C3290R.string.ClearSearchSingleUserAlertText, ContactsController.formatName(user.first_name, user.last_name)));
                            makeEncryptedDialogId = DialogObject.makeEncryptedDialogId(tLRPC$EncryptedChat.f1445id);
                        }
                        builder.setPositiveButton(LocaleController.getString("ClearSearchRemove", C3290R.string.ClearSearchRemove), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda19
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                DialogsActivity.this.lambda$onItemLongClick$89(makeEncryptedDialogId, dialogInterface, i3);
                            }
                        });
                        builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
                        AlertDialog create = builder.create();
                        showDialog(create);
                        TextView textView = (TextView) create.getButton(-1);
                        if (textView != null) {
                            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                        }
                        return true;
                    }
                }
                DialogsSearchAdapter dialogsSearchAdapter2 = this.searchViewPager.dialogsSearchAdapter;
                if (adapter == dialogsSearchAdapter2) {
                    if (this.onlySelect) {
                        onItemClick(view, i, adapter);
                        return false;
                    }
                    long dialogId = (!(view instanceof ProfileSearchCell) || dialogsSearchAdapter2.isGlobalSearch(i)) ? 0L : ((ProfileSearchCell) view).getDialogId();
                    if (dialogId != 0) {
                        showOrUpdateActionMode(dialogId, view);
                        return true;
                    }
                    return false;
                }
                DialogsAdapter dialogsAdapter = (DialogsAdapter) adapter;
                ArrayList<TLRPC$Dialog> dialogsArray = getDialogsArray(this.currentAccount, i2, this.isForwardToArchive ? 1 : this.folderId, this.dialogsListFrozen);
                int fixPosition = dialogsAdapter.fixPosition(i);
                if (fixPosition < 0 || fixPosition >= dialogsArray.size() || (tLRPC$Dialog = dialogsArray.get(fixPosition)) == null) {
                    return false;
                }
                if (this.onlySelect && !isManagement()) {
                    if (getMessagesController().isForum(tLRPC$Dialog.f1439id)) {
                        return false;
                    }
                    int i3 = this.initialDialogsType;
                    if ((i3 == 3 || i3 == 10) && validateSlowModeDialog(tLRPC$Dialog.f1439id)) {
                        addOrRemoveSelectedDialog(tLRPC$Dialog.f1439id, view);
                        updateSelectedCount();
                        return true;
                    }
                    return false;
                } else if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
                    onArchiveLongPress(view);
                    return false;
                } else if (this.actionBar.isActionModeShowed() && isDialogPinned(tLRPC$Dialog)) {
                    return false;
                } else {
                    showOrUpdateActionMode(tLRPC$Dialog.f1439id, view);
                    if (this.viewPages != null && (adapter instanceof DialogsAdapter) && (view instanceof DialogCell) && !isDialogPinned(tLRPC$Dialog) && (currentViewPage = getCurrentViewPage()) != null && currentViewPage.listView != null) {
                        final boolean z = !this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog.f1439id));
                        final ArrayList arrayList = new ArrayList(this.selectedDialogs);
                        currentViewPage.listView.hideSelector(true);
                        currentViewPage.listView.startMultiselect(fixPosition, false, new RecyclerListView.onMultiSelectionChanged() { // from class: org.telegram.ui.DialogsActivity.57
                            @Override // org.telegram.p044ui.Components.RecyclerListView.onMultiSelectionChanged
                            public int checkPosition(int i4, boolean z2) {
                                return i4;
                            }

                            @Override // org.telegram.p044ui.Components.RecyclerListView.onMultiSelectionChanged
                            public boolean limitReached() {
                                return false;
                            }

                            @Override // org.telegram.p044ui.Components.RecyclerListView.onMultiSelectionChanged
                            public void onSelectionChanged(int i4, boolean z2, float f3, float f4) {
                                TLRPC$Dialog tLRPC$Dialog2;
                                DialogsActivity dialogsActivity = DialogsActivity.this;
                                ArrayList<TLRPC$Dialog> dialogsArray2 = dialogsActivity.getDialogsArray(((BaseFragment) dialogsActivity).currentAccount, i2, DialogsActivity.this.folderId, DialogsActivity.this.dialogsListFrozen);
                                int fixPosition2 = ((DialogsAdapter) adapter).fixPosition(i4);
                                if (z) {
                                    z2 = !z2;
                                }
                                if (fixPosition2 < 0 || fixPosition2 >= dialogsArray2.size() || (tLRPC$Dialog2 = dialogsArray2.get(fixPosition2)) == null || (tLRPC$Dialog2 instanceof TLRPC$TL_dialogFolder)) {
                                    return;
                                }
                                if (z2 && DialogsActivity.this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog2.f1439id))) {
                                    return;
                                }
                                if (z2 || DialogsActivity.this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog2.f1439id))) {
                                    DialogsActivity.this.showOrUpdateActionMode(tLRPC$Dialog2.f1439id, null);
                                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                                    dialogsActivity2.findAndUpdateCheckBox(tLRPC$Dialog2.f1439id, dialogsActivity2.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog2.f1439id)));
                                }
                            }

                            @Override // org.telegram.p044ui.Components.RecyclerListView.onMultiSelectionChanged
                            public boolean canSelect(int i4) {
                                TLRPC$Dialog tLRPC$Dialog2;
                                DialogsActivity dialogsActivity = DialogsActivity.this;
                                ArrayList<TLRPC$Dialog> dialogsArray2 = dialogsActivity.getDialogsArray(((BaseFragment) dialogsActivity).currentAccount, i2, DialogsActivity.this.folderId, DialogsActivity.this.dialogsListFrozen);
                                int fixPosition2 = ((DialogsAdapter) adapter).fixPosition(i4);
                                if (fixPosition2 < 0 || fixPosition2 >= dialogsArray2.size() || (tLRPC$Dialog2 = dialogsArray2.get(fixPosition2)) == null) {
                                    return false;
                                }
                                if (z || arrayList.contains(Long.valueOf(tLRPC$Dialog2.f1439id))) {
                                    return z && arrayList.contains(Long.valueOf(tLRPC$Dialog2.f1439id));
                                }
                                return true;
                            }

                            @Override // org.telegram.p044ui.Components.RecyclerListView.onMultiSelectionChanged
                            public void getPaddings(int[] iArr) {
                                iArr[1] = 0;
                                iArr[0] = 0;
                            }

                            @Override // org.telegram.p044ui.Components.RecyclerListView.onMultiSelectionChanged
                            public void scrollBy(int i4) {
                                currentViewPage.listView.scrollBy(0, i4);
                            }
                        });
                    }
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$89(long j, DialogInterface dialogInterface, int i) {
        this.searchViewPager.dialogsSearchAdapter.removeRecentSearch(j);
    }

    private void onArchiveLongPress(View view) {
        int i;
        String str;
        ArrayList<TLRPC$Dialog> dialogs = getMessagesController().getDialogs(1);
        if (isArchive() && (dialogs.size() == 1 || dialogs.size() == getMessagesController().dialogsAlbumsOnly.size())) {
            return;
        }
        view.performHapticFeedback(0, 2);
        BottomSheet.Builder builder = new BottomSheet.Builder(getParentActivity());
        boolean z = (isArchive() || getMessagesStorage().getArchiveUnreadCount() == 0) ? false : true;
        int[] iArr = new int[3];
        iArr[0] = z ? C3290R.C3292drawable.msg_markread : 0;
        iArr[1] = (!isArchive() ? SharedConfig.archiveHidden : getHiddenChatsController().isHiddenChatsHidden()) ? C3290R.C3292drawable.chats_unpin : C3290R.C3292drawable.chats_pin;
        iArr[2] = (SharedConfig.isShowDrawerHeaderArchiveEnabled || isArchive()) ? 0 : C3290R.C3292drawable.attach_arrow_left;
        CharSequence[] charSequenceArr = new CharSequence[3];
        String str2 = null;
        charSequenceArr[0] = z ? LocaleController.getString("MarkAllAsRead", C3290R.string.MarkAllAsRead) : null;
        if (!isArchive() ? SharedConfig.archiveHidden : getHiddenChatsController().isHiddenChatsHidden()) {
            i = C3290R.string.HideAboveTheList;
            str = "HideAboveTheList";
        } else {
            i = C3290R.string.PinInTheList;
            str = "PinInTheList";
        }
        charSequenceArr[1] = LocaleController.getString(str, i);
        if (!SharedConfig.isShowDrawerHeaderArchiveEnabled && !isArchive()) {
            str2 = LocaleController.getInternalString(C3290R.string.drawer_enable_archive_button);
        }
        charSequenceArr[2] = str2;
        builder.setItems(charSequenceArr, iArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda17
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                DialogsActivity.this.lambda$onArchiveLongPress$90(dialogInterface, i2);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onArchiveLongPress$90(DialogInterface dialogInterface, int i) {
        if (i == 2) {
            SharedConfig.setShowDrawerHeaderArchiveEnabled(true);
            getNotificationCenter().postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
        } else if (i == 0) {
            getMessagesStorage().readAllDialogs(1);
        } else if (i != 1 || this.viewPages == null) {
        } else {
            int i2 = 0;
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i2 >= viewPageArr.length) {
                    return;
                }
                if (viewPageArr[i2].dialogsType == 0 && this.viewPages[i2].getVisibility() == 0) {
                    View childAt = this.viewPages[i2].listView.getChildAt(0);
                    DialogCell dialogCell = null;
                    if (childAt instanceof DialogCell) {
                        DialogCell dialogCell2 = (DialogCell) childAt;
                        if (dialogCell2.isFolderCell()) {
                            dialogCell = dialogCell2;
                        }
                    }
                    this.viewPages[i2].listView.toggleArchiveHidden(true, dialogCell);
                }
                i2++;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v99 */
    public boolean showChatPreview(final DialogCell dialogCell) {
        long j;
        TLRPC$Chat chat;
        final MessagesController.DialogFilter dialogFilter;
        ?? r1;
        ChatActivity[] chatActivityArr;
        Bundle bundle;
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z2;
        boolean z3;
        ArrayList<TLRPC$Dialog> arrayList;
        int i5;
        if (dialogCell.isDialogFolder()) {
            if (dialogCell.getCurrentDialogFolderId() == 1) {
                onArchiveLongPress(dialogCell);
            }
            return false;
        }
        final long dialogId = dialogCell.getDialogId();
        Bundle bundle2 = new Bundle();
        int messageId = dialogCell.getMessageId();
        if (DialogObject.isFolderDialogId(dialogId) || DialogObject.isEncryptedDialog(dialogId)) {
            return false;
        }
        if (DialogObject.isUserDialog(dialogId)) {
            LockedSectionsController.SectionPasscodeData sectionsPasscodeData = getLockedSectionsController().getSectionsPasscodeData(LockedSection.CLOUD);
            if (UserObject.isUserSelf(getMessagesController().getUser(Long.valueOf(dialogId))) && sectionsPasscodeData != null && !sectionsPasscodeData.getPasscodeHash().isEmpty()) {
                showToast(LocaleController.getInternalString(C3290R.string.section_is_locked));
                return false;
            }
            bundle2.putLong("user_id", dialogId);
        } else {
            if (messageId == 0 || (chat = getMessagesController().getChat(Long.valueOf(-dialogId))) == null || chat.migrated_to == null) {
                j = dialogId;
            } else {
                bundle2.putLong("migrated_to", dialogId);
                j = -chat.migrated_to.channel_id;
            }
            bundle2.putLong("chat_id", -j);
        }
        if (messageId != 0) {
            bundle2.putInt("message_id", messageId);
        }
        final ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Long.valueOf(dialogId));
        ChatActivity[] chatActivityArr2 = new ChatActivity[1];
        ActionBarPopupWindow.ActionBarPopupWindowLayout[] actionBarPopupWindowLayoutArr = {new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity(), C3290R.C3292drawable.popup_fixed_alert2, getResourceProvider(), 2)};
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getParentActivity(), true, false);
        if (dialogCell.getHasUnread()) {
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("MarkAsRead", C3290R.string.MarkAsRead), C3290R.C3292drawable.msg_markread);
        } else {
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("MarkAsUnread", C3290R.string.MarkAsUnread), C3290R.C3292drawable.msg_markunread);
        }
        actionBarMenuSubItem.setMinimumWidth(160);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda49
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$91(dialogCell, dialogId, view);
            }
        });
        actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem);
        boolean[] zArr = new boolean[1];
        zArr[0] = true;
        final TLRPC$Dialog tLRPC$Dialog = getMessagesController().dialogs_dict.get(dialogId);
        boolean z4 = (this.viewPages[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8) && (!this.actionBar.isActionModeShowed() || this.actionBar.isActionModeShowed(null));
        if (z4) {
            dialogFilter = getMessagesController().selectedDialogFilter[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
        } else {
            dialogFilter = null;
        }
        if (isDialogPinned(tLRPC$Dialog)) {
            r1 = 0;
            chatActivityArr = chatActivityArr2;
        } else {
            ArrayList<TLRPC$Dialog> dialogs = getMessagesController().getDialogs(this.folderId);
            int size = dialogs.size();
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                if (i6 >= size) {
                    chatActivityArr = chatActivityArr2;
                    break;
                }
                TLRPC$Dialog tLRPC$Dialog2 = dialogs.get(i6);
                if (tLRPC$Dialog2 instanceof TLRPC$TL_dialogFolder) {
                    arrayList = dialogs;
                    i5 = size;
                } else if (isDialogPinned(tLRPC$Dialog2)) {
                    arrayList = dialogs;
                    i5 = size;
                    if (DialogObject.isEncryptedDialog(tLRPC$Dialog2.f1439id)) {
                        i8++;
                    } else {
                        i7++;
                    }
                } else {
                    arrayList = dialogs;
                    i5 = size;
                    chatActivityArr = chatActivityArr2;
                    if (!getMessagesController().isPromoDialog(tLRPC$Dialog2.f1439id, false)) {
                        break;
                    }
                    i6++;
                    dialogs = arrayList;
                    size = i5;
                    chatActivityArr2 = chatActivityArr;
                }
                chatActivityArr = chatActivityArr2;
                i6++;
                dialogs = arrayList;
                size = i5;
                chatActivityArr2 = chatActivityArr;
            }
            if (tLRPC$Dialog == null || isDialogPinned(tLRPC$Dialog)) {
                i = 0;
                i2 = 0;
                i3 = 0;
            } else {
                boolean isEncryptedDialog = DialogObject.isEncryptedDialog(dialogId);
                int i9 = !isEncryptedDialog ? 1 : 0;
                if (dialogFilter == null || !dialogFilter.alwaysShow.contains(Long.valueOf(dialogId))) {
                    i3 = i9;
                    i2 = isEncryptedDialog ? 1 : 0;
                    i = 0;
                } else {
                    i3 = i9;
                    i2 = isEncryptedDialog ? 1 : 0;
                    i = 1;
                }
            }
            if (z4 && dialogFilter != null) {
                i4 = 100 - dialogFilter.alwaysShow.size();
            } else if (this.folderId != 0 || dialogFilter != null) {
                if (getUserConfig().isPremium()) {
                    i4 = getMessagesController().maxFolderPinnedDialogsCountPremium;
                } else {
                    i4 = getMessagesController().maxFolderPinnedDialogsCountDefault;
                }
            } else if (getUserConfig().isPremium()) {
                i4 = getMessagesController().maxPinnedDialogsCountPremium;
            } else {
                i4 = getMessagesController().maxPinnedDialogsCountDefault;
            }
            if (i2 + i8 > i4 || (i3 + i7) - i > i4) {
                z2 = false;
                z3 = false;
            } else {
                z2 = false;
                z3 = true;
            }
            zArr[z2 ? 1 : 0] = z3;
            r1 = z2;
        }
        if (zArr[r1]) {
            ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getParentActivity(), r1, r1);
            if (isDialogPinned(tLRPC$Dialog)) {
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("UnpinMessage", C3290R.string.UnpinMessage), C3290R.C3292drawable.msg_unpin);
            } else {
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("PinMessage", C3290R.string.PinMessage), C3290R.C3292drawable.msg_pin);
            }
            actionBarMenuSubItem2.setMinimumWidth(160);
            bundle = null;
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda48
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$showChatPreview$93(dialogFilter, tLRPC$Dialog, dialogId, view);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem2);
        } else {
            bundle = null;
        }
        if (DialogObject.isUserDialog(dialogId) && UserObject.isUserSelf(getMessagesController().getUser(Long.valueOf(dialogId)))) {
            z = false;
        } else {
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(getParentActivity(), false, false);
            if (!getMessagesController().isDialogMuted(dialogId, 0)) {
                actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("Mute", C3290R.string.Mute), C3290R.C3292drawable.msg_mute);
            } else {
                actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("Unmute", C3290R.string.Unmute), C3290R.C3292drawable.msg_unmute);
            }
            actionBarMenuSubItem3.setMinimumWidth(160);
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda45
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$showChatPreview$94(dialogId, view);
                }
            });
            z = false;
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem3);
        }
        ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(getParentActivity(), z, true);
        actionBarMenuSubItem4.setIconColor(getThemedColor(Theme.key_text_RedRegular));
        int i10 = Theme.key_text_RedBold;
        actionBarMenuSubItem4.setTextColor(getThemedColor(i10));
        actionBarMenuSubItem4.setSelectorColor(Theme.multAlpha(getThemedColor(i10), 0.12f));
        actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString("Delete", C3290R.string.Delete), C3290R.C3292drawable.msg_delete);
        actionBarMenuSubItem4.setMinimumWidth(160);
        actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$95(arrayList2, view);
            }
        });
        actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem4);
        actionBarPopupWindowLayoutArr[0].removeInnerViews();
        ActionBarMenuSubItem actionBarMenuSubItem5 = new ActionBarMenuSubItem(getParentActivity(), false, true);
        actionBarMenuSubItem5.setTextAndIcon(LocaleController.getString("Open", C3290R.string.Open), C3290R.C3292drawable.msg_message);
        actionBarMenuSubItem5.setMinimumWidth(160);
        actionBarMenuSubItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda34
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$96(view);
            }
        });
        actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem5);
        ActionBarMenuSubItem actionBarMenuSubItem6 = new ActionBarMenuSubItem(getParentActivity(), false, true);
        actionBarMenuSubItem6.setTextAndIcon(LocaleController.getString("Close", C3290R.string.Close), C3290R.C3292drawable.poll_remove);
        actionBarMenuSubItem6.setMinimumWidth(160);
        actionBarMenuSubItem6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$97(view);
            }
        });
        actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem6);
        if (getMessagesController().checkCanOpenChat(bundle2, this)) {
            if (this.searchString != null) {
                getNotificationCenter().postNotificationName(NotificationCenter.closeChats, new Object[0]);
            }
            prepareBlurBitmap();
            this.parentLayout.setHighlightActionButtons(true);
            Point point = AndroidUtilities.displaySize;
            if (point.x > point.y) {
                BaseFragment chatActivity = new ChatActivity(bundle2);
                chatActivityArr[0] = chatActivity;
                presentFragmentAsPreview(chatActivity);
                return true;
            }
            BaseFragment chatActivity2 = new ChatActivity(bundle2);
            chatActivityArr[0] = chatActivity2;
            presentFragmentAsPreviewWithMenu(chatActivity2, actionBarPopupWindowLayoutArr[0]);
            if (chatActivityArr[0] != null) {
                chatActivityArr[0].allowExpandPreviewByClick = true;
                chatActivityArr[0].allowExpandPreviewByClick = false;
                try {
                    chatActivityArr[0].getAvatarContainer().getAvatarImageView().performAccessibilityAction(64, bundle);
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$91(DialogCell dialogCell, long j, View view) {
        if (dialogCell.getHasUnread()) {
            markAsRead(j);
        } else {
            markAsUnread(j);
        }
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$93(final MessagesController.DialogFilter dialogFilter, final TLRPC$Dialog tLRPC$Dialog, final long j, View view) {
        finishPreviewFragment();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda116
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showChatPreview$92(dialogFilter, tLRPC$Dialog, j);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$92(MessagesController.DialogFilter dialogFilter, TLRPC$Dialog tLRPC$Dialog, long j) {
        boolean z;
        int i = Integer.MAX_VALUE;
        if (dialogFilter != null && isDialogPinned(tLRPC$Dialog)) {
            int size = dialogFilter.pinnedDialogs.size();
            for (int i2 = 0; i2 < size; i2++) {
                i = Math.min(i, dialogFilter.pinnedDialogs.valueAt(i2));
            }
            i -= this.canPinCount;
        }
        int i3 = i;
        TLRPC$EncryptedChat encryptedChat = DialogObject.isEncryptedDialog(j) ? getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) : null;
        UndoView undoView = getUndoView();
        if (undoView == null) {
            return;
        }
        if (!isDialogPinned(tLRPC$Dialog)) {
            pinDialog(j, true, dialogFilter, i3, true);
            undoView.showWithAction(0L, 78, (Object) 1, (Object) 1600, (Runnable) null, (Runnable) null);
            if (dialogFilter != null) {
                if (encryptedChat != null) {
                    if (!dialogFilter.alwaysShow.contains(Long.valueOf(encryptedChat.user_id))) {
                        dialogFilter.alwaysShow.add(Long.valueOf(encryptedChat.user_id));
                    }
                } else if (!dialogFilter.alwaysShow.contains(Long.valueOf(j))) {
                    dialogFilter.alwaysShow.add(Long.valueOf(j));
                }
            }
        } else {
            pinDialog(j, false, dialogFilter, i3, true);
            undoView.showWithAction(0L, 79, (Object) 1, (Object) 1600, (Runnable) null, (Runnable) null);
        }
        if (dialogFilter != null) {
            z = true;
            FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, false, false, true, true, false, this, null);
        } else {
            z = true;
        }
        getMessagesController().reorderPinnedDialogs(this.folderId, null, 0L);
        updateCounters(z);
        if (this.viewPages != null) {
            int i4 = 0;
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i4 >= viewPageArr.length) {
                    break;
                }
                viewPageArr[i4].dialogsAdapter.onReorderStateChanged(false);
                i4++;
            }
        }
        updateVisibleRows(MessagesController.UPDATE_MASK_REORDER | MessagesController.UPDATE_MASK_CHECK);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$94(long j, View view) {
        boolean isDialogMuted = getMessagesController().isDialogMuted(j, 0);
        if (!isDialogMuted) {
            getNotificationsController().setDialogNotificationsSettings(j, 0, 3);
        } else {
            getNotificationsController().setDialogNotificationsSettings(j, 0, 4);
        }
        BulletinFactory.createMuteBulletin(this, !isDialogMuted, null).show();
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$95(ArrayList arrayList, View view) {
        performSelectedDialogsAction(arrayList, 102, false, false);
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$96(View view) {
        this.parentLayout.expandPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$97(View view) {
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFloatingButtonOffset() {
        FrameLayout frameLayout = this.floatingButtonContainer;
        if (frameLayout == null) {
            return;
        }
        float f = this.floatingButtonHideProgress;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        frameLayout.setTranslationZ(f == BitmapDescriptorFactory.HUE_RED ? AndroidUtilities.m54dp(2) : 0.0f);
        if (isMainDialogList()) {
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null && filterTabsView.getVisibility() == 0 && isFilterTabsAtBottom()) {
                f2 = (AndroidUtilities.m54dp(44) - this.filterTabsView.getTranslationY()) + BitmapDescriptorFactory.HUE_RED;
            }
            if (getTopicsController().isTopicsBarAtBottomEnabled()) {
                f2 += getTopicsBarHeight(false);
            }
        }
        float f3 = this.additionalFloatingTranslation + f2;
        this.additionalFloatingTranslation = f3;
        this.floatingButtonContainer.setTranslationY((this.floatingButtonTranslation - this.floatingButtonPanOffset) - (Math.max(f3, this.additionalFloatingTranslation2) * (1.0f - this.floatingButtonHideProgress)));
        this.additionalFloatingTranslation -= f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasHiddenArchive() {
        return !this.onlySelect && this.initialDialogsType == 0 && (this.folderId == 0 || isArchive()) && getMessagesController().hasHiddenArchive(isArchive());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean waitingForDialogsAnimationEnd(ViewPage viewPage) {
        return viewPage.dialogsItemAnimator.isRunning();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAnimationFinished() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$checkAnimationFinished$98();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAnimationFinished$98() {
        ArrayList<TLRPC$Dialog> arrayList;
        if (this.viewPages != null && this.folderId != 0 && ((arrayList = this.frozenDialogsList) == null || arrayList.isEmpty())) {
            int i = 0;
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i >= viewPageArr.length) {
                    break;
                }
                viewPageArr[i].listView.setEmptyView(null);
                this.viewPages[i].progressView.setVisibility(4);
                i++;
            }
            finishFragment();
        }
        setDialogsListFrozen(false);
        updateDialogIndices();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollY(float f) {
        DialogsHintCell dialogsHintCell;
        FilterTabsView filterTabsView;
        if (this.fragmentView == null) {
            return;
        }
        int i = 0;
        boolean z = f == BitmapDescriptorFactory.HUE_RED || !isFilterTabsAtBottom();
        if (z) {
            this.actionBar.setTranslationY(f);
        }
        Bulletin bulletin = this.topBulletin;
        if (bulletin != null) {
            bulletin.updatePosition();
        }
        if (z && (filterTabsView = this.filterTabsView) != null) {
            filterTabsView.setTranslationY(f);
        }
        if (z && (dialogsHintCell = this.dialogsHintCell) != null) {
            dialogsHintCell.setTranslationY(f);
        }
        if (this.topicsBar != null && z && !getTopicsController().isTopicsBarAtBottomEnabled()) {
            this.topicsBar.setTranslationY(f);
        }
        RecentChatsBar recentChatsBar = this.recentChatsBar;
        if (recentChatsBar != null && z) {
            recentChatsBar.setTranslationY(f);
        }
        ArchiveHintCell archiveHintCell = this.archiveHintCell;
        if (archiveHintCell != null && z) {
            archiveHintCell.setTranslationY(f);
        }
        DrawerProfileCell.AnimatedStatusView animatedStatusView = this.animatedStatusView;
        if (animatedStatusView != null) {
            animatedStatusView.translateY2((int) f);
            this.animatedStatusView.setAlpha(1.0f - ((-f) / C3356ActionBar.getCurrentActionBarHeight()));
        }
        updateContextViewPosition();
        if (z && this.viewPages != null) {
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i >= viewPageArr.length) {
                    break;
                }
                viewPageArr[i].listView.setTopGlowOffset(this.viewPages[i].listView.getPaddingTop() + ((int) f));
                i++;
            }
        }
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareBlurBitmap() {
        if (this.blurredView == null) {
            return;
        }
        int m54dp = (getPinnedPlayerView() == null || getPinnedPlayerView().getVisibility() != 0) ? 0 : AndroidUtilities.m54dp(PinnedPlayerView.getPlayerHeight());
        int measuredWidth = (int) (this.fragmentView.getMeasuredWidth() / 6.0f);
        int measuredHeight = (int) ((m54dp + this.fragmentView.getMeasuredHeight()) / 6.0f);
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.scale(0.16666667f, 0.16666667f);
        if (!isForward()) {
            this.parentLayout.getView().draw(canvas);
        } else {
            this.fragmentView.draw(canvas);
        }
        Utilities.stackBlurBitmap(createBitmap, Math.max(7, Math.max(measuredWidth, measuredHeight) / 180));
        this.blurredView.setBackground(new BitmapDrawable(createBitmap));
        this.blurredView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (!isForward()) {
            AndroidUtilities.removeFromParent(this.blurredView);
            this.parentLayout.getOverlayContainerView().addView(this.blurredView, LayoutHelper.createFrame(-1, -1));
            return;
        }
        this.blurredView.setVisibility(0);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
            this.rightSlidingDialogContainer.getFragment().onTransitionAnimationProgress(z, f);
            return;
        }
        View view = this.blurredView;
        if (view == null || view.getVisibility() != 0 || isForwardingPreviewShowing()) {
            return;
        }
        if (z) {
            this.blurredView.setAlpha(1.0f - f);
        } else {
            this.blurredView.setAlpha(f);
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        View view;
        Bulletin bulletin;
        if (z && z2 && this.showPinBulletin && (bulletin = this.pinBulletin) != null) {
            bulletin.show();
            this.showPinBulletin = false;
        }
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
            this.rightSlidingDialogContainer.getFragment().onTransitionAnimationEnd(z, z2);
            return;
        }
        if (z && (view = this.blurredView) != null && view.getVisibility() == 0 && !isForwardingPreviewShowing()) {
            if (!isForward()) {
                AndroidUtilities.removeFromParent(this.blurredView);
            } else {
                this.blurredView.setVisibility(8);
            }
            this.blurredView.setBackground(null);
        }
        if (z && this.afterSignup) {
            try {
                this.fragmentView.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            if (getParentActivity() instanceof LaunchActivity) {
                ((LaunchActivity) getParentActivity()).getFireworksOverlay().start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetScroll() {
        if (this.actionBar.getTranslationY() == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, this.SCROLL_Y, BitmapDescriptorFactory.HUE_RED));
        animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
        animatorSet.setDuration(250L);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideActionMode(boolean z) {
        this.actionBar.hideActionMode();
        if (this.menuDrawable != null) {
            this.actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrOpenMenu", C3290R.string.AccDescrOpenMenu));
        }
        this.selectedDialogs.clear();
        MenuDrawable menuDrawable = this.menuDrawable;
        if (menuDrawable != null) {
            menuDrawable.setRotation(BitmapDescriptorFactory.HUE_RED, true);
        } else {
            BackDrawable backDrawable = this.backDrawable;
            if (backDrawable != null) {
                backDrawable.setRotation(BitmapDescriptorFactory.HUE_RED, true);
            }
        }
        if (this.filterTabsView != null) {
            if (isArchive()) {
                this.filterTabsView.animateColorsTo(Theme.key_actionBarTabLine, Theme.key_actionBarTabActiveText, Theme.key_actionBarTabUnactiveText, Theme.key_actionBarDefaultArchivedSelector, Theme.key_actionBarDefaultArchived);
            } else {
                this.filterTabsView.animateColorsTo(Theme.key_actionBarTabLine, Theme.key_actionBarTabActiveText, Theme.key_actionBarTabUnactiveText, Theme.key_actionBarTabSelector, Theme.key_actionBarDefault);
            }
        }
        ValueAnimator valueAnimator = this.actionBarColorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.progressToActionMode, BitmapDescriptorFactory.HUE_RED);
        this.actionBarColorAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DialogsActivity.this.lambda$hideActionMode$99(valueAnimator2);
            }
        });
        this.actionBarColorAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.actionBarColorAnimator.setDuration(200L);
        this.actionBarColorAnimator.start();
        this.allowMoving = false;
        if (!this.movingDialogFilters.isEmpty()) {
            int i = 0;
            for (int size = this.movingDialogFilters.size(); i < size; size = size) {
                MessagesController.DialogFilter dialogFilter = this.movingDialogFilters.get(i);
                FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, false, false, true, true, false, this, null);
                i++;
            }
            this.movingDialogFilters.clear();
        }
        if (this.movingWas) {
            getMessagesController().reorderPinnedDialogs(this.folderId, null, 0L);
            this.movingWas = false;
        }
        updateCounters(true);
        if (this.viewPages != null) {
            int i2 = 0;
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i2 >= viewPageArr.length) {
                    break;
                }
                viewPageArr[i2].dialogsAdapter.onReorderStateChanged(false);
                i2++;
            }
        }
        updateVisibleRows(MessagesController.UPDATE_MASK_REORDER | MessagesController.UPDATE_MASK_CHECK | (z ? MessagesController.UPDATE_MASK_CHAT : 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideActionMode$99(ValueAnimator valueAnimator) {
        this.progressToActionMode = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < this.actionBar.getChildCount(); i++) {
            if (this.actionBar.getChildAt(i).getVisibility() == 0 && this.actionBar.getChildAt(i) != this.actionBar.getActionMode() && this.actionBar.getChildAt(i) != this.actionBar.getBackButton()) {
                this.actionBar.getChildAt(i).setAlpha(1.0f - this.progressToActionMode);
            }
        }
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
    }

    private int getPinnedCount() {
        ArrayList<TLRPC$Dialog> dialogs;
        if ((this.viewPages[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8) && (!this.actionBar.isActionModeShowed() || this.actionBar.isActionModeShowed(null))) {
            dialogs = getDialogsArray(this.currentAccount, this.viewPages[0].dialogsType, this.folderId, this.dialogsListFrozen);
        } else {
            dialogs = getMessagesController().getDialogs(this.folderId);
        }
        int size = dialogs.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            TLRPC$Dialog tLRPC$Dialog = dialogs.get(i2);
            if (!(tLRPC$Dialog instanceof TLRPC$TL_dialogFolder)) {
                if (isDialogPinned(tLRPC$Dialog)) {
                    i++;
                } else if (!getMessagesController().isPromoDialog(tLRPC$Dialog.f1439id, false)) {
                    break;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDialogPinned(TLRPC$Dialog tLRPC$Dialog) {
        if (tLRPC$Dialog == null || getHiddenChatsController().isChatHidden(tLRPC$Dialog.f1439id)) {
            return false;
        }
        MessagesController.DialogFilter dialogFilter = null;
        if ((this.viewPages[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8) && (!this.actionBar.isActionModeShowed() || this.actionBar.isActionModeShowed(null))) {
            dialogFilter = getMessagesController().selectedDialogFilter[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
        }
        if (dialogFilter != null) {
            return dialogFilter.pinnedDialogs.indexOfKey(tLRPC$Dialog.f1439id) >= 0;
        }
        return tLRPC$Dialog.pinned;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:196:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0710  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x087d  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x088c  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x08e9  */
    /* JADX WARN: Removed duplicated region for block: B:514:0x034c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v128 */
    /* JADX WARN: Type inference failed for: r0v161 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void performSelectedDialogsAction(final java.util.ArrayList<java.lang.Long> r36, final int r37, boolean r38, boolean r39, boolean r40) {
        /*
            Method dump skipped, instructions count: 2711
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.performSelectedDialogsAction(java.util.ArrayList, int, boolean, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$100(ArrayList arrayList, int i, Boolean bool) {
        if (bool.booleanValue()) {
            performSelectedDialogsAction(arrayList, i, false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$101(List list) {
        getHiddenChatsController().hideChats(list, isHiddenChats());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$102(ArrayList arrayList) {
        getMessagesController().addDialogToFolder(arrayList, this.folderId == 0 ? 0 : 1, -1, null, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$103(ArrayList arrayList) {
        getMessagesController().addDialogToFolder(arrayList, 1, -1, null, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$performSelectedDialogsAction$104(boolean[] zArr, CheckBoxCell checkBoxCell, CheckBoxCell checkBoxCell2, View view) {
        zArr[0] = !zArr[0];
        checkBoxCell.setVisibility(checkBoxCell.getVisibility() == 0 ? 8 : 0);
        checkBoxCell2.toggle(zArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$performSelectedDialogsAction$105(boolean[] zArr, CheckBoxCell checkBoxCell, View view) {
        zArr[0] = !zArr[0];
        checkBoxCell.toggle(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$107(ArrayList arrayList, final boolean[] zArr, boolean[] zArr2, final int i, DialogInterface dialogInterface, int i2) {
        if (arrayList.isEmpty()) {
            return;
        }
        final ArrayList<Long> arrayList2 = new ArrayList<>(arrayList);
        if (zArr[0] != getForkCommonController().isRevokeByDefault() && zArr2[0]) {
            getForkCommonController().setRevokeByDefault(zArr[0]);
            getForkCommonController().saveConfig();
        }
        UndoView undoView = getUndoView();
        if (undoView != null) {
            undoView.showWithAction(arrayList2, i == 102 ? 27 : 26, (Object) null, (Object) null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda109
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$performSelectedDialogsAction$106(i, arrayList2, zArr);
                }
            }, (Runnable) null);
        }
        hideActionMode(i == 103);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$106(int i, ArrayList arrayList, boolean[] zArr) {
        if (i == 102) {
            getMessagesController().setDialogsInTransaction(true);
            performSelectedDialogsAction(arrayList, i, false, false, zArr[0]);
            getMessagesController().setDialogsInTransaction(false);
            getMessagesController().checkIfFolderEmpty(this.folderId);
            if (this.folderId == 0 || getDialogsArray(this.currentAccount, this.viewPages[0].dialogsType, this.folderId, false).size() != 0) {
                return;
            }
            this.viewPages[0].listView.setEmptyView(null);
            this.viewPages[0].progressView.setVisibility(4);
            finishFragment();
            return;
        }
        performSelectedDialogsAction(arrayList, i, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$108(AlertDialog alertDialog) {
        showDialog(alertDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$109(ArrayList arrayList, boolean z, boolean z2) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            long longValue = ((Long) arrayList.get(i)).longValue();
            if (z) {
                getMessagesController().reportSpam(longValue, getMessagesController().getUser(Long.valueOf(longValue)), null, null, false);
            }
            if (z2) {
                getMessagesController().deleteDialog(longValue, 0, true);
            }
            getMessagesController().blockPeer(longValue);
        }
        hideActionMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$110(DialogInterface dialogInterface, int i) {
        getMessagesController().hidePromoDialog();
        hideActionMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$112(final int i, final TLRPC$Chat tLRPC$Chat, final long j, final boolean z, final boolean z2) {
        int i2;
        int i3;
        int i4;
        int i5;
        ArrayList<TLRPC$Dialog> arrayList;
        int i6;
        hideActionMode(false);
        if (i == 103 && ChatObject.isChannel(tLRPC$Chat)) {
            if (!tLRPC$Chat.megagroup || ChatObject.isPublic(tLRPC$Chat)) {
                getMessagesController().deleteDialog(j, 2, z2);
                return;
            }
        }
        if (i == 102 && this.folderId != 0 && getDialogsArray(this.currentAccount, this.viewPages[0].dialogsType, this.folderId, false).size() == 1) {
            this.viewPages[0].progressView.setVisibility(4);
        }
        this.debugLastUpdateAction = 3;
        if (i == 102) {
            setDialogsListFrozen(true);
            if (this.frozenDialogsList != null) {
                i6 = 0;
                while (i6 < this.frozenDialogsList.size()) {
                    if (this.frozenDialogsList.get(i6).f1439id == j) {
                        break;
                    }
                    i6++;
                }
            }
            i6 = -1;
            checkAnimationFinished();
            i2 = i6;
        } else {
            i2 = -1;
        }
        UndoView undoView = getUndoView();
        if (undoView != null) {
            i3 = i2;
            undoView.showWithAction(j, i == 103 ? 0 : 1, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda108
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$performSelectedDialogsAction$111(i, j, tLRPC$Chat, z, z2);
                }
            });
        } else {
            i3 = i2;
        }
        ArrayList arrayList2 = new ArrayList(getDialogsArray(this.currentAccount, this.viewPages[0].dialogsType, this.folderId, false));
        int i7 = 0;
        while (true) {
            if (i7 >= arrayList2.size()) {
                i4 = 102;
                i5 = -1;
                break;
            } else if (((TLRPC$Dialog) arrayList2.get(i7)).f1439id == j) {
                i5 = i7;
                i4 = 102;
                break;
            } else {
                i7++;
            }
        }
        if (i == i4) {
            int i8 = i3;
            if (i8 >= 0 && i5 < 0 && (arrayList = this.frozenDialogsList) != null) {
                arrayList.remove(i8);
                this.viewPages[0].dialogsItemAnimator.prepareForRemove();
                this.viewPages[0].updateList(true);
                return;
            }
            setDialogsListFrozen(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$113(DialogInterface dialogInterface) {
        hideActionMode(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$114(DialogInterface dialogInterface) {
        hideActionMode(true);
    }

    private void markAsRead(long j) {
        TLRPC$Dialog tLRPC$Dialog = getMessagesController().dialogs_dict.get(j);
        MessagesController.DialogFilter dialogFilter = null;
        if ((this.viewPages[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8) && (!this.actionBar.isActionModeShowed() || this.actionBar.isActionModeShowed(null))) {
            dialogFilter = getMessagesController().selectedDialogFilter[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
        }
        this.debugLastUpdateAction = 2;
        int i = -1;
        if (dialogFilter != null && (dialogFilter.flags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ) != 0 && !dialogFilter.alwaysShow(this.currentAccount, tLRPC$Dialog)) {
            setDialogsListFrozen(true);
            checkAnimationFinished();
            if (this.frozenDialogsList != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.frozenDialogsList.size()) {
                        break;
                    } else if (this.frozenDialogsList.get(i2).f1439id == j) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i < 0) {
                    setDialogsListFrozen(false, false);
                }
            }
        }
        int i3 = i;
        if (getMessagesController().isForum(j)) {
            getMessagesController().markAllTopicsAsRead(j);
        }
        getMessagesController().markMentionsAsRead(j, 0);
        MessagesController messagesController = getMessagesController();
        int i4 = tLRPC$Dialog.top_message;
        messagesController.markDialogAsRead(j, i4, i4, tLRPC$Dialog.last_message_date, false, 0, 0, true, 0);
        if (i3 >= 0) {
            this.frozenDialogsList.remove(i3);
            this.viewPages[0].dialogsItemAnimator.prepareForRemove();
            this.viewPages[0].updateList(true);
        }
    }

    private void markAsUnread(long j) {
        getMessagesController().markDialogAsUnread(j, null, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void markDialogsAsRead(ArrayList<TLRPC$Dialog> arrayList) {
        this.debugLastUpdateAction = 2;
        setDialogsListFrozen(true);
        checkAnimationFinished();
        for (int i = 0; i < arrayList.size(); i++) {
            long j = arrayList.get(i).f1439id;
            TLRPC$Dialog tLRPC$Dialog = arrayList.get(i);
            if (getMessagesController().isForum(j)) {
                getMessagesController().markAllTopicsAsRead(j);
            }
            getMessagesController().markMentionsAsRead(j, 0);
            MessagesController messagesController = getMessagesController();
            int i2 = tLRPC$Dialog.top_message;
            messagesController.markDialogAsRead(j, i2, i2, tLRPC$Dialog.last_message_date, false, 0, 0, true, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: performDeleteOrClearDialogAction */
    public void lambda$performSelectedDialogsAction$111(int i, long j, TLRPC$Chat tLRPC$Chat, boolean z, boolean z2) {
        if (i == 103) {
            getMessagesController().deleteDialog(j, 1, z2);
            return;
        }
        if (tLRPC$Chat != null) {
            if (ChatObject.isNotInChat(tLRPC$Chat)) {
                getMessagesController().deleteDialog(j, 0, z2);
            } else {
                getMessagesController().deleteParticipantFromChat(-j, getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId())), null, z2, false);
            }
        } else {
            getMessagesController().deleteDialog(j, 0, z2);
            if (z && z2) {
                getMessagesController().blockPeer(j);
            }
        }
        if (AndroidUtilities.isTablet()) {
            getNotificationCenter().postNotificationName(NotificationCenter.closeChats, Long.valueOf(j));
        }
        getMessagesController().checkIfFolderEmpty(this.folderId);
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void pinDialog(long r17, boolean r19, org.telegram.messenger.MessagesController.DialogFilter r20, int r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.pinDialog(long, boolean, org.telegram.messenger.MessagesController$DialogFilter, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pinDialog$115() {
        setDialogsListFrozen(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToTop(boolean z) {
        int i;
        int itemCount = this.viewPages[0].dialogsAdapter.getItemCount();
        if (z && itemCount == 0) {
            return;
        }
        ViewPage[] viewPageArr = this.viewPages;
        int findLastVisibleItemPosition = (z ? itemCount - viewPageArr[0].layoutManager.findLastVisibleItemPosition() : viewPageArr[0].layoutManager.findFirstVisibleItemPosition()) * AndroidUtilities.m54dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72);
        if (z) {
            i = itemCount - 1;
        } else {
            i = (this.viewPages[0].dialogsType == 0 && hasHiddenArchive() && this.viewPages[0].archivePullViewState == 2) ? 1 : 0;
        }
        this.viewPages[0].listView.getItemAnimator();
        if (findLastVisibleItemPosition >= this.viewPages[0].listView.getMeasuredHeight() * 1.2f) {
            this.viewPages[0].scrollHelper.setScrollDirection(!z ? 1 : 0);
            this.viewPages[0].scrollHelper.scrollToPosition(i, 0, z, true);
            resetScroll();
        } else {
            this.viewPages[0].listView.smoothScrollToPosition(i);
        }
        if (z) {
            hideFloatingButton(true);
        }
        if (this.recentChatsBar == null || !getRecentChatsController().isRecentChatsEnabled()) {
            return;
        }
        this.recentChatsBar.scrollToStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0139, code lost:
        if (org.telegram.messenger.MessagesController.isSupportUser(r1) == false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x018a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateCounters(boolean r23) {
        /*
            Method dump skipped, instructions count: 1420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.updateCounters(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean validateSlowModeDialog(long j) {
        TLRPC$Chat chat;
        ChatActivityEnterView chatActivityEnterView;
        if ((this.messagesCount > 1 || !((chatActivityEnterView = this.commentView) == null || chatActivityEnterView.getVisibility() != 0 || TextUtils.isEmpty(this.commentView.getFieldText()))) && DialogObject.isChatDialog(j) && (chat = getMessagesController().getChat(Long.valueOf(-j))) != null && !ChatObject.hasAdminRights(chat) && chat.slowmode_enabled) {
            AlertsCreator.showSimpleAlert(this, LocaleController.getString("Slowmode", C3290R.string.Slowmode), LocaleController.getString("SlowmodeSendError", C3290R.string.SlowmodeSendError));
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOrUpdateActionMode(long j, View view) {
        addOrRemoveSelectedDialog(j, view);
        boolean z = true;
        if (this.actionBar.isActionModeShowed()) {
            if (this.selectedDialogs.isEmpty()) {
                hideActionMode(true);
                return;
            }
        } else {
            if (this.searchIsShowed) {
                createActionMode("search_dialogs_action_mode");
                if (this.actionBar.getBackButton().getDrawable() instanceof MenuDrawable) {
                    this.actionBar.setBackButtonDrawable(new BackDrawable(false));
                }
            } else {
                createActionMode(null);
            }
            AndroidUtilities.hideKeyboard(this.fragmentView.findFocus());
            this.actionBar.setActionModeOverrideColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            this.actionBar.showActionMode();
            resetScroll();
            if (this.menuDrawable != null) {
                this.actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrGoBack", C3290R.string.AccDescrGoBack));
            }
            if (getPinnedCount() > 1) {
                if (this.viewPages != null) {
                    int i = 0;
                    while (true) {
                        ViewPage[] viewPageArr = this.viewPages;
                        if (i >= viewPageArr.length) {
                            break;
                        }
                        viewPageArr[i].dialogsAdapter.onReorderStateChanged(true);
                        i++;
                    }
                }
                updateVisibleRows(MessagesController.UPDATE_MASK_REORDER);
            }
            if (!this.searchIsShowed) {
                AnimatorSet animatorSet = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < this.actionModeViews.size(); i2++) {
                    View view2 = this.actionModeViews.get(i2);
                    view2.setPivotY(C3356ActionBar.getCurrentActionBarHeight() / 2);
                    AndroidUtilities.clearDrawableAnimation(view2);
                    arrayList.add(ObjectAnimator.ofFloat(view2, View.SCALE_Y, 0.1f, 1.0f));
                }
                animatorSet.playTogether(arrayList);
                animatorSet.setDuration(200L);
                animatorSet.start();
            }
            ValueAnimator valueAnimator = this.actionBarColorAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.progressToActionMode, 1.0f);
            this.actionBarColorAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    DialogsActivity.this.lambda$showOrUpdateActionMode$116(valueAnimator2);
                }
            });
            this.actionBarColorAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.actionBarColorAnimator.setDuration(200L);
            this.actionBarColorAnimator.start();
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null) {
                filterTabsView.animateColorsTo(Theme.key_profile_tabSelectedLine, Theme.key_profile_tabSelectedText, Theme.key_profile_tabText, Theme.key_profile_tabSelector, Theme.key_actionBarActionModeDefault);
            }
            MenuDrawable menuDrawable = this.menuDrawable;
            if (menuDrawable != null) {
                menuDrawable.setRotateToBack(false);
                this.menuDrawable.setRotation(1.0f, true);
            } else {
                BackDrawable backDrawable = this.backDrawable;
                if (backDrawable != null) {
                    backDrawable.setRotation(1.0f, true);
                }
            }
            z = false;
        }
        updateCounters(false);
        this.selectedDialogsCountTextView.setNumber(this.selectedDialogs.size(), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOrUpdateActionMode$116(ValueAnimator valueAnimator) {
        this.progressToActionMode = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < this.actionBar.getChildCount(); i++) {
            if (this.actionBar.getChildAt(i).getVisibility() == 0 && this.actionBar.getChildAt(i) != this.actionBar.getActionMode() && this.actionBar.getChildAt(i) != this.actionBar.getBackButton()) {
                this.actionBar.getChildAt(i).setAlpha(1.0f - this.progressToActionMode);
            }
        }
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeSearch() {
        if (AndroidUtilities.isTablet()) {
            C3356ActionBar c3356ActionBar = this.actionBar;
            if (c3356ActionBar != null) {
                c3356ActionBar.closeSearchField();
            }
            TLObject tLObject = this.searchObject;
            if (tLObject != null) {
                this.searchViewPager.dialogsSearchAdapter.putRecentSearch(this.searchDialogId, tLObject);
                this.searchObject = null;
                return;
            }
            return;
        }
        this.closeSearchFieldOnHide = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RecyclerListView getListView() {
        return this.viewPages[0].listView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RecyclerListView getSearchListView() {
        return this.searchViewPager.searchListView;
    }

    public void createUndoView() {
        Context context;
        if (this.undoView[0] == null && (context = getContext()) != null) {
            for (int i = 0; i < 2; i++) {
                this.undoView[i] = new C556460(context);
                UndoView undoView = this.undoView[i];
                int i2 = this.undoViewIndex + 1;
                this.undoViewIndex = i2;
                ((ContentView) this.fragmentView).addView(undoView, i2, LayoutHelper.createFrame(-1, -2, 83, 8, 0, 8, 8));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$60 */
    /* loaded from: classes5.dex */
    public class C556460 extends UndoView {
        C556460(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            if (this == DialogsActivity.this.undoView[0]) {
                if (DialogsActivity.this.undoView[1] == null || DialogsActivity.this.undoView[1].getVisibility() != 0) {
                    DialogsActivity.this.additionalFloatingTranslation = (getMeasuredHeight() + AndroidUtilities.m54dp(8)) - f;
                    if (DialogsActivity.this.additionalFloatingTranslation < BitmapDescriptorFactory.HUE_RED) {
                        DialogsActivity.this.additionalFloatingTranslation = BitmapDescriptorFactory.HUE_RED;
                    }
                    if (DialogsActivity.this.floatingHidden) {
                        return;
                    }
                    DialogsActivity.this.updateFloatingButtonOffset();
                }
            }
        }

        @Override // org.telegram.p044ui.Components.UndoView
        protected boolean canUndo() {
            for (int i = 0; i < DialogsActivity.this.viewPages.length; i++) {
                if (DialogsActivity.this.viewPages[i].dialogsItemAnimator.isRunning()) {
                    return false;
                }
            }
            return true;
        }

        @Override // org.telegram.p044ui.Components.UndoView
        protected void onRemoveDialogAction(long j, int i) {
            if (i == 1 || i == 27) {
                DialogsActivity.this.debugLastUpdateAction = 1;
                DialogsActivity.this.setDialogsListFrozen(true);
                if (DialogsActivity.this.frozenDialogsList != null) {
                    final int i2 = -1;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= DialogsActivity.this.frozenDialogsList.size()) {
                            break;
                        } else if (((TLRPC$Dialog) DialogsActivity.this.frozenDialogsList.get(i3)).f1439id == j) {
                            i2 = i3;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (i2 >= 0) {
                        final TLRPC$Dialog tLRPC$Dialog = (TLRPC$Dialog) DialogsActivity.this.frozenDialogsList.remove(i2);
                        DialogsActivity.this.viewPages[0].dialogsAdapter.notifyDataSetChanged();
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$60$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.C556460.this.lambda$onRemoveDialogAction$0(i2, tLRPC$Dialog);
                            }
                        });
                    } else {
                        DialogsActivity.this.setDialogsListFrozen(false);
                    }
                }
                DialogsActivity.this.checkAnimationFinished();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRemoveDialogAction$0(int i, TLRPC$Dialog tLRPC$Dialog) {
            if (DialogsActivity.this.frozenDialogsList == null || i < 0 || i >= DialogsActivity.this.frozenDialogsList.size()) {
                return;
            }
            DialogsActivity.this.frozenDialogsList.add(i, tLRPC$Dialog);
            DialogsActivity.this.viewPages[0].updateList(true);
        }
    }

    public UndoView getUndoView() {
        createUndoView();
        UndoView[] undoViewArr = this.undoView;
        if (undoViewArr[0] != null && undoViewArr[0].getVisibility() == 0) {
            UndoView[] undoViewArr2 = this.undoView;
            UndoView undoView = undoViewArr2[0];
            undoViewArr2[0] = undoViewArr2[1];
            undoViewArr2[1] = undoView;
            undoView.hide(true, 2);
            ContentView contentView = (ContentView) this.fragmentView;
            contentView.removeView(this.undoView[0]);
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null || this.topicsBar != null) {
                UndoView undoView2 = this.undoView[0];
                TopicsBar topicsBar = this.topicsBar;
                contentView.addView(undoView2, topicsBar != null ? contentView.indexOfChild(topicsBar) : contentView.indexOfChild(filterTabsView));
            } else {
                contentView.addView(this.undoView[0]);
            }
        }
        return this.undoView[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProxyButton(boolean z, boolean z2) {
        boolean z3;
        ActionBarMenuItem actionBarMenuItem;
        if (this.proxyDrawable != null) {
            ActionBarMenuItem actionBarMenuItem2 = this.doneItem;
            if (actionBarMenuItem2 == null || actionBarMenuItem2.getVisibility() != 0) {
                boolean z4 = false;
                int i = 0;
                while (true) {
                    if (i >= getDownloadController().downloadingFiles.size()) {
                        z3 = false;
                        break;
                    } else if (getFileLoader().isLoadingFile(getDownloadController().downloadingFiles.get(i).getFileName())) {
                        z3 = true;
                        break;
                    } else {
                        i++;
                    }
                }
                if (!this.searching && ((getDownloadController().hasUnviewedDownloads() || z3 || (this.downloadsItem.getVisibility() == 0 && this.downloadsItem.getAlpha() == 1.0f && !z2)) && !isHiddenChats())) {
                    this.downloadsItemVisible = true;
                    this.downloadsItem.setVisibility(0);
                } else {
                    this.downloadsItem.setVisibility(8);
                    this.downloadsItemVisible = false;
                }
                SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
                sharedPreferences.getString("proxy_ip", "");
                boolean z5 = sharedPreferences.getBoolean("proxy_enabled", false);
                if (!this.downloadsItemVisible && !this.searching && !isHiddenChats() && SharedConfig.isProxyButtonEnabled) {
                    if (!this.actionBar.isSearchFieldVisible() && ((actionBarMenuItem = this.doneItem) == null || actionBarMenuItem.getVisibility() != 0)) {
                        this.proxyItem.setVisibility(0);
                    }
                    this.proxyItemVisible = true;
                    ProxyDrawable proxyDrawable = this.proxyDrawable;
                    int i2 = this.currentConnectionState;
                    if (i2 == 3 || i2 == 5) {
                        z4 = true;
                    }
                    proxyDrawable.setConnected(z5, z4, z);
                    return;
                }
                this.proxyItemVisible = false;
                this.proxyItem.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDoneItem(final boolean z) {
        if (this.doneItem == null) {
            return;
        }
        AnimatorSet animatorSet = this.doneItemAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.doneItemAnimator = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.doneItemAnimator = animatorSet2;
        animatorSet2.setDuration(180L);
        if (z) {
            this.doneItem.setVisibility(0);
        } else {
            this.doneItem.setSelected(false);
            Drawable background = this.doneItem.getBackground();
            if (background != null) {
                background.setState(StateSet.NOTHING);
                background.jumpToCurrentState();
            }
            showHeaderItem(true);
            updateSwitchItemVisibility(true);
            ActionBarMenuItem actionBarMenuItem = this.searchItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility(0);
            }
            ActionBarMenuItem actionBarMenuItem2 = this.proxyItem;
            if (actionBarMenuItem2 != null && this.proxyItemVisible) {
                actionBarMenuItem2.setVisibility(0);
            }
            ActionBarMenuItem actionBarMenuItem3 = this.passcodeItem;
            if (actionBarMenuItem3 != null && this.passcodeItemVisible) {
                actionBarMenuItem3.setVisibility(0);
            }
            ActionBarMenuItem actionBarMenuItem4 = this.downloadsItem;
            if (actionBarMenuItem4 != null && this.downloadsItemVisible) {
                actionBarMenuItem4.setVisibility(0);
            }
        }
        ArrayList arrayList = new ArrayList();
        ActionBarMenuItem actionBarMenuItem5 = this.headerItem;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (actionBarMenuItem5 != null) {
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 0.0f : 1.0f;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem5, property, fArr));
        }
        ActionBarMenuItem actionBarMenuItem6 = this.switchItem;
        if (actionBarMenuItem6 != null) {
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 0.0f : 1.0f;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem6, property2, fArr2));
        }
        ActionBarMenuItem actionBarMenuItem7 = this.doneItem;
        Property property3 = View.ALPHA;
        float[] fArr3 = new float[1];
        fArr3[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem7, property3, fArr3));
        if (this.proxyItemVisible) {
            ActionBarMenuItem actionBarMenuItem8 = this.proxyItem;
            Property property4 = View.ALPHA;
            float[] fArr4 = new float[1];
            fArr4[0] = z ? 0.0f : 1.0f;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem8, property4, fArr4));
        }
        if (this.passcodeItemVisible) {
            ActionBarMenuItem actionBarMenuItem9 = this.passcodeItem;
            Property property5 = View.ALPHA;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? 0.0f : 1.0f;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem9, property5, fArr5));
        }
        ActionBarMenuItem actionBarMenuItem10 = this.searchItem;
        Property property6 = View.ALPHA;
        float[] fArr6 = new float[1];
        if (!z) {
            f = 1.0f;
        }
        fArr6[0] = f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem10, property6, fArr6));
        this.doneItemAnimator.playTogether(arrayList);
        this.doneItemAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.61
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DialogsActivity.this.doneItemAnimator = null;
                if (z) {
                    DialogsActivity.this.showHeaderItem(false);
                    DialogsActivity.this.updateSwitchItemVisibility(false);
                    if (DialogsActivity.this.searchItem != null) {
                        DialogsActivity.this.searchItem.setVisibility(4);
                    }
                    if (DialogsActivity.this.proxyItem != null && DialogsActivity.this.proxyItemVisible) {
                        DialogsActivity.this.proxyItem.setVisibility(4);
                    }
                    if (DialogsActivity.this.passcodeItem != null && DialogsActivity.this.passcodeItemVisible) {
                        DialogsActivity.this.passcodeItem.setVisibility(4);
                    }
                    if (DialogsActivity.this.downloadsItem == null || !DialogsActivity.this.downloadsItemVisible) {
                        return;
                    }
                    DialogsActivity.this.downloadsItem.setVisibility(4);
                } else if (DialogsActivity.this.doneItem != null) {
                    DialogsActivity.this.doneItem.setVisibility(8);
                }
            }
        });
        this.doneItemAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectedCount() {
        boolean checkSelectedSecrets;
        if (this.commentView != null) {
            if (this.selectedDialogs.isEmpty()) {
                showForwardingOptionsHint(false);
                if ((this.initialDialogsType == 3 && this.selectAlertString == null) || isForward()) {
                    this.actionBar.setTitle(LocaleController.getString("ForwardTo", C3290R.string.ForwardTo));
                } else {
                    this.actionBar.setTitle(LocaleController.getString("SelectChat", C3290R.string.SelectChat));
                }
                if (this.commentView.getTag() != null) {
                    this.commentView.hidePopup(false);
                    this.commentView.closeKeyboard();
                    AnimatorSet animatorSet = this.commentViewAnimator;
                    if (animatorSet != null) {
                        animatorSet.cancel();
                    }
                    this.commentViewAnimator = new AnimatorSet();
                    this.commentView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    AnimatorSet animatorSet2 = this.commentViewAnimator;
                    ChatActivityEnterView chatActivityEnterView = this.commentView;
                    animatorSet2.playTogether(ObjectAnimator.ofFloat(chatActivityEnterView, View.TRANSLATION_Y, chatActivityEnterView.getMeasuredHeight()), ObjectAnimator.ofFloat(this.writeButtonContainer, View.SCALE_X, 0.2f), ObjectAnimator.ofFloat(this.writeButtonContainer, View.SCALE_Y, 0.2f), ObjectAnimator.ofFloat(this.writeButtonContainer, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.selectedCountView, View.SCALE_X, 0.2f), ObjectAnimator.ofFloat(this.selectedCountView, View.SCALE_Y, 0.2f), ObjectAnimator.ofFloat(this.selectedCountView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    this.commentViewAnimator.setDuration(180L);
                    this.commentViewAnimator.setInterpolator(new DecelerateInterpolator());
                    this.commentViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.62
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            DialogsActivity.this.commentView.setVisibility(8);
                            DialogsActivity.this.writeButtonContainer.setVisibility(8);
                        }
                    });
                    this.commentViewAnimator.start();
                    this.commentView.setTag(null);
                    this.fragmentView.requestLayout();
                }
            } else {
                if (this.forwardingOptionsButton != null && this.showForwardingOptionsButton != (checkSelectedSecrets = checkSelectedSecrets())) {
                    this.showForwardingOptionsButton = checkSelectedSecrets;
                    this.commentView.setShowForwardSettingsButton(checkSelectedSecrets);
                    if (this.showForwardingOptionsButton) {
                        this.forwardingOptionsButton.setVisibility(0);
                    } else {
                        showForwardingOptionsHint(false);
                    }
                    AnimatorSet animatorSet3 = new AnimatorSet();
                    Animator[] animatorArr = new Animator[3];
                    ImageView imageView = this.forwardingOptionsButton;
                    Property property = View.SCALE_X;
                    float[] fArr = new float[1];
                    fArr[0] = this.showForwardingOptionsButton ? 1.0f : 0.2f;
                    animatorArr[0] = ObjectAnimator.ofFloat(imageView, property, fArr);
                    ImageView imageView2 = this.forwardingOptionsButton;
                    Property property2 = View.SCALE_Y;
                    float[] fArr2 = new float[1];
                    fArr2[0] = this.showForwardingOptionsButton ? 1.0f : 0.2f;
                    animatorArr[1] = ObjectAnimator.ofFloat(imageView2, property2, fArr2);
                    ImageView imageView3 = this.forwardingOptionsButton;
                    Property property3 = View.ALPHA;
                    float[] fArr3 = new float[1];
                    fArr3[0] = this.showForwardingOptionsButton ? 1.0f : 0.0f;
                    animatorArr[2] = ObjectAnimator.ofFloat(imageView3, property3, fArr3);
                    animatorSet3.playTogether(animatorArr);
                    animatorSet3.setDuration(180L);
                    animatorSet3.setInterpolator(new DecelerateInterpolator());
                    animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.63
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (DialogsActivity.this.showForwardingOptionsButton) {
                                DialogsActivity.this.showForwardingOptionsHint(true);
                            } else {
                                DialogsActivity.this.forwardingOptionsButton.setVisibility(8);
                            }
                        }
                    });
                    animatorSet3.start();
                }
                this.selectedCountView.invalidate();
                if (this.commentView.getTag() == null) {
                    this.commentView.setFieldText("");
                    AnimatorSet animatorSet4 = this.commentViewAnimator;
                    if (animatorSet4 != null) {
                        animatorSet4.cancel();
                    }
                    this.commentView.setVisibility(0);
                    this.writeButtonContainer.setVisibility(0);
                    AnimatorSet animatorSet5 = new AnimatorSet();
                    this.commentViewAnimator = animatorSet5;
                    ChatActivityEnterView chatActivityEnterView2 = this.commentView;
                    animatorSet5.playTogether(ObjectAnimator.ofFloat(chatActivityEnterView2, View.TRANSLATION_Y, chatActivityEnterView2.getMeasuredHeight(), BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.writeButtonContainer, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.writeButtonContainer, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.writeButtonContainer, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.selectedCountView, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.selectedCountView, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.selectedCountView, View.ALPHA, 1.0f));
                    this.commentViewAnimator.setDuration(180L);
                    this.commentViewAnimator.setInterpolator(new DecelerateInterpolator());
                    this.commentViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.64
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            DialogsActivity.this.commentView.setTag(2);
                            DialogsActivity.this.commentView.requestLayout();
                            DialogsActivity.this.showForwardingOptionsHint(true);
                        }
                    });
                    this.commentViewAnimator.start();
                    this.commentView.setTag(1);
                }
                this.actionBar.setTitle(LocaleController.formatPluralString("Recipient", this.selectedDialogs.size(), new Object[0]));
            }
        } else if (this.initialDialogsType == 10) {
            hideFloatingButton(this.selectedDialogs.isEmpty());
        }
        ArrayList<Long> arrayList = this.selectedDialogs;
        ChatActivityEnterView chatActivityEnterView3 = this.commentView;
        boolean shouldShowNextButton = shouldShowNextButton(this, arrayList, chatActivityEnterView3 != null ? chatActivityEnterView3.getFieldText() : "", false);
        this.isNextButton = shouldShowNextButton;
        AndroidUtilities.updateViewVisibilityAnimated(this.writeButton[0], !shouldShowNextButton, 0.5f, true);
        AndroidUtilities.updateViewVisibilityAnimated(this.writeButton[1], this.isNextButton, 0.5f, true);
    }

    private void askForPermissons(boolean z) {
        Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (getUserConfig().syncContacts && this.askAboutContacts && parentActivity.checkSelfPermission("android.permission.READ_CONTACTS") != 0) {
            if (z) {
                AlertDialog create = AlertsCreator.createContactsPermissionDialog(parentActivity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda135
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i) {
                        DialogsActivity.this.lambda$askForPermissons$117(i);
                    }
                }).create();
                this.permissionDialog = create;
                showDialog(create);
                return;
            }
            arrayList.add("android.permission.READ_CONTACTS");
            arrayList.add("android.permission.WRITE_CONTACTS");
            arrayList.add("android.permission.GET_ACCOUNTS");
        }
        if ((Build.VERSION.SDK_INT <= 28 || BuildVars.NO_SCOPED_STORAGE) && parentActivity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
            arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        if (arrayList.isEmpty()) {
            if (this.askingForPermissions) {
                this.askingForPermissions = false;
                showEnableSortingByDefaultAlert();
                showFiltersHint();
                return;
            }
            return;
        }
        try {
            parentActivity.requestPermissions((String[]) arrayList.toArray(new String[0]), 1);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$askForPermissons$117(int i) {
        this.askAboutContacts = i != 0;
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askAboutContacts", this.askAboutContacts).commit();
        askForPermissons(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        super.onDialogDismiss(dialog);
        AlertDialog alertDialog = this.permissionDialog;
        if (alertDialog == null || dialog != alertDialog || getParentActivity() == null) {
            return;
        }
        askForPermissons(false);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ItemOptions itemOptions = this.filterOptions;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
        if ((this.onlySelect || this.floatingButtonContainer == null) && (!isAlbums() || this.floatingButtonContainer == null)) {
            return;
        }
        this.floatingButtonContainer.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.telegram.ui.DialogsActivity.65
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.floatingButtonTranslation = dialogsActivity.floatingHidden ? AndroidUtilities.m54dp(100) : BitmapDescriptorFactory.HUE_RED;
                DialogsActivity.this.updateFloatingButtonOffset();
                DialogsActivity.this.floatingButtonContainer.setClickable(!DialogsActivity.this.floatingHidden);
                if (DialogsActivity.this.floatingButtonContainer != null) {
                    DialogsActivity.this.floatingButtonContainer.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        });
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        FilesMigrationService.FilesMigrationBottomSheet filesMigrationBottomSheet;
        boolean z = false;
        if (i == 34 && iArr.length > 0 && iArr[0] == 0) {
            openQrCodeScan();
        }
        if (i != 1) {
            if (i == 4) {
                int i2 = 0;
                while (true) {
                    if (i2 >= iArr.length) {
                        z = true;
                        break;
                    } else if (iArr[i2] != 0) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z || Build.VERSION.SDK_INT < 30 || (filesMigrationBottomSheet = FilesMigrationService.filesMigrationBottomSheet) == null) {
                    return;
                }
                filesMigrationBottomSheet.migrateOldFolder();
                return;
            }
            return;
        }
        for (int i3 = 0; i3 < strArr.length; i3++) {
            if (iArr.length > i3) {
                String str = strArr[i3];
                str.hashCode();
                if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    if (iArr[i3] == 0) {
                        ImageLoader.getInstance().checkMediaPaths();
                    }
                } else if (str.equals("android.permission.READ_CONTACTS")) {
                    if (iArr[i3] == 0) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda81
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.this.lambda$onRequestPermissionsResultFragment$118();
                            }
                        });
                        getContactsController().forceImportContacts();
                    } else {
                        SharedPreferences.Editor edit = MessagesController.getGlobalNotificationsSettings().edit();
                        this.askAboutContacts = false;
                        edit.putBoolean("askAboutContacts", false).commit();
                    }
                }
            }
        }
        if (this.askingForPermissions) {
            this.askingForPermissions = false;
            showEnableSortingByDefaultAlert();
            showFiltersHint();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$118() {
        getNotificationCenter().postNotificationName(NotificationCenter.forceImportContactsStart, new Object[0]);
    }

    private void reloadViewPageDialogs(ViewPage viewPage, boolean z) {
        int i;
        int i2;
        if (viewPage.getVisibility() != 0) {
            return;
        }
        int currentCount = viewPage.dialogsAdapter.getCurrentCount();
        if (viewPage.dialogsType == 0 && hasHiddenArchive() && viewPage.listView.getChildCount() == 0 && viewPage.archivePullViewState == 2) {
            ((LinearLayoutManager) viewPage.listView.getLayoutManager()).scrollToPositionWithOffset(1, (int) this.actionBar.getTranslationY());
        }
        if (viewPage.dialogsAdapter.isDataSetChanged() || z) {
            viewPage.dialogsAdapter.updateHasHints();
            int itemCount = viewPage.dialogsAdapter.getItemCount();
            if (itemCount == 1 && currentCount == 1 && viewPage.dialogsAdapter.getItemViewType(0) == 5) {
                viewPage.updateList(true);
            } else {
                viewPage.updateList(false);
                if (itemCount > currentCount && (i = this.initialDialogsType) != 11 && i != 12 && i != 13) {
                    viewPage.recyclerItemsEnterAnimator.showItemsAnimated(currentCount);
                }
            }
        } else {
            updateVisibleRows(MessagesController.UPDATE_MASK_NEW_MESSAGE);
            if (viewPage.dialogsAdapter.getItemCount() > currentCount && (i2 = this.initialDialogsType) != 11 && i2 != 12 && i2 != 13) {
                viewPage.recyclerItemsEnterAnimator.showItemsAnimated(currentCount);
            }
        }
        try {
            viewPage.listView.setEmptyView(this.folderId == 0 ? viewPage.progressView : null);
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        checkListLoad(viewPage);
    }

    public void setPanTranslationOffset(float f) {
        this.floatingButtonPanOffset = f;
        updateFloatingButtonOffset();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, final Object... objArr) {
        MessagesController.DialogFilter dialogFilter;
        final boolean booleanValue;
        final boolean z;
        DialogsSearchAdapter dialogsSearchAdapter;
        DialogsSearchAdapter dialogsSearchAdapter2;
        MessagesController.DialogFilter dialogFilter2;
        FilterTabsView filterTabsView;
        if (i == NotificationCenter.updateWalletDialogVisibility) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda126
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$didReceivedNotification$119(objArr);
                }
            });
            return;
        }
        int i3 = 0;
        int i4 = 0;
        if (i == NotificationCenter.topicsSettingsChanged) {
            if (!isMainDialogList() || this.topicsBar == null) {
                return;
            }
            updateTopicsBar();
            expandMultiFab(false);
            updateFloatingButtonOffset();
            hideFloatingButton(false);
            this.topicsBar.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            resetScroll();
        } else if (i == NotificationCenter.filterTabsAtBottomUpdated) {
            if (!isMainDialogList() || (filterTabsView = this.filterTabsView) == null) {
                return;
            }
            filterTabsView.updateLineCornerRadii();
            this.filterTabsView.updateBackground();
            expandMultiFab(false);
            updateFloatingButtonOffset();
            hideFloatingButton(false);
            this.filterTabsView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            resetScroll();
        } else if (i == NotificationCenter.needUpdateMainActionBarMenu) {
            updateSwitchItemVisibility(SharedConfig.isActionBarAccountSwitchEnabled);
            showHeaderItem(SharedConfig.isMainActionBarMenuEnabled);
        } else if (i == NotificationCenter.mainUserInfoChanged) {
            updateAccountSwitchItems();
        } else if (i == NotificationCenter.notificationsCountUpdated) {
            updateAccountSwitchUnreadCounters();
        } else if (i == NotificationCenter.neuroBotEnableChanged) {
            checkAndRunNeurobots();
        } else if (i == NotificationCenter.topicsDidLoad) {
            if (this.topicsBar == null) {
                return;
            }
            updateTopicsBar();
            View view = this.fragmentView;
            if (view != null) {
                view.invalidate();
            }
        } else if (i == NotificationCenter.recentChatsDidLoad) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda84
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.updateRecentChatsBar();
                }
            }, 100L);
            View view2 = this.fragmentView;
            if (view2 != null) {
                view2.invalidate();
            }
        } else {
            int i5 = NotificationCenter.didReceiveNewMessages;
            if (i == i5) {
                if (this.isCrossForward && this.crossForwardCounter == null) {
                    getNotificationCenter().removeObserver(this, i5);
                    ((Long) objArr[0]).longValue();
                    ArrayList<MessageObject> arrayList = (ArrayList) objArr[1];
                    this.crossForwardMessages = new ArrayList<>();
                    Iterator<MessageObject> it = arrayList.iterator();
                    while (it.hasNext()) {
                        this.crossForwardMessages.add(Integer.valueOf(it.next().getId()));
                    }
                    this.crossForwardCounter = new LongSparseArray<>();
                    if (this.crossForwardSelectedDialogs != 0) {
                        getSendMessagesHelper().sendMessage(arrayList, this.crossForwardSelectedDialogs, false, false, true, 0);
                        this.crossForwardCounter.put(this.crossForwardSelectedDialogs, Integer.valueOf(this.crossForwardMessages.size()));
                    } else if (!this.selectedDialogs.isEmpty()) {
                        Iterator<Long> it2 = this.selectedDialogs.iterator();
                        while (it2.hasNext()) {
                            long longValue = it2.next().longValue();
                            getSendMessagesHelper().sendMessage(arrayList, longValue, false, false, this.notify, this.scheduleDate);
                            this.crossForwardCounter.put(longValue, Integer.valueOf(this.crossForwardMessages.size()));
                        }
                    }
                }
            } else if (i == NotificationCenter.dialogsNeedReload) {
                if (this.viewPages == null || this.dialogsListFrozen) {
                    return;
                }
                int i6 = 0;
                while (true) {
                    ViewPage[] viewPageArr = this.viewPages;
                    if (i6 >= viewPageArr.length) {
                        break;
                    }
                    final ViewPage viewPage = viewPageArr[i6];
                    if (viewPageArr[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8) {
                        dialogFilter2 = getMessagesController().selectedDialogFilter[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
                    } else {
                        dialogFilter2 = null;
                    }
                    boolean z2 = (dialogFilter2 == null || (dialogFilter2.flags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ) == 0) ? false : true;
                    if (this.slowedReloadAfterDialogClick && z2) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda123
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.this.lambda$didReceivedNotification$120(viewPage, objArr);
                            }
                        }, 160L);
                    } else {
                        reloadViewPageDialogs(viewPage, objArr.length > 0);
                    }
                    i6++;
                }
                FilterTabsView filterTabsView2 = this.filterTabsView;
                if (filterTabsView2 != null && filterTabsView2.getVisibility() == 0) {
                    this.filterTabsView.checkTabsCounter();
                }
                this.slowedReloadAfterDialogClick = false;
                checkForwardSwitchArchiveItem();
            } else if (i == NotificationCenter.dialogsUnreadCounterChanged) {
                FilterTabsView filterTabsView3 = this.filterTabsView;
                if (filterTabsView3 == null || filterTabsView3.getVisibility() != 0) {
                    return;
                }
                FilterTabsView filterTabsView4 = this.filterTabsView;
                filterTabsView4.notifyTabCounterChanged(filterTabsView4.getDefaultTabId());
            } else if (i == NotificationCenter.dialogsUnreadReactionsCounterChanged) {
                updateVisibleRows(0);
            } else if (i == NotificationCenter.emojiLoaded) {
                if (this.viewPages != null) {
                    int i7 = 0;
                    while (true) {
                        ViewPage[] viewPageArr2 = this.viewPages;
                        if (i7 >= viewPageArr2.length) {
                            break;
                        }
                        DialogsRecyclerView dialogsRecyclerView = viewPageArr2[i7].listView;
                        if (dialogsRecyclerView != null) {
                            for (int i8 = 0; i8 < dialogsRecyclerView.getChildCount(); i8++) {
                                View childAt = dialogsRecyclerView.getChildAt(i8);
                                if (childAt != null) {
                                    childAt.invalidate();
                                }
                            }
                        }
                        i7++;
                    }
                }
                FilterTabsView filterTabsView5 = this.filterTabsView;
                if (filterTabsView5 != null) {
                    filterTabsView5.getTabsContainer().invalidateViews();
                }
            } else if (i == NotificationCenter.closeSearchByActiveAction) {
                C3356ActionBar c3356ActionBar = this.actionBar;
                if (c3356ActionBar != null) {
                    c3356ActionBar.closeSearchField();
                }
            } else if (i == NotificationCenter.proxySettingsChanged) {
                updateProxyButton(false, false);
            } else if (i == NotificationCenter.updateInterfaces) {
                Integer num = (Integer) objArr[0];
                RecentChatsBar recentChatsBar = this.recentChatsBar;
                if (recentChatsBar != null) {
                    recentChatsBar.notifyDataSetChanged();
                }
                updateVisibleRows(num.intValue());
                FilterTabsView filterTabsView6 = this.filterTabsView;
                if (filterTabsView6 != null && filterTabsView6.getVisibility() == 0 && (num.intValue() & MessagesController.UPDATE_MASK_READ_DIALOG_MESSAGE) != 0) {
                    this.filterTabsView.checkTabsCounter();
                }
                if (this.viewPages != null) {
                    for (int i9 = 0; i9 < this.viewPages.length; i9++) {
                        if ((num.intValue() & MessagesController.UPDATE_MASK_STATUS) != 0) {
                            this.viewPages[i9].dialogsAdapter.sortOnlineContacts(true);
                        }
                    }
                }
                updateStatus(UserConfig.getInstance(i2).getCurrentUser(), true);
            } else if (i == NotificationCenter.appDidLogout) {
                dialogsLoaded[this.currentAccount] = false;
            } else if (i == NotificationCenter.encryptedChatUpdated) {
                updateVisibleRows(0);
            } else if (i == NotificationCenter.contactsDidLoad) {
                if (this.viewPages == null || this.dialogsListFrozen) {
                    return;
                }
                boolean z3 = this.floatingProgressVisible;
                setFloatingProgressVisible(false, true);
                for (ViewPage viewPage2 : this.viewPages) {
                    viewPage2.dialogsAdapter.setForceUpdatingContacts(false);
                }
                if (z3) {
                    setContactsAlpha(BitmapDescriptorFactory.HUE_RED);
                    animateContactsAlpha(1.0f);
                }
                int i10 = 0;
                boolean z4 = false;
                while (true) {
                    ViewPage[] viewPageArr3 = this.viewPages;
                    if (i10 >= viewPageArr3.length) {
                        break;
                    }
                    if (!viewPageArr3[i10].isDefaultDialogType() || getMessagesController().getAllFoldersDialogsCount() > 10) {
                        z4 = true;
                    } else {
                        this.viewPages[i10].dialogsAdapter.notifyDataSetChanged();
                    }
                    i10++;
                    z4 = z4;
                }
                if (z4) {
                    updateVisibleRows(0);
                }
            } else if (i == NotificationCenter.openedChatChanged) {
                if (this.viewPages == null) {
                    return;
                }
                int i11 = 0;
                while (true) {
                    ViewPage[] viewPageArr4 = this.viewPages;
                    if (i11 < viewPageArr4.length) {
                        if (viewPageArr4[i11].isDefaultDialogType() && AndroidUtilities.isTablet()) {
                            boolean booleanValue2 = ((Boolean) objArr[2]).booleanValue();
                            long longValue2 = ((Long) objArr[0]).longValue();
                            int intValue = ((Integer) objArr[1]).intValue();
                            if (booleanValue2) {
                                MessagesStorage.TopicKey topicKey = this.openedDialogId;
                                if (longValue2 == topicKey.dialogId && intValue == topicKey.topicId) {
                                    topicKey.dialogId = 0L;
                                    topicKey.topicId = 0;
                                }
                            } else {
                                MessagesStorage.TopicKey topicKey2 = this.openedDialogId;
                                topicKey2.dialogId = longValue2;
                                topicKey2.topicId = intValue;
                            }
                            this.viewPages[i11].dialogsAdapter.setOpenedDialogId(this.openedDialogId.dialogId);
                        }
                        i11++;
                    } else {
                        updateVisibleRows(MessagesController.UPDATE_MASK_SELECT_DIALOG);
                        return;
                    }
                }
            } else if (i == NotificationCenter.notificationsSettingsUpdated) {
                updateVisibleRows(0);
            } else if (i == NotificationCenter.messageReceivedByAck || i == NotificationCenter.messageReceivedByServer || i == NotificationCenter.messageSendError) {
                updateVisibleRows(MessagesController.UPDATE_MASK_SEND_STATE);
                if (i != NotificationCenter.messageReceivedByServer || this.crossForwardCounter == null) {
                    return;
                }
                Long l = (Long) objArr[3];
                if (((TLRPC$Message) objArr[2]).from_id.user_id != getUserConfig().getClientUserId() || this.crossForwardCounter.indexOfKey(l.longValue()) < 0) {
                    return;
                }
                int intValue2 = this.crossForwardCounter.get(l.longValue()).intValue() - 1;
                if (intValue2 == 0) {
                    this.crossForwardCounter.remove(l.longValue());
                } else {
                    this.crossForwardCounter.put(l.longValue(), Integer.valueOf(intValue2));
                }
                if (this.crossForwardCounter.size() == 0) {
                    AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
                    AccountInstance accountInstance2 = AccountInstance.getInstance(this.currentAccount);
                    accountInstance.getUserConfig().getClientUserId();
                    long clientUserId = accountInstance2.getUserConfig().getClientUserId();
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda83
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.this.lambda$didReceivedNotification$122();
                        }
                    };
                    getMessagesController().deleteMessages(this.crossForwardMessages, null, null, clientUserId, true, false, runnable, runnable);
                }
            } else if (i == NotificationCenter.didSetPasscode) {
                updatePasscodeButton();
                ViewPage[] viewPageArr5 = this.viewPages;
                if (viewPageArr5 != null) {
                    for (ViewPage viewPage3 : viewPageArr5) {
                        if (viewPage3 != null && viewPage3.listView != null) {
                            for (int i12 = 0; i12 < viewPage3.listView.getChildCount(); i12++) {
                                View childAt2 = viewPage3.listView.getChildAt(i12);
                                if (childAt2 instanceof DialogCell) {
                                    ((DialogCell) childAt2).buildLayout(true);
                                }
                            }
                        }
                    }
                }
            } else if (i == NotificationCenter.needReloadRecentDialogsSearch) {
                SearchViewPager searchViewPager = this.searchViewPager;
                if (searchViewPager == null || (dialogsSearchAdapter2 = searchViewPager.dialogsSearchAdapter) == null) {
                    return;
                }
                dialogsSearchAdapter2.loadRecentSearch();
            } else if (i == NotificationCenter.replyMessagesDidLoad) {
                updateVisibleRows(MessagesController.UPDATE_MASK_MESSAGE_TEXT);
            } else if (i == NotificationCenter.reloadHints) {
                SearchViewPager searchViewPager2 = this.searchViewPager;
                if (searchViewPager2 == null || (dialogsSearchAdapter = searchViewPager2.dialogsSearchAdapter) == null) {
                    return;
                }
                dialogsSearchAdapter.notifyDataSetChanged();
            } else if (i == NotificationCenter.didUpdateConnectionState) {
                int connectionState = AccountInstance.getInstance(i2).getConnectionsManager().getConnectionState();
                if (this.currentConnectionState != connectionState) {
                    this.currentConnectionState = connectionState;
                    updateProxyButton(true, false);
                }
            } else if (i == NotificationCenter.onDownloadingFilesChanged) {
                updateProxyButton(true, false);
                SearchViewPager searchViewPager3 = this.searchViewPager;
                if (searchViewPager3 != null) {
                    updateSpeedItem(searchViewPager3.getCurrentPosition() == 2);
                }
            } else if (i == NotificationCenter.needDeleteDialog) {
                if (this.fragmentView == null || this.isPaused) {
                    return;
                }
                final long longValue3 = ((Long) objArr[0]).longValue();
                final TLRPC$User tLRPC$User = (TLRPC$User) objArr[1];
                final TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) objArr[2];
                if (tLRPC$User != null && tLRPC$User.bot) {
                    z = ((Boolean) objArr[3]).booleanValue();
                    booleanValue = false;
                } else {
                    booleanValue = ((Boolean) objArr[3]).booleanValue();
                    z = false;
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda117
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.this.lambda$didReceivedNotification$123(tLRPC$Chat, longValue3, booleanValue, tLRPC$User, z);
                    }
                };
                createUndoView();
                if (this.undoView[0] != null) {
                    if (!ChatObject.isForum(tLRPC$Chat)) {
                        UndoView undoView = getUndoView();
                        if (undoView != null) {
                            undoView.showWithAction(longValue3, 1, runnable2);
                            return;
                        }
                        return;
                    }
                    runnable2.run();
                    return;
                }
                runnable2.run();
            } else if (i == NotificationCenter.folderBecomeEmpty) {
                int intValue3 = ((Integer) objArr[0]).intValue();
                int i13 = this.folderId;
                if (i13 != intValue3 || i13 == 0) {
                    return;
                }
                removeSelfFromStack();
            } else {
                int i14 = NotificationCenter.dialogFiltersUpdated;
                if (i == i14) {
                    updateFilterTabs(true, true);
                    if (isForward()) {
                        getNotificationCenter().removeObserver(this, i14);
                    }
                } else if (i == NotificationCenter.filterSettingsUpdated) {
                    showFiltersHint();
                } else if (i == NotificationCenter.newSuggestionsAvailable) {
                    showNextSupportedSuggestion();
                    updateDialogsHint();
                } else if (i == NotificationCenter.forceImportContactsStart) {
                    setFloatingProgressVisible(true, true);
                    ViewPage[] viewPageArr6 = this.viewPages;
                    if (viewPageArr6 != null) {
                        for (ViewPage viewPage4 : viewPageArr6) {
                            viewPage4.dialogsAdapter.setForceShowEmptyCell(false);
                            viewPage4.dialogsAdapter.setForceUpdatingContacts(true);
                            viewPage4.dialogsAdapter.notifyDataSetChanged();
                        }
                    }
                } else if (i == NotificationCenter.messagesDeleted) {
                    if (!this.searchIsShowed || this.searchViewPager == null) {
                        return;
                    }
                    this.searchViewPager.messagesDeleted(((Long) objArr[1]).longValue(), (ArrayList) objArr[0]);
                } else if (i == NotificationCenter.didClearDatabase) {
                    if (this.viewPages != null) {
                        while (true) {
                            ViewPage[] viewPageArr7 = this.viewPages;
                            if (i4 >= viewPageArr7.length) {
                                break;
                            }
                            viewPageArr7[i4].dialogsAdapter.didDatabaseCleared();
                            i4++;
                        }
                    }
                    SuggestClearDatabaseBottomSheet.dismissDialog();
                } else if (i == NotificationCenter.appUpdateAvailable) {
                    updateMenuButton(true);
                } else if (i == NotificationCenter.fileLoaded || i == NotificationCenter.fileLoadFailed || i == NotificationCenter.fileLoadProgressChanged) {
                    String str = (String) objArr[0];
                    if (SharedConfig.isAppUpdateAvailable() && FileLoader.getAttachFileName(SharedConfig.pendingAppUpdate.document).equals(str)) {
                        updateMenuButton(true);
                    }
                } else if (i == NotificationCenter.onDatabaseMigration) {
                    boolean booleanValue3 = ((Boolean) objArr[0]).booleanValue();
                    if (this.fragmentView != null) {
                        if (booleanValue3) {
                            if (this.databaseMigrationHint == null) {
                                DatabaseMigrationHint databaseMigrationHint = new DatabaseMigrationHint(this.fragmentView.getContext(), this.currentAccount);
                                this.databaseMigrationHint = databaseMigrationHint;
                                databaseMigrationHint.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                ((ContentView) this.fragmentView).addView(this.databaseMigrationHint);
                                this.databaseMigrationHint.animate().alpha(1.0f).setDuration(300L).setStartDelay(1000L).start();
                            }
                            this.databaseMigrationHint.setTag(1);
                            return;
                        }
                        View view3 = this.databaseMigrationHint;
                        if (view3 == null || view3.getTag() == null) {
                            return;
                        }
                        final View view4 = this.databaseMigrationHint;
                        view4.animate().setListener(null).cancel();
                        view4.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.66
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (view4.getParent() != null) {
                                    ((ViewGroup) view4.getParent()).removeView(view4);
                                }
                                DialogsActivity.this.databaseMigrationHint = null;
                            }
                        }).alpha(BitmapDescriptorFactory.HUE_RED).setStartDelay(0L).setDuration(150L).start();
                        this.databaseMigrationHint.setTag(null);
                    }
                } else if (i == NotificationCenter.onDatabaseOpened) {
                    checkSuggestClearDatabase();
                } else if (i == NotificationCenter.userEmojiStatusUpdated) {
                    updateStatus((TLRPC$User) objArr[0], true);
                } else if (i == NotificationCenter.currentUserPremiumStatusChanged) {
                    updateStatus(UserConfig.getInstance(i2).getCurrentUser(), true);
                } else if (i == NotificationCenter.onDatabaseReset) {
                    dialogsLoaded[this.currentAccount] = false;
                    loadDialogs(getAccountInstance());
                    getMessagesController().loadPinnedDialogs(this.folderId, 0L, null);
                } else if (i == NotificationCenter.chatlistFolderUpdate) {
                    int intValue4 = ((Integer) objArr[0]).intValue();
                    while (true) {
                        ViewPage[] viewPageArr8 = this.viewPages;
                        if (i3 >= viewPageArr8.length) {
                            return;
                        }
                        ViewPage viewPage5 = viewPageArr8[i3];
                        if (viewPage5 != null && ((viewPage5.dialogsType == 7 || viewPage5.dialogsType == 8) && (dialogFilter = getMessagesController().selectedDialogFilter[viewPage5.dialogsType - 7]) != null && intValue4 == dialogFilter.f1373id)) {
                            viewPage5.updateList(true);
                            return;
                        }
                        i3++;
                    }
                } else if (i == NotificationCenter.dialogTranslate) {
                    long longValue4 = ((Long) objArr[0]).longValue();
                    int i15 = 0;
                    while (true) {
                        ViewPage[] viewPageArr9 = this.viewPages;
                        if (i15 >= viewPageArr9.length) {
                            return;
                        }
                        ViewPage viewPage6 = viewPageArr9[i15];
                        if (viewPage6.listView != null) {
                            int i16 = 0;
                            while (true) {
                                if (i16 < viewPage6.listView.getChildCount()) {
                                    View childAt3 = viewPage6.listView.getChildAt(i16);
                                    if (childAt3 instanceof DialogCell) {
                                        DialogCell dialogCell = (DialogCell) childAt3;
                                        if (longValue4 == dialogCell.getDialogId()) {
                                            dialogCell.buildLayout();
                                            break;
                                        }
                                    }
                                    i16++;
                                }
                            }
                        }
                        i15++;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$119(Object[] objArr) {
        this.viewPages[0].dialogsAdapter.setWalletBotHidden(((Boolean) objArr[0]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$120(ViewPage viewPage, Object[] objArr) {
        reloadViewPageDialogs(viewPage, objArr.length > 0);
        FilterTabsView filterTabsView = this.filterTabsView;
        if (filterTabsView == null || filterTabsView.getVisibility() != 0) {
            return;
        }
        this.filterTabsView.checkTabsCounter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$122() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda80
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$didReceivedNotification$121();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$121() {
        if (getParentActivity() instanceof LaunchActivity) {
            LaunchActivity launchActivity = (LaunchActivity) getParentActivity();
            launchActivity.switchToAccount(this.currentAccount, true);
            if (this.crossForwardSelectedDialogs != 0) {
                Bundle bundle = new Bundle();
                if (DialogObject.isUserDialog(this.crossForwardSelectedDialogs)) {
                    bundle.putLong("user_id", this.crossForwardSelectedDialogs);
                } else {
                    bundle.putLong("chat_id", -this.crossForwardSelectedDialogs);
                }
                launchActivity.lambda$runLinkRequest$82(new ChatActivity(bundle));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$123(TLRPC$Chat tLRPC$Chat, long j, boolean z, TLRPC$User tLRPC$User, boolean z2) {
        if (tLRPC$Chat != null) {
            if (ChatObject.isNotInChat(tLRPC$Chat)) {
                getMessagesController().deleteDialog(j, 0, z);
            } else {
                getMessagesController().deleteParticipantFromChat(-j, getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId())), null, z, z);
            }
        } else {
            getMessagesController().deleteDialog(j, 0, z);
            if (tLRPC$User != null && tLRPC$User.bot && z2) {
                getMessagesController().blockPeer(tLRPC$User.f1574id);
            }
        }
        getMessagesController().checkIfFolderEmpty(this.folderId);
    }

    private void checkSuggestClearDatabase() {
        if (getMessagesStorage().showClearDatabaseAlert) {
            getMessagesStorage().showClearDatabaseAlert = false;
            SuggestClearDatabaseBottomSheet.show(this);
        }
    }

    private void updateMenuButton(boolean z) {
        int i;
        if (this.menuDrawable == null || this.updateLayout == null) {
            return;
        }
        boolean isAppUpdateAvailable = SharedConfig.isAppUpdateAvailable();
        float f = BitmapDescriptorFactory.HUE_RED;
        if (isAppUpdateAvailable) {
            String attachFileName = FileLoader.getAttachFileName(SharedConfig.pendingAppUpdate.document);
            if (getFileLoader().isLoadingFile(attachFileName)) {
                i = MenuDrawable.TYPE_UDPATE_DOWNLOADING;
                Float fileProgress = ImageLoader.getInstance().getFileProgress(attachFileName);
                if (fileProgress != null) {
                    f = fileProgress.floatValue();
                }
            } else {
                i = MenuDrawable.TYPE_UDPATE_AVAILABLE;
            }
        } else {
            i = MenuDrawable.TYPE_DEFAULT;
        }
        updateAppUpdateViews(z);
        this.menuDrawable.setType(i, z);
        this.menuDrawable.setUpdateDownloadProgress(f, z);
    }

    private void showNextSupportedSuggestion() {
        if (this.showingSuggestion != null) {
            return;
        }
        for (String str : getMessagesController().pendingSuggestions) {
            if (showSuggestion(str)) {
                this.showingSuggestion = str;
                return;
            }
        }
    }

    private void onSuggestionDismiss() {
        if (this.showingSuggestion == null) {
            return;
        }
        getMessagesController().removeSuggestion(0L, this.showingSuggestion);
        this.showingSuggestion = null;
        showNextSupportedSuggestion();
    }

    private boolean showSuggestion(String str) {
        if ("AUTOARCHIVE_POPULAR".equals(str)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString("HideNewChatsAlertTitle", C3290R.string.HideNewChatsAlertTitle));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("HideNewChatsAlertText", C3290R.string.HideNewChatsAlertText)));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("GoToSettings", C3290R.string.GoToSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda15
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.this.lambda$showSuggestion$124(dialogInterface, i);
                }
            });
            showDialog(builder.create(), new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda26
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    DialogsActivity.this.lambda$showSuggestion$125(dialogInterface);
                }
            });
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSuggestion$124(DialogInterface dialogInterface, int i) {
        presentFragment(new PrivacySettingsActivity());
        AndroidUtilities.scrollToFragmentRow(this.parentLayout, "newChatsRow");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSuggestion$125(DialogInterface dialogInterface) {
        onSuggestionDismiss();
    }

    private void showFiltersHint() {
        if (this.askingForPermissions || !getMessagesController().dialogFiltersLoaded || !getMessagesController().showFiltersTooltip || this.filterTabsView == null || !getMessagesController().getDialogFilters().isEmpty() || this.isPaused || !getUserConfig().filtersLoaded || this.inPreviewMode) {
            return;
        }
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        if (globalMainSettings.getBoolean("filterhint", false)) {
            return;
        }
        globalMainSettings.edit().putBoolean("filterhint", true).apply();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda86
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showFiltersHint$127();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersHint$127() {
        UndoView undoView = getUndoView();
        if (undoView != null) {
            undoView.showWithAction(0L, 15, null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda99
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$showFiltersHint$126();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersHint$126() {
        presentFragment(new FiltersSetupActivity());
    }

    private void setDialogsListFrozen(boolean z, boolean z2) {
        if (this.viewPages == null || this.dialogsListFrozen == z) {
            return;
        }
        if (z) {
            if (this.isForwardToArchive) {
                this.frozenDialogsList = new ArrayList<>(getDialogsArray(this.currentAccount, this.viewPages[0].dialogsType, 1, false));
            } else {
                this.frozenDialogsList = new ArrayList<>(getDialogsArray(this.currentAccount, this.viewPages[0].dialogsType, this.folderId, false));
            }
        } else {
            this.frozenDialogsList = null;
        }
        this.dialogsListFrozen = z;
        this.viewPages[0].dialogsAdapter.setDialogsListFrozen(z);
        if (z || !z2) {
            return;
        }
        if (this.viewPages[0].listView.isComputingLayout()) {
            this.viewPages[0].listView.post(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda100
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$setDialogsListFrozen$128();
                }
            });
        } else {
            this.viewPages[0].dialogsAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogsListFrozen$128() {
        this.viewPages[0].dialogsAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDialogsListFrozen(boolean z) {
        setDialogsListFrozen(z, true);
    }

    /* renamed from: org.telegram.ui.DialogsActivity$DialogsHeader */
    /* loaded from: classes5.dex */
    public class DialogsHeader extends TLRPC$Dialog {
        public int headerType;

        public DialogsHeader(DialogsActivity dialogsActivity, int i) {
            this.headerType = i;
        }
    }

    public ArrayList<TLRPC$Dialog> getDialogsArray(int i, int i2, int i3, boolean z) {
        MessagesController.DialogFilter dialogFilter;
        boolean z2;
        ArrayList<TLRPC$Dialog> arrayList;
        if (!z || (arrayList = this.frozenDialogsList) == null) {
            final MessagesController messagesController = AccountInstance.getInstance(i).getMessagesController();
            if (i2 == 401) {
                return messagesController.dialogsWithBookmarksOnly;
            }
            if (i2 == 402) {
                return messagesController.dialogsWithDraftMessagesOnly;
            }
            if (i2 == DIALOGS_TYPE_ALBUMS) {
                Collections.sort(messagesController.dialogsAlbumsOnly, new Comparator() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda127
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$getDialogsArray$129;
                        lambda$getDialogsArray$129 = DialogsActivity.this.lambda$getDialogsArray$129(messagesController, (TLRPC$Dialog) obj, (TLRPC$Dialog) obj2);
                        return lambda$getDialogsArray$129;
                    }
                });
                return messagesController.dialogsAlbumsOnly;
            } else if (isHiddenChats()) {
                return messagesController.hiddenDialogsOnly;
            } else {
                if (i2 == 0) {
                    return messagesController.getDialogs(i3);
                }
                if (i2 == 10 || i2 == 13) {
                    return messagesController.dialogsServerOnly;
                }
                boolean z3 = true;
                if (i2 == 2) {
                    ArrayList<TLRPC$Dialog> arrayList2 = new ArrayList<>(messagesController.dialogsCanAddUsers.size() + messagesController.dialogsMyChannels.size() + messagesController.dialogsMyGroups.size() + 2);
                    if (messagesController.dialogsMyChannels.size() > 0 && this.allowChannels) {
                        arrayList2.add(new DialogsHeader(this, 0));
                        arrayList2.addAll(messagesController.dialogsMyChannels);
                    }
                    if (messagesController.dialogsMyGroups.size() > 0 && this.allowGroups) {
                        arrayList2.add(new DialogsHeader(this, 1));
                        arrayList2.addAll(messagesController.dialogsMyGroups);
                    }
                    if (messagesController.dialogsCanAddUsers.size() > 0) {
                        int size = messagesController.dialogsCanAddUsers.size();
                        for (int i4 = 0; i4 < size; i4++) {
                            TLRPC$Dialog tLRPC$Dialog = messagesController.dialogsCanAddUsers.get(i4);
                            if ((this.allowChannels && ChatObject.isChannelAndNotMegaGroup(-tLRPC$Dialog.f1439id, i)) || (this.allowGroups && (ChatObject.isMegagroup(i, -tLRPC$Dialog.f1439id) || !ChatObject.isChannel(-tLRPC$Dialog.f1439id, i)))) {
                                if (z3) {
                                    arrayList2.add(new DialogsHeader(this, 2));
                                    z3 = false;
                                }
                                arrayList2.add(tLRPC$Dialog);
                            }
                        }
                    }
                    return arrayList2;
                } else if (i2 == 3) {
                    return i3 == 1 ? this.isCrossForward ? messagesController.crossAccountsArchivedDialogsForward : messagesController.archivedDialogsForward : this.isCrossForward ? messagesController.crossAccountsDialogsForward : messagesController.dialogsForward;
                } else if (i2 == 4 || i2 == 12) {
                    return messagesController.dialogsUsersOnly;
                } else {
                    if (i2 == 5) {
                        return messagesController.dialogsChannelsOnly;
                    }
                    if (i2 == 6 || i2 == 11) {
                        return messagesController.dialogsGroupsOnly;
                    }
                    if (i2 == 7 || i2 == 8) {
                        if (isArchive()) {
                            dialogFilter = messagesController.selectedArchiveDialogFilter[i2 != 7 ? (char) 1 : (char) 0];
                        } else if (isForward()) {
                            dialogFilter = messagesController.selectedForwardDialogFilter[i2 != 7 ? (char) 1 : (char) 0];
                        } else {
                            dialogFilter = messagesController.selectedDialogFilter[i2 != 7 ? (char) 1 : (char) 0];
                        }
                        if (dialogFilter == null) {
                            return messagesController.getDialogs(i3);
                        }
                        if (this.initialDialogsType == 3) {
                            return dialogFilter.dialogs;
                        }
                        return dialogFilter.dialogs;
                    } else if (i2 == 9) {
                        return messagesController.dialogsForBlock;
                    } else {
                        if (i2 == 1 || i2 == 14) {
                            ArrayList<TLRPC$Dialog> arrayList3 = this.botShareDialogs;
                            if (arrayList3 != null) {
                                return arrayList3;
                            }
                            this.botShareDialogs = new ArrayList<>();
                            if (this.allowUsers || this.allowBots) {
                                Iterator<TLRPC$Dialog> it = messagesController.dialogsUsersOnly.iterator();
                                while (it.hasNext()) {
                                    TLRPC$Dialog next = it.next();
                                    TLRPC$User user = messagesController.getUser(Long.valueOf(next.f1439id));
                                    if (user != null && !UserObject.isUserSelf(user)) {
                                        if (user.bot) {
                                            if (this.allowBots) {
                                                this.botShareDialogs.add(next);
                                            }
                                        } else if (this.allowUsers) {
                                            this.botShareDialogs.add(next);
                                        }
                                    }
                                }
                            }
                            if (this.allowGroups || ((z2 = this.allowLegacyGroups) && this.allowMegagroups)) {
                                Iterator<TLRPC$Dialog> it2 = messagesController.dialogsGroupsOnly.iterator();
                                while (it2.hasNext()) {
                                    TLRPC$Dialog next2 = it2.next();
                                    TLRPC$Chat chat = messagesController.getChat(Long.valueOf(-next2.f1439id));
                                    if (chat != null && !ChatObject.isChannelAndNotMegaGroup(chat) && messagesController.canAddToForward(next2)) {
                                        this.botShareDialogs.add(next2);
                                    }
                                }
                            } else if (z2 || this.allowMegagroups) {
                                Iterator<TLRPC$Dialog> it3 = messagesController.dialogsGroupsOnly.iterator();
                                while (it3.hasNext()) {
                                    TLRPC$Dialog next3 = it3.next();
                                    TLRPC$Chat chat2 = messagesController.getChat(Long.valueOf(-next3.f1439id));
                                    if (chat2 != null && !ChatObject.isChannelAndNotMegaGroup(chat2) && messagesController.canAddToForward(next3) && ((this.allowLegacyGroups && !ChatObject.isMegagroup(chat2)) || (this.allowMegagroups && ChatObject.isMegagroup(chat2)))) {
                                        this.botShareDialogs.add(next3);
                                    }
                                }
                            }
                            if (this.allowChannels) {
                                Iterator<TLRPC$Dialog> it4 = messagesController.dialogsChannelsOnly.iterator();
                                while (it4.hasNext()) {
                                    TLRPC$Dialog next4 = it4.next();
                                    if (messagesController.canAddToForward(next4)) {
                                        this.botShareDialogs.add(next4);
                                    }
                                }
                            }
                            getMessagesController().sortDialogsList(this.botShareDialogs);
                            return this.botShareDialogs;
                        } else if (i2 == 15) {
                            ArrayList<TLRPC$Dialog> arrayList4 = new ArrayList<>();
                            TLRPC$User user2 = messagesController.getUser(Long.valueOf(this.requestPeerBotId));
                            TLRPC$RequestPeerType tLRPC$RequestPeerType = this.requestPeerType;
                            if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeUser) {
                                ConcurrentHashMap<Long, TLRPC$User> users = messagesController.getUsers();
                                Iterator<TLRPC$Dialog> it5 = messagesController.dialogsUsersOnly.iterator();
                                while (it5.hasNext()) {
                                    TLRPC$Dialog next5 = it5.next();
                                    if (meetRequestPeerRequirements(getMessagesController().getUser(Long.valueOf(next5.f1439id)))) {
                                        arrayList4.add(next5);
                                    }
                                }
                                for (TLRPC$User tLRPC$User : users.values()) {
                                    if (tLRPC$User != null && !messagesController.dialogs_dict.containsKey(tLRPC$User.f1574id) && meetRequestPeerRequirements(tLRPC$User)) {
                                        TLRPC$TL_dialog tLRPC$TL_dialog = new TLRPC$TL_dialog();
                                        TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
                                        tLRPC$TL_dialog.peer = tLRPC$TL_peerUser;
                                        long j = tLRPC$User.f1574id;
                                        tLRPC$TL_peerUser.user_id = j;
                                        tLRPC$TL_dialog.f1439id = j;
                                        arrayList4.add(tLRPC$TL_dialog);
                                    }
                                }
                            } else if ((tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeChat) || (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeBroadcast)) {
                                ConcurrentHashMap<Long, TLRPC$Chat> chats = messagesController.getChats();
                                Iterator<TLRPC$Dialog> it6 = (this.requestPeerType instanceof TLRPC$TL_requestPeerTypeChat ? messagesController.dialogsGroupsOnly : messagesController.dialogsChannelsOnly).iterator();
                                while (it6.hasNext()) {
                                    TLRPC$Dialog next6 = it6.next();
                                    if (meetRequestPeerRequirements(user2, getMessagesController().getChat(Long.valueOf(-next6.f1439id)))) {
                                        arrayList4.add(next6);
                                    }
                                }
                                for (TLRPC$Chat tLRPC$Chat : chats.values()) {
                                    if (tLRPC$Chat != null && !messagesController.dialogs_dict.containsKey(-tLRPC$Chat.f1433id) && meetRequestPeerRequirements(user2, tLRPC$Chat)) {
                                        TLRPC$TL_dialog tLRPC$TL_dialog2 = new TLRPC$TL_dialog();
                                        if (ChatObject.isChannel(tLRPC$Chat)) {
                                            TLRPC$TL_peerChannel tLRPC$TL_peerChannel = new TLRPC$TL_peerChannel();
                                            tLRPC$TL_dialog2.peer = tLRPC$TL_peerChannel;
                                            tLRPC$TL_peerChannel.channel_id = tLRPC$Chat.f1433id;
                                        } else {
                                            TLRPC$TL_peerChat tLRPC$TL_peerChat = new TLRPC$TL_peerChat();
                                            tLRPC$TL_dialog2.peer = tLRPC$TL_peerChat;
                                            tLRPC$TL_peerChat.chat_id = tLRPC$Chat.f1433id;
                                        }
                                        tLRPC$TL_dialog2.f1439id = -tLRPC$Chat.f1433id;
                                        arrayList4.add(tLRPC$TL_dialog2);
                                    }
                                }
                            }
                            return arrayList4;
                        } else {
                            return new ArrayList<>();
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$getDialogsArray$129(MessagesController messagesController, TLRPC$Dialog tLRPC$Dialog, TLRPC$Dialog tLRPC$Dialog2) {
        TLRPC$Chat chat = messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1439id));
        TLRPC$Chat chat2 = messagesController.getChat(Long.valueOf(-tLRPC$Dialog2.f1439id));
        return (isAlbums() && SharedConfig.isSortCloudAlbumsByNameEnabled) ? chat.title.compareTo(chat2.title) : chat2.date - chat.date;
    }

    private boolean meetRequestPeerRequirements(TLRPC$User tLRPC$User) {
        Boolean bool;
        Boolean bool2;
        TLRPC$TL_requestPeerTypeUser tLRPC$TL_requestPeerTypeUser = (TLRPC$TL_requestPeerTypeUser) this.requestPeerType;
        return (tLRPC$User == null || UserObject.isReplyUser(tLRPC$User) || UserObject.isDeleted(tLRPC$User) || ((bool = tLRPC$TL_requestPeerTypeUser.bot) != null && bool.booleanValue() != tLRPC$User.bot) || ((bool2 = tLRPC$TL_requestPeerTypeUser.premium) != null && bool2.booleanValue() != tLRPC$User.premium)) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
        if (r2.booleanValue() == (org.telegram.messenger.ChatObject.getPublicUsername(r7) != null)) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean meetRequestPeerRequirements(org.telegram.tgnet.TLRPC$User r6, org.telegram.tgnet.TLRPC$Chat r7) {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            if (r7 == 0) goto L94
            boolean r2 = org.telegram.messenger.ChatObject.isChannelAndNotMegaGroup(r7)
            org.telegram.tgnet.TLRPC$RequestPeerType r3 = r5.requestPeerType
            boolean r4 = r3 instanceof org.telegram.tgnet.TLRPC$TL_requestPeerTypeBroadcast
            if (r2 != r4) goto L94
            java.lang.Boolean r2 = r3.creator
            if (r2 == 0) goto L1c
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L1c
            boolean r2 = r7.creator
            if (r2 == 0) goto L94
        L1c:
            org.telegram.tgnet.TLRPC$RequestPeerType r2 = r5.requestPeerType
            java.lang.Boolean r2 = r2.bot_participant
            if (r2 == 0) goto L38
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L38
            org.telegram.messenger.MessagesController r2 = r5.getMessagesController()
            boolean r2 = r2.isInChatCached(r7, r6)
            if (r2 != 0) goto L38
            boolean r2 = org.telegram.messenger.ChatObject.canAddBotsToChat(r7)
            if (r2 == 0) goto L94
        L38:
            org.telegram.tgnet.TLRPC$RequestPeerType r2 = r5.requestPeerType
            java.lang.Boolean r2 = r2.has_username
            if (r2 == 0) goto L4d
            boolean r2 = r2.booleanValue()
            java.lang.String r3 = org.telegram.messenger.ChatObject.getPublicUsername(r7)
            if (r3 == 0) goto L4a
            r3 = r0
            goto L4b
        L4a:
            r3 = r1
        L4b:
            if (r2 != r3) goto L94
        L4d:
            org.telegram.tgnet.TLRPC$RequestPeerType r2 = r5.requestPeerType
            java.lang.Boolean r2 = r2.forum
            if (r2 == 0) goto L5d
            boolean r2 = r2.booleanValue()
            boolean r3 = org.telegram.messenger.ChatObject.isForum(r7)
            if (r2 != r3) goto L94
        L5d:
            org.telegram.tgnet.TLRPC$RequestPeerType r2 = r5.requestPeerType
            org.telegram.tgnet.TLRPC$TL_chatAdminRights r2 = r2.user_admin_rights
            if (r2 == 0) goto L79
            org.telegram.messenger.MessagesController r2 = r5.getMessagesController()
            org.telegram.messenger.UserConfig r3 = r5.getUserConfig()
            org.telegram.tgnet.TLRPC$User r3 = r3.getCurrentUser()
            org.telegram.tgnet.TLRPC$RequestPeerType r4 = r5.requestPeerType
            org.telegram.tgnet.TLRPC$TL_chatAdminRights r4 = r4.user_admin_rights
            boolean r2 = r2.matchesAdminRights(r7, r3, r4)
            if (r2 == 0) goto L94
        L79:
            org.telegram.tgnet.TLRPC$RequestPeerType r2 = r5.requestPeerType
            org.telegram.tgnet.TLRPC$TL_chatAdminRights r2 = r2.bot_admin_rights
            if (r2 == 0) goto L95
            org.telegram.messenger.MessagesController r2 = r5.getMessagesController()
            org.telegram.tgnet.TLRPC$RequestPeerType r3 = r5.requestPeerType
            org.telegram.tgnet.TLRPC$TL_chatAdminRights r3 = r3.bot_admin_rights
            boolean r6 = r2.matchesAdminRights(r7, r6, r3)
            if (r6 != 0) goto L95
            boolean r6 = org.telegram.messenger.ChatObject.canAddAdmins(r7)
            if (r6 == 0) goto L94
            goto L95
        L94:
            r0 = r1
        L95:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.meetRequestPeerRequirements(org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Chat):boolean");
    }

    public void setSideMenu(RecyclerView recyclerView) {
        this.sideMenu = recyclerView;
        int i = Theme.key_chats_menuBackground;
        recyclerView.setBackgroundColor(Theme.getColor(i));
        this.sideMenu.setGlowColor(Theme.getColor(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePasscodeButton() {
        if (this.passcodeItem == null) {
            return;
        }
        if (SharedConfig.passcodeHash.length() != 0 && !this.searching) {
            ActionBarMenuItem actionBarMenuItem = this.doneItem;
            if (actionBarMenuItem == null || actionBarMenuItem.getVisibility() != 0) {
                this.passcodeItem.setVisibility(0);
            }
            this.passcodeItem.setIcon(this.passcodeDrawable);
            this.passcodeItemVisible = true;
            return;
        }
        this.passcodeItem.setVisibility(8);
        this.passcodeItemVisible = false;
    }

    private void setFloatingProgressVisible(final boolean z, boolean z2) {
        if (this.floatingButton == null || this.floatingProgressView == null) {
            return;
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            if (z == this.floatingProgressVisible) {
                return;
            }
            AnimatorSet animatorSet = this.floatingProgressAnimator;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.floatingProgressVisible = z;
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.floatingProgressAnimator = animatorSet2;
            Animator[] animatorArr = new Animator[6];
            RLottieImageView rLottieImageView = this.floatingButton;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 0.0f : 1.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(rLottieImageView, property, fArr);
            RLottieImageView rLottieImageView2 = this.floatingButton;
            Property property2 = View.SCALE_X;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 0.1f : 1.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(rLottieImageView2, property2, fArr2);
            RLottieImageView rLottieImageView3 = this.floatingButton;
            Property property3 = View.SCALE_Y;
            float[] fArr3 = new float[1];
            fArr3[0] = z ? 0.1f : 1.0f;
            animatorArr[2] = ObjectAnimator.ofFloat(rLottieImageView3, property3, fArr3);
            RadialProgressView radialProgressView = this.floatingProgressView;
            Property property4 = View.ALPHA;
            float[] fArr4 = new float[1];
            if (z) {
                f = 1.0f;
            }
            fArr4[0] = f;
            animatorArr[3] = ObjectAnimator.ofFloat(radialProgressView, property4, fArr4);
            RadialProgressView radialProgressView2 = this.floatingProgressView;
            Property property5 = View.SCALE_X;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? 1.0f : 0.1f;
            animatorArr[4] = ObjectAnimator.ofFloat(radialProgressView2, property5, fArr5);
            RadialProgressView radialProgressView3 = this.floatingProgressView;
            Property property6 = View.SCALE_Y;
            float[] fArr6 = new float[1];
            fArr6[0] = z ? 1.0f : 0.1f;
            animatorArr[5] = ObjectAnimator.ofFloat(radialProgressView3, property6, fArr6);
            animatorSet2.playTogether(animatorArr);
            this.floatingProgressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.67
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    DialogsActivity.this.floatingProgressView.setVisibility(0);
                    DialogsActivity.this.floatingButton.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator == DialogsActivity.this.floatingProgressAnimator) {
                        if (z) {
                            if (DialogsActivity.this.floatingButton != null) {
                                DialogsActivity.this.floatingButton.setVisibility(8);
                            }
                        } else if (DialogsActivity.this.floatingButton != null) {
                            DialogsActivity.this.floatingProgressView.setVisibility(8);
                        }
                        DialogsActivity.this.floatingProgressAnimator = null;
                    }
                }
            });
            this.floatingProgressAnimator.setDuration(150L);
            this.floatingProgressAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.floatingProgressAnimator.start();
            return;
        }
        AnimatorSet animatorSet3 = this.floatingProgressAnimator;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
        }
        this.floatingProgressVisible = z;
        if (z) {
            this.floatingButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.floatingButton.setScaleX(0.1f);
            this.floatingButton.setScaleY(0.1f);
            this.floatingButton.setVisibility(8);
            this.floatingProgressView.setAlpha(1.0f);
            this.floatingProgressView.setScaleX(1.0f);
            this.floatingProgressView.setScaleY(1.0f);
            this.floatingProgressView.setVisibility(0);
            return;
        }
        this.floatingButton.setAlpha(1.0f);
        this.floatingButton.setScaleX(1.0f);
        this.floatingButton.setScaleY(1.0f);
        this.floatingButton.setVisibility(0);
        this.floatingProgressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.floatingProgressView.setScaleX(0.1f);
        this.floatingProgressView.setScaleY(0.1f);
        this.floatingProgressView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFloatingButton(boolean z) {
        if (this.floatingButtonContainer == null) {
            return;
        }
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
            z = true;
        }
        if (this.floatingHidden != z) {
            if (z && this.floatingForceVisible) {
                return;
            }
            this.floatingHidden = z;
            AnimatorSet animatorSet = new AnimatorSet();
            float[] fArr = new float[2];
            fArr[0] = this.floatingButtonHideProgress;
            fArr[1] = this.floatingHidden ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DialogsActivity.this.lambda$hideFloatingButton$130(valueAnimator);
                }
            });
            animatorSet.playTogether(ofFloat);
            animatorSet.setDuration(300L);
            animatorSet.setInterpolator(this.floatingInterpolator);
            this.floatingButtonContainer.setClickable(!z);
            animatorSet.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideFloatingButton$130(ValueAnimator valueAnimator) {
        this.floatingButtonHideProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingButtonTranslation = AndroidUtilities.m54dp(100) * this.floatingButtonHideProgress;
        updateFloatingButtonOffset();
    }

    public void animateContactsAlpha(float f) {
        ValueAnimator valueAnimator = this.contactsAlphaAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator duration = ValueAnimator.ofFloat(this.contactsAlpha, f).setDuration(250L);
        this.contactsAlphaAnimator = duration;
        duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.contactsAlphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DialogsActivity.this.lambda$animateContactsAlpha$131(valueAnimator2);
            }
        });
        this.contactsAlphaAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateContactsAlpha$131(ValueAnimator valueAnimator) {
        setContactsAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void setContactsAlpha(float f) {
        ViewPage[] viewPageArr;
        this.contactsAlpha = f;
        for (ViewPage viewPage : this.viewPages) {
            DialogsRecyclerView dialogsRecyclerView = viewPage.listView;
            for (int i = 0; i < dialogsRecyclerView.getChildCount(); i++) {
                View childAt = dialogsRecyclerView.getChildAt(i);
                if (childAt != null && dialogsRecyclerView.getChildAdapterPosition(childAt) >= viewPage.dialogsAdapter.getDialogsCount() + 1) {
                    childAt.setAlpha(f);
                }
            }
        }
    }

    public void setScrollDisabled(boolean z) {
        for (ViewPage viewPage : this.viewPages) {
            ((LinearLayoutManager) viewPage.listView.getLayoutManager()).setScrollDisabled(z);
        }
    }

    private void updateDialogIndices() {
        if (this.viewPages == null) {
            return;
        }
        int i = 0;
        while (true) {
            ViewPage[] viewPageArr = this.viewPages;
            if (i >= viewPageArr.length) {
                return;
            }
            if (viewPageArr[i].getVisibility() == 0 && !this.viewPages[i].dialogsAdapter.getDialogsListIsFrozen()) {
                this.viewPages[i].updateList(false);
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVisibleRows(int i) {
        updateVisibleRows(i, true);
    }

    private void updateVisibleRows(int i, boolean z) {
        RecyclerListView recyclerListView;
        if ((this.dialogsListFrozen && (MessagesController.UPDATE_MASK_REORDER & i) == 0) || this.isPaused) {
            if (this.isPaused) {
                this.pendingUpdateInterfaceMask = i | this.pendingUpdateInterfaceMask;
                return;
            }
            return;
        }
        int i2 = 0;
        while (true) {
            RecentChatsBar recentChatsBar = this.recentChatsBar;
            if (i2 >= (recentChatsBar != null ? 1 : 0) + 3) {
                return;
            }
            ViewPage viewPage = null;
            if (i2 == 3) {
                recyclerListView = recentChatsBar.getListView();
            } else if (i2 == 2) {
                SearchViewPager searchViewPager = this.searchViewPager;
                recyclerListView = searchViewPager != null ? searchViewPager.searchListView : null;
            } else {
                ViewPage[] viewPageArr = this.viewPages;
                if (viewPageArr != null) {
                    recyclerListView = i2 < viewPageArr.length ? viewPageArr[i2].listView : null;
                    if (recyclerListView == null || this.viewPages[i2].getVisibility() == 0) {
                        if (recyclerListView != null) {
                            viewPage = this.viewPages[i2];
                        }
                    }
                }
                i2++;
            }
            if (recyclerListView != null && recyclerListView.getAdapter() != null) {
                if (((MessagesController.UPDATE_MASK_NEW_MESSAGE & i) != 0 || i == 0) && viewPage != null) {
                    viewPage.updateList(false);
                } else {
                    int childCount = recyclerListView.getChildCount();
                    int i3 = 0;
                    while (true) {
                        if (i3 < childCount) {
                            View childAt = recyclerListView.getChildAt(i3);
                            if ((childAt instanceof DialogCell) && recyclerListView.getAdapter() != this.searchViewPager.dialogsSearchAdapter) {
                                DialogCell dialogCell = (DialogCell) childAt;
                                if ((MessagesController.UPDATE_MASK_REORDER & i) != 0) {
                                    dialogCell.onReorderStateChanged(this.actionBar.isActionModeShowed(), true);
                                    if (this.dialogsListFrozen) {
                                        continue;
                                        i3++;
                                    }
                                }
                                if ((MessagesController.UPDATE_MASK_CHECK & i) != 0) {
                                    dialogCell.setChecked(false, (MessagesController.UPDATE_MASK_CHAT & i) != 0);
                                } else {
                                    if ((MessagesController.UPDATE_MASK_SELECT_DIALOG & i) != 0) {
                                        if (this.viewPages[i2].isDefaultDialogType() && AndroidUtilities.isTablet()) {
                                            dialogCell.setDialogSelected(dialogCell.getDialogId() == this.openedDialogId.dialogId);
                                        }
                                    } else if (dialogCell.update(i, z)) {
                                        viewPage.updateList(false);
                                        break;
                                    }
                                    ArrayList<Long> arrayList = this.selectedDialogs;
                                    if (arrayList != null) {
                                        dialogCell.setChecked(arrayList.contains(Long.valueOf(dialogCell.getDialogId())), false);
                                    }
                                }
                            }
                            if (childAt instanceof UserCell) {
                                ((UserCell) childAt).update(i);
                            } else if (childAt instanceof ProfileSearchCell) {
                                ProfileSearchCell profileSearchCell = (ProfileSearchCell) childAt;
                                profileSearchCell.update(i);
                                ArrayList<Long> arrayList2 = this.selectedDialogs;
                                if (arrayList2 != null) {
                                    profileSearchCell.setChecked(arrayList2.contains(Long.valueOf(profileSearchCell.getDialogId())), false);
                                }
                            }
                            if (!this.dialogsListFrozen) {
                                if (childAt instanceof RecyclerListView) {
                                    RecyclerListView recyclerListView2 = (RecyclerListView) childAt;
                                    int childCount2 = recyclerListView2.getChildCount();
                                    for (int i4 = 0; i4 < childCount2; i4++) {
                                        View childAt2 = recyclerListView2.getChildAt(i4);
                                        if (childAt2 instanceof HintDialogCell) {
                                            ((HintDialogCell) childAt2).update(i);
                                        }
                                    }
                                }
                                if (childAt instanceof AvatarDrawableCell) {
                                    ((AvatarDrawableCell) childAt).update();
                                }
                            }
                            i3++;
                        }
                    }
                }
            }
            i2++;
        }
    }

    public void setDelegate(DialogsActivityDelegate dialogsActivityDelegate) {
        this.delegate = dialogsActivityDelegate;
        if (dialogsActivityDelegate != null) {
            dialogsActivityDelegate.didSelectDialogs(null, null, null, false, null, new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda70
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DialogsActivity.this.lambda$setDelegate$132((ArrayList) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDelegate$132(ArrayList arrayList) {
        this.forwardingMessages = arrayList;
    }

    public void setSearchString(String str) {
        this.searchString = str;
    }

    public void setInitialSearchString(String str) {
        this.initialSearchString = str;
    }

    public boolean isMainDialogList() {
        return this.delegate == null && this.searchString == null && !isManagement() && !isHiddenChats();
    }

    public boolean isArchive() {
        return this.folderId == 1;
    }

    public void setInitialSearchType(int i) {
        this.initialSearchType = i;
    }

    private boolean checkCanWrite(long j) {
        if (this.addToGroupAlertString == null && this.initialDialogsType != 15 && this.checkCanWrite) {
            if (DialogObject.isChatDialog(j)) {
                long j2 = -j;
                TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(j2));
                if (!ChatObject.isChannel(chat) || chat.megagroup) {
                    return true;
                }
                if (this.cantSendToChannels || !ChatObject.isCanWriteToChannel(j2, this.currentAccount) || this.hasPoll == 2) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                    builder.setTitle(LocaleController.getString("SendMessageTitle", C3290R.string.SendMessageTitle));
                    if (this.hasPoll == 2) {
                        builder.setMessage(LocaleController.getString("PublicPollCantForward", C3290R.string.PublicPollCantForward));
                    } else {
                        builder.setMessage(LocaleController.getString("ChannelCantSendMessage", C3290R.string.ChannelCantSendMessage));
                    }
                    builder.setNegativeButton(LocaleController.getString("OK", C3290R.string.OK), null);
                    showDialog(builder.create());
                    return false;
                }
                return true;
            } else if (DialogObject.isEncryptedDialog(j)) {
                if (this.hasPoll != 0 || this.hasInvoice) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
                    builder2.setTitle(LocaleController.getString("SendMessageTitle", C3290R.string.SendMessageTitle));
                    if (this.hasPoll != 0) {
                        builder2.setMessage(LocaleController.getString("PollCantForwardSecretChat", C3290R.string.PollCantForwardSecretChat));
                    } else {
                        builder2.setMessage(LocaleController.getString("InvoiceCantForwardSecretChat", C3290R.string.InvoiceCantForwardSecretChat));
                    }
                    builder2.setNegativeButton(LocaleController.getString("OK", C3290R.string.OK), null);
                    showDialog(builder2.create());
                    return false;
                }
                return true;
            } else {
                return true;
            }
        }
        return true;
    }

    public void didSelectResult(long j, int i, boolean z, boolean z2) {
        didSelectResult(j, i, z, z2, null);
    }

    public void didSelectResult(final long j, final int i, boolean z, final boolean z2, final TopicsFragment topicsFragment) {
        final TLRPC$Chat tLRPC$Chat;
        final TLRPC$User tLRPC$User;
        String string;
        String formatStringSimple;
        String string2;
        TLRPC$TL_forumTopic findTopic;
        if (checkCanWrite(j)) {
            int i2 = this.initialDialogsType;
            if (i2 == 11 || i2 == 12 || i2 == 13) {
                if (this.checkingImportDialog) {
                    return;
                }
                if (DialogObject.isUserDialog(j)) {
                    TLRPC$User user = getMessagesController().getUser(Long.valueOf(j));
                    if (!user.mutual_contact) {
                        UndoView undoView = getUndoView();
                        if (undoView != null) {
                            undoView.showWithAction(j, 45, (Runnable) null);
                            return;
                        }
                        return;
                    }
                    tLRPC$User = user;
                    tLRPC$Chat = null;
                } else {
                    TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-j));
                    if (!ChatObject.hasAdminRights(chat) || !ChatObject.canChangeChatInfo(chat)) {
                        UndoView undoView2 = getUndoView();
                        if (undoView2 != null) {
                            undoView2.showWithAction(j, 46, (Runnable) null);
                            return;
                        }
                        return;
                    }
                    tLRPC$Chat = chat;
                    tLRPC$User = null;
                }
                final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
                final TLRPC$TL_messages_checkHistoryImportPeer tLRPC$TL_messages_checkHistoryImportPeer = new TLRPC$TL_messages_checkHistoryImportPeer();
                tLRPC$TL_messages_checkHistoryImportPeer.peer = getMessagesController().getInputPeer(j);
                getConnectionsManager().sendRequest(tLRPC$TL_messages_checkHistoryImportPeer, new RequestDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda145
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        DialogsActivity.this.lambda$didSelectResult$135(alertDialog, tLRPC$User, tLRPC$Chat, j, z2, tLRPC$TL_messages_checkHistoryImportPeer, tLObject, tLRPC$TL_error);
                    }
                });
                try {
                    alertDialog.showDelayed(300L);
                } catch (Exception unused) {
                }
            } else if (!z || ((this.selectAlertString == null || this.selectAlertStringGroup == null) && this.addToGroupAlertString == null)) {
                if (i2 == 15) {
                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda110
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.this.lambda$didSelectResult$138(j, i, z2, topicsFragment);
                        }
                    };
                    Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda111
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.this.lambda$didSelectResult$140(j, runnable);
                        }
                    };
                    if (j < 0) {
                        showSendToBotAlert(getMessagesController().getChat(Long.valueOf(-j)), runnable2, (Runnable) null);
                    } else {
                        showSendToBotAlert(getMessagesController().getUser(Long.valueOf(j)), runnable2, (Runnable) null);
                    }
                } else if (this.isCrossForward) {
                    this.crossForwardSelectedDialogs = j;
                    crossAccountsForward();
                } else if (this.delegate != null) {
                    ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                    arrayList.add(MessagesStorage.TopicKey.m46of(j, i));
                    if (this.delegate.didSelectDialogs(this, arrayList, null, z2, topicsFragment, null) && this.resetDelegate) {
                        this.delegate = null;
                    }
                } else {
                    finishFragment();
                }
            } else if (getParentActivity() == null) {
            } else {
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                if (DialogObject.isEncryptedDialog(j)) {
                    TLRPC$User user2 = getMessagesController().getUser(Long.valueOf(getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))).user_id));
                    if (user2 == null) {
                        return;
                    }
                    string = LocaleController.getString("SendMessageTitle", C3290R.string.SendMessageTitle);
                    formatStringSimple = LocaleController.formatStringSimple(this.selectAlertString, UserObject.getUserName(user2));
                    string2 = LocaleController.getString("Send", C3290R.string.Send);
                } else if (DialogObject.isUserDialog(j)) {
                    if (j == getUserConfig().getClientUserId()) {
                        string = LocaleController.getString("SendMessageTitle", C3290R.string.SendMessageTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.selectAlertStringGroup, LocaleController.getString("SavedMessages", C3290R.string.SavedMessages));
                        string2 = LocaleController.getString("Send", C3290R.string.Send);
                    } else {
                        TLRPC$User user3 = getMessagesController().getUser(Long.valueOf(j));
                        if (user3 == null || this.selectAlertString == null) {
                            return;
                        }
                        string = LocaleController.getString("SendMessageTitle", C3290R.string.SendMessageTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.selectAlertString, UserObject.getUserName(user3));
                        string2 = LocaleController.getString("Send", C3290R.string.Send);
                    }
                } else {
                    TLRPC$Chat chat2 = getMessagesController().getChat(Long.valueOf(-j));
                    if (chat2 == null) {
                        return;
                    }
                    String str = chat2.title;
                    if (i != 0 && (findTopic = getMessagesController().getTopicsController().findTopic(chat2.f1433id, i)) != null) {
                        str = ((Object) str) + " " + findTopic.title;
                    }
                    if (this.addToGroupAlertString != null) {
                        string = LocaleController.getString("AddToTheGroupAlertTitle", C3290R.string.AddToTheGroupAlertTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.addToGroupAlertString, str);
                        string2 = LocaleController.getString("Add", C3290R.string.Add);
                    } else {
                        string = LocaleController.getString("SendMessageTitle", C3290R.string.SendMessageTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.selectAlertStringGroup, str);
                        string2 = LocaleController.getString("Send", C3290R.string.Send);
                    }
                }
                String str2 = string2;
                builder.setTitle(string);
                builder.setMessage(AndroidUtilities.replaceTags(formatStringSimple));
                builder.setPositiveButton(str2, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda21
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        DialogsActivity.this.lambda$didSelectResult$136(j, i, topicsFragment, dialogInterface, i3);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
                if (this.sharePhotoVideo) {
                    builder.setNeutralButton(LocaleController.getString("Edit", C3290R.string.Edit), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda20
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i3) {
                            DialogsActivity.this.lambda$didSelectResult$137(j, dialogInterface, i3);
                        }
                    });
                }
                AlertDialog create = builder.create();
                if (showDialog(create) == null) {
                    create.show();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$135(final AlertDialog alertDialog, final TLRPC$User tLRPC$User, final TLRPC$Chat tLRPC$Chat, final long j, final boolean z, final TLRPC$TL_messages_checkHistoryImportPeer tLRPC$TL_messages_checkHistoryImportPeer, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda121
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$didSelectResult$134(alertDialog, tLObject, tLRPC$User, tLRPC$Chat, j, z, tLRPC$TL_error, tLRPC$TL_messages_checkHistoryImportPeer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$134(AlertDialog alertDialog, TLObject tLObject, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, final long j, final boolean z, TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_messages_checkHistoryImportPeer tLRPC$TL_messages_checkHistoryImportPeer) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        this.checkingImportDialog = false;
        if (tLObject != null) {
            AlertsCreator.createImportDialogAlert(this, this.arguments.getString("importTitle"), ((TLRPC$TL_messages_checkedHistoryImportPeer) tLObject).confirm_text, tLRPC$User, tLRPC$Chat, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda112
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$didSelectResult$133(j, z);
                }
            });
            return;
        }
        AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, this, tLRPC$TL_messages_checkHistoryImportPeer, new Object[0]);
        getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(j), tLRPC$TL_messages_checkHistoryImportPeer, tLRPC$TL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$133(long j, boolean z) {
        setDialogsListFrozen(true);
        ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
        arrayList.add(MessagesStorage.TopicKey.m46of(j, 0));
        this.delegate.didSelectDialogs(this, arrayList, null, z, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$136(long j, int i, TopicsFragment topicsFragment, DialogInterface dialogInterface, int i2) {
        didSelectResult(j, i, false, false, topicsFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$137(long j, DialogInterface dialogInterface, int i) {
        didSelectResult(j, 0, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$138(long j, int i, boolean z, TopicsFragment topicsFragment) {
        if (this.delegate != null) {
            ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
            arrayList.add(MessagesStorage.TopicKey.m46of(j, i));
            this.delegate.didSelectDialogs(this, arrayList, null, z, topicsFragment, null);
            if (this.resetDelegate) {
                this.delegate = null;
                return;
            }
            return;
        }
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$140(long j, final Runnable runnable) {
        if (this.requestPeerType.bot_admin_rights != null) {
            getMessagesController().setUserAdminRole(-j, getMessagesController().getUser(Long.valueOf(this.requestPeerBotId)), this.requestPeerType.bot_admin_rights, null, false, this, true, true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda129
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean run;
                    run = runnable.run();
                    return run;
                }
            });
            return;
        }
        runnable.run();
    }

    private void showSendToBotAlert(TLRPC$User tLRPC$User, final Runnable runnable, final Runnable runnable2) {
        TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.requestPeerBotId));
        showDialog(new AlertDialog.Builder(getContext()).setTitle(LocaleController.formatString(C3290R.string.AreYouSureSendChatToBotTitle, UserObject.getFirstName(tLRPC$User), UserObject.getFirstName(user))).setMessage(TextUtils.concat(AndroidUtilities.replaceTags(LocaleController.formatString(C3290R.string.AreYouSureSendChatToBotMessage, UserObject.getFirstName(tLRPC$User), UserObject.getFirstName(user))))).setPositiveButton(LocaleController.formatString("Send", C3290R.string.Send, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        }).setNegativeButton(LocaleController.formatString("Cancel", C3290R.string.Cancel, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogsActivity.lambda$showSendToBotAlert$142(runnable2, dialogInterface, i);
            }
        }).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSendToBotAlert$142(Runnable runnable, DialogInterface dialogInterface, int i) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSendToBotAlert(TLRPC$Chat tLRPC$Chat, final Runnable runnable, final Runnable runnable2) {
        CharSequence charSequence;
        String formatString;
        TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.requestPeerBotId));
        boolean isChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(tLRPC$Chat);
        AlertDialog.Builder title = new AlertDialog.Builder(getContext()).setTitle(LocaleController.formatString(C3290R.string.AreYouSureSendChatToBotTitle, tLRPC$Chat.title, UserObject.getFirstName(user)));
        CharSequence[] charSequenceArr = new CharSequence[2];
        charSequenceArr[0] = AndroidUtilities.replaceTags(LocaleController.formatString(C3290R.string.AreYouSureSendChatToBotMessage, tLRPC$Chat.title, UserObject.getFirstName(user)));
        Boolean bool = this.requestPeerType.bot_participant;
        if ((bool == null || !bool.booleanValue() || getMessagesController().isInChatCached(tLRPC$Chat, user)) && this.requestPeerType.bot_admin_rights == null) {
            charSequence = "";
        } else {
            CharSequence[] charSequenceArr2 = new CharSequence[2];
            charSequenceArr2[0] = "\n\n";
            if (this.requestPeerType.bot_admin_rights == null) {
                formatString = LocaleController.formatString(C3290R.string.AreYouSureSendChatToBotAdd, UserObject.getFirstName(user), tLRPC$Chat.title);
            } else {
                formatString = LocaleController.formatString(C3290R.string.AreYouSureSendChatToBotAddRights, UserObject.getFirstName(user), tLRPC$Chat.title, RequestPeerRequirementsCell.rightsToString(this.requestPeerType.bot_admin_rights, isChannelAndNotMegaGroup));
            }
            charSequenceArr2[1] = AndroidUtilities.replaceTags(formatString);
            charSequence = TextUtils.concat(charSequenceArr2);
        }
        charSequenceArr[1] = charSequence;
        showDialog(title.setMessage(TextUtils.concat(charSequenceArr)).setPositiveButton(LocaleController.formatString("Send", C3290R.string.Send, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        }).setNegativeButton(LocaleController.formatString("Cancel", C3290R.string.Cancel, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogsActivity.lambda$showSendToBotAlert$144(runnable2, dialogInterface, i);
            }
        }).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSendToBotAlert$144(Runnable runnable, DialogInterface dialogInterface, int i) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public RLottieImageView getFloatingButton() {
        return this.floatingButton;
    }

    private boolean onSendLongClick(View view) {
        final Activity parentActivity = getParentActivity();
        Theme.ResourcesProvider resourceProvider = getResourceProvider();
        if (parentActivity == null) {
            return false;
        }
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(parentActivity, resourceProvider);
        actionBarPopupWindowLayout.setAnimationEnabled(false);
        actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.DialogsActivity.68
            private Rect popupRect = new Rect();

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 0 && DialogsActivity.this.sendPopupWindow != null && DialogsActivity.this.sendPopupWindow.isShowing()) {
                    view2.getHitRect(this.popupRect);
                    if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                        return false;
                    }
                    DialogsActivity.this.sendPopupWindow.dismiss();
                    return false;
                }
                return false;
            }
        });
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda146
            @Override // org.telegram.p044ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                DialogsActivity.this.lambda$onSendLongClick$145(keyEvent);
            }
        });
        actionBarPopupWindowLayout.setShownFromBottom(false);
        actionBarPopupWindowLayout.setupRadialSelectors(getThemedColor(Theme.key_dialogButtonSelector));
        long clientUserId = getUserConfig().getClientUserId();
        boolean z = this.selectedDialogs.size() == 1 && this.selectedDialogs.get(0).longValue() == clientUserId;
        if (z || !this.selectedDialogs.contains(Long.valueOf(clientUserId))) {
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem((Context) parentActivity, true, true, resourceProvider);
            if (z) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("SetReminder", C3290R.string.SetReminder), C3290R.C3292drawable.msg_calendar2);
            } else {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("ScheduleMessage", C3290R.string.ScheduleMessage), C3290R.C3292drawable.msg_calendar2);
            }
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m54dp(196));
            actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda46
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.this.lambda$onSendLongClick$146(parentActivity, view2);
                }
            });
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem((Context) parentActivity, true, true, resourceProvider);
        if (getToolsController().isSilentSendingEnabled()) {
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3290R.string.send_with_sound), C3290R.C3292drawable.input_notify_on);
        } else {
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("SendWithoutSound", C3290R.string.SendWithoutSound), C3290R.C3292drawable.input_notify_off);
        }
        actionBarMenuSubItem2.setMinimumWidth(AndroidUtilities.m54dp(196));
        actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem2, LayoutHelper.createLinear(-1, 48));
        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DialogsActivity.this.lambda$onSendLongClick$147(view2);
            }
        });
        linearLayout.addView(actionBarPopupWindowLayout, LayoutHelper.createLinear(-1, -2));
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(linearLayout, -2, -2);
        this.sendPopupWindow = actionBarPopupWindow;
        actionBarPopupWindow.setAnimationEnabled(false);
        this.sendPopupWindow.setAnimationStyle(C3290R.style.PopupContextAnimation2);
        this.sendPopupWindow.setOutsideTouchable(true);
        this.sendPopupWindow.setClippingEnabled(true);
        this.sendPopupWindow.setInputMethodMode(2);
        this.sendPopupWindow.setSoftInputMode(0);
        this.sendPopupWindow.getContentView().setFocusableInTouchMode(true);
        SharedConfig.removeScheduledOrNoSoundHint();
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE));
        this.sendPopupWindow.setFocusable(true);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        this.sendPopupWindow.showAtLocation(view, 51, ((iArr[0] + view.getMeasuredWidth()) - linearLayout.getMeasuredWidth()) + AndroidUtilities.m54dp(8), (iArr[1] - linearLayout.getMeasuredHeight()) - AndroidUtilities.m54dp(2));
        this.sendPopupWindow.dimBehind();
        view.performHapticFeedback(3, 2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$145(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$146(Activity activity, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        AlertsCreator.createScheduleDatePickerDialog(activity, 0L, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.DialogsActivity.69
            @Override // org.telegram.p044ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public ArrayList<Long> getSelectedDialogs() {
                return DialogsActivity.this.selectedDialogs;
            }

            @Override // org.telegram.p044ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public void didSelectDate(boolean z, int i, String str) {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.scheduleDate = i;
                if (dialogsActivity.delegate == null || DialogsActivity.this.selectedDialogs.isEmpty()) {
                    return;
                }
                ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < DialogsActivity.this.selectedDialogs.size(); i2++) {
                    arrayList.add(MessagesStorage.TopicKey.m46of(((Long) DialogsActivity.this.selectedDialogs.get(i2)).longValue(), 0));
                }
                DialogsActivityDelegate dialogsActivityDelegate = DialogsActivity.this.delegate;
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                dialogsActivityDelegate.didSelectDialogs(dialogsActivity2, arrayList, dialogsActivity2.commentView.getFieldText(), false, null, null);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$147(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        this.notify = false;
        if (this.delegate == null || this.selectedDialogs.isEmpty()) {
            return;
        }
        ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
        for (int i = 0; i < this.selectedDialogs.size(); i++) {
            arrayList.add(MessagesStorage.TopicKey.m46of(this.selectedDialogs.get(i).longValue(), 0));
        }
        this.delegate.didSelectDialogs(this, arrayList, this.commentView.getFieldText(), false, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x0aa3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0681  */
    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<org.telegram.p044ui.ActionBar.ThemeDescription> getThemeDescriptions() {
        /*
            Method dump skipped, instructions count: 7340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.getThemeDescriptions():java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:122:0x009a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getThemeDescriptions$148() {
        /*
            Method dump skipped, instructions count: 468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DialogsActivity.lambda$getThemeDescriptions$148():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$149() {
        SearchViewPager searchViewPager = this.searchViewPager;
        if (searchViewPager != null) {
            ActionBarMenu actionMode = searchViewPager.getActionMode();
            if (actionMode != null) {
                actionMode.setBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefault));
            }
            ActionBarMenuItem speedItem = this.searchViewPager.getSpeedItem();
            if (speedItem != null) {
                speedItem.getIconView().setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$150() {
        this.speedItem.getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon), PorterDuff.Mode.SRC_IN));
        this.speedItem.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector)));
    }

    private void updateFloatingButtonColor() {
        if (getParentActivity() == null || this.floatingButtonContainer == null) {
            return;
        }
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m54dp(56), Theme.getColor(Theme.key_chats_actionBackground), Theme.getColor(Theme.key_chats_actionPressedBackground));
        if (Build.VERSION.SDK_INT < 21) {
            Drawable mutate = ContextCompat.getDrawable(getParentActivity(), C3290R.C3292drawable.floating_shadow).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, createSimpleSelectorCircleDrawable, 0, 0);
            combinedDrawable.setIconSize(AndroidUtilities.m54dp(56), AndroidUtilities.m54dp(56));
            createSimpleSelectorCircleDrawable = combinedDrawable;
        }
        this.floatingButtonContainer.setBackground(createSimpleSelectorCircleDrawable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public Animator getCustomSlideTransition(boolean z, boolean z2, float f) {
        if (z2) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.slideFragmentProgress, 1.0f);
            this.slideBackTransitionAnimator = ofFloat;
            return ofFloat;
        }
        int i = ImageReceiver.DEFAULT_CROSSFADE_DURATION;
        if (getLayoutContainer() != null) {
            i = (int) (Math.max((int) ((200.0f / getLayoutContainer().getMeasuredWidth()) * f), 80) * 1.2f);
        }
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.slideFragmentProgress, 1.0f);
        this.slideBackTransitionAnimator = ofFloat2;
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogsActivity.this.lambda$getCustomSlideTransition$151(valueAnimator);
            }
        });
        this.slideBackTransitionAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.slideBackTransitionAnimator.setDuration(i);
        this.slideBackTransitionAnimator.start();
        return this.slideBackTransitionAnimator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCustomSlideTransition$151(ValueAnimator valueAnimator) {
        setSlideTransitionProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void prepareFragmentToSlide(boolean z, boolean z2) {
        if (!z && z2) {
            this.isSlideBackTransition = true;
            setFragmentIsSliding(true);
            return;
        }
        this.slideBackTransitionAnimator = null;
        this.isSlideBackTransition = false;
        setFragmentIsSliding(false);
        setSlideTransitionProgress(1.0f);
    }

    private void setFragmentIsSliding(boolean z) {
        if (SharedConfig.getDevicePerformanceClass() <= 1 || !LiteMode.isEnabled(LiteMode.FLAG_CHAT_SCALE)) {
            return;
        }
        if (z) {
            ViewPage[] viewPageArr = this.viewPages;
            if (viewPageArr != null && viewPageArr[0] != null) {
                viewPageArr[0].setLayerType(2, null);
                this.viewPages[0].setClipChildren(false);
                this.viewPages[0].setClipToPadding(false);
                this.viewPages[0].listView.setClipChildren(false);
            }
            C3356ActionBar c3356ActionBar = this.actionBar;
            if (c3356ActionBar != null) {
                c3356ActionBar.setLayerType(2, null);
            }
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null) {
                filterTabsView.getListView().setLayerType(2, null);
            }
            View view = this.fragmentView;
            if (view != null) {
                ((ViewGroup) view).setClipChildren(false);
                this.fragmentView.requestLayout();
                return;
            }
            return;
        }
        if (this.viewPages != null) {
            int i = 0;
            while (true) {
                ViewPage[] viewPageArr2 = this.viewPages;
                if (i >= viewPageArr2.length) {
                    break;
                }
                ViewPage viewPage = viewPageArr2[i];
                if (viewPage != null) {
                    viewPage.setLayerType(0, null);
                    viewPage.setClipChildren(true);
                    viewPage.setClipToPadding(true);
                    viewPage.listView.setClipChildren(true);
                }
                i++;
            }
        }
        C3356ActionBar c3356ActionBar2 = this.actionBar;
        if (c3356ActionBar2 != null) {
            c3356ActionBar2.setLayerType(0, null);
        }
        FilterTabsView filterTabsView2 = this.filterTabsView;
        if (filterTabsView2 != null) {
            filterTabsView2.getListView().setLayerType(0, null);
        }
        View view2 = this.fragmentView;
        if (view2 != null) {
            ((ViewGroup) view2).setClipChildren(true);
            this.fragmentView.requestLayout();
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onSlideProgress(boolean z, float f) {
        if (SharedConfig.getDevicePerformanceClass() > 0 && this.isSlideBackTransition && this.slideBackTransitionAnimator == null) {
            setSlideTransitionProgress(f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setSlideTransitionProgress(float f) {
        View rootContainer;
        PinnedPlayerView pinnedPlayerView;
        PinnedPlayerView pinnedPlayerView2;
        View rootContainer2;
        PinnedPlayerView pinnedPlayerView3;
        PinnedPlayerView pinnedPlayerView4;
        if (SharedConfig.getDevicePerformanceClass() <= 0) {
            return;
        }
        int i = 0;
        this.slideFragmentLite = SharedConfig.getDevicePerformanceClass() <= 1 || !LiteMode.isEnabled(LiteMode.FLAG_CHAT_SCALE);
        this.slideFragmentProgress = f;
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
        if (this.slideFragmentLite) {
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null) {
                filterTabsView.getListView().setTranslationX((this.isDrawerTransition ? 1 : -1) * AndroidUtilities.m54dp(40) * (1.0f - this.slideFragmentProgress));
                this.filterTabsView.invalidate();
                while (i < 3) {
                    if (i == 0) {
                        TopicsBar topicsBar = this.topicsBar;
                        pinnedPlayerView3 = topicsBar;
                        if (topicsBar != 0) {
                            rootContainer2 = topicsBar.getListView();
                            pinnedPlayerView4 = topicsBar;
                        }
                        rootContainer2 = null;
                        pinnedPlayerView4 = pinnedPlayerView3;
                    } else if (i == 1) {
                        RecentChatsBar recentChatsBar = this.recentChatsBar;
                        pinnedPlayerView3 = recentChatsBar;
                        if (recentChatsBar != 0) {
                            rootContainer2 = recentChatsBar.getListView();
                            pinnedPlayerView4 = recentChatsBar;
                        }
                        rootContainer2 = null;
                        pinnedPlayerView4 = pinnedPlayerView3;
                    } else {
                        PinnedPlayerView pinnedPlayerView5 = this.pinnedPlayerView;
                        pinnedPlayerView3 = pinnedPlayerView5;
                        if (pinnedPlayerView5 != null) {
                            rootContainer2 = pinnedPlayerView5.getRootContainer();
                            pinnedPlayerView4 = pinnedPlayerView5;
                        }
                        rootContainer2 = null;
                        pinnedPlayerView4 = pinnedPlayerView3;
                    }
                    if (rootContainer2 != null) {
                        rootContainer2.setTranslationX(this.filterTabsView.getListView().getTranslationX());
                        pinnedPlayerView4.invalidate();
                    }
                    i++;
                }
            }
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer == null || rightSlidingDialogContainer.getFragmentView() == null || this.rightFragmentTransitionInProgress) {
                return;
            }
            this.rightSlidingDialogContainer.getFragmentView().setTranslationX((this.isDrawerTransition ? 1 : -1) * AndroidUtilities.m54dp(40) * (1.0f - this.slideFragmentProgress));
            return;
        }
        float f2 = 1.0f - ((1.0f - this.slideFragmentProgress) * 0.05f);
        FilterTabsView filterTabsView2 = this.filterTabsView;
        if (filterTabsView2 != null) {
            filterTabsView2.getListView().setScaleX(f2);
            this.filterTabsView.getListView().setScaleY(f2);
            this.filterTabsView.getListView().setTranslationX((this.isDrawerTransition ? AndroidUtilities.m54dp(4) : -AndroidUtilities.m54dp(4)) * (1.0f - this.slideFragmentProgress));
            this.filterTabsView.getListView().setPivotX(this.isDrawerTransition ? this.filterTabsView.getMeasuredWidth() : 0.0f);
            this.filterTabsView.getListView().setPivotY(BitmapDescriptorFactory.HUE_RED);
            this.filterTabsView.invalidate();
            while (i < 3) {
                if (i == 0) {
                    TopicsBar topicsBar2 = this.topicsBar;
                    pinnedPlayerView = topicsBar2;
                    if (topicsBar2 != 0) {
                        rootContainer = topicsBar2.getListView();
                        pinnedPlayerView2 = topicsBar2;
                    }
                    rootContainer = null;
                    pinnedPlayerView2 = pinnedPlayerView;
                } else if (i == 1) {
                    RecentChatsBar recentChatsBar2 = this.recentChatsBar;
                    pinnedPlayerView = recentChatsBar2;
                    if (recentChatsBar2 != 0) {
                        rootContainer = recentChatsBar2.getListView();
                        pinnedPlayerView2 = recentChatsBar2;
                    }
                    rootContainer = null;
                    pinnedPlayerView2 = pinnedPlayerView;
                } else {
                    PinnedPlayerView pinnedPlayerView6 = this.pinnedPlayerView;
                    pinnedPlayerView = pinnedPlayerView6;
                    if (pinnedPlayerView6 != null) {
                        rootContainer = pinnedPlayerView6.getRootContainer();
                        pinnedPlayerView2 = pinnedPlayerView6;
                    }
                    rootContainer = null;
                    pinnedPlayerView2 = pinnedPlayerView;
                }
                if (rootContainer != null) {
                    rootContainer.setScaleX(f2);
                    rootContainer.setScaleY(f2);
                    rootContainer.setTranslationX(this.filterTabsView.getListView().getTranslationX());
                    rootContainer.setPivotX(this.filterTabsView.getListView().getPivotX());
                    rootContainer.setPivotY(this.filterTabsView.getListView().getPivotY());
                    pinnedPlayerView2.invalidate();
                }
                i++;
            }
        }
        RightSlidingDialogContainer rightSlidingDialogContainer2 = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer2 == null || rightSlidingDialogContainer2.getFragmentView() == null) {
            return;
        }
        if (!this.rightFragmentTransitionInProgress) {
            this.rightSlidingDialogContainer.getFragmentView().setScaleX(f2);
            this.rightSlidingDialogContainer.getFragmentView().setScaleY(f2);
            this.rightSlidingDialogContainer.getFragmentView().setTranslationX((this.isDrawerTransition ? AndroidUtilities.m54dp(4) : -AndroidUtilities.m54dp(4)) * (1.0f - this.slideFragmentProgress));
        }
        this.rightSlidingDialogContainer.getFragmentView().setPivotX(this.isDrawerTransition ? this.rightSlidingDialogContainer.getMeasuredWidth() : 0.0f);
        this.rightSlidingDialogContainer.getFragmentView().setPivotY(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void setProgressToDrawerOpened(float f) {
        if (SharedConfig.getDevicePerformanceClass() <= 0 || this.isSlideBackTransition) {
            return;
        }
        boolean z = f > BitmapDescriptorFactory.HUE_RED;
        if (this.searchIsShowed) {
            f = 0.0f;
            z = false;
        }
        if (z != this.isDrawerTransition) {
            this.isDrawerTransition = z;
            if (z) {
                setFragmentIsSliding(true);
            } else {
                setFragmentIsSliding(false);
            }
            View view = this.fragmentView;
            if (view != null) {
                view.requestLayout();
            }
        }
        setSlideTransitionProgress(1.0f - f);
    }

    public void setShowSearch(String str, int i) {
        if (!this.searching) {
            this.initialSearchType = i;
            this.actionBar.openSearchField(str, false);
            return;
        }
        if (!this.searchItem.getSearchField().getText().toString().equals(str)) {
            this.searchItem.getSearchField().setText(str);
        }
        int positionForType = this.searchViewPager.getPositionForType(i);
        if (positionForType < 0 || this.searchViewPager.getTabsView().getCurrentTabId() == positionForType) {
            return;
        }
        this.searchViewPager.getTabsView().scrollToTab(positionForType, positionForType);
    }

    public ActionBarMenuItem getSearchItem() {
        return this.searchItem;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        RightSlidingDialogContainer rightSlidingDialogContainer;
        if (!this.searching && (rightSlidingDialogContainer = this.rightSlidingDialogContainer) != null && rightSlidingDialogContainer.getFragment() != null) {
            return this.rightSlidingDialogContainer.getFragment().isLightStatusBar();
        }
        int color = Theme.getColor((this.searching && this.whiteActionBar) ? Theme.key_windowBackgroundWhite : this.folderId == 0 ? Theme.key_actionBarDefault : Theme.key_actionBarDefaultArchived);
        if (this.actionBar.isActionModeShowed()) {
            color = Theme.getColor(Theme.key_actionBarActionModeDefault);
        }
        return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
    }

    @Override // org.telegram.p044ui.Components.FloatingDebug.FloatingDebugProvider
    public List<FloatingDebugController.DebugItem> onGetDebugItems() {
        return Arrays.asList(new FloatingDebugController.DebugItem(LocaleController.getString(C3290R.string.DebugDialogsActivity)), new FloatingDebugController.DebugItem(LocaleController.getString(C3290R.string.ClearLocalDatabase), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda103
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$onGetDebugItems$152();
            }
        }), new FloatingDebugController.DebugItem(LocaleController.getString(C3290R.string.DebugClearSendMessageAsPeers), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda102
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$onGetDebugItems$153();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGetDebugItems$152() {
        getMessagesStorage().clearLocalDatabase();
        Toast.makeText(getContext(), LocaleController.getString(C3290R.string.DebugClearLocalDatabaseSuccess), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGetDebugItems$153() {
        getMessagesController().clearSendAsPeers();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean closeLastFragment() {
        if (this.rightSlidingDialogContainer.hasFragment()) {
            this.rightSlidingDialogContainer.lambda$presentFragment$1();
            this.searchViewPager.updateTabs();
            return true;
        }
        return super.closeLastFragment();
    }

    public boolean getAllowGlobalSearch() {
        return this.allowGlobalSearch;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        FilterTabsView filterTabsView;
        if (this.isForwardToArchive) {
            return false;
        }
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer == null || !rightSlidingDialogContainer.hasFragment()) {
            if ((isArchive() || isManagement() || this.initialDialogsType == 3) && (filterTabsView = this.filterTabsView) != null && filterTabsView.getVisibility() == 0) {
                return this.filterTabsView.isFirstTab();
            }
            return true;
        }
        return false;
    }
}
