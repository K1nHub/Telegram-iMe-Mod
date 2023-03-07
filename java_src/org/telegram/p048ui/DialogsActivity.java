package org.telegram.p048ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
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
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
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
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Keep;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.bots.usecase.AiBotsManager;
import com.smedialink.common.IdFabric$CustomType;
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.smedialink.p031ui.base.mvp.JavaMvpFragment;
import com.smedialink.p031ui.common.ColorBlenderAnimator;
import com.smedialink.p031ui.common.SimpleTextWatcher;
import com.smedialink.p031ui.forward.CustomForwardSwitchArchiveImageView;
import com.smedialink.p031ui.multifab.MiniFabsContainer;
import com.smedialink.p031ui.recent_chats.RecentChatsBar;
import com.smedialink.p031ui.topics.TopicView;
import com.smedialink.p031ui.topics.TopicsAlert;
import com.smedialink.p031ui.topics.TopicsBar;
import com.smedialink.p031ui.wallet.airdrop.WalletAirdropPresenter;
import com.smedialink.p031ui.wallet.airdrop.WalletAirdropView;
import com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialog;
import com.smedialink.p031ui.wallet.common.WalletRootFragment;
import com.smedialink.storage.domain.model.HistoryDialogModel;
import com.smedialink.storage.domain.model.filters.FilterFab;
import com.smedialink.storage.domain.model.filters.FilterSettingsModel;
import com.smedialink.storage.domain.model.topics.TopicModel;
import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import com.smedialink.utils.extentions.common.ContextExtKt;
import com.smedialink.utils.extentions.model.filter.FilterFabExtKt;
import com.smedialink.utils.helper.wallet.WalletHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.text.StringsKt__StringsJVMKt;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.fork.controller.FiltersController;
import org.fork.controller.ForkCommonController;
import org.fork.controller.LockedSectionsController;
import org.fork.enums.FilterActivityType;
import org.fork.enums.LockedSection;
import org.fork.enums.SortingFilter;
import org.fork.enums.TelegramCacheType;
import org.fork.models.TelegramCacheData;
import org.fork.p046ui.dialog.ClearCacheBottomSheet;
import org.fork.p046ui.dialog.SelectFabsBottomSheet;
import org.fork.p046ui.fragment.MusicActivity;
import org.fork.p046ui.fragment.SettingsToolsActivity;
import org.fork.p046ui.fragment.SortingFilterSettingsActivity;
import org.fork.p046ui.view.FragmentPreviewMenu;
import org.fork.p046ui.view.PinnedPlayerView;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.Callbacks$Callback1;
import org.fork.utils.Callbacks$Callback2;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3158R;
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
import org.telegram.p048ui.ActionBar.ActionBarMenu;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BackDrawable;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.MenuDrawable;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Adapters.DialogsAdapter;
import org.telegram.p048ui.Adapters.DialogsSearchAdapter;
import org.telegram.p048ui.Adapters.FiltersView;
import org.telegram.p048ui.CameraScanActivity;
import org.telegram.p048ui.Cells.AccountSelectCell;
import org.telegram.p048ui.Cells.CheckBoxCell;
import org.telegram.p048ui.Cells.DialogCell;
import org.telegram.p048ui.Cells.DialogsHintCell;
import org.telegram.p048ui.Cells.DrawerProfileCell;
import org.telegram.p048ui.Cells.DrawerUserCell;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.ProfileSearchCell;
import org.telegram.p048ui.Cells.RequestPeerRequirementsCell;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.AnimatedEmojiDrawable;
import org.telegram.p048ui.Components.AnimationProperties;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.BlurredRecyclerView;
import org.telegram.p048ui.Components.Bulletin;
import org.telegram.p048ui.Components.BulletinFactory;
import org.telegram.p048ui.Components.ChatActivityEnterView;
import org.telegram.p048ui.Components.ChatAvatarContainer;
import org.telegram.p048ui.Components.CombinedDrawable;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.DialogsItemAnimator;
import org.telegram.p048ui.Components.EditTextBoldCursor;
import org.telegram.p048ui.Components.FilterTabsView;
import org.telegram.p048ui.Components.FiltersListBottomSheet;
import org.telegram.p048ui.Components.FlickerLoadingView;
import org.telegram.p048ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.p048ui.Components.FloatingDebug.FloatingDebugProvider;
import org.telegram.p048ui.Components.Forum.ForumUtilities;
import org.telegram.p048ui.Components.ForwardingPreviewView;
import org.telegram.p048ui.Components.FragmentContextView;
import org.telegram.p048ui.Components.GroupCreateSpan;
import org.telegram.p048ui.Components.HintView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.NumberTextView;
import org.telegram.p048ui.Components.PacmanAnimation;
import org.telegram.p048ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p048ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p048ui.Components.ProxyDrawable;
import org.telegram.p048ui.Components.PullForegroundDrawable;
import org.telegram.p048ui.Components.RLottieDrawable;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.Components.RadialProgress2;
import org.telegram.p048ui.Components.RadialProgressView;
import org.telegram.p048ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p048ui.Components.RecyclerAnimationScrollHelper;
import org.telegram.p048ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.SearchViewPager;
import org.telegram.p048ui.Components.SizeNotifierFrameLayout;
import org.telegram.p048ui.Components.UndoView;
import org.telegram.p048ui.Components.ViewPagerFixed;
import org.telegram.p048ui.DialogsActivity;
import org.telegram.p048ui.FilteredSearchView;
import org.telegram.p048ui.GroupCreateFinalActivity;
import org.telegram.p048ui.PhotoViewer;
import org.telegram.p048ui.SelectAnimatedEmojiDialog;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$RequestPeerType;
import org.telegram.tgnet.TLRPC$TL_auth_acceptLoginToken;
import org.telegram.tgnet.TLRPC$TL_authorization;
import org.telegram.tgnet.TLRPC$TL_channels_sendAsPeers;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
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
import org.telegram.tgnet.TLRPC$UserProfilePhoto;
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
    private boolean albumsMode;
    private boolean allowBots;
    private boolean allowChannels;
    private boolean allowGlobalSearch;
    private boolean allowGroups;
    private boolean allowMoving;
    private boolean allowSwipeDuringCurrentTouch;
    private boolean allowSwitchAccount;
    private boolean allowUsers;
    private DrawerProfileCell.AnimatedStatusView animatedStatusView;
    private boolean animatingForward;
    private int animationIndex;
    private ActionBarMenuItem archive2Item;
    private ActionBarMenuSubItem archiveItem;
    private boolean askAboutContacts;
    private boolean askingForPermissions;
    private ChatAvatarContainer avatarContainer;
    private boolean backAnimation;
    private BackDrawable backDrawable;
    private ActionBarMenuSubItem blockItem;
    private View blurredView;
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
    private LongSparseArray<Integer> crossAccountForwardCounts;
    private ArrayList<Integer> crossAccountsForwardMessagesIds;
    private AlertDialog crossAccountsForwardProgressDialog;
    private long crossAccountsForwardSelectedDialogId;
    private int currentConnectionState;
    private int currentQrScannerType;
    private boolean customForwardArchive;
    private int customForwardContainerHeight;
    private GroupCreateSpan customForwardCurrentDeletingSpan;
    private CustomForwardDelegate customForwardDelegate;
    private EditTextBoldCursor customForwardEditText;
    private int customForwardFieldY;
    private boolean customForwardIgnoreScrollEvent;
    private int customForwardLastArchiveSelectedTab;
    private int customForwardLastMainSelectedTab;
    private ScrollView customForwardScrollView;
    private final LongSparseArray<GroupCreateSpan> customForwardSelectedContacts;
    private final ArrayList<GroupCreateSpan> customForwardSpans;
    private SpansContainer customForwardSpansContainer;
    private CustomForwardSwitchArchiveImageView customForwardSwitchArchiveImageView;
    private ActionBarMenuItem customForwardSwitchArchiveItem;
    private boolean customForwardToInactiveAccount;
    private boolean customSharingMode;
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
    private int initialDialogsType;
    private String initialSearchString;
    private int initialSearchType;
    boolean isDrawerTransition;
    private boolean isFirstTab;
    private boolean isNextButton;
    private boolean isPremiumHintUpgrade;
    boolean isSlideBackTransition;
    private boolean lastFilterTabUsed;
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
    private int pinBullerinTag;
    private Bulletin pinBulletin;
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
    private RectF rect;
    private ActionBarMenuSubItem removeFromFolderItem;
    private long requestPeerBotId;
    private TLRPC$RequestPeerType requestPeerType;
    private boolean resetDelegate;
    private boolean rightFragmentTransitionInProgress;
    public RightSlidingDialogContainer rightSlidingDialogContainer;
    public int scheduleDate;
    private AnimatorSet scrimAnimatorSet;
    private Paint scrimPaint;
    private ActionBarPopupWindow scrimPopupWindow;
    private ActionBarMenuSubItem[] scrimPopupWindowItems;
    private View scrimView;
    private boolean scrimViewAppearing;
    private Drawable scrimViewBackground;
    private int[] scrimViewLocation;
    private boolean scrimViewSelected;
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
    private int tabIdBeforeSelectTopic;
    private Animator tabsAlphaAnimator;
    private AnimatorSet tabsAnimation;
    private boolean tabsAnimationInProgress;
    private float tabsYOffset;
    private TextPaint textPaint;
    private Bulletin topBulletin;
    private Drawable topFilterTabsShadow;
    private int topPadding;
    private TopicsBar topicsBar;
    private Animator topicsBarAlphaAnimator;
    private ValueAnimator topicsBarTranslationYAnimator;
    private boolean topicsBarVisible;
    private UndoView[] undoView;
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
    private static final int[] observers = {NotificationCenter.mainUserInfoChanged, NotificationCenter.neuroBotEnableChanged, NotificationCenter.topicsDidLoad, NotificationCenter.filterTabsAtBottomUpdated, NotificationCenter.needUpdateMainActionBarMenu, NotificationCenter.topicsSettingsChanged, NotificationCenter.recentChatsDidLoad};
    public static boolean[] dialogsLoaded = new boolean[5];
    private static final Interpolator interpolator = DialogsActivity$$ExternalSyntheticLambda57.INSTANCE;
    public static float viewOffset = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: org.telegram.ui.DialogsActivity$CustomForwardDelegate */
    /* loaded from: classes5.dex */
    public interface CustomForwardDelegate {
        ArrayList<MessageObject> buildForwardedMessages();
    }

    /* renamed from: org.telegram.ui.DialogsActivity$DialogsActivityDelegate */
    /* loaded from: classes5.dex */
    public interface DialogsActivityDelegate {
        boolean didSelectDialogs(DialogsActivity dialogsActivity, ArrayList<MessagesStorage.TopicKey> arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment);
    }

    public static boolean isArchiveDialogsType(int i) {
        return i == 300 || i == 301;
    }

    public static boolean isForwardDialogsType(int i) {
        return i == 200 || i == 201;
    }

    public static boolean isManagementDialogsType(int i) {
        return i == 400 || i == 401 || i == 402;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createActionMode$69(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$resolveFabClickByType$24() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$29(float f) {
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

    static /* synthetic */ int access$40804(DialogsActivity dialogsActivity) {
        int i = dialogsActivity.pinBullerinTag + 1;
        dialogsActivity.pinBullerinTag = i;
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
        dialogsActivity.setDelegate(DialogsActivity$$ExternalSyntheticLambda142.INSTANCE);
        return dialogsActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$newInstanceInAlbumsMode$0(DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment) {
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
        getConnectionsManager().sendRequest(tLRPC$TL_auth_acceptLoginToken, new RequestDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda130
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                DialogsActivity.this.lambda$processQr$3(alertDialog, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processQr$3(final AlertDialog alertDialog, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda95
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda93
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
            str = LocaleController.getString("AccountAlreadyLoggedIn", C3158R.string.AccountAlreadyLoggedIn);
        } else {
            str = LocaleController.getString("ErrorOccurred", C3158R.string.ErrorOccurred) + "\n" + tLRPC$TL_error.text;
        }
        AlertsCreator.showSimpleAlert(this, LocaleController.getString("AuthAnotherClient", C3158R.string.AuthAnotherClient), str);
    }

    @Keep
    public void setCustomForwardContainerHeight(int i) {
        this.customForwardContainerHeight = i;
        SpansContainer spansContainer = this.customForwardSpansContainer;
        if (spansContainer != null) {
            spansContainer.requestLayout();
        }
    }

    @Keep
    public int getCustomForwardContainerHeight() {
        return this.customForwardContainerHeight;
    }

    public ForwardingMessagesParams getForwardingParams() {
        return this.forwardingParams;
    }

    public boolean isMainNoFolderDialogList() {
        return isMainDialogList() && !isArchive();
    }

    public void setCustomForwardDelegate(CustomForwardDelegate customForwardDelegate) {
        this.customForwardDelegate = customForwardDelegate;
    }

    public void enableCustomSharingMode() {
        this.customSharingMode = true;
    }

    public boolean needDisableContactsActivityFabAnimations() {
        if (isMainNoFolderDialogList()) {
            if (SharedConfig.isFilterTabsAtBottomEnabled) {
                return true;
            }
            List<FilterFab> fabsForPage = getFabsForPage(this.viewPages[0]);
            return (fabsForPage.size() == 1 && fabsForPage.get(0) == FilterFab.CREATE_CHAT) ? false : true;
        }
        return false;
    }

    public boolean isCustomForward() {
        return this.customSharingMode || this.customForwardDelegate != null;
    }

    public boolean isCustomMultiForward() {
        return isCustomForward() && !this.selectedDialogs.isEmpty();
    }

    public void getSelectedMessages(ArrayList<MessageObject> arrayList) {
        ForwardingMessagesParams forwardingMessagesParams = this.forwardingParams;
        if (forwardingMessagesParams == null) {
            return;
        }
        forwardingMessagesParams.getSelectedMessages(arrayList);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return canBeginSlide();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public LockedSection getScreenLockedSection() {
        if (isArchive()) {
            return LockedSection.ARCHIVE;
        }
        return super.getScreenLockedSection();
    }

    @Override // com.smedialink.p031ui.wallet.airdrop.WalletAirdropView
    public void showAirdropDialog() {
        showDialog(WalletAirdropDialog.newInstance(this));
    }

    @Override // com.smedialink.p031ui.wallet.airdrop.WalletAirdropView
    public void checkNeedToShowAirdropDialog() {
        if (BaseFragmentExtKt.containsFragmentInStack(this, WalletRootFragment.class)) {
            return;
        }
        showAirdropDialog();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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

    private void showDisablePopup(final ActionBarMenuItem actionBarMenuItem) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity());
        final ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
        actionBarPopupWindow.setAnimationEnabled(false);
        actionBarPopupWindow.setAnimationStyle(C3158R.style.PopupContextAnimation2);
        actionBarPopupWindow.setOutsideTouchable(true);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.setSoftInputMode(0);
        actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
        actionBarPopupWindowLayout.setAnimationEnabled(false);
        actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener(this) { // from class: org.telegram.ui.DialogsActivity.1
            private Rect popupRect = new Rect();

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                ActionBarPopupWindow actionBarPopupWindow2;
                if (motionEvent.getActionMasked() == 0 && (actionBarPopupWindow2 = actionBarPopupWindow) != null && actionBarPopupWindow2.isShowing()) {
                    view.getHitRect(this.popupRect);
                    if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                        return false;
                    }
                    actionBarPopupWindow.dismiss();
                    return false;
                }
                return false;
            }
        });
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda132
            @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                DialogsActivity.lambda$showDisablePopup$4(ActionBarPopupWindow.this, keyEvent);
            }
        });
        actionBarPopupWindowLayout.setShownFromBottom(false);
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getParentActivity(), true, true);
        actionBarMenuSubItem.setColors(Theme.getColor("actionBarDefaultSubmenuItem"), Theme.getColor("actionBarDefaultSubmenuItemIcon"));
        actionBarMenuSubItem.setSelectorColor(Theme.getColor("dialogButtonSelector"));
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Disable", C3158R.string.Disable), C3158R.C3160drawable.poll_remove);
        actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m50dp(196));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showDisablePopup$5(actionBarPopupWindow, actionBarMenuItem, view);
            }
        });
        actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
        actionBarPopupWindowLayout.setupRadialSelectors(Theme.getColor("dialogButtonSelector"));
        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE));
        actionBarPopupWindow.setFocusable(true);
        int[] iArr = new int[2];
        actionBarMenuItem.getLocationInWindow(iArr);
        actionBarPopupWindow.showAtLocation(actionBarMenuItem, 51, (iArr[0] + actionBarMenuItem.getMeasuredWidth()) - actionBarPopupWindowLayout.getMeasuredWidth(), (iArr[1] + actionBarMenuItem.getMeasuredHeight()) - AndroidUtilities.m50dp(15));
        actionBarPopupWindow.dimBehind();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDisablePopup$4(ActionBarPopupWindow actionBarPopupWindow, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            actionBarPopupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDisablePopup$5(ActionBarPopupWindow actionBarPopupWindow, ActionBarMenuItem actionBarMenuItem, View view) {
        if (actionBarPopupWindow.isShowing()) {
            actionBarPopupWindow.dismiss();
        }
        if (actionBarMenuItem == this.switchItem) {
            SharedConfig.setActionBarAccountSwitchEnabled(false);
            updateSwitchItemVisibility(false);
        } else if (actionBarMenuItem == this.headerItem) {
            SharedConfig.setMainActionBarMenuEnabled(false);
            showHeaderItem(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MessagesController.DialogFilter getFilterById(int i) {
        if (getMessagesController().dialogFiltersLoaded) {
            if (SortingFilter.isSortingFilter(true, i)) {
                return getMessagesController().archiveSortingDialogFilters.get(SortingFilter.removeExtraFromId(true, i));
            }
            if (SortingFilter.isSortingFilter(false, i)) {
                return getMessagesController().sortingDialogFilters.get(SortingFilter.removeExtraFromId(false, i));
            }
            if (i < 0 || i >= getMessagesController().dialogFilters.size()) {
                return null;
            }
            return getMessagesController().dialogFilters.get(i);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openQrCodeScan() {
        int i = this.currentQrScannerType;
        int i2 = IdFabric$CustomType.QR_CODE_SCANNER_CHAT_LINK;
        CameraScanActivity.showAsSheet(this, i == i2, i, new CameraScanActivity.CameraScanActivityDelegate() { // from class: org.telegram.ui.DialogsActivity.2
            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
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
        builder.setTitle(LocaleController.getInternalString(C3158R.string.dialogs_mark_folder_dialogs_as_read_alert_title));
        final CheckBoxCell checkBoxCell = new CheckBoxCell(getParentActivity(), 1);
        checkBoxCell.setText(LocaleController.getInternalString(C3158R.string.dialogs_mark_all_folder_dialogs_as_read_alert_not_show_again_check_box), "", false, false);
        checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.m50dp(16) : AndroidUtilities.m50dp(8), 0, LocaleController.isRTL ? AndroidUtilities.m50dp(8) : AndroidUtilities.m50dp(16), 0);
        checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.lambda$showReadAllDialog$6(CheckBoxCell.this, view);
            }
        });
        builder.setView(checkBoxCell);
        builder.setPositiveButton(LocaleController.getInternalString(C3158R.string.common_ok), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogsActivity.lambda$showReadAllDialog$7(CheckBoxCell.this, runnable, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getInternalString(C3158R.string.common_cancel), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showReadAllDialog$6(CheckBoxCell checkBoxCell, View view) {
        checkBoxCell.setChecked(!checkBoxCell.isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showReadAllDialog$7(CheckBoxCell checkBoxCell, Runnable runnable, DialogInterface dialogInterface, int i) {
        if (checkBoxCell.isChecked()) {
            SharedConfig.setReadAllChatsConfirmationShown(true);
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readAllFilterDialogs$8(int i) {
        getMessagesController().readDialogs(getFilterById(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readAllFilterDialogs(final int i) {
        showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$readAllFilterDialogs$8(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readAllCurrentFolderDialogs$9() {
        getMessagesStorage().readAllDialogs(this.folderId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readAllCurrentFolderDialogs() {
        showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$readAllCurrentFolderDialogs$9();
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
        return (!this.albumsMode && isArchive()) || isCustomForward() || isManagement();
    }

    private FilterTabsView.TabMode getFilterTabsMode() {
        if (isArchive()) {
            return FilterTabsView.TabMode.ARCHIVE;
        }
        if (isCustomForward()) {
            return FilterTabsView.TabMode.FORWARD;
        }
        if (isManagement()) {
            return FilterTabsView.TabMode.MANAGEMENT;
        }
        return FilterTabsView.TabMode.MAIN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareClearCacheBottomSheet() {
        AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        alertDialog.setCanCancel(false);
        alertDialog.showDelayed(500L);
        showDialog(alertDialog);
        if (isArchive()) {
            ArrayList<Long> arrayList = new ArrayList<>();
            Iterator<TLRPC$Dialog> it = getMessagesController().getDialogs(1).iterator();
            while (it.hasNext()) {
                arrayList.add(Long.valueOf(it.next().f1500id));
            }
            getMessagesStorage().getDialogCache(arrayList, new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda107
                @Override // org.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DialogsActivity.this.showClearCacheBottomSheet((EnumMap) obj);
                }
            });
            return;
        }
        getMessagesStorage().getAllCache(new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda107
            @Override // org.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                DialogsActivity.this.showClearCacheBottomSheet((EnumMap) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showClearCacheBottomSheet(EnumMap<TelegramCacheType, TelegramCacheData> enumMap) {
        if (getParentActivity() == null) {
            return;
        }
        if (enumMap == null || enumMap.isEmpty()) {
            dismissCurrentDialog();
            ContextExtKt.toast(LocaleController.getInternalString(C3158R.string.dialogs_empty_cache));
            return;
        }
        showDialog(new ClearCacheBottomSheet(this, enumMap, new Callbacks$Callback2() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda111
            @Override // org.fork.utils.Callbacks$Callback2
            public final void invoke(Object obj, Object obj2) {
                DialogsActivity.this.lambda$showClearCacheBottomSheet$12((List) obj, (List) obj2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showClearCacheBottomSheet$12(List list, List list2) {
        final long j = 0;
        if (isArchive()) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                TelegramCacheData telegramCacheData = (TelegramCacheData) it.next();
                getFileLoader().deleteFiles(telegramCacheData.getFiles(), 2);
                j += telegramCacheData.getSize();
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda86
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$showClearCacheBottomSheet$10(j);
                }
            });
            return;
        }
        final boolean z = false;
        for (int i = 0; i < list.size(); i++) {
            TelegramCacheType telegramCacheType = (TelegramCacheType) list.get(i);
            for (File file : telegramCacheType.getDirectories()) {
                if (file != null) {
                    Utilities.clearDir(file.getAbsolutePath(), telegramCacheType.getDocumentsMusicType(), Long.MAX_VALUE, false);
                }
            }
            if (!z) {
                z = telegramCacheType == TelegramCacheType.PHOTO || telegramCacheType == TelegramCacheType.STICKERS || telegramCacheType == TelegramCacheType.OTHER;
            }
            j += ((TelegramCacheData) list2.get(i)).getSize();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda99
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showClearCacheBottomSheet$11(z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showClearCacheBottomSheet$10(long j) {
        getUndoView().setInfoText(LocaleController.formatString("CacheWasCleared", C3158R.string.CacheWasCleared, AndroidUtilities.formatFileSize(j)));
        getUndoView().showWithAction(0L, 19, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showClearCacheBottomSheet$11(boolean z, long j) {
        if (z) {
            ImageLoader.getInstance().clearMemory();
        }
        getUndoView().setInfoText(LocaleController.formatString("CacheWasCleared", C3158R.string.CacheWasCleared, AndroidUtilities.formatFileSize(j)));
        getUndoView().showWithAction(0L, 19, null, null);
    }

    private void checkAndRunNeurobots() {
        if (isMainNoFolderDialogList() && getNeuroBotsController().isNeuroBotsEnabled() && !this.neuroBotDataAlreadyFetched) {
            ApplicationLoader.postInitApplication();
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            boolean z = MessagesController.getMainSettings(this.currentAccount).getBoolean("aigramBotsInstalled", false);
            if (clientUserId != 0) {
                if (!z) {
                    try {
                        ApplicationLoader.smartBotsManager.sendAppInstalledEvent(clientUserId, new AiBotsManager.AppInstalledCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda58
                            @Override // com.smedialink.bots.usecase.AiBotsManager.AppInstalledCallback
                            public final void onSuccess() {
                                DialogsActivity.this.lambda$checkAndRunNeurobots$13();
                            }
                        });
                    } catch (Exception unused) {
                    }
                }
                ApplicationLoader.smartBotsManager.fetchVotes(clientUserId);
            }
            ApplicationLoader.smartBotsManager.listenForRemoteBotUpdates(DialogsActivity$$ExternalSyntheticLambda60.INSTANCE);
            ApplicationLoader.smartBotsManager.setBotDisableCallback(new AiBotsManager.BotsListChangedCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda59
                @Override // com.smedialink.bots.usecase.AiBotsManager.BotsListChangedCallback
                public final void onSuccess() {
                    DialogsActivity.this.lambda$checkAndRunNeurobots$15();
                }
            });
            this.neuroBotDataAlreadyFetched = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAndRunNeurobots$13() {
        MessagesController.getMainSettings(this.currentAccount).edit().putBoolean("aigramBotsInstalled", true).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkAndRunNeurobots$14() {
        ApplicationLoader.purchaseHelper.preloadPurchasesInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAndRunNeurobots$15() {
        NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.botsListChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<FilterFab> getFabsForPage(ViewPage viewPage) {
        Collection selectedAllChatsTabFabs;
        boolean isSortingFilter = SortingFilter.isSortingFilter(isArchive(), viewPage.selectedType);
        if (this.albumsMode) {
            selectedAllChatsTabFabs = Collections.singletonList(FilterFab.CREATE_ALBUM);
        } else if (viewPage.selectedType == this.filterTabsView.getDefaultTabId() || (!isSortingFilter && getMessagesController().dialogFilters.isEmpty())) {
            if (isArchive()) {
                selectedAllChatsTabFabs = Collections.singletonList(FilterFab.MARK_ALL_READ);
            } else {
                selectedAllChatsTabFabs = getFiltersController().getSelectedAllChatsTabFabs();
            }
        } else if (isSortingFilter) {
            selectedAllChatsTabFabs = getFiltersController().getSortingFilterState(SortingFilter.getFilterByIdWithExtra(isArchive(), viewPage.selectedType)).getFabs();
        } else {
            selectedAllChatsTabFabs = (viewPage.selectedType < 0 || viewPage.selectedType >= getMessagesController().dialogFilters.size()) ? null : getFiltersController().getSettings(getMessagesController().dialogFilters.get(viewPage.selectedType).f1434id).getFabs();
        }
        return (selectedAllChatsTabFabs == null || selectedAllChatsTabFabs.isEmpty()) ? Collections.singletonList(FilterFab.CREATE_CHAT) : new ArrayList(selectedAllChatsTabFabs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTopicsBar() {
        ActionBarPopupWindow actionBarPopupWindow;
        List<TopicModel> topicsNotEmpty = getTopicsController().getTopicsNotEmpty(isArchive());
        boolean z = true;
        final boolean z2 = (this.inPreviewMode || topicsNotEmpty.isEmpty() || !getTopicsController().isTopicsBarEnabled()) ? false : true;
        if (z2) {
            boolean data = this.topicsBar.setData(topicsNotEmpty);
            this.topicsBar.setTag(1);
            this.topicsBar.setVisibility(0);
            z = data;
        } else {
            this.topicsBar.setTag(null);
            this.topicsBar.resetSelectedTopic();
        }
        if (z && (actionBarPopupWindow = this.scrimPopupWindow) != null && (this.scrimView instanceof TopicView)) {
            actionBarPopupWindow.dismiss();
            this.scrimPopupWindow = null;
        }
        if (this.topicsBarVisible != z2) {
            this.topicsBarVisible = z2;
            ValueAnimator valueAnimator = this.topicsBarTranslationYAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                this.topicsBar.setVisibility(z2 ? 0 : 8);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.topicsBar.getLayoutParams();
                layoutParams.topMargin = z2 ? 0 : AndroidUtilities.m50dp(-36);
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
            this.topicsBarTranslationYAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.3
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
            this.topicsBarTranslationYAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    DialogsActivity.this.lambda$updateTopicsBar$16(valueAnimator2);
                }
            });
            this.topicsBarTranslationYAnimator.setDuration(220L);
            this.topicsBarTranslationYAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.topicsBarTranslationYAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTopicsBar$16(ValueAnimator valueAnimator) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.topicsBar.getLayoutParams();
        layoutParams.topMargin = AndroidUtilities.m50dp(((Integer) valueAnimator.getAnimatedValue()).intValue());
        this.topicsBar.setLayoutParams(layoutParams);
        updateFloatingButtonOffset();
        View view = this.fragmentView;
        if (view != null) {
            view.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHistoryDialogs() {
        if (this.recentChatsBar == null) {
            return;
        }
        List<HistoryDialogModel> recentChatsFilter = getRecentChatsController().getRecentChatsFilter();
        if ((this.inPreviewMode || recentChatsFilter.isEmpty() || !getRecentChatsController().isRecentChatsEnabled()) ? false : true) {
            this.recentChatsBar.setData(recentChatsFilter);
            this.recentChatsBar.setVisibility(0);
            this.recentChatsBar.setTag(1);
            return;
        }
        this.recentChatsBar.setTag(null);
        this.recentChatsBar.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRecentChats() {
        if (this.recentChatsBar == null || !getRecentChatsController().isRecentChatsEnabled()) {
            return;
        }
        this.recentChatsBar.setVisibility(this.rightSlidingDialogContainer.hasFragment() ? 8 : 0);
        updateFloatingButtonOffset();
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
            showDialog(AlertsCreator.createSimpleAlert(getParentActivity(), LocaleController.getString("FilterAddToAlertFullTitle", C3158R.string.FilterAddToAlertFullTitle), LocaleController.getString("FilterAddToAlertFullText", C3158R.string.FilterAddToAlertFullText)).create());
            return;
        }
        FiltersListBottomSheet filtersListBottomSheet = new FiltersListBottomSheet(this, this.selectedDialogs, dialogFilter.f1434id);
        filtersListBottomSheet.setDelegate(new FiltersListBottomSheet.FiltersListBottomSheetDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda138
            @Override // org.telegram.p048ui.Components.FiltersListBottomSheet.FiltersListBottomSheetDelegate
            public final void didSelectFilter(MessagesController.DialogFilter dialogFilter2) {
                DialogsActivity.this.lambda$moveToFolder$18(dialogsCount, dialogFilter, dialogFilter2);
            }
        });
        showDialog(filtersListBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$moveToFolder$18(final ArrayList arrayList, final MessagesController.DialogFilter dialogFilter, MessagesController.DialogFilter dialogFilter2) {
        boolean z;
        char c;
        long j;
        ArrayList<Long> dialogsCount = FiltersListBottomSheet.getDialogsCount(this, dialogFilter2, this.selectedDialogs, true, false);
        int size = (dialogFilter2 != null ? dialogFilter2.alwaysShow.size() : 0) + dialogsCount.size();
        if ((size > getMessagesController().dialogFiltersChatsLimitDefault && !getUserConfig().isPremium()) || size > getMessagesController().dialogFiltersChatsLimitPremium) {
            showDialog(AlertsCreator.createSimpleAlert(getParentActivity(), LocaleController.getString("FilterAddToAlertFullTitle", C3158R.string.FilterAddToAlertFullTitle), LocaleController.getString("FilterAddToAlertFullText", C3158R.string.FilterAddToAlertFullText)).create());
            return;
        }
        Callbacks$Callback callbacks$Callback = new Callbacks$Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda113
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                DialogsActivity.this.lambda$moveToFolder$17(arrayList, dialogFilter);
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
                filterCreateActivity.setOnDoneCallback(callbacks$Callback);
                presentFragment(filterCreateActivity);
            }
        }
        hideActionMode(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$moveToFolder$17(ArrayList arrayList, MessagesController.DialogFilter dialogFilter) {
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
    public int getHorizontalListViewHeight() {
        RecentChatsBar recentChatsBar = this.recentChatsBar;
        if (recentChatsBar == null || recentChatsBar.getVisibility() != 0) {
            return 0;
        }
        return AndroidUtilities.m50dp(60);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTopicsBarHeight() {
        TopicsBar topicsBar = this.topicsBar;
        if (topicsBar == null || topicsBar.getVisibility() != 0) {
            return 0;
        }
        return AndroidUtilities.m50dp(36) + ((FrameLayout.LayoutParams) this.topicsBar.getLayoutParams()).topMargin;
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
        if ((!(getParentActivity() instanceof LaunchActivity) || !isMainNoFolderDialogList() || !SharedConfig.isActionBarAccountSwitchEnabled || ((rightSlidingDialogContainer = this.rightSlidingDialogContainer) != null && rightSlidingDialogContainer.hasFragment())) && (!isCustomForward() || !z3)) {
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
        Collections.sort(arrayList, DialogsActivity$$ExternalSyntheticLambda104.INSTANCE);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            final int intValue = ((Integer) it.next()).intValue();
            if (UserConfig.getInstance(intValue).getCurrentUser() != null) {
                if (isMainNoFolderDialogList()) {
                    DrawerUserCell drawerUserCell = new DrawerUserCell(getParentActivity(), IdFabric$CustomType.DRAWER_USER_CELL_ACTION_BAR_ACCOUNT_SWITCH);
                    drawerUserCell.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda54
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean lambda$updateAccountSwitchItems$20;
                            lambda$updateAccountSwitchItems$20 = DialogsActivity.this.lambda$updateAccountSwitchItems$20(intValue, view);
                            return lambda$updateAccountSwitchItems$20;
                        }
                    });
                    drawerUserCell.setAccount(intValue);
                    accountSelectCell = drawerUserCell;
                } else {
                    AccountSelectCell accountSelectCell2 = new AccountSelectCell(getParentActivity(), false);
                    accountSelectCell2.setAccount(intValue, true, this.currentAccount);
                    accountSelectCell = accountSelectCell2;
                }
                this.switchItem.addSubItem(intValue + 10, accountSelectCell, AndroidUtilities.m50dp(230), AndroidUtilities.m50dp(56));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateAccountSwitchItems$19(Integer num, Integer num2) {
        int i = (UserConfig.getInstance(num.intValue()).loginTime > UserConfig.getInstance(num2.intValue()).loginTime ? 1 : (UserConfig.getInstance(num.intValue()).loginTime == UserConfig.getInstance(num2.intValue()).loginTime ? 0 : -1));
        if (i > 0) {
            return 1;
        }
        return i < 0 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$updateAccountSwitchItems$20(int i, View view) {
        if (i == UserConfig.selectedAccount) {
            return true;
        }
        prepareBlurBitmap();
        this.parentLayout.setHighlightActionButtons(true);
        this.switchItem.closeSubMenu();
        C53874 c53874 = new C53874(null, (LaunchActivity) getParentActivity(), i);
        c53874.setCurrentAccount(i);
        presentFragmentAsPreviewWithMenu(c53874, new FragmentPreviewMenu(this.parentLayout, c53874, null));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$4 */
    /* loaded from: classes5.dex */
    public class C53874 extends DialogsActivity {
        private Bundle chatArgs;
        final /* synthetic */ int val$accountNumberFinal;
        final /* synthetic */ LaunchActivity val$launchActivity;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C53874(Bundle bundle, LaunchActivity launchActivity, int i) {
            super(bundle);
            this.val$launchActivity = launchActivity;
            this.val$accountNumberFinal = i;
        }

        @Override // org.telegram.p048ui.DialogsActivity
        protected void onPreviewChatOpened(Bundle bundle) {
            super.onPreviewChatOpened(bundle);
            this.chatArgs = bundle;
            finishPreviewFragment();
        }

        @Override // org.telegram.p048ui.DialogsActivity, org.telegram.p048ui.ActionBar.BaseFragment
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
                    DialogsActivity.C53874.this.lambda$onTransitionAnimationEnd$0(launchActivity, i);
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTransitionAnimationEnd$0(final LaunchActivity launchActivity, final int i) {
            ChatActivity chatActivity = new ChatActivity(this, this.chatArgs) { // from class: org.telegram.ui.DialogsActivity.4.1
                @Override // org.telegram.p048ui.ActionBar.BaseFragment
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

        @Override // org.telegram.p048ui.ActionBar.BaseFragment
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
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3158R.string.dialogs_albums_sort_date), C3158R.C3160drawable.msg_contacts_time);
            } else {
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3158R.string.dialogs_albums_sort_alphabetically), C3158R.C3160drawable.msg_contacts_name);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void crossAccountsForward() {
        if (this.crossAccountsForwardProgressDialog == null) {
            AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
            this.crossAccountsForwardProgressDialog = alertDialog;
            alertDialog.setCanCancel(false);
            this.crossAccountsForwardProgressDialog.show();
        }
        AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
        AccountInstance accountInstance2 = AccountInstance.getInstance(this.currentAccount);
        long clientUserId = accountInstance.getUserConfig().getClientUserId();
        long clientUserId2 = accountInstance2.getUserConfig().getClientUserId();
        if (accountInstance.getMessagesController().blockePeers.indexOfKey(clientUserId2) >= 0) {
            accountInstance.getMessagesController().unblockPeer(clientUserId2, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.crossAccountsForward();
                }
            }, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.closeCrossAccountsForwardLoading();
                }
            });
        } else if (accountInstance2.getMessagesController().blockePeers.indexOfKey(clientUserId) >= 0) {
            accountInstance2.getMessagesController().unblockPeer(clientUserId, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.crossAccountsForward();
                }
            }, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.closeCrossAccountsForwardLoading();
                }
            });
        } else if (!accountInstance2.getMessagesController().isDialogMuted(clientUserId, 0)) {
            accountInstance2.getNotificationsController().setDialogNotificationsSettings(clientUserId, 0, 3, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.crossAccountsForward();
                }
            }, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.closeCrossAccountsForwardLoading();
                }
            });
        } else {
            getNotificationCenter().addObserver(this, NotificationCenter.didReceiveNewMessages);
            accountInstance.getSendMessagesHelper().sendMessage(this.customForwardDelegate.buildForwardedMessages(), clientUserId2, false, false, false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeCrossAccountsForwardLoading() {
        AlertDialog alertDialog = this.crossAccountsForwardProgressDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.crossAccountsForwardProgressDialog = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<Animator> getSwitchArchiveAnimators(boolean z) {
        ArrayList<Animator> arrayList = new ArrayList<>();
        ViewPage viewPage = this.viewPages[0];
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        float f = BitmapDescriptorFactory.HUE_RED;
        fArr[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
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
        ScrollView scrollView = this.customForwardScrollView;
        Property property4 = View.TRANSLATION_Y;
        float[] fArr4 = new float[1];
        fArr4[0] = z ? -AndroidUtilities.m50dp(44) : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(scrollView, property4, fArr4));
        FilterTabsView filterTabsView = this.filterTabsView;
        Property property5 = View.TRANSLATION_Y;
        float[] fArr5 = new float[1];
        fArr5[0] = z ? -AndroidUtilities.m50dp(44) : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(filterTabsView, property5, fArr5));
        FilterTabsView filterTabsView2 = this.filterTabsView;
        Property property6 = View.ALPHA;
        float[] fArr6 = new float[1];
        fArr6[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(filterTabsView2, property6, fArr6));
        float[] fArr7 = new float[2];
        fArr7[0] = this.searchAnimationProgress;
        if (z) {
            f = 1.0f;
        }
        fArr7[1] = f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr7);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogsActivity.this.lambda$getSwitchArchiveAnimators$21(valueAnimator);
            }
        });
        arrayList.add(ofFloat);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getSwitchArchiveAnimators$21(ValueAnimator valueAnimator) {
        this.searchAnimationProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
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
                showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda65
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.this.lambda$resolveFabClickByType$22();
                    }
                });
            } else if (this.viewPages[0].selectedType == this.filterTabsView.getDefaultTabId()) {
                readAllCurrentFolderDialogs();
            } else {
                showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda74
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.this.lambda$resolveFabClickByType$23();
                    }
                });
            }
        } else if (filterFab == FilterFab.WALLET) {
            WalletHelper.safeRunWalletScreen(this, LocaleController.getInternalString(C3158R.string.wallet_auth_dialog_description), DialogsActivity$$ExternalSyntheticLambda114.INSTANCE, new Callbacks$Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda112
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    DialogsActivity.this.lambda$resolveFabClickByType$25();
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
                presentFragment(ChannelCreateActivity.newInstanceInAlbumMode(new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda106
                    @Override // org.fork.utils.Callbacks$Callback1
                    public final void invoke(Object obj) {
                        DialogsActivity.this.lambda$resolveFabClickByType$26((Long) obj);
                    }
                }));
            } else {
                presentFragment(new ActionIntroActivity(110));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveFabClickByType$22() {
        TopicModel topic = getTopicsController().getTopic(getTopicsController().getSelectedTopicId(isArchive()));
        if (topic != null) {
            getMessagesController().readDialogs(topic.getDialogs());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveFabClickByType$23() {
        MessagesController.DialogFilter filterById = getFilterById(this.viewPages[0].selectedType);
        if (filterById != null) {
            getMessagesController().readDialogs(filterById.dialogs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveFabClickByType$25() {
        this.walletFlowCoordinator.getValue().start(this.parentLayout, WalletRootFragment.newInstance(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveFabClickByType$26(Long l) {
        presentFragment(ChatActivity.newInstanceForDialogId(l.longValue(), 0));
    }

    private void showEnableSortingByDefaultAlert() {
        Dialog dialog = this.enableSortingByDefaultAlert;
        if ((dialog != null && dialog.isShowing()) || this.askingForPermissions || this.isPaused || this.inPreviewMode || SharedConfig.hasPreferenceKey(TelegramPreferenceKeys.Global.isChatSortingEnabledByDefault()) || getUserConfig().hasPreferenceKey(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
            return;
        }
        Dialog createTopAnimationDialog = AlertsCreator.createTopAnimationDialog(getParentActivity(), C3158R.C3164raw.fork_dialogs_sorting, 300, LocaleController.getInternalString(C3158R.string.sorting_enable_alert_message), LocaleController.getString("Enable", C3158R.string.Enable), DialogsActivity$$ExternalSyntheticLambda110.INSTANCE);
        this.enableSortingByDefaultAlert = createTopAnimationDialog;
        createTopAnimationDialog.setCanceledOnTouchOutside(false);
        this.enableSortingByDefaultAlert.setCancelable(false);
        this.enableSortingByDefaultAlert.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda25
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                DialogsActivity.this.lambda$showEnableSortingByDefaultAlert$28(dialogInterface);
            }
        });
        this.enableSortingByDefaultAlert.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showEnableSortingByDefaultAlert$27(Boolean bool) {
        SharedConfig.setChatSortingEnabledByDefault(bool.booleanValue());
        for (int i = 0; i < 5; i++) {
            FiltersController filtersController = FiltersController.getInstance(i);
            filtersController.setSortingEnabled(false, bool.booleanValue());
            filtersController.setSortingEnabled(true, bool.booleanValue());
            filtersController.saveConfig();
        }
        NotificationCenter.getInstance(UserConfig.selectedAccount).postNotificationName(NotificationCenter.dialogFiltersUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEnableSortingByDefaultAlert$28(DialogInterface dialogInterface) {
        this.enableSortingByDefaultAlert = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openForwardingOptions() {
        if (checkSelectedSecrets()) {
            SharedConfig.setMultiForwardingOptionsHintShown(true);
            showForwardingOptionsHint(false);
            prepareBlurBitmap();
            if (this.forwardingParams == null) {
                ForwardingMessagesParams forwardingMessagesParams = new ForwardingMessagesParams(this.customForwardDelegate.buildForwardedMessages(), this.selectedDialogs.get(0).longValue());
                this.forwardingParams = forwardingMessagesParams;
                if (this.needForceHideForwardAuthor) {
                    forwardingMessagesParams.hideForwardSendersName = true;
                    forwardingMessagesParams.needForceHideForwardAuthor = true;
                }
            }
            C54005 c54005 = new C54005(getParentActivity(), this.forwardingParams, null, null, this.currentAccount, null, this.commentView.isKeyboardVisible());
            this.forwardingPreviewView = c54005;
            ((ContentView) this.fragmentView).addView(c54005);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$5 */
    /* loaded from: classes5.dex */
    public class C54005 extends ForwardingPreviewView {
        final /* synthetic */ boolean val$keyboardVisible;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C54005(Context context, ForwardingMessagesParams forwardingMessagesParams, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, int i, ForwardingPreviewView.ResourcesDelegate resourcesDelegate, boolean z) {
            super(context, forwardingMessagesParams, tLRPC$User, tLRPC$Chat, i, resourcesDelegate);
            this.val$keyboardVisible = z;
        }

        @Override // org.telegram.p048ui.Components.ForwardingPreviewView
        protected void onDismiss(boolean z) {
            if (this.val$keyboardVisible && z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C54005.this.lambda$onDismiss$0();
                    }
                }, 50L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDismiss$0() {
            if (DialogsActivity.this.commentView != null) {
                DialogsActivity.this.commentView.openKeyboard();
            }
        }

        @Override // org.telegram.p048ui.Components.ForwardingPreviewView
        protected void didSendPressed() {
            dismiss(true);
            DialogsActivity.this.commentView.getSendButton().callOnClick();
        }

        @Override // org.telegram.p048ui.Components.ForwardingPreviewView
        protected void onTransitionAnimationProgress(boolean z, float f) {
            if (z || f != BitmapDescriptorFactory.HUE_RED) {
                DialogsActivity.this.blurredView.setAlpha(f);
                return;
            }
            DialogsActivity.this.blurredView.setVisibility(8);
            DialogsActivity.this.blurredView.setBackground(null);
        }

        @Override // org.telegram.p048ui.Components.ForwardingPreviewView
        protected void didOpenEditorPressed() {
            if (DialogsActivity.this.forwardingParams == null) {
                return;
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            dialogsActivity.presentFragment(ChatActivity.newInstanceInForwardingEditor(((Long) dialogsActivity.selectedDialogs.get(0)).longValue(), DialogsActivity.this.forwardingParams, new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$5$$ExternalSyntheticLambda1
                @Override // org.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DialogsActivity.C54005.this.lambda$didOpenEditorPressed$1((ForwardingMessagesParams) obj);
                }
            }));
            dismiss(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didOpenEditorPressed$1(ForwardingMessagesParams forwardingMessagesParams) {
            DialogsActivity.this.forwardingParams = forwardingMessagesParams;
            DialogsActivity.this.openForwardingOptions();
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
                hintView.setText(LocaleController.getString("TapForForwardingOptions", C3158R.string.TapForForwardingOptions));
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
    public boolean isManagement() {
        return this.initialDialogsType == 400;
    }

    private ViewPage getCurrentViewPage() {
        int i = 0;
        while (true) {
            ViewPage[] viewPageArr = this.viewPages;
            if (i >= viewPageArr.length) {
                return null;
            }
            if (viewPageArr[i] != null && viewPageArr[i].getVisibility() == 0) {
                return this.viewPages[i];
            }
            i++;
        }
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
            DialogsActivity.this.customForwardSpans.add(groupCreateSpan);
            DialogsActivity.this.customForwardSelectedContacts.put(groupCreateSpan.getDialogId(), groupCreateSpan);
            DialogsActivity.this.customForwardEditText.setHintVisible(false);
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
                        DialogsActivity.this.customForwardEditText.setAllowDrawCursor(true);
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
            DialogsActivity.this.customForwardIgnoreScrollEvent = true;
            DialogsActivity.this.customForwardSelectedContacts.remove(groupCreateSpan.getDialogId());
            DialogsActivity.this.customForwardSpans.remove(groupCreateSpan);
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
                    DialogsActivity.this.customForwardEditText.setAllowDrawCursor(true);
                    if (DialogsActivity.this.customForwardSpans.isEmpty()) {
                        DialogsActivity.this.customForwardEditText.setHintVisible(true);
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
            int m50dp = size - AndroidUtilities.m50dp(26);
            int m50dp2 = AndroidUtilities.m50dp(10);
            int m50dp3 = AndroidUtilities.m50dp(10);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt instanceof GroupCreateSpan) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(32), 1073741824));
                    if (childAt != this.removingSpan && childAt.getMeasuredWidth() + i3 > m50dp) {
                        m50dp2 += childAt.getMeasuredHeight() + AndroidUtilities.m50dp(8);
                        i3 = 0;
                    }
                    if (childAt.getMeasuredWidth() + i4 > m50dp) {
                        m50dp3 += childAt.getMeasuredHeight() + AndroidUtilities.m50dp(8);
                        i4 = 0;
                    }
                    int m50dp4 = AndroidUtilities.m50dp(13) + i3;
                    if (!this.animationStarted) {
                        View view = this.removingSpan;
                        if (childAt == view) {
                            childAt.setTranslationX(AndroidUtilities.m50dp(13) + i4);
                            childAt.setTranslationY(m50dp3);
                        } else if (view != null) {
                            float f = m50dp4;
                            if (childAt.getTranslationX() != f) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, View.TRANSLATION_X, f));
                            }
                            float f2 = m50dp2;
                            if (childAt.getTranslationY() != f2) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, View.TRANSLATION_Y, f2));
                            }
                        } else {
                            childAt.setTranslationX(m50dp4);
                            childAt.setTranslationY(m50dp2);
                        }
                    }
                    if (childAt != this.removingSpan) {
                        i3 += childAt.getMeasuredWidth() + AndroidUtilities.m50dp(9);
                    }
                    i4 += childAt.getMeasuredWidth() + AndroidUtilities.m50dp(9);
                }
            }
            if (AndroidUtilities.isTablet()) {
                min = AndroidUtilities.m50dp(372) / 3;
            } else {
                Point point = AndroidUtilities.displaySize;
                min = (Math.min(point.x, point.y) - AndroidUtilities.m50dp(158)) / 3;
            }
            if (m50dp - i3 < min) {
                m50dp2 += AndroidUtilities.m50dp(40);
                i3 = 0;
            }
            if (m50dp - i4 < min) {
                m50dp3 += AndroidUtilities.m50dp(40);
            }
            DialogsActivity.this.customForwardEditText.measure(View.MeasureSpec.makeMeasureSpec(m50dp - i3, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(32), 1073741824));
            if (!this.animationStarted) {
                int m50dp5 = m50dp3 + AndroidUtilities.m50dp(42);
                int m50dp6 = i3 + AndroidUtilities.m50dp(16);
                DialogsActivity.this.customForwardFieldY = m50dp2;
                if (this.currentAnimation == null) {
                    DialogsActivity.this.customForwardContainerHeight = m50dp5;
                    DialogsActivity.this.customForwardEditText.setTranslationX(m50dp6);
                    DialogsActivity.this.customForwardEditText.setTranslationY(DialogsActivity.this.customForwardFieldY);
                } else {
                    int m50dp7 = m50dp2 + AndroidUtilities.m50dp(42);
                    if (DialogsActivity.this.customForwardContainerHeight != m50dp7) {
                        this.animators.add(ObjectAnimator.ofInt(DialogsActivity.this, "customForwardContainerHeight", m50dp7));
                    }
                    float f3 = m50dp6;
                    if (DialogsActivity.this.customForwardEditText.getTranslationX() != f3) {
                        this.animators.add(ObjectAnimator.ofFloat(DialogsActivity.this.customForwardEditText, View.TRANSLATION_X, f3));
                    }
                    if (DialogsActivity.this.customForwardEditText.getTranslationY() != DialogsActivity.this.customForwardFieldY) {
                        this.animators.add(ObjectAnimator.ofFloat(DialogsActivity.this.customForwardEditText, View.TRANSLATION_Y, DialogsActivity.this.customForwardFieldY));
                    }
                    DialogsActivity.this.customForwardEditText.setAllowDrawCursor(false);
                    this.currentAnimation.playTogether(this.animators);
                    this.currentAnimation.start();
                    this.animationStarted = true;
                }
            } else if (this.currentAnimation != null && !DialogsActivity.this.customForwardIgnoreScrollEvent && this.removingSpan == null) {
                DialogsActivity.this.customForwardEditText.bringPointIntoView(DialogsActivity.this.customForwardEditText.getSelectionStart());
            }
            setMeasuredDimension(size, DialogsActivity.this.customForwardContainerHeight);
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
        private int[] pos;
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
            if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1 && DialogsActivity.this.forwardingPreviewView != null && DialogsActivity.this.forwardingPreviewView.isShowing()) {
                DialogsActivity.this.forwardingPreviewView.dismiss(true);
                return true;
            }
            return super.dispatchKeyEvent(keyEvent);
        }

        public ContentView(Context context) {
            super(context);
            this.actionBarSearchPaint = new Paint(1);
            this.windowBackgroundPaint = new Paint();
            this.pos = new int[2];
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
            boolean z = SharedConfig.isFilterTabsAtBottomEnabled;
            float f = BitmapDescriptorFactory.HUE_RED;
            float measuredHeight = ((z && !DialogsActivity.this.isCustomForward() && !DialogsActivity.this.isManagement()) || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() == 8) ? BitmapDescriptorFactory.HUE_RED : DialogsActivity.this.filterTabsView.getMeasuredHeight() - ((1.0f - DialogsActivity.this.filterTabsProgress) * DialogsActivity.this.filterTabsView.getMeasuredHeight());
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
            if (DialogsActivity.this.isCustomForward() || view != DialogsActivity.this.blurredView) {
                ViewPage viewPage = DialogsActivity.this.viewPages[0];
                float f = BitmapDescriptorFactory.HUE_RED;
                if (view != viewPage && ((DialogsActivity.this.viewPages.length <= 1 || view != DialogsActivity.this.viewPages[1]) && view != DialogsActivity.this.fragmentContextView && view != DialogsActivity.this.fragmentLocationContextView && view != DialogsActivity.this.dialogsHintCell && view != DialogsActivity.this.topicsBar)) {
                    if (view == ((BaseFragment) DialogsActivity.this).actionBar && DialogsActivity.this.slideFragmentProgress != 1.0f) {
                        canvas.save();
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        if (dialogsActivity.slideFragmentLite) {
                            canvas.translate((dialogsActivity.isDrawerTransition ? 1 : -1) * AndroidUtilities.m50dp(40) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                        } else {
                            float f2 = 1.0f - ((1.0f - dialogsActivity.slideFragmentProgress) * 0.05f);
                            canvas.translate((dialogsActivity.isDrawerTransition ? AndroidUtilities.m50dp(4) : -AndroidUtilities.m50dp(4)) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                            if (DialogsActivity.this.isDrawerTransition) {
                                f = getMeasuredWidth();
                            }
                            canvas.scale(f2, f2, f, (((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + (C3222ActionBar.getCurrentActionBarHeight() / 2.0f));
                        }
                        boolean drawChild = super.drawChild(canvas, view, j);
                        canvas.restore();
                        return drawChild;
                    }
                    return super.drawChild(canvas, view, j);
                }
                canvas.save();
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, (-getY()) + ((BaseFragment) DialogsActivity.this).actionBar.getY() + getActionBarFullHeight(), getMeasuredWidth(), getMeasuredHeight());
                if (view != DialogsActivity.this.topicsBar) {
                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                    float f3 = dialogsActivity2.slideFragmentProgress;
                    if (f3 != 1.0f) {
                        if (dialogsActivity2.slideFragmentLite) {
                            canvas.translate((dialogsActivity2.isDrawerTransition ? 1 : -1) * AndroidUtilities.m50dp(40) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                        } else {
                            float f4 = 1.0f - ((1.0f - f3) * 0.05f);
                            canvas.translate((dialogsActivity2.isDrawerTransition ? AndroidUtilities.m50dp(4) : -AndroidUtilities.m50dp(4)) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                            if (DialogsActivity.this.isDrawerTransition) {
                                f = getMeasuredWidth();
                            }
                            canvas.scale(f4, f4, f, (-getY()) + ((BaseFragment) DialogsActivity.this).actionBar.getY() + getActionBarFullHeight());
                        }
                    }
                }
                boolean drawChild2 = super.drawChild(canvas, view, j);
                canvas.restore();
                return drawChild2;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            int y;
            float f;
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
            if (dialogsActivity.whiteActionBar) {
                if (dialogsActivity.searchAnimationProgress != 1.0f) {
                    if (DialogsActivity.this.searchAnimationProgress == BitmapDescriptorFactory.HUE_RED && DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0) {
                        DialogsActivity.this.filterTabsView.setTranslationY(((BaseFragment) DialogsActivity.this).actionBar.getTranslationY());
                    }
                } else {
                    this.actionBarSearchPaint.setColor(Theme.getColor("windowBackgroundWhite"));
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
                    this.actionBarSearchPaint.setColor(ColorUtils.blendARGB(Theme.getColor(DialogsActivity.this.folderId != 0 ? "actionBarDefaultArchived" : "actionBarDefault"), Theme.getColor("windowBackgroundWhite"), DialogsActivity.this.searchAnimationProgress));
                    if (DialogsActivity.this.searchIsShowed || !DialogsActivity.this.searchWasFullyShowed) {
                        canvas.save();
                        canvas.clipRect(0, i2, getMeasuredWidth(), i3);
                        drawBlurCircle(canvas, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth() - AndroidUtilities.m50dp(24), (((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + ((((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight() - i) / 2.0f), getMeasuredWidth() * 1.3f * DialogsActivity.this.searchAnimationProgress, this.actionBarSearchPaint, true);
                        canvas.restore();
                    } else {
                        rect.set(0, i2, getMeasuredWidth(), i3);
                        drawBlurRect(canvas, BitmapDescriptorFactory.HUE_RED, rect, this.actionBarSearchPaint, true);
                    }
                    if (DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0) {
                        if (SharedConfig.isFilterTabsAtBottomEnabled) {
                            DialogsActivity.this.filterTabsView.setTranslationY(actionBarFullHeight - ((BaseFragment) DialogsActivity.this).actionBar.getHeight());
                        } else {
                            DialogsActivity.this.filterTabsView.setTranslationY(actionBarFullHeight - (((BaseFragment) DialogsActivity.this).actionBar.getHeight() + DialogsActivity.this.filterTabsView.getMeasuredHeight()));
                        }
                    }
                    if (DialogsActivity.this.searchTabsView != null) {
                        float height = actionBarFullHeight - (((BaseFragment) DialogsActivity.this).actionBar.getHeight() + DialogsActivity.this.searchTabsView.getMeasuredHeight());
                        float f2 = DialogsActivity.this.searchAnimationTabsDelayedCrossfade ? DialogsActivity.this.searchAnimationProgress < 0.5f ? BitmapDescriptorFactory.HUE_RED : (DialogsActivity.this.searchAnimationProgress - 0.5f) / 0.5f : DialogsActivity.this.searchAnimationProgress;
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
                    this.actionBarSearchPaint.setColor(ColorUtils.blendARGB(Theme.getColor(DialogsActivity.this.folderId != 0 ? "actionBarDefaultArchived" : "actionBarDefault"), Theme.getColor("windowBackgroundWhite"), DialogsActivity.this.progressToActionMode));
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
            if ((DialogsActivity.this.filtersTabAnimator == null && !DialogsActivity.this.rightSlidingDialogContainer.hasFragment()) || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0) {
                f = 1.0f;
                if (DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0 && DialogsActivity.this.searchAnimationProgress == BitmapDescriptorFactory.HUE_RED) {
                    DialogsActivity.this.filterTabsView.setTranslationY(((BaseFragment) DialogsActivity.this).actionBar.getTranslationY());
                    DialogsActivity.this.filterTabsView.setAlpha(1.0f);
                }
            } else {
                if (SharedConfig.isFilterTabsAtBottomEnabled) {
                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                    f = 1.0f;
                    dialogsActivity2.tabsYOffset = (1.0f - dialogsActivity2.filterTabsProgress) * DialogsActivity.this.filterTabsView.getMeasuredHeight();
                } else {
                    f = 1.0f;
                    DialogsActivity dialogsActivity3 = DialogsActivity.this;
                    dialogsActivity3.tabsYOffset = (-(1.0f - dialogsActivity3.filterTabsProgress)) * DialogsActivity.this.filterTabsView.getMeasuredHeight();
                }
                DialogsActivity.this.filterTabsView.setTranslationY(((BaseFragment) DialogsActivity.this).actionBar.getTranslationY() + DialogsActivity.this.tabsYOffset);
                DialogsActivity.this.filterTabsView.setAlpha(DialogsActivity.this.filterTabsProgress);
                if (!SharedConfig.isFilterTabsAtBottomEnabled) {
                    DialogsActivity.this.viewPages[0].setTranslationY((-(f - DialogsActivity.this.filterTabsProgress)) * DialogsActivity.this.filterTabsMoveFrom);
                }
            }
            DialogsActivity.this.updateContextViewPosition();
            super.dispatchDraw(canvas);
            DialogsActivity dialogsActivity4 = DialogsActivity.this;
            if (dialogsActivity4.whiteActionBar && dialogsActivity4.searchAnimationProgress > BitmapDescriptorFactory.HUE_RED && DialogsActivity.this.searchAnimationProgress < f && DialogsActivity.this.searchTabsView != null) {
                this.windowBackgroundPaint.setColor(Theme.getColor("windowBackgroundWhite"));
                this.windowBackgroundPaint.setAlpha((int) (paint.getAlpha() * DialogsActivity.this.searchAnimationProgress));
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, i3, getMeasuredWidth(), i2 + ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight() + DialogsActivity.this.searchTabsView.getMeasuredHeight(), this.windowBackgroundPaint);
            }
            if (((BaseFragment) DialogsActivity.this).parentLayout != null && ((BaseFragment) DialogsActivity.this).actionBar != null && !((BaseFragment) DialogsActivity.this).actionBar.getCastShadows()) {
                int y2 = (int) (((BaseFragment) DialogsActivity.this).actionBar.getY() + getActionBarFullHeight());
                if (!DialogsActivity.this.isCustomForward() || DialogsActivity.this.searchAnimationProgress != f) {
                    ((BaseFragment) DialogsActivity.this).parentLayout.drawHeaderShadow(canvas, (int) ((f - DialogsActivity.this.searchAnimationProgress) * 255.0f), y2);
                }
                if ((!DialogsActivity.this.isCustomForward() || DialogsActivity.this.searchAnimationProgress != f) && DialogsActivity.this.searchAnimationProgress > BitmapDescriptorFactory.HUE_RED) {
                    if (DialogsActivity.this.searchAnimationProgress < f) {
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
                if (DialogsActivity.this.isCustomForward()) {
                    ((BaseFragment) DialogsActivity.this).parentLayout.drawHeaderShadow(canvas, y2 + DialogsActivity.this.customForwardScrollView.getMeasuredHeight());
                }
            }
            if (DialogsActivity.this.filterTabsView == null || !SharedConfig.isFilterTabsAtBottomEnabled || DialogsActivity.this.isCustomForward() || DialogsActivity.this.isManagement()) {
                if (DialogsActivity.this.topicsBar == null || DialogsActivity.this.topicsBar.getVisibility() != 0) {
                    if (DialogsActivity.this.recentChatsBar != null && DialogsActivity.this.recentChatsBar.getVisibility() == 0) {
                        int alpha2 = Theme.dividerPaint.getAlpha();
                        Theme.dividerPaint.setAlpha((int) (DialogsActivity.this.recentChatsBar.getAlpha() * 255.0f));
                        float y3 = DialogsActivity.this.recentChatsBar.getY();
                        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, y3, getMeasuredWidth(), y3, Theme.dividerPaint);
                        Theme.dividerPaint.setAlpha(alpha2);
                    }
                } else {
                    int alpha3 = Theme.dividerPaint.getAlpha();
                    Theme.dividerPaint.setAlpha((int) (DialogsActivity.this.topicsBar.getAlpha() * 255.0f));
                    float y4 = DialogsActivity.this.getTopicsController().isTopicsBarAtBottomEnabled() ? DialogsActivity.this.topicsBar.getY() : DialogsActivity.this.topicsBar.getBottom() + DialogsActivity.this.topicsBar.getTranslationY();
                    canvas.drawLine(BitmapDescriptorFactory.HUE_RED, y4, getMeasuredWidth(), y4, Theme.dividerPaint);
                    Theme.dividerPaint.setAlpha(alpha3);
                }
            } else {
                if (DialogsActivity.this.topFilterTabsShadow == null) {
                    DialogsActivity dialogsActivity5 = DialogsActivity.this;
                    dialogsActivity5.topFilterTabsShadow = AppCompatResources.getDrawable(dialogsActivity5.filterTabsView.getContext(), C3158R.C3160drawable.header_shadow_reverse).mutate();
                }
                DialogsActivity.this.topFilterTabsShadow.setBounds(0, ((int) DialogsActivity.this.filterTabsView.getY()) - DialogsActivity.this.topFilterTabsShadow.getIntrinsicHeight(), getMeasuredWidth(), (int) DialogsActivity.this.filterTabsView.getY());
                DialogsActivity.this.topFilterTabsShadow.draw(canvas);
            }
            if (DialogsActivity.this.fragmentContextView != null && DialogsActivity.this.fragmentContextView.isCallStyle()) {
                canvas.save();
                canvas.translate(DialogsActivity.this.fragmentContextView.getX(), DialogsActivity.this.fragmentContextView.getY());
                DialogsActivity dialogsActivity6 = DialogsActivity.this;
                float f5 = dialogsActivity6.slideFragmentProgress;
                if (f5 != f) {
                    if (dialogsActivity6.slideFragmentLite) {
                        canvas.translate((dialogsActivity6.isDrawerTransition ? 1 : -1) * AndroidUtilities.m50dp(40) * (f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                    } else {
                        float f6 = f - ((f - f5) * 0.05f);
                        canvas.translate((dialogsActivity6.isDrawerTransition ? AndroidUtilities.m50dp(4) : -AndroidUtilities.m50dp(4)) * (f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                        canvas.scale(f6, f, DialogsActivity.this.isDrawerTransition ? getMeasuredWidth() : BitmapDescriptorFactory.HUE_RED, DialogsActivity.this.fragmentContextView.getY());
                    }
                }
                DialogsActivity.this.fragmentContextView.setDrawOverlay(true);
                DialogsActivity.this.fragmentContextView.draw(canvas);
                DialogsActivity.this.fragmentContextView.setDrawOverlay(false);
                canvas.restore();
            }
            if (!DialogsActivity.this.isCustomForward() && DialogsActivity.this.blurredView != null && DialogsActivity.this.blurredView.getVisibility() == 0) {
                if (DialogsActivity.this.blurredView.getAlpha() != f) {
                    if (DialogsActivity.this.blurredView.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                        canvas.saveLayerAlpha(DialogsActivity.this.blurredView.getLeft(), DialogsActivity.this.blurredView.getTop(), DialogsActivity.this.blurredView.getRight(), DialogsActivity.this.blurredView.getBottom(), (int) (DialogsActivity.this.blurredView.getAlpha() * 255.0f), 31);
                        canvas.translate(DialogsActivity.this.blurredView.getLeft(), DialogsActivity.this.blurredView.getTop());
                        DialogsActivity.this.blurredView.draw(canvas);
                        canvas.restore();
                    }
                } else {
                    DialogsActivity.this.blurredView.draw(canvas);
                }
            }
            if (DialogsActivity.this.scrimView != null) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), DialogsActivity.this.scrimPaint);
                canvas.save();
                getLocationInWindow(this.pos);
                canvas.translate(DialogsActivity.this.scrimViewLocation[0] - this.pos[0], DialogsActivity.this.scrimViewLocation[1] - (Build.VERSION.SDK_INT < 21 ? AndroidUtilities.statusBarHeight : 0));
                if (DialogsActivity.this.scrimViewBackground != null) {
                    DialogsActivity.this.scrimViewBackground.setAlpha(DialogsActivity.this.scrimViewAppearing ? 255 : (int) ((DialogsActivity.this.scrimPaint.getAlpha() / 50.0f) * 255.0f));
                    DialogsActivity.this.scrimViewBackground.setBounds(0, 0, DialogsActivity.this.scrimView.getWidth(), DialogsActivity.this.scrimView.getHeight());
                    DialogsActivity.this.scrimViewBackground.draw(canvas);
                }
                Drawable selectorDrawable = DialogsActivity.this.filterTabsView.getListView().getSelectorDrawable();
                if (DialogsActivity.this.scrimViewAppearing && selectorDrawable != null) {
                    canvas.save();
                    Rect bounds = selectorDrawable.getBounds();
                    canvas.translate(-bounds.left, -bounds.top);
                    selectorDrawable.draw(canvas);
                    canvas.restore();
                }
                DialogsActivity.this.scrimView.draw(canvas);
                if (DialogsActivity.this.scrimViewSelected) {
                    Drawable selectorDrawable2 = DialogsActivity.this.filterTabsView.getSelectorDrawable();
                    canvas.translate(-DialogsActivity.this.scrimViewLocation[0], (-selectorDrawable2.getIntrinsicHeight()) - 1);
                    selectorDrawable2.draw(canvas);
                }
                canvas.restore();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int m50dp;
            int m50dp2;
            int i4;
            int m50dp3;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            boolean z = size2 > size;
            setMeasuredDimension(size, size2);
            int paddingTop = size2 - getPaddingTop();
            if (DialogsActivity.this.doneItem != null) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) DialogsActivity.this.doneItem.getLayoutParams();
                layoutParams.topMargin = ((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0;
                layoutParams.height = C3222ActionBar.getCurrentActionBarHeight();
            }
            measureChildWithMargins(((BaseFragment) DialogsActivity.this).actionBar, i, 0, i2, 0);
            int measureKeyboardHeight = measureKeyboardHeight();
            int childCount = getChildCount();
            int i5 = 20;
            if (DialogsActivity.this.commentView != null) {
                measureChildWithMargins(DialogsActivity.this.commentView, i, 0, i2, 0);
                Object tag = DialogsActivity.this.commentView.getTag();
                if (tag != null && tag.equals(2)) {
                    if (measureKeyboardHeight <= AndroidUtilities.m50dp(20) && !AndroidUtilities.isInMultiwindow) {
                        paddingTop -= DialogsActivity.this.commentView.getEmojiPadding();
                    }
                    this.inputFieldHeight = DialogsActivity.this.commentView.getMeasuredHeight();
                } else {
                    this.inputFieldHeight = 0;
                }
                if (SharedConfig.smoothKeyboard && DialogsActivity.this.commentView.isPopupShowing()) {
                    ((BaseFragment) DialogsActivity.this).fragmentView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    for (int i6 = 0; i6 < DialogsActivity.this.viewPages.length; i6++) {
                        if (DialogsActivity.this.viewPages[i6] != null) {
                            DialogsActivity.this.viewPages[i6].setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    if (!DialogsActivity.this.onlySelect) {
                        ((BaseFragment) DialogsActivity.this).actionBar.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        if (DialogsActivity.this.topBulletin != null) {
                            DialogsActivity.this.topBulletin.updatePosition();
                        }
                    }
                    DialogsActivity.this.searchViewPager.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
            }
            int i7 = 0;
            while (i7 < childCount) {
                View childAt = getChildAt(i7);
                if (childAt != null && childAt.getVisibility() != 8 && childAt != DialogsActivity.this.commentView && childAt != ((BaseFragment) DialogsActivity.this).actionBar) {
                    if (childAt != DialogsActivity.this.customForwardScrollView) {
                        if (childAt == DialogsActivity.this.forwardingPreviewView) {
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                            int size3 = View.MeasureSpec.getSize(i2) - AndroidUtilities.statusBarHeight;
                            if (measureKeyboardHeight > AndroidUtilities.m50dp(i5) && getLayoutParams().height < 0) {
                                size3 += measureKeyboardHeight;
                            }
                            childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(size3, 1073741824));
                        } else if (childAt instanceof DatabaseMigrationHint) {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max(AndroidUtilities.m50dp(10), (((View.MeasureSpec.getSize(i2) + measureKeyboardHeight) - this.inputFieldHeight) + AndroidUtilities.m50dp(2)) - ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight()), 1073741824));
                        } else if (!(childAt instanceof ViewPage)) {
                            if (childAt == DialogsActivity.this.searchViewPager) {
                                DialogsActivity.this.searchViewPager.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                                int size4 = View.MeasureSpec.getSize(i2) + measureKeyboardHeight;
                                int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(Math.max(AndroidUtilities.m50dp(10), (((size4 - this.inputFieldHeight) + AndroidUtilities.m50dp(2)) - (DialogsActivity.this.onlySelect ? 0 : ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight())) - DialogsActivity.this.topPadding) - (DialogsActivity.this.searchTabsView == null ? 0 : AndroidUtilities.m50dp(44)), 1073741824);
                                if (DialogsActivity.this.isCustomForward()) {
                                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(Math.max(AndroidUtilities.m50dp(10), ((((size4 - this.inputFieldHeight) + AndroidUtilities.m50dp(2)) - ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight()) - DialogsActivity.this.customForwardScrollView.getMeasuredHeight()) - DialogsActivity.this.topPadding), 1073741824);
                                }
                                childAt.measure(makeMeasureSpec2, makeMeasureSpec3);
                                childAt.setPivotX(childAt.getMeasuredWidth() / 2);
                            } else if (DialogsActivity.this.commentView != null && DialogsActivity.this.commentView.isPopupView(childAt)) {
                                if (AndroidUtilities.isInMultiwindow) {
                                    if (AndroidUtilities.isTablet()) {
                                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m50dp(320), ((paddingTop - this.inputFieldHeight) - AndroidUtilities.statusBarHeight) + getPaddingTop()), 1073741824));
                                    } else {
                                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(((paddingTop - this.inputFieldHeight) - AndroidUtilities.statusBarHeight) + getPaddingTop(), 1073741824));
                                    }
                                } else {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, 1073741824));
                                }
                            } else if (childAt == DialogsActivity.this.rightSlidingDialogContainer) {
                                int size5 = View.MeasureSpec.getSize(i2);
                                DialogsActivity dialogsActivity = DialogsActivity.this;
                                int i8 = (dialogsActivity.isSlideBackTransition || dialogsActivity.isDrawerTransition) ? (int) (size5 * 0.05f) : 0;
                                dialogsActivity.rightSlidingDialogContainer.setTransitionPaddingBottom(i8);
                                childAt.measure(i, View.MeasureSpec.makeMeasureSpec(Math.max(AndroidUtilities.m50dp(10), size5 + i8), 1073741824));
                                i3 = i7;
                                i7 = i3 + 1;
                                i5 = 20;
                            } else {
                                i3 = i7;
                                measureChildWithMargins(childAt, i, 0, i2, 0);
                                i7 = i3 + 1;
                                i5 = 20;
                            }
                        } else {
                            int makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                            if (DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0) {
                                m50dp = ((((paddingTop - this.inputFieldHeight) + AndroidUtilities.m50dp(2)) - (DialogsActivity.this.onlySelect ? 0 : ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight())) - DialogsActivity.this.topPadding) - (DialogsActivity.this.dialogsHintCell != null ? DialogsActivity.this.dialogsHintCell.height() : 0);
                            } else {
                                if (DialogsActivity.this.isCustomForward() || DialogsActivity.this.isManagement() || SharedConfig.isFilterTabsAtBottomEnabled) {
                                    m50dp2 = ((((paddingTop - this.inputFieldHeight) + AndroidUtilities.m50dp(2)) - AndroidUtilities.m50dp(44)) - ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight()) - (DialogsActivity.this.customForwardScrollView != null ? DialogsActivity.this.customForwardScrollView.getMeasuredHeight() : 0);
                                    i4 = DialogsActivity.this.topPadding;
                                } else {
                                    m50dp2 = (((paddingTop - this.inputFieldHeight) + AndroidUtilities.m50dp(2)) - AndroidUtilities.m50dp(44)) - DialogsActivity.this.topPadding;
                                    i4 = DialogsActivity.this.dialogsHintCell != null ? DialogsActivity.this.dialogsHintCell.height() : 0;
                                }
                                m50dp = m50dp2 - i4;
                                RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
                                if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                                    m50dp += AndroidUtilities.m50dp(44);
                                }
                            }
                            int topicsBarHeight = (m50dp - DialogsActivity.this.getTopicsBarHeight()) - DialogsActivity.this.getHorizontalListViewHeight();
                            if (DialogsActivity.this.filtersTabAnimator != null && DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0) {
                                topicsBarHeight = (int) (topicsBarHeight + DialogsActivity.this.filterTabsMoveFrom);
                            } else {
                                childAt.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                            }
                            DialogsActivity dialogsActivity2 = DialogsActivity.this;
                            int i9 = (dialogsActivity2.isSlideBackTransition || dialogsActivity2.isDrawerTransition) ? (int) (topicsBarHeight * 0.05f) : 0;
                            childAt.setPadding(childAt.getPaddingLeft(), childAt.getPaddingTop(), childAt.getPaddingRight(), i9);
                            childAt.measure(makeMeasureSpec4, View.MeasureSpec.makeMeasureSpec(Math.max(AndroidUtilities.m50dp(10), topicsBarHeight + i9), 1073741824));
                            childAt.setPivotX(childAt.getMeasuredWidth() / 2);
                        }
                    } else {
                        if (AndroidUtilities.isTablet() || paddingTop > size) {
                            m50dp3 = AndroidUtilities.m50dp(144);
                        } else {
                            m50dp3 = AndroidUtilities.m50dp(56);
                        }
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(m50dp3, Integer.MIN_VALUE));
                    }
                }
                i3 = i7;
                i7 = i3 + 1;
                i5 = 20;
            }
            if (z != this.wasPortrait) {
                post(new Runnable() { // from class: org.telegram.ui.DialogsActivity$ContentView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.ContentView.this.lambda$onMeasure$0();
                    }
                });
                this.wasPortrait = z;
            }
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
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onLayout(boolean r18, int r19, int r20, int r21, int r22) {
            /*
                Method dump skipped, instructions count: 1134
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.ContentView.onLayout(boolean, int, int, int, int):void");
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
            if ((DialogsActivity.this.topicsBar == null || !DialogsActivity.this.topicsBar.isEditing()) && ((DialogsActivity.this.forwardingPreviewView == null || !DialogsActivity.this.forwardingPreviewView.isShowing()) && !((DialogsActivity.this.isManagement() && ((BaseFragment) DialogsActivity.this).actionBar != null && ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) || ((BaseFragment) DialogsActivity.this).parentLayout == null || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.isEditing() || DialogsActivity.this.searching || DialogsActivity.this.rightSlidingDialogContainer.hasFragment() || ((BaseFragment) DialogsActivity.this).parentLayout.checkTransitionAnimation() || ((BaseFragment) DialogsActivity.this).parentLayout.isInPreviewMode() || ((BaseFragment) DialogsActivity.this).parentLayout.isPreviewOpenAnimationInProgress() || ((BaseFragment) DialogsActivity.this).parentLayout.getDrawerLayoutContainer().isDrawerOpened() || ((motionEvent != null && !DialogsActivity.this.startedTracking && motionEvent.getY() <= ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight() + ((BaseFragment) DialogsActivity.this).actionBar.getTranslationY()) || (DialogsActivity.this.isMainNoFolderDialogList() && SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 5))))) {
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
                        f = BitmapDescriptorFactory.HUE_RED;
                        f2 = BitmapDescriptorFactory.HUE_RED;
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
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$1() {
            DialogsActivity.this.showDialog(new LimitReachedBottomSheet(DialogsActivity.this, getContext(), 3, ((BaseFragment) DialogsActivity.this).currentAccount));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout
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
                        if (childAt.getY() < DialogsActivity.this.viewPages[i].listView.blurTopPadding + AndroidUtilities.m50dp(100)) {
                            int save = canvas.save();
                            canvas.translate(DialogsActivity.this.viewPages[i].getX(), DialogsActivity.this.viewPages[i].getY() + DialogsActivity.this.viewPages[i].listView.getY() + childAt.getY());
                            if (childAt instanceof DialogCell) {
                                DialogCell dialogCell = (DialogCell) childAt;
                                dialogCell.drawingForBlur = true;
                                dialogCell.draw(canvas);
                                dialogCell.drawingForBlur = false;
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
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (DialogsActivity.this.statusDrawable != null) {
                DialogsActivity.this.statusDrawable.attach();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
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

        @Override // org.telegram.p048ui.Components.RecyclerListView
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
            this.additionalClipBottom = AndroidUtilities.m50dp(200);
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
        /* JADX WARN: Removed duplicated region for block: B:101:0x02d3  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0297  */
        @Override // org.telegram.p048ui.Components.BlurredRecyclerView, org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void dispatchDraw(android.graphics.Canvas r23) {
            /*
                Method dump skipped, instructions count: 1153
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.DialogsRecyclerView.dispatchDraw(android.graphics.Canvas):void");
        }

        private boolean drawMovingViewsOverlayed() {
            return getItemAnimator() != null && getItemAnimator().isRunning();
        }

        @Override // org.telegram.p048ui.Components.BlurredRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if (drawMovingViewsOverlayed() && (view instanceof DialogCell) && ((DialogCell) view).isMoving()) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView
        public void setAdapter(RecyclerView.Adapter adapter) {
            super.setAdapter(adapter);
            this.firstLayout = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.BlurredRecyclerView, org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onMeasure(int i, int i2) {
            int i3;
            RecyclerView.ViewHolder findViewHolderForAdapterPosition;
            if (DialogsActivity.this.onlySelect) {
                i3 = 0;
            } else if (DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0 || SharedConfig.isFilterTabsAtBottomEnabled) {
                i3 = ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight();
            } else {
                i3 = AndroidUtilities.m50dp(44);
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
            if (!DialogsActivity.this.onlySelect) {
                this.ignoreLayout = true;
                if (DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0 || SharedConfig.isFilterTabsAtBottomEnabled) {
                    i3 = (!((BaseFragment) DialogsActivity.this).inPreviewMode || Build.VERSION.SDK_INT < 21) ? 0 : AndroidUtilities.statusBarHeight;
                } else {
                    i3 = C3222ActionBar.getCurrentActionBarHeight() + (((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0);
                }
                setTopGlowOffset(i3);
                setPadding(0, i3, 0, 0);
                this.parentPage.progressView.setPaddingTop(i3);
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
            if (DialogsActivity.this.onlySelect || this.appliedPaddingTop == i3 || DialogsActivity.this.viewPages == null || DialogsActivity.this.viewPages.length <= 1 || DialogsActivity.this.startedTracking) {
                return;
            }
            if ((DialogsActivity.this.tabsAnimation == null || !DialogsActivity.this.tabsAnimation.isRunning()) && !DialogsActivity.this.tabsAnimationInProgress) {
                if (DialogsActivity.this.filterTabsView == null || !DialogsActivity.this.filterTabsView.isAnimatingIndicator()) {
                    DialogsActivity.this.viewPages[1].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            this.lastListPadding = getPaddingTop();
            DialogsActivity.this.scrollAdditionalOffset = BitmapDescriptorFactory.HUE_RED;
            if (!DialogsActivity.this.isArchive() || SharedConfig.isFilterTabsAtBottomEnabled) {
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

        @Override // org.telegram.p048ui.Components.BlurredRecyclerView, org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void toggleArchiveHidden(boolean z, DialogCell dialogCell) {
            SharedConfig.toggleArchiveHidden();
            if (SharedConfig.archiveHidden) {
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
                DialogsActivity.this.getUndoView().showWithAction(0L, 6, null, null);
                return;
            }
            DialogsActivity.this.getUndoView().showWithAction(0L, 7, null, null);
            updatePullState();
            if (!z || dialogCell == null) {
                return;
            }
            dialogCell.resetPinnedArchiveState();
            dialogCell.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updatePullState() {
            this.parentPage.archivePullViewState = SharedConfig.archiveHidden ? 2 : 0;
            if (this.parentPage.pullForegroundDrawable != null) {
                this.parentPage.pullForegroundDrawable.setWillDraw(this.parentPage.archivePullViewState != 0);
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
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
                int m50dp = (int) (AndroidUtilities.m50dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72) * 0.85f);
                int top = (findViewByPosition.getTop() - paddingTop) + findViewByPosition.getMeasuredHeight();
                if (findViewByPosition instanceof DialogCell) {
                    long currentTimeMillis = System.currentTimeMillis() - DialogsActivity.this.startArchivePullingTime;
                    if (top < m50dp || currentTimeMillis < 200) {
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
                            AndroidUtilities.makeAccessibilityAnnouncement(LocaleController.getString(C3158R.string.AccDescrArchivedChatsShown));
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

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
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
        @Override // org.telegram.p048ui.Components.RecyclerListView
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
            DialogCell dialogCell5 = (dialogCell == null || getAdapter().getItemCount() * AndroidUtilities.m50dp(70) <= getMeasuredHeight() || ((float) (dialogCell2.getTop() - getPaddingTop())) <= ((float) (getMeasuredHeight() - getPaddingTop())) / 2.0f) ? dialogCell2 : dialogCell;
            this.animationSupportListView = recyclerListView;
            if (dialogCell5 != null) {
                if (recyclerListView != null) {
                    recyclerListView.setPadding(getPaddingLeft(), this.topPadding, getPaddingLeft(), getPaddingBottom());
                    DialogsAdapter dialogsAdapter = (DialogsAdapter) recyclerListView.getAdapter();
                    int findDialogPosition = dialogsAdapter.findDialogPosition(dialogCell5.getDialogId());
                    int top = (int) ((dialogCell5.getTop() - recyclerListView2.getPaddingTop()) + f);
                    if (findDialogPosition >= 0) {
                        ((LinearLayoutManager) recyclerListView.getLayoutManager()).scrollToPositionWithOffset(findDialogPosition, dialogsAdapter.fixScrollGap(this, findDialogPosition, top, this.parentPage.dialogsType == 0 && this.parentPage.archivePullViewState == 2 && DialogsActivity.this.hasHiddenArchive(), z));
                    }
                }
                int findDialogPosition2 = ((DialogsAdapter) getAdapter()).findDialogPosition(dialogCell5.getDialogId());
                int top2 = dialogCell5.getTop() - getPaddingTop();
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

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            TLRPC$Dialog tLRPC$Dialog;
            if (!DialogsActivity.this.waitingForDialogsAnimationEnd(this.parentPage) && ((((BaseFragment) DialogsActivity.this).parentLayout == null || !((BaseFragment) DialogsActivity.this).parentLayout.isInPreviewMode()) && !DialogsActivity.this.rightSlidingDialogContainer.hasFragment())) {
                if (!this.swipingFolder || !this.swipeFolderBack) {
                    if (!DialogsActivity.this.onlySelect && ((DialogsActivity.isArchiveDialogsType(this.parentPage.dialogsType) || this.parentPage.isDefaultDialogType()) && DialogsActivity.this.slidingView == null)) {
                        View view = viewHolder.itemView;
                        if (view instanceof DialogCell) {
                            DialogCell dialogCell = (DialogCell) view;
                            long dialogId = dialogCell.getDialogId();
                            MessagesController.DialogFilter dialogFilter = null;
                            if (((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed(null)) {
                                TLRPC$Dialog tLRPC$Dialog2 = DialogsActivity.this.getMessagesController().dialogs_dict.get(dialogId);
                                if (!DialogsActivity.this.allowMoving || tLRPC$Dialog2 == null || !DialogsActivity.this.isDialogPinned(tLRPC$Dialog2) || DialogObject.isFolderDialogId(dialogId)) {
                                    return 0;
                                }
                                DialogsActivity.this.movingView = (DialogCell) viewHolder.itemView;
                                DialogsActivity.this.movingView.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                                this.swipeFolderBack = false;
                                return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
                            } else if (!DialogsActivity.this.getTopicsController().hasSelectedTopic(DialogsActivity.this.isArchive()) && ((!DialogsActivity.this.isArchive() || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0 || SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) == 5) && ((DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0 || SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 5) && DialogsActivity.this.allowSwipeDuringCurrentTouch && (((dialogId != DialogsActivity.this.getUserConfig().clientUserId && dialogId != 777000) || SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 2) && (!DialogsActivity.this.getMessagesController().isPromoDialog(dialogId, false) || DialogsActivity.this.getMessagesController().promoDialogType == MessagesController.PROMO_TYPE_PSA))))) {
                                boolean z = DialogsActivity.this.folderId == 0 && (SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) == 3 || SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) == 1 || SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) == 0 || SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) == 4) && !DialogsActivity.this.rightSlidingDialogContainer.hasFragment();
                                if (SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) == 1) {
                                    if (DialogsActivity.this.viewPages[0].dialogsType == 7 || DialogsActivity.this.viewPages[0].dialogsType == 8) {
                                        dialogFilter = DialogsActivity.this.getMessagesController().selectedDialogFilter[DialogsActivity.this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
                                    }
                                    if (dialogFilter != null && (dialogFilter.flags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ) != 0 && (tLRPC$Dialog = DialogsActivity.this.getMessagesController().dialogs_dict.get(dialogId)) != null && !dialogFilter.alwaysShow(((BaseFragment) DialogsActivity.this).currentAccount, tLRPC$Dialog) && (tLRPC$Dialog.unread_count > 0 || tLRPC$Dialog.unread_mark)) {
                                        z = false;
                                    }
                                }
                                this.swipeFolderBack = false;
                                this.swipingFolder = (z && !DialogObject.isFolderDialogId(dialogCell.getDialogId())) || (SharedConfig.archiveHidden && DialogObject.isFolderDialogId(dialogCell.getDialogId()));
                                dialogCell.setSliding(true);
                                return ItemTouchHelper.Callback.makeMovementFlags(0, 4);
                            }
                        }
                    }
                } else {
                    View view2 = viewHolder.itemView;
                    if (view2 instanceof DialogCell) {
                        ((DialogCell) view2).swipeCanceled = true;
                    }
                    this.swipingFolder = false;
                    return 0;
                }
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            long dialogId;
            TLRPC$Dialog tLRPC$Dialog;
            MessagesController.DialogFilter dialogFilter;
            View view = viewHolder2.itemView;
            if ((view instanceof DialogCell) && (tLRPC$Dialog = DialogsActivity.this.getMessagesController().dialogs_dict.get((dialogId = ((DialogCell) view).getDialogId()))) != null && DialogsActivity.this.isDialogPinned(tLRPC$Dialog) && !DialogObject.isFolderDialogId(dialogId)) {
                int adapterPosition = viewHolder.getAdapterPosition();
                int adapterPosition2 = viewHolder2.getAdapterPosition();
                if (this.parentPage.listView.getItemAnimator() == null) {
                    this.parentPage.listView.setItemAnimator(this.parentPage.dialogsItemAnimator);
                }
                this.parentPage.dialogsAdapter.moveDialogs(this.parentPage.listView, adapterPosition, adapterPosition2);
                if (DialogsActivity.this.viewPages[0].dialogsType != 7 && DialogsActivity.this.viewPages[0].dialogsType != 8 && !DialogsActivity.isForwardDialogsType(DialogsActivity.this.viewPages[0].dialogsType) && !DialogsActivity.isArchiveDialogsType(DialogsActivity.this.viewPages[0].dialogsType)) {
                    DialogsActivity.this.movingWas = true;
                } else {
                    if (DialogsActivity.isForwardDialogsType(DialogsActivity.this.viewPages[0].dialogsType)) {
                        dialogFilter = DialogsActivity.this.getMessagesController().selectedForwardDialogFilter[DialogsActivity.this.viewPages[0].dialogsType == 201 ? (char) 1 : (char) 0];
                    } else if (DialogsActivity.isArchiveDialogsType(DialogsActivity.this.viewPages[0].dialogsType)) {
                        dialogFilter = DialogsActivity.this.getMessagesController().selectedArchiveDialogFilter[DialogsActivity.this.viewPages[0].dialogsType == 301 ? (char) 1 : (char) 0];
                    } else {
                        dialogFilter = DialogsActivity.this.getMessagesController().selectedDialogFilter[DialogsActivity.this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
                    }
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
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$SwipeController$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.SwipeController.this.lambda$onSwiped$1(tLRPC$Dialog, itemCount, adapterPosition);
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
        public /* synthetic */ void lambda$onSwiped$1(final TLRPC$Dialog tLRPC$Dialog, int i, int i2) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition;
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
            if (!DialogsActivity.this.getMessagesController().isPromoDialog(tLRPC$Dialog.f1500id, false)) {
                int addDialogToFolder = DialogsActivity.this.getMessagesController().addDialogToFolder(tLRPC$Dialog.f1500id, DialogsActivity.this.folderId == 0 ? 1 : 0, -1, 0L);
                if (addDialogToFolder != 2 || i2 != 0) {
                    this.parentPage.dialogsItemAnimator.prepareForRemove();
                    this.parentPage.updateList(true);
                }
                if (DialogsActivity.this.folderId == 0) {
                    if (addDialogToFolder == 2) {
                        this.parentPage.dialogsItemAnimator.prepareForRemove();
                        if (i2 == 0) {
                            DialogsActivity.this.setDialogsListFrozen(true);
                            this.parentPage.updateList(true);
                            DialogsActivity.this.checkAnimationFinished();
                        } else {
                            this.parentPage.updateList(true);
                            if (!SharedConfig.archiveHidden && this.parentPage.layoutManager.findFirstVisibleItemPosition() == 0) {
                                DialogsActivity.this.disableActionBarScrolling = true;
                                this.parentPage.listView.smoothScrollBy(0, -AndroidUtilities.m50dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72));
                            }
                        }
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        ArrayList<TLRPC$Dialog> dialogsArray = dialogsActivity.getDialogsArray(((BaseFragment) dialogsActivity).currentAccount, this.parentPage.dialogsType, DialogsActivity.this.folderId, false);
                        if (!dialogsArray.isEmpty()) {
                            DialogsActivity.this.frozenDialogsList.add(0, dialogsArray.get(0));
                        }
                    } else if (addDialogToFolder == 1 && (findViewHolderForAdapterPosition = this.parentPage.listView.findViewHolderForAdapterPosition(0)) != null) {
                        View view = findViewHolderForAdapterPosition.itemView;
                        if (view instanceof DialogCell) {
                            DialogCell dialogCell = (DialogCell) view;
                            dialogCell.checkCurrentDialogIndex(true);
                            dialogCell.animateArchiveAvatar();
                        }
                    }
                    SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                    z = (globalMainSettings.getBoolean("archivehint_l", false) || SharedConfig.archiveHidden) ? true : true;
                    if (!z) {
                        globalMainSettings.edit().putBoolean("archivehint_l", true).commit();
                    }
                    DialogsActivity.this.getUndoView().showWithAction(tLRPC$Dialog.f1500id, z ? 2 : 3, null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$SwipeController$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.SwipeController.this.lambda$onSwiped$0(tLRPC$Dialog, i3);
                        }
                    });
                }
                if (DialogsActivity.this.folderId == 0 || !DialogsActivity.this.frozenDialogsList.isEmpty()) {
                    return;
                }
                this.parentPage.listView.setEmptyView(null);
                this.parentPage.progressView.setVisibility(4);
                return;
            }
            DialogsActivity.this.getMessagesController().hidePromoDialog();
            this.parentPage.dialogsItemAnimator.prepareForRemove();
            this.parentPage.updateList(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSwiped$0(TLRPC$Dialog tLRPC$Dialog, int i) {
            DialogsActivity.this.dialogsListFrozen = true;
            DialogsActivity.this.getMessagesController().addDialogToFolder(tLRPC$Dialog.f1500id, 0, i, 0L);
            DialogsActivity.this.dialogsListFrozen = false;
            ArrayList<TLRPC$Dialog> dialogs = DialogsActivity.this.getMessagesController().getDialogs(0);
            int indexOf = dialogs.indexOf(tLRPC$Dialog);
            if (indexOf >= 0) {
                ArrayList<TLRPC$Dialog> dialogs2 = DialogsActivity.this.getMessagesController().getDialogs(1);
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
        this.customForwardSelectedContacts = new LongSparseArray<>();
        this.customForwardSpans = new ArrayList<>();
        this.tabIdBeforeSelectTopic = -1;
        this.initialSearchType = -1;
        this.isFirstTab = true;
        this.allowGlobalSearch = true;
        this.contactsAlpha = 1.0f;
        this.undoView = new UndoView[2];
        this.scrimViewLocation = new int[2];
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
        this.animationIndex = -1;
        this.debugLastUpdateAction = -1;
        this.SCROLL_Y = new AnimationProperties.FloatProperty<DialogsActivity>("animationValue") { // from class: org.telegram.ui.DialogsActivity.6
            @Override // org.telegram.p048ui.Components.AnimationProperties.FloatProperty
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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
        this.albumsMode = this.initialDialogsType == DIALOGS_TYPE_ALBUMS;
        if (isManagement()) {
            getMessagesController().loadManagementBookmarks();
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
            if (isCustomForward()) {
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
        loadDialogs(getAccountInstance());
        getMessagesController().loadPinnedDialogs(this.folderId, 0L, null);
        if (this.databaseMigrationHint != null && !getMessagesStorage().isDatabaseMigrationInProgress()) {
            View view = this.databaseMigrationHint;
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.databaseMigrationHint = null;
        }
        if (this.initialDialogsType == 0) {
            AndroidUtilities.runOnUIThread(DialogsActivity$$ExternalSyntheticLambda102.INSTANCE, 350L);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.lambda$loadDialogs$30(AccountInstance.this);
            }
        }, 200L);
        Iterator<String> it = messagesController.diceEmojies.iterator();
        while (it.hasNext()) {
            accountInstance.getMediaDataController().loadStickersByEmojiOrName(it.next(), true, true);
        }
        dialogsLoaded[currentAccount] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadDialogs$30(AccountInstance accountInstance) {
        accountInstance.getDownloadController().loadDownloadingFiles();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void preload() {
        if (SharedConfig.getDevicePerformanceClass() < 2) {
            SecretMediaViewer.getInstance();
            ChatActivity.preload(ApplicationLoader.applicationContext);
            ArticleViewer.hasInstance();
        }
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
            this.actionBar.setRightDrawableOnClick(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda28
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateStatus$31(view);
                }
            });
            SelectAnimatedEmojiDialog.preload(this.currentAccount);
        } else if ((isShowPremiumBadgeEnabled || isShowPremiumStatusEnabled) && tLRPC$User != null && MessagesController.getInstance(this.currentAccount).isPremiumUser(tLRPC$User)) {
            if (this.premiumStar == null) {
                this.premiumStar = getContext().getResources().getDrawable(C3158R.C3160drawable.msg_premium_liststar).mutate();
                this.premiumStar = new AnimatedEmojiDrawable.WrapSizeDrawable(this, this.premiumStar, AndroidUtilities.m50dp(18), AndroidUtilities.m50dp(18)) { // from class: org.telegram.ui.DialogsActivity.7
                    @Override // org.telegram.p048ui.Components.AnimatedEmojiDrawable.WrapSizeDrawable, android.graphics.drawable.Drawable
                    public void draw(Canvas canvas) {
                        canvas.save();
                        canvas.translate(AndroidUtilities.m50dp(-2), AndroidUtilities.m50dp(1));
                        super.draw(canvas);
                        canvas.restore();
                    }
                };
            }
            this.premiumStar.setColorFilter(new PorterDuffColorFilter(Theme.getColor("profile_verifiedBackground"), PorterDuff.Mode.MULTIPLY));
            this.statusDrawable.set(this.premiumStar, z);
            this.actionBar.setRightDrawableOnClick(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda37
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateStatus$32(view);
                }
            });
            SelectAnimatedEmojiDialog.preload(this.currentAccount);
        } else {
            this.statusDrawable.set((Drawable) null, z);
            this.actionBar.setRightDrawableOnClick(null);
        }
        this.statusDrawable.setColor(Integer.valueOf(Theme.getColor("profile_verifiedBackground")));
        DrawerProfileCell.AnimatedStatusView animatedStatusView = this.animatedStatusView;
        if (animatedStatusView != null) {
            animatedStatusView.setColor(Theme.getColor("profile_verifiedBackground"));
        }
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = this.selectAnimatedEmojiDialog;
        if (selectAnimatedEmojiDialogWindow == null || !(selectAnimatedEmojiDialogWindow.getContentView() instanceof SelectAnimatedEmojiDialog)) {
            return;
        }
        SimpleTextView titleTextView = this.actionBar.getTitleTextView();
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = (SelectAnimatedEmojiDialog) this.selectAnimatedEmojiDialog.getContentView();
        if (titleTextView != null) {
            Drawable rightDrawable = titleTextView.getRightDrawable();
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.statusDrawable;
            if (rightDrawable == swapAnimatedEmojiDrawable2) {
                swapAnimatedEmojiDrawable = swapAnimatedEmojiDrawable2;
            }
        }
        selectAnimatedEmojiDialog.setScrimDrawable(swapAnimatedEmojiDrawable, titleTextView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStatus$31(View view) {
        showSelectStatusDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStatus$32(View view) {
        showSelectStatusDialog();
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (isCustomForward()) {
            getMessagesController().cleanupSelectedForwardDialogFilters();
        } else if (isArchive()) {
            getMessagesController().cleanupSelectedArchiveDialogFilters();
        }
        closeCrossAccountsForwardLoading();
        if (getScreenLockedSection() != null) {
            LockedSectionsController.SectionPasscodeData sectionsPasscodeData = getLockedSectionsController().getSectionsPasscodeData(getScreenLockedSection());
            if (sectionsPasscodeData != null) {
                sectionsPasscodeData.setSectionLocked(true);
                getLockedSectionsController().setSectionsPasscodeData(getScreenLockedSection(), sectionsPasscodeData);
            }
            if (SharedConfig.passcodeHash.isEmpty() || SharedConfig.allowScreenCapture) {
                AndroidUtilities.setFlagSecure(this, false);
            }
            AndroidUtilities.onLockedSectionClosed(getParentActivity());
        }
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
            if (isCustomForward()) {
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
        getNotificationCenter().onAnimationFinish(this.animationIndex);
        this.delegate = null;
        SuggestClearDatabaseBottomSheet.dismissDialog();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public C3222ActionBar createActionBar(Context context) {
        C3222ActionBar c3222ActionBar = new C3222ActionBar(context) { // from class: org.telegram.ui.DialogsActivity.8
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar, android.view.View
            public void setTranslationY(float f) {
                if (f != getTranslationY() && ((BaseFragment) DialogsActivity.this).fragmentView != null) {
                    ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                }
                super.setTranslationY(f);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar
            public boolean shouldClipChild(View view) {
                return super.shouldClipChild(view) || view == DialogsActivity.this.doneItem;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (!((BaseFragment) DialogsActivity.this).inPreviewMode || DialogsActivity.this.avatarContainer == null || view == DialogsActivity.this.avatarContainer) {
                    return super.drawChild(canvas, view, j);
                }
                return false;
            }

            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar
            public void setTitleOverlayText(String str, int i, Runnable runnable) {
                super.setTitleOverlayText(str, i, runnable);
                if (DialogsActivity.this.selectAnimatedEmojiDialog == null || !(DialogsActivity.this.selectAnimatedEmojiDialog.getContentView() instanceof SelectAnimatedEmojiDialog)) {
                    return;
                }
                SimpleTextView titleTextView = getTitleTextView();
                ((SelectAnimatedEmojiDialog) DialogsActivity.this.selectAnimatedEmojiDialog.getContentView()).setScrimDrawable((titleTextView == null || titleTextView.getRightDrawable() != DialogsActivity.this.statusDrawable) ? null : DialogsActivity.this.statusDrawable, titleTextView);
            }

            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar
            protected boolean onSearchChangedIgnoreTitles() {
                RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
                return rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment();
            }

            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar
            public void onSearchFieldVisibilityChanged(boolean z) {
                RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
                if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                    getBackButton().animate().alpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED).start();
                }
                super.onSearchFieldVisibilityChanged(z);
            }
        };
        c3222ActionBar.setItemsBackgroundColor(Theme.getColor("actionBarDefaultSelector"), false);
        c3222ActionBar.setItemsBackgroundColor(Theme.getColor("actionBarActionModeDefaultSelector"), true);
        c3222ActionBar.setItemsColor(Theme.getColor("actionBarDefaultIcon"), false);
        c3222ActionBar.setItemsColor(Theme.getColor("actionBarActionModeDefaultIcon"), true);
        if (this.inPreviewMode || (AndroidUtilities.isTablet() && this.folderId != 0)) {
            c3222ActionBar.setOccupyStatusBar(false);
        }
        return c3222ActionBar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r6v19 */
    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        String capitalize;
        String capitalize2;
        String capitalize3;
        String capitalize4;
        String capitalize5;
        String capitalize6;
        int i;
        Context context2;
        int i2;
        int i3;
        CombinedDrawable combinedDrawable;
        TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto;
        Drawable drawable;
        final Context context3 = context;
        super.createView(context);
        this.actionModeViews.clear();
        ?? r13 = 0;
        this.lastFilterTabUsed = false;
        if (isCustomForward()) {
            this.customForwardSpans.clear();
            this.customForwardSelectedContacts.clear();
            this.customForwardCurrentDeletingSpan = null;
        }
        if (getLockedSectionsController() != null) {
            AndroidUtilities.showSectionPasscodeActivityIfNeeded(this);
        }
        this.forwardingOptionsHintView = null;
        this.searching = false;
        this.searchWas = false;
        this.pacmanAnimation = null;
        this.selectedDialogs.clear();
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda61
            @Override // java.lang.Runnable
            public final void run() {
                Theme.createChatResources(context3, false);
            }
        });
        ActionBarMenu createMenu = this.actionBar.createMenu();
        int i4 = 8;
        ?? r6 = 1;
        if (!this.onlySelect && this.searchString == null) {
            ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, (ActionBarMenu) null, Theme.getColor("actionBarDefaultSelector"), Theme.getColor("actionBarDefaultIcon"), true);
            this.doneItem = actionBarMenuItem;
            actionBarMenuItem.setText(LocaleController.getString("Done", C3158R.string.Done).toUpperCase());
            this.actionBar.addView(this.doneItem, LayoutHelper.createFrame(-2, -2, 53, 0, 0, 10, 0));
            this.doneItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda35
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$createView$34(view);
                }
            });
            this.doneItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.doneItem.setVisibility(8);
            ProxyDrawable proxyDrawable = new ProxyDrawable(context3);
            this.proxyDrawable = proxyDrawable;
            ActionBarMenuItem addItem = createMenu.addItem(2, proxyDrawable);
            this.proxyItem = addItem;
            addItem.setContentDescription(LocaleController.getString("ProxySettings", C3158R.string.ProxySettings));
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C3158R.C3164raw.passcode_lock_close, "passcode_lock_close", AndroidUtilities.m50dp(28), AndroidUtilities.m50dp(28), true, null);
            this.passcodeDrawable = rLottieDrawable;
            ActionBarMenuItem addItem2 = createMenu.addItem(1, rLottieDrawable);
            this.passcodeItem = addItem2;
            addItem2.setContentDescription(LocaleController.getString("AccDescrPasscodeLock", C3158R.string.AccDescrPasscodeLock));
            ActionBarMenuItem addItem3 = createMenu.addItem(3, new ColorDrawable(0));
            this.downloadsItem = addItem3;
            addItem3.addView(new DownloadProgressIcon(this.currentAccount, context3));
            this.downloadsItem.setContentDescription(LocaleController.getString("DownloadsTabs", C3158R.string.DownloadsTabs));
            this.downloadsItem.setVisibility(8);
            updatePasscodeButton();
            updateProxyButton(false, false);
        }
        ActionBarMenuItem actionBarMenuItemSearchListener = createMenu.addItem(0, C3158R.C3160drawable.ic_ab_search).setIsSearchField(true, false).setActionBarMenuItemSearchListener(new C54269(context3, createMenu));
        this.searchItem = actionBarMenuItemSearchListener;
        int i5 = this.initialDialogsType;
        if (i5 == 2 || i5 == 14) {
            actionBarMenuItemSearchListener.setVisibility(8);
        }
        ActionBarMenuItem actionBarMenuItem2 = this.searchItem;
        int i6 = C3158R.string.Search;
        actionBarMenuItem2.setSearchFieldHint(LocaleController.getString("Search", i6));
        this.searchItem.setContentDescription(LocaleController.getString("Search", i6));
        if (isMainDialogList() || isManagement()) {
            int i7 = IdFabric$Menu.OPTIONS;
            int i8 = C3158R.C3160drawable.ic_ab_other;
            this.headerItem = createMenu.addItem(i7, i8);
            if (isManagement()) {
                this.headerItem.addSubItem(IdFabric$Menu.DIALOGS_MANAGEMENT_DELETE_ALL, C3158R.C3160drawable.msg_delete, LocaleController.getString("DeleteAll", C3158R.string.DeleteAll));
            } else {
                if (!isArchive()) {
                    this.headerItem.setShowSubmenuByMove(false);
                    this.headerItem.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda51
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean lambda$createView$35;
                            lambda$createView$35 = DialogsActivity.this.lambda$createView$35(view);
                            return lambda$createView$35;
                        }
                    });
                    ActionBarMenuItem actionBarMenuItem3 = this.headerItem;
                    int i9 = IdFabric$Menu.DIALOGS_SCAN_LOGIN_QR_CODE;
                    int i10 = C3158R.C3160drawable.fork_menu_devices_26;
                    capitalize5 = StringsKt__StringsJVMKt.capitalize(LocaleController.getString("AuthAnotherClient", C3158R.string.AuthAnotherClient).toLowerCase());
                    actionBarMenuItem3.addSubItem(i9, i10, capitalize5.replace("qr", "QR"));
                    this.headerItem.addSubItem(IdFabric$Menu.DIALOGS_TOOLS_SETTINGS, C3158R.C3160drawable.fork_settings_tools, LocaleController.getInternalString(C3158R.string.settings_tools));
                    ActionBarMenuItem actionBarMenuItem4 = this.headerItem;
                    int i11 = IdFabric$Menu.DIALOGS_CHAT_SETTINGS;
                    int i12 = C3158R.C3160drawable.msg_msgbubble3;
                    capitalize6 = StringsKt__StringsJVMKt.capitalize(LocaleController.getString("ChatSettings", C3158R.string.ChatSettings).toLowerCase());
                    actionBarMenuItem4.addSubItem(i11, i12, capitalize6);
                    updateSwitchItemVisibility(true);
                    showHeaderItem(true);
                }
                ActionBarMenuItem actionBarMenuItem5 = this.headerItem;
                int i13 = IdFabric$Menu.DIALOGS_CLEAR_CACHE;
                int i14 = C3158R.C3160drawable.msg_data;
                capitalize = StringsKt__StringsJVMKt.capitalize(LocaleController.getString("ClearMediaCache", C3158R.string.ClearMediaCache).toLowerCase());
                actionBarMenuItem5.addSubItem(i13, i14, capitalize);
                ActionBarMenuItem actionBarMenuItem6 = this.headerItem;
                int i15 = IdFabric$Menu.DIALOGS_SCROLL_TO_START;
                int i16 = C3158R.C3160drawable.fork_scroll_to_start;
                capitalize2 = StringsKt__StringsJVMKt.capitalize(LocaleController.getInternalString(C3158R.string.dialogs_menu_scroll_to_start).toLowerCase());
                actionBarMenuItem6.addSubItem(i15, i16, capitalize2);
                ActionBarMenuItem actionBarMenuItem7 = this.headerItem;
                int i17 = IdFabric$Menu.DIALOGS_SCROLL_TO_END;
                int i18 = C3158R.C3160drawable.fork_scroll_to_end;
                capitalize3 = StringsKt__StringsJVMKt.capitalize(LocaleController.getInternalString(C3158R.string.dialogs_menu_scroll_to_end).toLowerCase());
                actionBarMenuItem7.addSubItem(i17, i18, capitalize3);
                if (isArchive()) {
                    ActionBarMenuItem actionBarMenuItem8 = this.headerItem;
                    int i19 = IdFabric$Menu.DIALOGS_ARCHIVE_LOCK;
                    int i20 = C3158R.C3160drawable.fork_filter_icon_lock;
                    capitalize4 = StringsKt__StringsJVMKt.capitalize(LocaleController.getInternalString(C3158R.string.section_passcode).toLowerCase());
                    actionBarMenuItem8.addSubItem(i19, i20, capitalize4);
                }
                ActionBarMenuItem addItem4 = createMenu.addItem(i7, i8);
                this.searchMenuItem = addItem4;
                addItem4.addSubItem(IdFabric$Menu.SEARCH_QR, C3158R.C3160drawable.msg_qrcode, LocaleController.getInternalString(C3158R.string.dialogs_qr_search));
                this.searchMenuItem.addSubItem(IdFabric$Menu.SEARCH_TEL, C3158R.C3160drawable.msg_calls, LocaleController.getInternalString(C3158R.string.dialogs_tel_search));
                this.searchMenuItem.setVisibility(8);
            }
        }
        String str = "actionBarDefault";
        if (this.onlySelect && !isManagement()) {
            this.actionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
            if (this.albumsMode) {
                this.actionBar.setTitle(LocaleController.getInternalString(C3158R.string.cloud_albums_toolbar_title));
                this.searchItem.setVisibility(8);
                this.cloudItem = createMenu.addItem(IdFabric$Menu.DIALOGS_ALBUMS_CLOUD, C3158R.C3160drawable.fork_ic_cloud);
                ActionBarMenuItem addItem5 = createMenu.addItem(IdFabric$Menu.OPTIONS, C3158R.C3160drawable.ic_ab_other);
                this.sortCloudAlbumsItem = addItem5.addSubItem(IdFabric$Menu.DIALOGS_SORT_ALBUMS, C3158R.C3160drawable.msg_contacts_time, null);
                this.openCloudInsteadAlbumsItem = addItem5.addSubItem(IdFabric$Menu.DIALOGS_ALBUMS_OPEN_BY_DEFAULT, C3158R.C3160drawable.msg_retry, LocaleController.getInternalString(C3158R.string.dialogs_cloud_or_albums_open_by_default));
                updateAlbumsMenu();
            } else if ((this.initialDialogsType == 3 && this.selectAlertString == null) || isCustomForward()) {
                this.actionBar.setTitle(LocaleController.getString("ForwardTo", C3158R.string.ForwardTo));
                if (isCustomForward()) {
                    this.searchItem.setVisibility(8);
                }
            } else if (this.initialDialogsType == 10 || this.customSharingMode) {
                this.actionBar.setTitle(LocaleController.getString("SelectChats", C3158R.string.SelectChats));
                if (this.customSharingMode) {
                    this.searchItem.setVisibility(8);
                }
            } else {
                TLRPC$RequestPeerType tLRPC$RequestPeerType = this.requestPeerType;
                if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeUser) {
                    if (((TLRPC$TL_requestPeerTypeUser) tLRPC$RequestPeerType).bot != null) {
                        if (((TLRPC$TL_requestPeerTypeUser) tLRPC$RequestPeerType).bot.booleanValue()) {
                            this.actionBar.setTitle(LocaleController.getString("ChooseBot", C3158R.string.ChooseBot));
                        } else {
                            this.actionBar.setTitle(LocaleController.getString("ChooseUser", C3158R.string.ChooseUser));
                        }
                    } else {
                        this.actionBar.setTitle(LocaleController.getString("ChooseUser", C3158R.string.ChooseUser));
                    }
                } else if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeBroadcast) {
                    this.actionBar.setTitle(LocaleController.getString("ChooseChannel", C3158R.string.ChooseChannel));
                } else if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeChat) {
                    this.actionBar.setTitle(LocaleController.getString("ChooseGroup", C3158R.string.ChooseGroup));
                } else {
                    this.actionBar.setTitle(LocaleController.getString("SelectChat", C3158R.string.SelectChat));
                }
            }
            this.actionBar.setBackgroundColor(Theme.getColor("actionBarDefault"));
        } else {
            if (this.searchString != null || this.folderId != 0 || isManagement()) {
                C3222ActionBar c3222ActionBar = this.actionBar;
                BackDrawable backDrawable = new BackDrawable(false);
                this.backDrawable = backDrawable;
                c3222ActionBar.setBackButtonDrawable(backDrawable);
            } else {
                C3222ActionBar c3222ActionBar2 = this.actionBar;
                MenuDrawable menuDrawable = new MenuDrawable();
                this.menuDrawable = menuDrawable;
                c3222ActionBar2.setBackButtonDrawable(menuDrawable);
                this.menuDrawable.setRoundCap();
                this.actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrOpenMenu", C3158R.string.AccDescrOpenMenu));
            }
            if (isManagement()) {
                this.searchItem.setVisibility(8);
                this.actionBar.setTitle(LocaleController.getInternalString(C3158R.string.management));
            } else if (this.folderId != 0) {
                this.actionBar.setTitle(LocaleController.getString("ArchivedChats", C3158R.string.ArchivedChats));
            } else {
                AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(null, AndroidUtilities.m50dp(26));
                this.statusDrawable = swapAnimatedEmojiDrawable;
                swapAnimatedEmojiDrawable.center = true;
                if (BuildVars.DEBUG_VERSION) {
                    this.actionBar.setTitle(LocaleController.getString("AppNameBeta", C3158R.string.AppNameBeta).replace("Telegram", "iMe"), this.statusDrawable);
                } else {
                    this.actionBar.setTitle(LocaleController.getString("AppName", C3158R.string.AppName), this.statusDrawable);
                }
                updateStatus(UserConfig.getInstance(this.currentAccount).getCurrentUser(), false);
            }
            if (this.folderId == 0) {
                this.actionBar.setSupportsHolidayImage(true);
            }
        }
        if (!this.onlySelect || isCustomForward() || isManagement()) {
            this.actionBar.setAddToContainer(false);
            this.actionBar.setCastShadows(false);
            this.actionBar.setClipContent(true);
        }
        this.actionBar.setTitleActionRunnable(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$36();
            }
        });
        if (needForceActivateTabs() || (this.initialDialogsType == 0 && this.folderId == 0 && !this.onlySelect && TextUtils.isEmpty(this.searchString))) {
            this.scrimPaint = new Paint() { // from class: org.telegram.ui.DialogsActivity.10
                @Override // android.graphics.Paint
                public void setAlpha(int i21) {
                    super.setAlpha(i21);
                    if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                        ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                    }
                }
            };
            C534811 c534811 = new C534811(context3, getFilterTabsMode(), null);
            this.filterTabsView = c534811;
            c534811.setVisibility(8);
            this.canShowFilterTabsView = false;
            this.filterTabsView.setDelegate(new C534912(context3));
        }
        int i21 = 17;
        if (isCustomForward()) {
            this.customForwardSwitchArchiveItem = createMenu.addItemWithWidth(IdFabric$Menu.SWITCH_ARCHIVE, 0, AndroidUtilities.m50dp(56));
            CustomForwardSwitchArchiveImageView customForwardSwitchArchiveImageView = new CustomForwardSwitchArchiveImageView(context3);
            this.customForwardSwitchArchiveImageView = customForwardSwitchArchiveImageView;
            this.customForwardSwitchArchiveItem.addView(customForwardSwitchArchiveImageView, LayoutHelper.createFrame(36.0f, 36.0f, 17));
        }
        this.switchItem = createMenu.addItemWithWidth(IdFabric$Menu.SWITCH_ACCOUNT, 0, AndroidUtilities.m50dp(56));
        if (isMainNoFolderDialogList()) {
            this.switchItem.setShowSubmenuByMove(false);
            this.switchItem.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda52
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean lambda$createView$37;
                    lambda$createView$37 = DialogsActivity.this.lambda$createView$37(view);
                    return lambda$createView$37;
                }
            });
        }
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setTextSize(AndroidUtilities.m50dp(12));
        BackupImageView backupImageView = new BackupImageView(context3);
        backupImageView.setRoundRadius(AndroidUtilities.m50dp(18));
        this.switchItem.addView(backupImageView, LayoutHelper.createFrame(36, 36, 17));
        TLRPC$User currentUser = getUserConfig().getCurrentUser();
        avatarDrawable.setInfo(currentUser);
        backupImageView.getImageReceiver().setCurrentAccount(this.currentAccount);
        backupImageView.setImage(ImageLocation.getForUserOrChat(currentUser, 1), "50_50", ImageLocation.getForUserOrChat(currentUser, 2), "50_50", (currentUser == null || (tLRPC$UserProfilePhoto = currentUser.photo) == null || (drawable = tLRPC$UserProfilePhoto.strippedBitmap) == null) ? avatarDrawable : drawable, currentUser);
        this.switchItemAvatarDrawable = avatarDrawable;
        this.switchItemImageView = backupImageView;
        updateSwitchItemVisibility(true);
        this.actionBar.setAllowOverlayTitle(true);
        RecyclerView recyclerView = this.sideMenu;
        if (recyclerView != null) {
            recyclerView.setBackgroundColor(Theme.getColor("chats_menuBackground"));
            this.sideMenu.setGlowColor(Theme.getColor("chats_menuBackground"));
            this.sideMenu.getAdapter().notifyDataSetChanged();
        }
        createActionMode(null);
        final ContentView contentView = new ContentView(context3);
        this.fragmentView = contentView;
        String str2 = "windowBackgroundWhite";
        int i22 = -2;
        int i23 = -1;
        if (this.initialDialogsType == 3 && isCustomForward()) {
            ScrollView scrollView = new ScrollView(context3) { // from class: org.telegram.ui.DialogsActivity.13
                @Override // android.widget.ScrollView, android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    return super.onInterceptTouchEvent(motionEvent);
                }

                @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
                public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
                    if (DialogsActivity.this.customForwardIgnoreScrollEvent) {
                        DialogsActivity.this.customForwardIgnoreScrollEvent = false;
                        return false;
                    }
                    rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
                    rect.top += DialogsActivity.this.customForwardFieldY + AndroidUtilities.m50dp(20);
                    rect.bottom += DialogsActivity.this.customForwardFieldY + AndroidUtilities.m50dp(50);
                    return super.requestChildRectangleOnScreen(view, rect, z);
                }
            };
            this.customForwardScrollView = scrollView;
            scrollView.setVerticalScrollBarEnabled(false);
            AndroidUtilities.setScrollViewEdgeEffectColor(this.customForwardScrollView, Theme.getColor("windowBackgroundWhite"));
            contentView.addView(this.customForwardScrollView);
            SpansContainer spansContainer = new SpansContainer(context3);
            this.customForwardSpansContainer = spansContainer;
            this.customForwardScrollView.addView(spansContainer, LayoutHelper.createFrame(-1, -2));
            this.customForwardSpansContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda32
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$createView$38(view);
                }
            });
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context3) { // from class: org.telegram.ui.DialogsActivity.14
                @Override // org.telegram.p048ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (DialogsActivity.this.customForwardCurrentDeletingSpan != null) {
                        DialogsActivity.this.customForwardCurrentDeletingSpan.cancelDeleteAnimation();
                        DialogsActivity.this.customForwardCurrentDeletingSpan = null;
                    }
                    if (motionEvent.getAction() == 0 && !AndroidUtilities.showKeyboard(this)) {
                        clearFocus();
                        requestFocus();
                    }
                    return super.onTouchEvent(motionEvent);
                }
            };
            this.customForwardEditText = editTextBoldCursor;
            editTextBoldCursor.setTextSize(1, 16.0f);
            this.customForwardEditText.setHintColor(Theme.getColor("groupcreate_hintText"));
            this.customForwardEditText.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.customForwardEditText.setCursorColor(Theme.getColor("groupcreate_cursor"));
            this.customForwardEditText.setCursorWidth(1.5f);
            this.customForwardEditText.setInputType(655536);
            this.customForwardEditText.setSingleLine(true);
            this.customForwardEditText.setBackgroundDrawable(null);
            this.customForwardEditText.setVerticalScrollBarEnabled(false);
            this.customForwardEditText.setHorizontalScrollBarEnabled(false);
            this.customForwardEditText.setTextIsSelectable(false);
            this.customForwardEditText.setPadding(0, 0, 0, 0);
            this.customForwardEditText.setImeOptions(268435462);
            this.customForwardEditText.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            this.customForwardSpansContainer.addView(this.customForwardEditText);
            this.customForwardEditText.setHintText(LocaleController.getString("SearchForPeopleAndGroups", C3158R.string.SearchForPeopleAndGroups));
            this.customForwardEditText.setCustomSelectionActionModeCallback(new ActionMode.Callback(this) { // from class: org.telegram.ui.DialogsActivity.15
                @Override // android.view.ActionMode.Callback
                public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public void onDestroyActionMode(ActionMode actionMode) {
                }

                @Override // android.view.ActionMode.Callback
                public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }
            });
            this.customForwardEditText.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.DialogsActivity.16
                private boolean wasEmpty;

                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view, int i24, KeyEvent keyEvent) {
                    if (i24 == 67) {
                        if (keyEvent.getAction() == 0) {
                            this.wasEmpty = DialogsActivity.this.customForwardEditText.length() == 0;
                        } else if (keyEvent.getAction() == 1 && this.wasEmpty && !DialogsActivity.this.customForwardSpans.isEmpty()) {
                            GroupCreateSpan groupCreateSpan = (GroupCreateSpan) DialogsActivity.this.customForwardSpans.get(DialogsActivity.this.customForwardSpans.size() - 1);
                            DialogsActivity.this.addOrRemoveSelectedDialog(groupCreateSpan.getDialogId(), null);
                            DialogsActivity.this.findAndUpdateCheckBox(groupCreateSpan.getDialogId(), false);
                            DialogsActivity.this.updateSelectedCount();
                            return true;
                        }
                    }
                    return false;
                }
            });
            this.customForwardEditText.addTextChangedListener(new SimpleTextWatcher() { // from class: org.telegram.ui.DialogsActivity.17
                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i24, int i25, int i26) {
                    String obj = DialogsActivity.this.customForwardEditText.getText().toString();
                    if (obj.isEmpty()) {
                        DialogsActivity.this.searchWas = false;
                        DialogsActivity.this.searching = false;
                        if (DialogsActivity.this.viewPages[0] != null) {
                            DialogsActivity.this.viewPages[0].listView.setEmptyView(DialogsActivity.this.viewPages[0].progressView);
                            DialogsActivity.this.showSearch(false, false, true);
                            return;
                        }
                        return;
                    }
                    DialogsActivity.this.searchWas = true;
                    DialogsActivity.this.searching = true;
                    if (DialogsActivity.this.viewPages[0].listView.getVisibility() == 0) {
                        DialogsActivity.this.showSearch(true, false, true);
                    }
                    DialogsActivity.this.searchViewPager.onTextChanged(obj);
                }
            });
        }
        int i24 = (needForceActivateTabs() || (this.folderId == 0 && this.initialDialogsType == 0 && !this.onlySelect)) ? 2 : 1;
        this.viewPages = new ViewPage[i24];
        int i25 = 0;
        while (i25 < i24) {
            final ViewPage viewPage = new ViewPage(context3) { // from class: org.telegram.ui.DialogsActivity.18
                @Override // android.view.View
                public void setTranslationX(float f) {
                    if (getTranslationX() != f) {
                        super.setTranslationX(f);
                        if (DialogsActivity.this.tabsAnimationInProgress && DialogsActivity.this.viewPages[0] == this) {
                            DialogsActivity.this.filterTabsView.selectTabWithId(DialogsActivity.this.viewPages[1].selectedType, Math.abs(DialogsActivity.this.viewPages[0].getTranslationX()) / DialogsActivity.this.viewPages[0].getMeasuredWidth());
                        }
                        contentView.invalidateBlur();
                    }
                }
            };
            contentView.addView(viewPage, LayoutHelper.createFrame(i23, i23));
            viewPage.dialogsType = this.initialDialogsType;
            this.viewPages[i25] = viewPage;
            viewPage.progressView = new FlickerLoadingView(context3);
            viewPage.progressView.setViewType(7);
            viewPage.progressView.setVisibility(i4);
            viewPage.addView(viewPage.progressView, LayoutHelper.createFrame(i22, i22, i21));
            viewPage.listView = new DialogsRecyclerView(context3, viewPage);
            viewPage.listView.setAllowStopHeaveOperations(r6);
            viewPage.listView.setAccessibilityEnabled(r13);
            viewPage.listView.setAnimateEmptyView(r6, r13);
            viewPage.listView.setClipToPadding(r13);
            viewPage.listView.setPivotY(BitmapDescriptorFactory.HUE_RED);
            if (this.initialDialogsType == 15) {
                viewPage.listView.setBackgroundColor(getThemedColor("windowBackgroundGray"));
            }
            viewPage.dialogsItemAnimator = new DialogsItemAnimator(this, viewPage.listView) { // from class: org.telegram.ui.DialogsActivity.19
                @Override // androidx.recyclerview.widget.SimpleItemAnimator
                public void onRemoveStarting(RecyclerView.ViewHolder viewHolder) {
                    super.onRemoveStarting(viewHolder);
                    if (viewPage.layoutManager.findFirstVisibleItemPosition() == 0) {
                        View findViewByPosition = viewPage.layoutManager.findViewByPosition(0);
                        if (findViewByPosition != null) {
                            findViewByPosition.invalidate();
                        }
                        if (viewPage.archivePullViewState == 2) {
                            viewPage.archivePullViewState = 1;
                        }
                        if (viewPage.pullForegroundDrawable != null) {
                            viewPage.pullForegroundDrawable.doNotShow();
                        }
                    }
                }
            };
            viewPage.listView.setVerticalScrollBarEnabled(r6);
            viewPage.listView.setInstantClick(r6);
            viewPage.layoutManager = new C536220(context3, viewPage);
            viewPage.layoutManager.setOrientation(r6);
            viewPage.listView.setLayoutManager(viewPage.layoutManager);
            viewPage.listView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
            viewPage.addView(viewPage.listView, LayoutHelper.createFrame(-1, -1));
            viewPage.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda141
                @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i26) {
                    DialogsActivity.this.lambda$createView$39(viewPage, view, i26);
                }
            });
            viewPage.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListenerExtended() { // from class: org.telegram.ui.DialogsActivity.22
                @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListenerExtended
                public boolean onItemClick(View view, int i26, float f, float f2) {
                    if (viewPage.dialogsType == DialogsActivity.DIALOGS_TYPE_ALBUMS) {
                        return false;
                    }
                    if (DialogsActivity.this.topicsBar == null || !DialogsActivity.this.topicsBar.isEditing()) {
                        if (DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0 && DialogsActivity.this.filterTabsView.isEditing()) {
                            return false;
                        }
                        if (((BaseFragment) DialogsActivity.this).inPreviewMode) {
                            DialogsActivity.this.onItemClick(view, i26, viewPage.dialogsAdapter);
                            return true;
                        }
                        return DialogsActivity.this.onItemLongClick(viewPage.listView, view, i26, f, f2, viewPage.dialogsType, viewPage.dialogsAdapter);
                    }
                    return false;
                }

                @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListenerExtended
                public void onMove(float f, float f2) {
                    Point point = AndroidUtilities.displaySize;
                    if (point.x > point.y) {
                        DialogsActivity.this.movePreviewFragment(f2);
                    }
                }

                @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListenerExtended
                public void onLongClickRelease() {
                    Point point = AndroidUtilities.displaySize;
                    if (point.x > point.y) {
                        DialogsActivity.this.finishPreviewFragment();
                    }
                }
            });
            viewPage.swipeController = new SwipeController(viewPage);
            viewPage.recyclerItemsEnterAnimator = new RecyclerItemsEnterAnimator(viewPage.listView, r13);
            viewPage.itemTouchhelper = new ItemTouchHelper(viewPage.swipeController);
            viewPage.itemTouchhelper.attachToRecyclerView(viewPage.listView);
            viewPage.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.DialogsActivity.23
                private boolean wasManualScroll;

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView2, int i26) {
                    if (i26 != 1) {
                        DialogsActivity.this.scrollingManually = false;
                    } else {
                        this.wasManualScroll = true;
                        DialogsActivity.this.scrollingManually = true;
                    }
                    if (i26 == 0) {
                        this.wasManualScroll = false;
                        DialogsActivity.this.disableActionBarScrolling = false;
                        if (DialogsActivity.this.waitingForScrollFinished) {
                            DialogsActivity.this.waitingForScrollFinished = false;
                            if (DialogsActivity.this.updatePullAfterScroll) {
                                viewPage.listView.updatePullState();
                                DialogsActivity.this.updatePullAfterScroll = false;
                            }
                            viewPage.dialogsAdapter.notifyDataSetChanged();
                        }
                        if ((!SharedConfig.isFilterTabsAtBottomEnabled || DialogsActivity.this.isCustomForward() || DialogsActivity.this.isManagement()) && DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0 && DialogsActivity.this.viewPages[0].listView == recyclerView2) {
                            int i27 = (int) (-((BaseFragment) DialogsActivity.this).actionBar.getTranslationY());
                            int currentActionBarHeight = C3222ActionBar.getCurrentActionBarHeight();
                            if (i27 - 1 == 0 || i27 == currentActionBarHeight - 1) {
                                return;
                            }
                            if (i27 < currentActionBarHeight / 2) {
                                if (DialogsActivity.this.viewPages[0].listView.canScrollVertically(-1)) {
                                    recyclerView2.smoothScrollBy(0, -i27);
                                }
                            } else if (DialogsActivity.this.viewPages[0].listView.canScrollVertically(1)) {
                                recyclerView2.smoothScrollBy(0, currentActionBarHeight - i27);
                            }
                        }
                    }
                }

                /* JADX WARN: Code restructure failed: missing block: B:89:0x0198, code lost:
                    if (r8 < com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L81;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:96:0x01ae, code lost:
                    if (r8 > com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L81;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:97:0x01b0, code lost:
                    r8 = com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED;
                 */
                /* JADX WARN: Removed duplicated region for block: B:100:0x01b5  */
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onScrolled(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
                    /*
                        Method dump skipped, instructions count: 492
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.C536523.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
                }
            });
            viewPage.archivePullViewState = SharedConfig.archiveHidden ? 2 : 0;
            if (viewPage.pullForegroundDrawable == null && this.folderId == 0) {
                viewPage.pullForegroundDrawable = new PullForegroundDrawable(this, LocaleController.getString("AccSwipeForArchive", C3158R.string.AccSwipeForArchive), LocaleController.getString("AccReleaseForArchive", C3158R.string.AccReleaseForArchive)) { // from class: org.telegram.ui.DialogsActivity.24
                    @Override // org.telegram.p048ui.Components.PullForegroundDrawable
                    protected float getViewOffset() {
                        return viewPage.listView.getViewOffset();
                    }
                };
                if (hasHiddenArchive()) {
                    viewPage.pullForegroundDrawable.showHidden();
                } else {
                    viewPage.pullForegroundDrawable.doNotShow();
                }
                viewPage.pullForegroundDrawable.setWillDraw(viewPage.archivePullViewState != 0);
            }
            String str3 = str;
            String str4 = str2;
            ContentView contentView2 = contentView;
            ActionBarMenu actionBarMenu = createMenu;
            int i26 = i25;
            int i27 = i24;
            viewPage.dialogsAdapter = new DialogsAdapter(this, context, viewPage.dialogsType, this.folderId, this.onlySelect, this.selectedDialogs, this.currentAccount, this.requestPeerType) { // from class: org.telegram.ui.DialogsActivity.25
                @Override // org.telegram.p048ui.Adapters.DialogsAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyDataSetChanged() {
                    viewPage.lastItemsCount = getItemCount();
                    try {
                        super.notifyDataSetChanged();
                    } catch (Exception e) {
                        FileLog.m45e(e);
                    }
                    if (DialogsActivity.this.initialDialogsType == 15) {
                        DialogsActivity.this.searchItem.setVisibility(this.isEmpty ? 8 : 0);
                    }
                    if (DialogsActivity.this.isManagement()) {
                        DialogsActivity.this.updateCounters(false);
                    }
                }

                @Override // org.telegram.p048ui.Adapters.DialogsAdapter, org.telegram.p048ui.Cells.DialogCell.DialogCellDelegate
                public void onButtonClicked(DialogCell dialogCell) {
                    TLRPC$TL_forumTopic findTopic;
                    if (dialogCell.getMessage() == null || (findTopic = DialogsActivity.this.getMessagesController().getTopicsController().findTopic(-dialogCell.getDialogId(), MessageObject.getTopicId(dialogCell.getMessage().messageOwner, true))) == null) {
                        return;
                    }
                    if (DialogsActivity.this.onlySelect) {
                        DialogsActivity.this.didSelectResult(dialogCell.getDialogId(), findTopic.f1547id, false, false);
                    } else {
                        ForumUtilities.openTopic(DialogsActivity.this, -dialogCell.getDialogId(), findTopic, 0);
                    }
                }

                @Override // org.telegram.p048ui.Adapters.DialogsAdapter, org.telegram.p048ui.Cells.DialogCell.DialogCellDelegate
                public void onButtonLongPress(DialogCell dialogCell) {
                    DialogsActivity.this.onItemLongClick(viewPage.listView, dialogCell, viewPage.listView.getChildAdapterPosition(dialogCell), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, viewPage.dialogsType, viewPage.dialogsAdapter);
                }

                @Override // org.telegram.p048ui.Adapters.DialogsAdapter
                public void onCreateGroupForThisClick() {
                    DialogsActivity.this.createGroupForThis();
                }
            };
            viewPage.dialogsAdapter.setRecyclerListView(viewPage.listView);
            viewPage.dialogsAdapter.setInitialDialogsType(this.initialDialogsType);
            viewPage.dialogsAdapter.setForceShowEmptyCell(this.afterSignup);
            if (AndroidUtilities.isTablet() && this.openedDialogId.dialogId != 0) {
                viewPage.dialogsAdapter.setOpenedDialogId(this.openedDialogId.dialogId);
            }
            viewPage.dialogsAdapter.setArchivedPullDrawable(viewPage.pullForegroundDrawable);
            viewPage.listView.setAdapter(viewPage.dialogsAdapter);
            viewPage.listView.setEmptyView(this.folderId == 0 ? viewPage.progressView : null);
            viewPage.scrollHelper = new RecyclerAnimationScrollHelper(viewPage.listView, viewPage.layoutManager);
            if (i26 != 0) {
                this.viewPages[i26].setVisibility(8);
            }
            i25 = i26 + 1;
            context3 = context;
            contentView = contentView2;
            i24 = i27;
            str = str3;
            str2 = str4;
            createMenu = actionBarMenu;
            i23 = -1;
            i22 = -2;
            i21 = 17;
            r6 = 1;
            i4 = 8;
            r13 = 0;
        }
        String str5 = str2;
        String str6 = str;
        ActionBarMenu actionBarMenu2 = createMenu;
        final ContentView contentView3 = contentView;
        if (this.searchString != null) {
            i = 2;
        } else {
            i = !this.onlySelect ? 1 : 0;
        }
        SearchViewPager searchViewPager = new SearchViewPager(context, this, i, this.initialDialogsType, this.folderId, new SearchViewPager.ChatPreviewDelegate() { // from class: org.telegram.ui.DialogsActivity.26
            @Override // org.telegram.p048ui.Components.SearchViewPager.ChatPreviewDelegate
            public void startChatPreview(RecyclerListView recyclerListView, DialogCell dialogCell) {
                DialogsActivity.this.showChatPreview(dialogCell);
            }

            @Override // org.telegram.p048ui.Components.SearchViewPager.ChatPreviewDelegate
            public void move(float f) {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    DialogsActivity.this.movePreviewFragment(f);
                }
            }

            @Override // org.telegram.p048ui.Components.SearchViewPager.ChatPreviewDelegate
            public void finish() {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    DialogsActivity.this.finishPreviewFragment();
                }
            }
        }) { // from class: org.telegram.ui.DialogsActivity.27
            @Override // org.telegram.p048ui.Components.ViewPagerFixed
            protected boolean onBackProgress(float f) {
                return false;
            }

            @Override // org.telegram.p048ui.Components.ViewPagerFixed
            protected void onTabPageSelected(int i28) {
                DialogsActivity.this.updateSpeedItem(i28 == 2);
            }

            @Override // org.telegram.p048ui.Components.SearchViewPager
            protected boolean includeDownloads() {
                RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
                return rightSlidingDialogContainer == null || !rightSlidingDialogContainer.hasFragment();
            }
        };
        this.searchViewPager = searchViewPager;
        contentView3.addView(searchViewPager);
        this.searchViewPager.dialogsSearchAdapter.setDelegate(new C537028());
        this.searchViewPager.searchListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda140
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i28) {
                DialogsActivity.this.lambda$createView$40(view, i28);
            }
        });
        this.searchViewPager.searchListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListenerExtended() { // from class: org.telegram.ui.DialogsActivity.29
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public boolean onItemClick(View view, int i28, float f, float f2) {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                return dialogsActivity.onItemLongClick(dialogsActivity.searchViewPager.searchListView, view, i28, f, f2, -1, DialogsActivity.this.searchViewPager.dialogsSearchAdapter);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public void onMove(float f, float f2) {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    DialogsActivity.this.movePreviewFragment(f2);
                }
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public void onLongClickRelease() {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    DialogsActivity.this.finishPreviewFragment();
                }
            }
        });
        this.searchViewPager.setFilteredSearchViewDelegate(new FilteredSearchView.Delegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda143
            @Override // org.telegram.p048ui.FilteredSearchView.Delegate
            public final void updateFiltersView(boolean z, ArrayList arrayList, ArrayList arrayList2, boolean z2) {
                DialogsActivity.this.lambda$createView$41(z, arrayList, arrayList2, z2);
            }
        });
        this.searchViewPager.setVisibility(8);
        FiltersView filtersView = new FiltersView(getParentActivity(), null);
        this.filtersView = filtersView;
        filtersView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda139
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i28) {
                DialogsActivity.this.lambda$createView$42(view, i28);
            }
        });
        contentView3.addView(this.filtersView, LayoutHelper.createFrame(-1, -2, 48));
        this.filtersView.setVisibility(8);
        if (isMainNoFolderDialogList()) {
            context2 = context;
            this.floatingButtonContainer = new FrameLayout(context2) { // from class: org.telegram.ui.DialogsActivity.30
                @Override // android.view.View
                public void setTranslationY(float f) {
                    super.setTranslationY(f);
                    if (DialogsActivity.this.miniFabsContainer != null) {
                        DialogsActivity.this.miniFabsContainer.setTranslationY(f);
                    }
                }
            };
        } else {
            context2 = context;
            this.floatingButtonContainer = new FrameLayout(context2);
        }
        if (this.albumsMode || isArchive()) {
            this.floatingButtonContainer.setVisibility(0);
        } else {
            this.floatingButtonContainer.setVisibility(((!this.onlySelect || this.initialDialogsType == 10) && this.folderId == 0) ? 0 : 8);
        }
        FrameLayout frameLayout = this.floatingButtonContainer;
        int i28 = Build.VERSION.SDK_INT;
        int i29 = i28 >= 21 ? 56 : 60;
        int i30 = i28 >= 21 ? 56 : 60;
        boolean z = LocaleController.isRTL;
        contentView3.addView(frameLayout, LayoutHelper.createFrame(i29, i30, (z ? 3 : 5) | 80, z ? 14 : 0, 0, z ? 0 : 14, 14));
        if (isMainNoFolderDialogList()) {
            this.floatingButtonContainer.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda50
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean lambda$createView$44;
                    lambda$createView$44 = DialogsActivity.this.lambda$createView$44(view);
                    return lambda$createView$44;
                }
            });
        }
        this.floatingButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda36
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$createView$45(view);
            }
        });
        RLottieImageView rLottieImageView = new RLottieImageView(context2);
        this.floatingButton = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.floatingButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_actionIcon"), PorterDuff.Mode.MULTIPLY));
        if (this.albumsMode) {
            this.floatingButton.setImageResource(C3158R.C3160drawable.fork_plus);
        } else if (this.initialDialogsType == 10) {
            this.floatingButton.setImageResource(C3158R.C3160drawable.floating_check);
            this.floatingButtonContainer.setContentDescription(LocaleController.getString("Done", C3158R.string.Done));
        } else {
            this.floatingButton.setAnimation(C3158R.C3164raw.write_contacts_fab_icon, 52, 52);
            this.floatingButtonContainer.setContentDescription(LocaleController.getString("NewMessageTitle", C3158R.string.NewMessageTitle));
        }
        if (i28 >= 21) {
            StateListAnimator stateListAnimator = new StateListAnimator();
            FrameLayout frameLayout2 = this.floatingButtonContainer;
            Property property = View.TRANSLATION_Z;
            i3 = 2;
            i2 = i28;
            stateListAnimator.addState(new int[]{16842919}, ObjectAnimator.ofFloat(frameLayout2, property, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(4)).setDuration(200L));
            stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(this.floatingButtonContainer, property, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(2)).setDuration(200L));
            this.floatingButtonContainer.setStateListAnimator(stateListAnimator);
            this.floatingButtonContainer.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.DialogsActivity.31
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setOval(0, 0, AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
                }
            });
        } else {
            i2 = i28;
            i3 = 2;
        }
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m50dp(56), Theme.getColor("chats_actionBackground"), Theme.getColor("chats_actionPressedBackground"));
        if (i2 < 21) {
            Drawable mutate = context.getResources().getDrawable(C3158R.C3160drawable.floating_shadow).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable2 = new CombinedDrawable(mutate, createSimpleSelectorCircleDrawable, 0, 0);
            combinedDrawable2.setIconSize(AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
            combinedDrawable = combinedDrawable2;
        } else {
            combinedDrawable = createSimpleSelectorCircleDrawable;
        }
        updateFloatingButtonColor();
        this.floatingButtonContainer.addView(this.floatingButton, LayoutHelper.createFrame(-1, -1));
        RadialProgressView radialProgressView = new RadialProgressView(context2);
        this.floatingProgressView = radialProgressView;
        radialProgressView.setProgressColor(Theme.getColor("chats_actionIcon"));
        this.floatingProgressView.setScaleX(0.1f);
        this.floatingProgressView.setScaleY(0.1f);
        this.floatingProgressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.floatingProgressView.setVisibility(8);
        this.floatingProgressView.setSize(AndroidUtilities.m50dp(22));
        this.floatingButtonContainer.addView(this.floatingProgressView, LayoutHelper.createFrame(-1, -1));
        if (isMainNoFolderDialogList()) {
            this.miniFabsContainer = new MiniFabsContainer(context2, new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda105
                @Override // org.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DialogsActivity.this.lambda$createView$46((FilterFab) obj);
                }
            });
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.floatingButtonContainer.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, layoutParams.gravity);
            layoutParams2.rightMargin = layoutParams.rightMargin + (AndroidUtilities.m50dp(13) / i3);
            layoutParams2.bottomMargin = layoutParams.height + layoutParams.bottomMargin;
            contentView3.addView(this.miniFabsContainer, layoutParams2);
        }
        this.searchTabsView = null;
        if (!this.onlySelect && this.initialDialogsType == 0) {
            FragmentContextView fragmentContextView = new FragmentContextView(context2, this, true);
            this.fragmentLocationContextView = fragmentContextView;
            fragmentContextView.setLayoutParams(LayoutHelper.createFrame(-1, 38, 51, 0, -36, 0, 0));
            contentView3.addView(this.fragmentLocationContextView);
            FragmentContextView fragmentContextView2 = new FragmentContextView(context2, this, false);
            this.fragmentContextView = fragmentContextView2;
            fragmentContextView2.setLayoutParams(LayoutHelper.createFrame(-1, 38, 51, 0, -36, 0, 0));
            contentView3.addView(this.fragmentContextView);
            this.fragmentContextView.setAdditionalContextView(this.fragmentLocationContextView);
            this.fragmentLocationContextView.setAdditionalContextView(this.fragmentContextView);
            this.dialogsHintCell = new DialogsHintCell(context2);
            updateDialogsHint();
            CacheControlActivity.calculateTotalSize(new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda124
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.this.lambda$createView$47((Long) obj);
                }
            });
            CacheControlActivity.getDeviceTotalSize(new Utilities.Callback2() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda122
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    DialogsActivity.this.lambda$createView$48((Long) obj, (Long) obj2);
                }
            });
            contentView3.addView(this.dialogsHintCell);
            if (isMainDialogList()) {
                RecentChatsBar recentChatsBar = new RecentChatsBar(context2, this.currentAccount, new C537532());
                this.recentChatsBar = recentChatsBar;
                contentView3.addView(recentChatsBar, LayoutHelper.createFrame(-1, 60));
                updateHistoryDialogs();
                this.topicsBarVisible = false;
                TopicsBar topicsBar = new TopicsBar(context2);
                this.topicsBar = topicsBar;
                topicsBar.setDelegate(new C537633());
                this.topicsBar.setBackgroundColor(Theme.getColor(str5));
                contentView3.addView(this.topicsBar, LayoutHelper.createFrame(-1, 36, 51, 0, -36, 0, 0));
                updateTopicsBar();
            }
        } else if (this.initialDialogsType == 3) {
            ChatActivityEnterView chatActivityEnterView = this.commentView;
            if (chatActivityEnterView != null) {
                chatActivityEnterView.onDestroy();
            }
            this.commentView = new ChatActivityEnterView(getParentActivity(), contentView3, null, false) { // from class: org.telegram.ui.DialogsActivity.34
                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        AndroidUtilities.requestAdjustResize(DialogsActivity.this.getParentActivity(), ((BaseFragment) DialogsActivity.this).classGuid);
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }

                @Override // android.view.View
                public void setTranslationY(float f) {
                    super.setTranslationY(f);
                }
            };
            contentView3.setClipChildren(false);
            contentView3.setClipToPadding(false);
            ChatActivityEnterView chatActivityEnterView2 = this.commentView;
            chatActivityEnterView2.allowBlur = false;
            chatActivityEnterView2.forceSmoothKeyboard(true);
            this.commentView.setAllowStickersAndGifs(true, false, false, false);
            this.commentView.setForceShowSendButton(true, false);
            this.commentView.setPadding(0, 0, AndroidUtilities.m50dp(20), 0);
            this.commentView.setVisibility(8);
            this.commentView.getSendButton().setAlpha(BitmapDescriptorFactory.HUE_RED);
            View view = new View(getParentActivity());
            this.commentViewBg = view;
            view.setBackgroundColor(getThemedColor("chat_messagePanelBackground"));
            contentView3.addView(this.commentViewBg, LayoutHelper.createFrame(-1, 1600, 87, 0, 0, 0, -1600));
            contentView3.addView(this.commentView, LayoutHelper.createFrame(-1, -2, 83));
            this.commentView.setDelegate(new ChatActivityEnterView.ChatActivityEnterViewDelegate() { // from class: org.telegram.ui.DialogsActivity.35
                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void bottomPanelTranslationYChanged(float f) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void didPressAttachButton() {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void didPressedSmartBotsButton() {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$didPressedSmartBotsButton(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ int getContentViewHeight() {
                    return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$getContentViewHeight(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ TLRPC$TL_channels_sendAsPeers getSendAsPeers() {
                    return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$getSendAsPeers(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ boolean hasForwardingMessages() {
                    return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$hasForwardingMessages(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ boolean hasScheduledMessages() {
                    return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$hasScheduledMessages(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ int measureKeyboardHeight() {
                    return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$measureKeyboardHeight(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void needChangeVideoPreviewState(int i31, float f) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void needSendTyping() {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void needShowMediaBanHint() {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void needStartRecordAudio(int i31) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void needStartRecordVideo(int i31, boolean z2, int i32) {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$needStartRecordVideo(this, i31, z2, i32);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void needStartRecordVideo(int i31, boolean z2, int i32, boolean z3) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onAttachButtonHidden() {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onAttachButtonShow() {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onAudioVideoInterfaceUpdated() {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void onContextMenuClose() {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onContextMenuClose(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void onContextMenuOpen() {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onContextMenuOpen(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void onEditTextScroll() {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onEditTextScroll(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onMessageEditEnd(boolean z2) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onPreAudioVideoRecord() {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onSendLongClick() {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onStickersExpandedChange() {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onStickersTab(boolean z2) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onSwitchRecordMode(boolean z2) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onTextChanged(CharSequence charSequence, boolean z2) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onTextSelectionChanged(int i31, int i32) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onTextSpansChanged(CharSequence charSequence) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void onTopViewFullyShown() {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onTopViewFullyShown(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void onTrendingStickersShowed(boolean z2) {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onTrendingStickersShowed(this, z2);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onUpdateSlowModeButton(View view2, boolean z2, CharSequence charSequence) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onWindowSizeChanged(int i31) {
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void openReaction() {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$openReaction(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void openScheduledMessages() {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$openScheduledMessages(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void prepareMessageSending() {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$prepareMessageSending(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void scrollToSendingMessage() {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$scrollToSendingMessage(this);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void sendEditedSticker(SendMessagesHelper.SendingMediaInfo sendingMediaInfo, boolean z2, int i31, String str7) {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$sendEditedSticker(this, sendingMediaInfo, z2, i31, str7);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void sendGif(int i31, long j, String str7) {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$sendGif(this, i31, j, str7);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public /* synthetic */ void showGifsViewer(PhotoViewer.PhotoViewerProvider photoViewerProvider, ArrayList arrayList, int i31) {
                    ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$showGifsViewer(this, photoViewerProvider, arrayList, i31);
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public boolean isCustomForward() {
                    return DialogsActivity.this.isCustomForward();
                }

                @Override // org.telegram.p048ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
                public void onMessageSend(CharSequence charSequence, boolean z2, int i31, String str7) {
                    if (DialogsActivity.this.delegate == null || DialogsActivity.this.selectedDialogs.isEmpty()) {
                        return;
                    }
                    ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                    for (int i32 = 0; i32 < DialogsActivity.this.selectedDialogs.size(); i32++) {
                        arrayList.add(MessagesStorage.TopicKey.m42of(((Long) DialogsActivity.this.selectedDialogs.get(i32)).longValue(), 0));
                    }
                    DialogsActivity.this.delegate.didSelectDialogs(DialogsActivity.this, arrayList, charSequence, false, null);
                }
            });
            FrameLayout frameLayout3 = new FrameLayout(context2) { // from class: org.telegram.ui.DialogsActivity.36
                @Override // android.view.View
                public void setVisibility(int i31) {
                    super.setVisibility(i31);
                    if (DialogsActivity.this.showForwardingOptionsButton) {
                        DialogsActivity.this.forwardingOptionsButton.setVisibility(i31);
                    }
                }

                @Override // android.view.View
                public void setScaleX(float f) {
                    super.setScaleX(f);
                    if (DialogsActivity.this.showForwardingOptionsButton) {
                        DialogsActivity.this.forwardingOptionsButton.setScaleX(f);
                    }
                }

                @Override // android.view.View
                public void setScaleY(float f) {
                    super.setScaleY(f);
                    if (DialogsActivity.this.showForwardingOptionsButton) {
                        DialogsActivity.this.forwardingOptionsButton.setScaleY(f);
                    }
                }

                @Override // android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    if (DialogsActivity.this.showForwardingOptionsButton) {
                        DialogsActivity.this.forwardingOptionsButton.setAlpha(f);
                    }
                }

                @Override // android.view.View
                public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                    accessibilityNodeInfo.setText(LocaleController.formatPluralString("AccDescrShareInChats", DialogsActivity.this.selectedDialogs.size(), new Object[0]));
                    accessibilityNodeInfo.setClassName(Button.class.getName());
                    accessibilityNodeInfo.setLongClickable(true);
                    accessibilityNodeInfo.setClickable(true);
                }
            };
            this.writeButtonContainer = frameLayout3;
            frameLayout3.setFocusable(true);
            this.writeButtonContainer.setFocusableInTouchMode(true);
            this.writeButtonContainer.setVisibility(4);
            this.writeButtonContainer.setScaleX(0.2f);
            this.writeButtonContainer.setScaleY(0.2f);
            this.writeButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
            contentView3.addView(this.writeButtonContainer, LayoutHelper.createFrame(60, 60, 85, 0, 0, 6, 10));
            this.textPaint.setTextSize(AndroidUtilities.m50dp(12));
            this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            View view2 = new View(context2) { // from class: org.telegram.ui.DialogsActivity.37
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    String format = String.format("%d", Integer.valueOf(Math.max(1, DialogsActivity.this.selectedDialogs.size())));
                    int ceil = (int) Math.ceil(DialogsActivity.this.textPaint.measureText(format));
                    int max = Math.max(AndroidUtilities.m50dp(16) + ceil, AndroidUtilities.m50dp(24));
                    int measuredWidth = getMeasuredWidth() / 2;
                    int measuredHeight = getMeasuredHeight() / 2;
                    DialogsActivity.this.textPaint.setColor(DialogsActivity.this.getThemedColor("dialogRoundCheckBoxCheck"));
                    DialogsActivity.this.paint.setColor(DialogsActivity.this.getThemedColor(Theme.isCurrentThemeDark() ? "voipgroup_inviteMembersBackground" : "dialogBackground"));
                    int i31 = max / 2;
                    int i32 = measuredWidth - i31;
                    int i33 = i31 + measuredWidth;
                    DialogsActivity.this.rect.set(i32, BitmapDescriptorFactory.HUE_RED, i33, getMeasuredHeight());
                    canvas.drawRoundRect(DialogsActivity.this.rect, AndroidUtilities.m50dp(12), AndroidUtilities.m50dp(12), DialogsActivity.this.paint);
                    DialogsActivity.this.paint.setColor(DialogsActivity.this.getThemedColor("dialogRoundCheckBox"));
                    DialogsActivity.this.rect.set(i32 + AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), i33 - AndroidUtilities.m50dp(2), getMeasuredHeight() - AndroidUtilities.m50dp(2));
                    canvas.drawRoundRect(DialogsActivity.this.rect, AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(10), DialogsActivity.this.paint);
                    canvas.drawText(format, measuredWidth - (ceil / 2), AndroidUtilities.m51dp(16.2f), DialogsActivity.this.textPaint);
                }
            };
            this.selectedCountView = view2;
            view2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.selectedCountView.setScaleX(0.2f);
            this.selectedCountView.setScaleY(0.2f);
            contentView3.addView(this.selectedCountView, LayoutHelper.createFrame(42, 24, 85, 0, 0, -8, 9));
            final FrameLayout frameLayout4 = new FrameLayout(context2);
            Drawable createSimpleSelectorCircleDrawable2 = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m50dp(56), getThemedColor("dialogFloatingButton"), getThemedColor(i2 >= 21 ? "dialogFloatingButtonPressed" : "dialogFloatingButton"));
            if (i2 < 21) {
                Drawable mutate2 = context.getResources().getDrawable(C3158R.C3160drawable.floating_shadow_profile).mutate();
                mutate2.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
                CombinedDrawable combinedDrawable3 = new CombinedDrawable(mutate2, combinedDrawable, 0, 0);
                combinedDrawable3.setIconSize(AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
                createSimpleSelectorCircleDrawable2 = combinedDrawable3;
            }
            frameLayout4.setBackgroundDrawable(createSimpleSelectorCircleDrawable2);
            frameLayout4.setImportantForAccessibility(2);
            if (i2 >= 21) {
                frameLayout4.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.DialogsActivity.38
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view3, Outline outline) {
                        outline.setOval(0, 0, AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
                    }
                });
            }
            frameLayout4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda42
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    DialogsActivity.this.lambda$createView$49(view3);
                }
            });
            frameLayout4.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda55
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view3) {
                    boolean lambda$createView$50;
                    lambda$createView$50 = DialogsActivity.this.lambda$createView$50(frameLayout4, view3);
                    return lambda$createView$50;
                }
            });
            this.writeButton = new ImageView[2];
            int i31 = 0;
            for (int i32 = 2; i31 < i32; i32 = 2) {
                this.writeButton[i31] = new ImageView(context2);
                this.writeButton[i31].setImageResource(i31 == 1 ? C3158R.C3160drawable.msg_arrow_forward : C3158R.C3160drawable.attach_send);
                this.writeButton[i31].setColorFilter(new PorterDuffColorFilter(getThemedColor("dialogFloatingIcon"), PorterDuff.Mode.MULTIPLY));
                this.writeButton[i31].setScaleType(ImageView.ScaleType.CENTER);
                ImageView imageView = this.writeButton[i31];
                int i33 = Build.VERSION.SDK_INT;
                frameLayout4.addView(imageView, LayoutHelper.createFrame(i33 >= 21 ? 56 : 60, i33 >= 21 ? 56 : 60, 17));
                i31++;
            }
            AndroidUtilities.updateViewVisibilityAnimated(this.writeButton[0], true, 0.5f, false);
            AndroidUtilities.updateViewVisibilityAnimated(this.writeButton[1], false, 0.5f, false);
            FrameLayout frameLayout5 = this.writeButtonContainer;
            int i34 = Build.VERSION.SDK_INT;
            frameLayout5.addView(frameLayout4, LayoutHelper.createFrame(i34 >= 21 ? 56 : 60, i34 >= 21 ? 56 : 60, 51, i34 >= 21 ? 2 : 0, 0, 0, 0));
            if (isCustomForward()) {
                if (!this.customSharingMode) {
                    FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.writeButtonContainer.getLayoutParams();
                    int i35 = layoutParams3.width;
                    int i36 = ((FrameLayout.LayoutParams) frameLayout4.getLayoutParams()).width;
                    final int i37 = (int) (i36 * 0.75f);
                    int i38 = layoutParams3.bottomMargin + (i35 - i36) + ((i36 - i37) / 2);
                    ImageView imageView2 = new ImageView(context2);
                    this.forwardingOptionsButton = imageView2;
                    imageView2.setVisibility(4);
                    this.forwardingOptionsButton.setBackground(Theme.createSimpleSelectorCircleDrawable(i37, getThemedColor("dialogFloatingButton"), getThemedColor("dialogFloatingButtonPressed")));
                    this.forwardingOptionsButton.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.DialogsActivity.39
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view3, Outline outline) {
                            int i39 = i37;
                            outline.setOval(0, 0, i39, i39);
                        }
                    });
                    this.forwardingOptionsButton.setImageResource(C3158R.C3160drawable.fork_settings_filled);
                    this.forwardingOptionsButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogFloatingIcon"), PorterDuff.Mode.MULTIPLY));
                    this.forwardingOptionsButton.setScaleType(ImageView.ScaleType.CENTER);
                    this.forwardingOptionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda40
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            DialogsActivity.this.lambda$createView$51(view3);
                        }
                    });
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i37, i37, 85);
                    layoutParams4.setMargins(0, 0, (layoutParams3.rightMargin * 2) + i35, i38);
                    contentView3.addView(this.forwardingOptionsButton, layoutParams4);
                }
                if (!this.customSharingMode) {
                    getMessagesController().sortDialogs(null);
                    this.customForwardToInactiveAccount = this.currentAccount != UserConfig.selectedAccount;
                    this.searchViewPager.dialogsSearchAdapter.getSearchAdapterHelper().crossAccountsForward = this.customForwardToInactiveAccount;
                }
            }
        }
        updateFloatingButtonOffset();
        FilterTabsView filterTabsView = this.filterTabsView;
        if (filterTabsView != null) {
            contentView3.addView(filterTabsView, LayoutHelper.createFrame(-1, 44));
        }
        if (!this.onlySelect || isCustomForward() || isManagement()) {
            FrameLayout.LayoutParams createFrame = LayoutHelper.createFrame(-1, -2);
            if (this.inPreviewMode && Build.VERSION.SDK_INT >= 21) {
                createFrame.topMargin = AndroidUtilities.statusBarHeight;
            }
            contentView3.addView(this.actionBar, createFrame);
            DrawerProfileCell.AnimatedStatusView animatedStatusView = new DrawerProfileCell.AnimatedStatusView(context2, 20, 60);
            this.animatedStatusView = animatedStatusView;
            contentView3.addView(animatedStatusView, LayoutHelper.createFrame(20, 20, 51));
        }
        if (this.searchString == null && this.initialDialogsType == 0) {
            FrameLayout frameLayout6 = new FrameLayout(context2) { // from class: org.telegram.ui.DialogsActivity.40
                private int lastGradientWidth;
                private LinearGradient updateGradient;
                private Paint paint = new Paint();
                private Matrix matrix = new Matrix();

                @Override // android.view.View
                public void draw(Canvas canvas) {
                    if (this.updateGradient != null) {
                        this.paint.setColor(-1);
                        this.paint.setShader(this.updateGradient);
                        this.updateGradient.setLocalMatrix(this.matrix);
                        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.paint);
                        DialogsActivity.this.updateLayoutIcon.setBackgroundGradientDrawable(this.updateGradient);
                        DialogsActivity.this.updateLayoutIcon.draw(canvas);
                    }
                    super.draw(canvas);
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i39, int i40) {
                    super.onMeasure(i39, i40);
                    int size = View.MeasureSpec.getSize(i39);
                    if (this.lastGradientWidth != size) {
                        this.updateGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, size, (float) BitmapDescriptorFactory.HUE_RED, new int[]{-9846926, -11291731}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                        this.lastGradientWidth = size;
                    }
                    int measuredWidth = (getMeasuredWidth() - DialogsActivity.this.updateTextView.getMeasuredWidth()) / 2;
                    DialogsActivity.this.updateLayoutIcon.setProgressRect(measuredWidth, AndroidUtilities.m50dp(13), AndroidUtilities.m50dp(22) + measuredWidth, AndroidUtilities.m50dp(35));
                }

                @Override // android.view.View
                public void setTranslationY(float f) {
                    super.setTranslationY(f);
                    DialogsActivity.this.additionalFloatingTranslation2 = AndroidUtilities.m50dp(48) - f;
                    if (DialogsActivity.this.additionalFloatingTranslation2 < BitmapDescriptorFactory.HUE_RED) {
                        DialogsActivity.this.additionalFloatingTranslation2 = BitmapDescriptorFactory.HUE_RED;
                    }
                    if (DialogsActivity.this.floatingHidden) {
                        return;
                    }
                    DialogsActivity.this.updateFloatingButtonOffset();
                }
            };
            this.updateLayout = frameLayout6;
            frameLayout6.setWillNotDraw(false);
            this.updateLayout.setVisibility(4);
            this.updateLayout.setTranslationY(AndroidUtilities.m50dp(48));
            if (Build.VERSION.SDK_INT >= 21) {
                this.updateLayout.setBackground(Theme.getSelectorDrawable(1090519039, false));
            }
            contentView3.addView(this.updateLayout, LayoutHelper.createFrame(-1, 48, 83));
            this.updateLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda34
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    DialogsActivity.this.lambda$createView$52(view3);
                }
            });
            RadialProgress2 radialProgress2 = new RadialProgress2(this.updateLayout);
            this.updateLayoutIcon = radialProgress2;
            radialProgress2.setColors(-1, -1, -1, -1);
            this.updateLayoutIcon.setCircleRadius(AndroidUtilities.m50dp(11));
            this.updateLayoutIcon.setAsMini();
            this.updateLayoutIcon.setIcon(15, true, false);
            TextView textView = new TextView(context2);
            this.updateTextView = textView;
            textView.setTextSize(1, 15.0f);
            this.updateTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.updateTextView.setText(LocaleController.getString("AppUpdateNow", C3158R.string.AppUpdateNow).toUpperCase());
            this.updateTextView.setTextColor(-1);
            this.updateTextView.setPadding(AndroidUtilities.m50dp(30), 0, 0, 0);
            this.updateLayout.addView(this.updateTextView, LayoutHelper.createFrame(-2, -2, 17, 0, 0, 0, 0));
        }
        for (int i39 = 0; i39 < 2; i39++) {
            this.undoView[i39] = new C539041(context2);
            FilterTabsView filterTabsView2 = this.filterTabsView;
            if (filterTabsView2 != null || this.topicsBar != null) {
                UndoView undoView = this.undoView[i39];
                TopicsBar topicsBar2 = this.topicsBar;
                contentView3.addView(undoView, topicsBar2 != null ? contentView3.indexOfChild(topicsBar2) : contentView3.indexOfChild(filterTabsView2), LayoutHelper.createFrame(-1, -2, 83, 8, 0, 8, 8));
            } else {
                contentView3.addView(this.undoView[i39], LayoutHelper.createFrame(-1, -2, 83, 8, 0, 8, 8));
            }
        }
        if (this.folderId != 0) {
            this.viewPages[0].listView.setGlowColor(Theme.getColor("actionBarDefaultArchived"));
            this.actionBar.setTitleColor(Theme.getColor("actionBarDefaultArchivedTitle"));
            this.actionBar.setItemsColor(Theme.getColor("actionBarDefaultArchivedIcon"), false);
            this.actionBar.setItemsBackgroundColor(Theme.getColor("actionBarDefaultArchivedSelector"), false);
            this.actionBar.setSearchTextColor(Theme.getColor("actionBarDefaultArchivedSearch"), false);
            this.actionBar.setSearchTextColor(Theme.getColor("actionBarDefaultSearchArchivedPlaceholder"), true);
        }
        if ((!this.onlySelect && this.initialDialogsType == 0) || isCustomForward()) {
            View view3 = new View(context2) { // from class: org.telegram.ui.DialogsActivity.42
                @Override // android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                        ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                    }
                }
            };
            this.blurredView = view3;
            if (Build.VERSION.SDK_INT >= 23) {
                view3.setForeground(new ColorDrawable(ColorUtils.setAlphaComponent(getThemedColor(str5), 100)));
            }
            this.blurredView.setFocusable(false);
            this.blurredView.setImportantForAccessibility(2);
            this.blurredView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda30
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    DialogsActivity.this.lambda$createView$53(view4);
                }
            });
            this.blurredView.setVisibility(8);
            this.blurredView.setFitsSystemWindows(true);
            contentView3.addView(this.blurredView, LayoutHelper.createFrame(-1, -1));
        }
        this.actionBarDefaultPaint.setColor(Theme.getColor(this.folderId == 0 ? str6 : "actionBarDefaultArchived"));
        if (this.inPreviewMode) {
            TLRPC$User currentUser2 = getUserConfig().getCurrentUser();
            ChatAvatarContainer chatAvatarContainer = new ChatAvatarContainer(this.actionBar.getContext(), null, false);
            this.avatarContainer = chatAvatarContainer;
            chatAvatarContainer.setTitle(UserObject.getUserName(currentUser2));
            this.avatarContainer.setSubtitle(LocaleController.formatUserStatus(this.currentAccount, currentUser2));
            this.avatarContainer.setUserAvatar(currentUser2, true);
            this.avatarContainer.setOccupyStatusBar(false);
            this.avatarContainer.setLeftPadding(AndroidUtilities.m50dp(10));
            this.actionBar.addView(this.avatarContainer, 0, LayoutHelper.createFrame(-2, -1, 51, 0, 0, 40, 0));
            this.floatingButtonContainer.setVisibility(4);
            actionBarMenu2.setVisibility(4);
            this.actionBar.setOccupyStatusBar(false);
            this.actionBar.setBackgroundColor(Theme.getColor(str6));
            FragmentContextView fragmentContextView3 = this.fragmentContextView;
            if (fragmentContextView3 != null) {
                contentView3.removeView(fragmentContextView3);
            }
            FragmentContextView fragmentContextView4 = this.fragmentLocationContextView;
            if (fragmentContextView4 != null) {
                contentView3.removeView(fragmentContextView4);
            }
        }
        this.searchIsShowed = false;
        updateFilterTabs(true, false);
        if (this.searchString != null) {
            showSearch(true, false, false);
            this.actionBar.openSearchField(this.searchString, false);
        } else if (this.initialSearchString != null) {
            showSearch(true, false, false);
            this.actionBar.openSearchField(this.initialSearchString, false);
            this.initialSearchString = null;
            FilterTabsView filterTabsView3 = this.filterTabsView;
            if (filterTabsView3 != null) {
                filterTabsView3.setTranslationY(-AndroidUtilities.m50dp(44));
            }
        } else {
            showSearch(false, false, false);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            FilesMigrationService.checkBottomSheet(this);
        }
        updateMenuButton(false);
        this.actionBar.setDrawBlurBackground(contentView3);
        RightSlidingDialogContainer rightSlidingDialogContainer = new RightSlidingDialogContainer(context, this) { // from class: org.telegram.ui.DialogsActivity.43
            boolean anotherFragmentOpened;
            float fromScrollYProperty;
            ViewPage transitionPage;

            @Override // org.telegram.p048ui.RightSlidingDialogContainer
            boolean getOccupyStatusbar() {
                return ((BaseFragment) DialogsActivity.this).actionBar != null && ((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar();
            }

            @Override // org.telegram.p048ui.RightSlidingDialogContainer
            public void openAnimationStarted(boolean z2) {
                if (z2) {
                    DialogsActivity.this.updateSwitchItemVisibility(true);
                }
                if (!DialogsActivity.this.isArchive()) {
                    ((BaseFragment) DialogsActivity.this).actionBar.setBackButtonDrawable(DialogsActivity.this.menuDrawable = new MenuDrawable());
                    DialogsActivity.this.menuDrawable.setRoundCap();
                }
                DialogsActivity.this.rightFragmentTransitionInProgress = true;
                contentView3.requestLayout();
                this.fromScrollYProperty = ((BaseFragment) DialogsActivity.this).actionBar.getTranslationY();
                if (DialogsActivity.this.canShowFilterTabsView && DialogsActivity.this.filterTabsView != null) {
                    DialogsActivity.this.filterTabsView.setVisibility(0);
                }
                ViewPage viewPage2 = DialogsActivity.this.viewPages[0];
                this.transitionPage = viewPage2;
                if (viewPage2.animationSupportListView == null) {
                    this.transitionPage.animationSupportListView = new BlurredRecyclerView(this, context) { // from class: org.telegram.ui.DialogsActivity.43.1
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // org.telegram.p048ui.Components.BlurredRecyclerView, org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
                        public void dispatchDraw(Canvas canvas) {
                        }

                        @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
                        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                            return false;
                        }

                        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
                        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                            return false;
                        }

                        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
                        public boolean onTouchEvent(MotionEvent motionEvent) {
                            return false;
                        }
                    };
                    LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
                    linearLayoutManager.setNeedFixEndGap(false);
                    this.transitionPage.animationSupportListView.setLayoutManager(linearLayoutManager);
                    ViewPage viewPage3 = this.transitionPage;
                    viewPage3.animationSupportDialogsAdapter = new DialogsAdapter(DialogsActivity.this, context, viewPage3.dialogsType, DialogsActivity.this.folderId, DialogsActivity.this.onlySelect, DialogsActivity.this.selectedDialogs, ((BaseFragment) DialogsActivity.this).currentAccount, DialogsActivity.this.requestPeerType);
                    this.transitionPage.animationSupportDialogsAdapter.setIsTransitionSupport();
                    this.transitionPage.animationSupportListView.setAdapter(this.transitionPage.animationSupportDialogsAdapter);
                    ViewPage viewPage4 = this.transitionPage;
                    viewPage4.addView(viewPage4.animationSupportListView);
                }
                this.transitionPage.animationSupportDialogsAdapter.setDialogsType(this.transitionPage.dialogsType);
                this.transitionPage.dialogsAdapter.setCollapsedView(false, this.transitionPage.listView);
                this.transitionPage.dialogsAdapter.setDialogsListFrozen(true);
                this.transitionPage.animationSupportDialogsAdapter.setDialogsListFrozen(true);
                this.transitionPage.layoutManager.setNeedFixEndGap(false);
                DialogsActivity.this.setDialogsListFrozen(true);
                DialogsActivity.this.hideFloatingButton(this.anotherFragmentOpened);
                this.transitionPage.dialogsAdapter.notifyDataSetChanged();
                this.transitionPage.animationSupportDialogsAdapter.notifyDataSetChanged();
                this.transitionPage.listView.setAnimationSupportView(this.transitionPage.animationSupportListView, -((BaseFragment) DialogsActivity.this).actionBar.getTranslationY(), z2);
                this.transitionPage.listView.setClipChildren(false);
                ((BaseFragment) DialogsActivity.this).actionBar.setAllowOverlayTitle(false);
                this.transitionPage.listView.stopScroll();
                DialogsActivity.this.updateDrawerSwipeEnabled();
            }

            @Override // org.telegram.p048ui.RightSlidingDialogContainer
            public void openAnimationFinished() {
                if (!hasFragment()) {
                    DialogsActivity.this.updateSwitchItemVisibility(true);
                }
                DialogsActivity.this.updateRecentChats();
                if (!DialogsActivity.this.canShowFilterTabsView && DialogsActivity.this.filterTabsView != null) {
                    DialogsActivity.this.filterTabsView.setVisibility(8);
                }
                this.transitionPage.layoutManager.setNeedFixGap(true);
                this.transitionPage.dialogsAdapter.setCollapsedView(hasFragment(), this.transitionPage.listView);
                this.transitionPage.dialogsAdapter.setDialogsListFrozen(false);
                this.transitionPage.animationSupportDialogsAdapter.setDialogsListFrozen(false);
                DialogsActivity.this.setDialogsListFrozen(false);
                this.transitionPage.listView.setClipChildren(true);
                this.transitionPage.listView.invalidate();
                this.transitionPage.dialogsAdapter.notifyDataSetChanged();
                this.transitionPage.animationSupportDialogsAdapter.notifyDataSetChanged();
                this.transitionPage.listView.setAnimationSupportView(null, BitmapDescriptorFactory.HUE_RED, hasFragment());
                DialogsActivity.this.rightFragmentTransitionInProgress = false;
                ((BaseFragment) DialogsActivity.this).actionBar.setAllowOverlayTitle(true ^ hasFragment());
                contentView3.requestLayout();
                DialogsActivity.this.setScrollY(BitmapDescriptorFactory.HUE_RED);
                DialogsActivity.this.searchViewPager.updateTabs();
                DialogsActivity.this.updateDrawerSwipeEnabled();
            }

            @Override // org.telegram.p048ui.RightSlidingDialogContainer
            void setOpenProgress(float f) {
                float f2 = BitmapDescriptorFactory.HUE_RED;
                boolean z2 = f > BitmapDescriptorFactory.HUE_RED;
                if (this.anotherFragmentOpened != z2) {
                    this.anotherFragmentOpened = z2;
                }
                DialogsActivity.this.filterTabsMoveFrom = AndroidUtilities.m50dp(44);
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.filterTabsProgress = dialogsActivity.canShowFilterTabsView ? 1.0f - f : BitmapDescriptorFactory.HUE_RED;
                if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                    ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                }
                if (DialogsActivity.this.recentChatsBar != null) {
                    DialogsActivity.this.recentChatsBar.setAlpha(1.0f - f);
                    RightSlidingDialogContainer rightSlidingDialogContainer2 = DialogsActivity.this.rightSlidingDialogContainer;
                    if (rightSlidingDialogContainer2 != null && rightSlidingDialogContainer2.hasFragment()) {
                        DialogsActivity.this.recentChatsBar.setVisibility(8);
                    }
                }
                if (DialogsActivity.this.topicsBar != null) {
                    FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) DialogsActivity.this.topicsBar.getLayoutParams();
                    layoutParams5.topMargin = AndroidUtilities.m51dp((-36.0f) * f);
                    DialogsActivity.this.topicsBar.setAlpha(1.0f - f);
                    DialogsActivity.this.topicsBar.setLayoutParams(layoutParams5);
                }
                DialogsActivity.this.setScrollY(AndroidUtilities.lerp(this.fromScrollYProperty, (float) BitmapDescriptorFactory.HUE_RED, f));
                DialogsActivity.this.updateDrawerSwipeEnabled();
                if (DialogsActivity.this.menuDrawable != null && hasFragment()) {
                    DialogsActivity.this.menuDrawable.setRotation(f, false);
                }
                if (((BaseFragment) DialogsActivity.this).actionBar.getTitleTextView() != null) {
                    ((BaseFragment) DialogsActivity.this).actionBar.getTitleTextView().setAlpha(1.0f - f);
                }
                if (((BaseFragment) DialogsActivity.this).actionBar.getTitleTextView() != null && ((BaseFragment) DialogsActivity.this).actionBar.getTitleTextView().getAlpha() > BitmapDescriptorFactory.HUE_RED) {
                    ((BaseFragment) DialogsActivity.this).actionBar.getTitleTextView().setVisibility(0);
                }
                if (DialogsActivity.this.proxyItem != null) {
                    DialogsActivity.this.proxyItem.setAlpha(1.0f - f);
                }
                if (DialogsActivity.this.downloadsItem != null) {
                    DialogsActivity.this.downloadsItem.setAlpha(1.0f - f);
                }
                if (DialogsActivity.this.passcodeItem != null) {
                    DialogsActivity.this.passcodeItem.setAlpha(1.0f - f);
                }
                if (DialogsActivity.this.searchItem != null) {
                    DialogsActivity.this.searchItem.setAlpha(this.anotherFragmentOpened ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                }
                if (((BaseFragment) DialogsActivity.this).actionBar.getBackButton() != null) {
                    ImageView backButton = ((BaseFragment) DialogsActivity.this).actionBar.getBackButton();
                    if (f != 1.0f) {
                        f2 = 1.0f;
                    }
                    backButton.setAlpha(f2);
                }
                if (DialogsActivity.this.folderId != 0) {
                    DialogsActivity.this.actionBarDefaultPaint.setColor(ColorUtils.blendARGB(Theme.getColor("actionBarDefaultArchived"), Theme.getColor("actionBarDefault"), f));
                }
                ViewPage viewPage2 = this.transitionPage;
                if (viewPage2 != null) {
                    viewPage2.listView.setOpenRightFragmentProgress(f);
                }
            }
        };
        this.rightSlidingDialogContainer = rightSlidingDialogContainer;
        rightSlidingDialogContainer.setOpenProgress(BitmapDescriptorFactory.HUE_RED);
        contentView3.addView(this.rightSlidingDialogContainer, LayoutHelper.createFrame(-1, -1));
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$34(View view) {
        TopicsBar topicsBar = this.topicsBar;
        if (topicsBar != null && topicsBar.isEditing()) {
            this.topicsBar.setEditing(false);
        } else {
            this.filterTabsView.setIsEditing(false);
        }
        showDoneItem(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$9 */
    /* loaded from: classes5.dex */
    public class C54269 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        boolean isSpeedItemCreated = false;
        final /* synthetic */ Context val$context;
        final /* synthetic */ ActionBarMenu val$menu;

        C54269(Context context, ActionBarMenu actionBarMenu) {
            this.val$context = context;
            this.val$menu = actionBarMenu;
        }

        @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onPreToggleSearch() {
            if (this.isSpeedItemCreated) {
                return;
            }
            this.isSpeedItemCreated = true;
            DialogsActivity.this.speedItem = new ActionBarMenuItem(this.val$context, this.val$menu, Theme.getColor("actionBarActionModeDefaultSelector"), Theme.getColor("actionBarActionModeDefaultIcon"));
            DialogsActivity.this.speedItem.setIcon(C3158R.C3160drawable.avd_speed);
            DialogsActivity.this.speedItem.getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor("actionBarActionModeDefaultIcon"), PorterDuff.Mode.SRC_IN));
            DialogsActivity.this.speedItem.setTranslationX(AndroidUtilities.m50dp(32));
            DialogsActivity.this.speedItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
            DialogsActivity.this.speedItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$9$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.C54269.this.lambda$onPreToggleSearch$0(view);
                }
            });
            DialogsActivity.this.speedItem.setClickable(false);
            DialogsActivity.this.speedItem.setFixBackground(true);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AndroidUtilities.m50dp(42), -1);
            int m50dp = AndroidUtilities.m50dp(38);
            layoutParams.rightMargin = m50dp;
            layoutParams.leftMargin = m50dp;
            layoutParams.gravity = 5;
            ((FrameLayout) DialogsActivity.this.searchItem.getSearchClearButton().getParent()).addView(DialogsActivity.this.speedItem, layoutParams);
            DialogsActivity.this.searchItem.setSearchAdditionalButton(DialogsActivity.this.speedItem);
            DialogsActivity dialogsActivity = DialogsActivity.this;
            dialogsActivity.updateSpeedItem(dialogsActivity.searchViewPager.getCurrentPosition() == 2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPreToggleSearch$0(View view) {
            DialogsActivity.this.showDialog(new PremiumFeatureBottomSheet(DialogsActivity.this, 2, true));
        }

        @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
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
                if (!DialogsActivity.this.onlySelect || DialogsActivity.this.albumsMode) {
                    DialogsActivity.this.floatingButtonContainer.setVisibility(8);
                }
            }
            DialogsActivity.this.setScrollY(BitmapDescriptorFactory.HUE_RED);
            DialogsActivity.this.updatePasscodeButton();
            DialogsActivity.this.updateProxyButton(false, false);
            ((BaseFragment) DialogsActivity.this).actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrGoBack", C3158R.string.AccDescrGoBack));
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            ((SizeNotifierFrameLayout) ((BaseFragment) DialogsActivity.this).fragmentView).invalidateBlur();
        }

        @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
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

        @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchCollapse() {
            DialogsActivity.this.searching = false;
            DialogsActivity.this.searchWas = false;
            DialogsActivity.this.updateSwitchItemVisibility(true);
            DialogsActivity.this.showHeaderItem(true);
            int i = 8;
            if (DialogsActivity.this.searchMenuItem != null) {
                DialogsActivity.this.searchMenuItem.setVisibility(8);
            }
            if (DialogsActivity.this.viewPages[0] != null) {
                DialogsActivity.this.viewPages[0].listView.setEmptyView(DialogsActivity.this.folderId == 0 ? DialogsActivity.this.viewPages[0].progressView : null);
                if (!DialogsActivity.this.onlySelect || DialogsActivity.this.albumsMode) {
                    if (DialogsActivity.this.recentChatsBar != null) {
                        RecentChatsBar recentChatsBar = DialogsActivity.this.recentChatsBar;
                        if (DialogsActivity.this.getRecentChatsController().isRecentChatsEnabled() && !DialogsActivity.this.getRecentChatsController().getRecentChatsList().isEmpty()) {
                            i = 0;
                        }
                        recentChatsBar.setVisibility(i);
                    }
                    DialogsActivity.this.floatingButtonContainer.setVisibility(0);
                    DialogsActivity.this.floatingHidden = true;
                    DialogsActivity.this.floatingButtonTranslation = AndroidUtilities.m50dp(100);
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
                ((BaseFragment) DialogsActivity.this).actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrOpenMenu", C3158R.string.AccDescrOpenMenu));
            }
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
            ((SizeNotifierFrameLayout) ((BaseFragment) DialogsActivity.this).fragmentView).invalidateBlur();
        }

        @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
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

        @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchFilterCleared(FiltersView.MediaFilterData mediaFilterData) {
            if (DialogsActivity.this.searchIsShowed) {
                DialogsActivity.this.searchViewPager.removeSearchFilter(mediaFilterData);
                DialogsActivity.this.searchViewPager.onTextChanged(DialogsActivity.this.searchItem.getSearchField().getText().toString());
                DialogsActivity.this.updateFiltersView(true, null, null, false, true);
            }
        }

        @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public boolean canToggleSearch() {
            return !((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed() && DialogsActivity.this.databaseMigrationHint == null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$35(View view) {
        showDisablePopup(this.headerItem);
        return true;
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
    public class C534811 extends FilterTabsView {
        C534811(Context context, FilterTabsView.TabMode tabMode, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
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

        @Override // org.telegram.p048ui.Components.FilterTabsView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (DialogsActivity.this.scrimView != null) {
                DialogsActivity.this.scrimView.getLocationInWindow(DialogsActivity.this.scrimViewLocation);
                ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
            }
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView
        protected void onDefaultTabMoved() {
            if (DialogsActivity.this.getMessagesController().premiumLocked) {
                return;
            }
            try {
                performHapticFeedback(3, 1);
            } catch (Exception unused) {
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            dialogsActivity.topBulletin = BulletinFactory.m27of(dialogsActivity).createSimpleBulletin(C3158R.C3164raw.filter_reorder, AndroidUtilities.replaceTags(LocaleController.formatString("LimitReachedReorderFolder", C3158R.string.LimitReachedReorderFolder, LocaleController.getString(C3158R.string.FilterAllChats))), LocaleController.getString("PremiumMore", C3158R.string.PremiumMore), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS, new Runnable() { // from class: org.telegram.ui.DialogsActivity$11$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C534811.this.lambda$onDefaultTabMoved$0();
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
    public class C534912 implements FilterTabsView.FilterTabsViewDelegate {
        final /* synthetic */ Context val$context;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$showDeleteAlert$0() {
        }

        C534912(Context context) {
            this.val$context = context;
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
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
                DialogsActivity.this.floatingButton.setImageResource(C3158R.C3160drawable.ic_ab_other);
                DialogsActivity.this.miniFabsContainer.setFabs(fabsForPage);
            }
            DialogsActivity.this.hideFloatingButton(false);
            if (SharedConfig.isRememberLastFilterTabEnabled && DialogsActivity.this.isMainNoFolderDialogList()) {
                if (SortingFilter.isSortingFilter(false, i)) {
                    DialogsActivity.this.getForkCommonController().setLastFilterTab(i);
                } else if (i >= 0 && i < DialogsActivity.this.getMessagesController().dialogFilters.size()) {
                    DialogsActivity.this.getForkCommonController().setLastFilterTab(DialogsActivity.this.getMessagesController().dialogFilters.get(i).f1434id);
                }
                DialogsActivity.this.getForkCommonController().saveConfig();
            }
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onSwipeProgressChanged(float f) {
            if (!DialogsActivity.this.isMainDialogList() || f == 1.0f) {
                return;
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            List fabsForPage = dialogsActivity.getFabsForPage(dialogsActivity.viewPages[0]);
            DialogsActivity dialogsActivity2 = DialogsActivity.this;
            List fabsForPage2 = dialogsActivity2.getFabsForPage(dialogsActivity2.viewPages[1]);
            int iconResId = fabsForPage.size() > 1 ? C3158R.C3160drawable.ic_ab_other : FilterFabExtKt.iconResId((FilterFab) fabsForPage.get(0), true);
            int iconResId2 = fabsForPage2.size() > 1 ? C3158R.C3160drawable.ic_ab_other : FilterFabExtKt.iconResId((FilterFab) fabsForPage2.get(0), true);
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

        private void showDeleteAlert(final MessagesController.DialogFilter dialogFilter) {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("FilterDelete", C3158R.string.FilterDelete));
            builder.setMessage(LocaleController.getString("FilterDeleteAlert", C3158R.string.FilterDeleteAlert));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("Delete", C3158R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C534912.this.lambda$showDeleteAlert$2(dialogFilter, dialogInterface, i);
                }
            });
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed2"));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDeleteAlert$2(MessagesController.DialogFilter dialogFilter, DialogInterface dialogInterface, int i) {
            TLRPC$TL_messages_updateDialogFilter tLRPC$TL_messages_updateDialogFilter = new TLRPC$TL_messages_updateDialogFilter();
            tLRPC$TL_messages_updateDialogFilter.f1604id = dialogFilter.f1434id;
            DialogsActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFilter, DialogsActivity$12$$ExternalSyntheticLambda3.INSTANCE);
            DialogsActivity.this.getMessagesController().removeFilter(dialogFilter);
            DialogsActivity.this.getMessagesStorage().deleteDialogFilter(dialogFilter);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$showDeleteAlert$1(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(DialogsActivity$12$$ExternalSyntheticLambda2.INSTANCE);
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onSamePageSelected() {
            DialogsActivity.this.hideFloatingButton(false);
            DialogsActivity.this.scrollToTop();
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onPageReorder(int i, int i2) {
            for (int i3 = 0; i3 < DialogsActivity.this.viewPages.length; i3++) {
                if (DialogsActivity.this.viewPages[i3].selectedType == i) {
                    DialogsActivity.this.viewPages[i3].selectedType = i2;
                } else if (DialogsActivity.this.viewPages[i3].selectedType == i2) {
                    DialogsActivity.this.viewPages[i3].selectedType = i;
                }
            }
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onPageSelected(FilterTabsView.Tab tab, boolean z) {
            int i;
            int i2;
            if (DialogsActivity.this.viewPages[0].selectedType == tab.f1705id) {
                return;
            }
            if (tab.isLocked) {
                DialogsActivity.this.filterTabsView.shakeLock(tab.f1705id);
                DialogsActivity dialogsActivity = DialogsActivity.this;
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                dialogsActivity.showDialog(new LimitReachedBottomSheet(dialogsActivity2, this.val$context, 3, ((BaseFragment) dialogsActivity2).currentAccount));
                return;
            }
            ArrayList<MessagesController.DialogFilter> arrayList = DialogsActivity.this.getMessagesController().dialogFilters;
            if (SortingFilter.isSortingFilter(false, tab.f1705id)) {
                if (SortingFilter.removeExtraFromId(false, tab.f1705id) >= DialogsActivity.this.getMessagesController().sortingDialogFilters.size()) {
                    return;
                }
            } else if (SortingFilter.isSortingFilter(true, tab.f1705id)) {
                if (SortingFilter.removeExtraFromId(true, tab.f1705id) >= DialogsActivity.this.getMessagesController().archiveSortingDialogFilters.size()) {
                    return;
                }
            } else if (!tab.isDefault && (((i = tab.f1705id) < 0 || i >= arrayList.size()) && (i2 = tab.f1705id) != DialogsActivity.DIALOGS_TYPE_ALBUMS && !DialogsActivity.isForwardDialogsType(i2) && !DialogsActivity.isArchiveDialogsType(tab.f1705id) && !DialogsActivity.this.isManagement())) {
                return;
            }
            DialogsActivity dialogsActivity3 = DialogsActivity.this;
            dialogsActivity3.isFirstTab = tab.f1705id == dialogsActivity3.filterTabsView.getFirstTabId();
            DialogsActivity.this.updateDrawerSwipeEnabled();
            DialogsActivity.this.viewPages[1].selectedType = tab.f1705id;
            DialogsActivity.this.viewPages[1].setVisibility(0);
            DialogsActivity.this.viewPages[1].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth());
            DialogsActivity.this.showScrollbars(false);
            DialogsActivity.this.switchToCurrentSelectedMode(true);
            DialogsActivity.this.animatingForward = z;
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
        public boolean canPerformActions() {
            if (DialogsActivity.this.topicsBar == null || !DialogsActivity.this.topicsBar.isEditing()) {
                if (DialogsActivity.this.isManagement() && ((BaseFragment) DialogsActivity.this).actionBar != null && ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) {
                    return false;
                }
                return !DialogsActivity.this.searching;
            }
            return false;
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
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
                    DialogsActivity dialogsActivity = DialogsActivity.this;
                    dialogsActivity.checkListLoad(dialogsActivity.viewPages[0]);
                    DialogsActivity.this.viewPages[0].dialogsAdapter.resume();
                    DialogsActivity.this.viewPages[1].dialogsAdapter.pause();
                }
            }
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
        public int getTabCounter(int i) {
            ArrayList<MessagesController.DialogFilter> arrayList;
            int removeExtraFromId;
            if (!DialogsActivity.this.isCustomForward() && !DialogsActivity.this.isManagement() && i != DialogsActivity.DIALOGS_TYPE_ALBUMS) {
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
                        ArrayList<MessagesController.DialogFilter> arrayList2 = DialogsActivity.this.getMessagesController().dialogFilters;
                        if (i < 0 || i >= arrayList2.size()) {
                            return 0;
                        }
                        return DialogsActivity.this.getMessagesController().dialogFilters.get(i).unreadCount;
                    }
                } else {
                    return DialogsActivity.this.getMessagesStorage().getArchiveUnreadCount();
                }
            }
            return 0;
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
        public boolean didSelectTab(final FilterTabsView.TabView tabView, boolean z) {
            ScrollView scrollView;
            boolean z2;
            int i;
            int[] iArr;
            Rect rect;
            boolean z3 = false;
            if (DialogsActivity.this.isCustomForward() || DialogsActivity.this.isManagement() || tabView.getId() == DialogsActivity.DIALOGS_TYPE_ALBUMS || ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) {
                return false;
            }
            if (DialogsActivity.this.scrimPopupWindow != null) {
                DialogsActivity.this.scrimPopupWindow.dismiss();
                DialogsActivity.this.scrimPopupWindow = null;
                DialogsActivity.this.scrimPopupWindowItems = null;
                return false;
            }
            final Rect rect2 = new Rect();
            final MessagesController.DialogFilter filterById = tabView.getId() != DialogsActivity.this.filterTabsView.getDefaultTabId() ? DialogsActivity.this.getFilterById(tabView.getId()) : null;
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(DialogsActivity.this.getParentActivity());
            actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.DialogsActivity.12.1
                private int[] pos = new int[2];

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getActionMasked() == 0) {
                        if (DialogsActivity.this.scrimPopupWindow != null && DialogsActivity.this.scrimPopupWindow.isShowing()) {
                            View contentView = DialogsActivity.this.scrimPopupWindow.getContentView();
                            contentView.getLocationInWindow(this.pos);
                            Rect rect3 = rect2;
                            int[] iArr2 = this.pos;
                            rect3.set(iArr2[0], iArr2[1], iArr2[0] + contentView.getMeasuredWidth(), this.pos[1] + contentView.getMeasuredHeight());
                            if (!rect2.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                                DialogsActivity.this.scrimPopupWindow.dismiss();
                            }
                        }
                    } else if (motionEvent.getActionMasked() == 4 && DialogsActivity.this.scrimPopupWindow != null && DialogsActivity.this.scrimPopupWindow.isShowing()) {
                        DialogsActivity.this.scrimPopupWindow.dismiss();
                    }
                    return false;
                }
            });
            actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda4
                @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                    DialogsActivity.C534912.this.lambda$didSelectTab$3(keyEvent);
                }
            });
            Rect rect3 = new Rect();
            Drawable mutate = DialogsActivity.this.getParentActivity().getResources().getDrawable(C3158R.C3160drawable.popup_fixed_alert).mutate();
            mutate.getPadding(rect3);
            actionBarPopupWindowLayout.setBackgroundDrawable(mutate);
            actionBarPopupWindowLayout.setBackgroundColor(Theme.getColor("actionBarDefaultSubmenuBackground"));
            final LinearLayout linearLayout = new LinearLayout(DialogsActivity.this.getParentActivity());
            if (Build.VERSION.SDK_INT >= 21) {
                scrollView = new ScrollView(this, DialogsActivity.this.getParentActivity(), null, 0, C3158R.style.scrollbarShapeStyle) { // from class: org.telegram.ui.DialogsActivity.12.2
                    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(i2, i3);
                        setMeasuredDimension(linearLayout.getMeasuredWidth(), getMeasuredHeight());
                    }
                };
            } else {
                scrollView = new ScrollView(DialogsActivity.this.getParentActivity());
            }
            ScrollView scrollView2 = scrollView;
            scrollView2.setClipToPadding(false);
            int i2 = -2;
            actionBarPopupWindowLayout.addView(scrollView2, LayoutHelper.createFrame(-2, -2));
            linearLayout.setMinimumWidth(AndroidUtilities.m50dp(200));
            int i3 = 1;
            linearLayout.setOrientation(1);
            DialogsActivity.this.scrimPopupWindowItems = new ActionBarMenuSubItem[3];
            int i4 = 7;
            int[] iArr2 = {-1, 0, -2, -3, 1, 2, -4};
            DialogsActivity.this.scrimPopupWindowItems = new ActionBarMenuSubItem[7];
            boolean z4 = tabView.getId() == DialogsActivity.this.filterTabsView.getDefaultTabId();
            final boolean isSortingFilter = SortingFilter.isSortingFilter(DialogsActivity.this.isArchive(), tabView.getId());
            boolean z5 = (DialogsActivity.this.isArchive() || z4 || isSortingFilter) ? false : true;
            int i5 = 0;
            while (i5 < i4) {
                Activity parentActivity = DialogsActivity.this.getParentActivity();
                if (i5 == 0) {
                    z3 = true;
                }
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(parentActivity, z3, i5 == 6);
                final int i6 = iArr2[i5];
                if (i6 == -1) {
                    actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3158R.string.dialogs_tab_popup_read_all), C3158R.C3160drawable.msg_message);
                    z2 = false;
                } else if (i6 == i2) {
                    z2 = DialogsActivity.this.isArchive() || DialogsActivity.this.getMessagesController().dialogFilters.size() >= DialogsActivity.this.getMessagesController().dialogFiltersLimitPremium;
                    actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3158R.string.dialogs_tab_popup_create_folder), C3158R.C3160drawable.fork_create_folder);
                } else if (i6 == -3) {
                    actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3158R.string.dialogs_tab_popup_sorting_settings), C3158R.C3160drawable.msg_settings);
                    z2 = z5;
                } else if (i6 == -4) {
                    z2 = (z4 && (DialogsActivity.this.isArchive() || !DialogsActivity.this.getFiltersController().isAllChatsTabEnabled() || DialogsActivity.this.filterTabsView.getTabsCount() == 2)) || z5;
                    actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3158R.string.dialogs_tab_popup_disable), C3158R.C3160drawable.msg_delete);
                } else if (i6 == 0) {
                    if (!z4 || !DialogsActivity.this.isArchive()) {
                        z2 = isSortingFilter ? false : false;
                        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("FilterReorder", C3158R.string.FilterReorder), C3158R.C3160drawable.tabs_reorder);
                    }
                    z2 = true;
                    actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("FilterReorder", C3158R.string.FilterReorder), C3158R.C3160drawable.tabs_reorder);
                } else if (i6 == i3) {
                    z2 = !z5;
                    actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("FilterEdit", C3158R.string.FilterEdit), C3158R.C3160drawable.msg_edit);
                } else {
                    z2 = !z5;
                    actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("FilterDeleteItem", C3158R.string.FilterDeleteItem), C3158R.C3160drawable.msg_delete);
                }
                if (z2) {
                    i = i5;
                    iArr = iArr2;
                    rect = rect3;
                } else {
                    DialogsActivity.this.scrimPopupWindowItems[i5] = actionBarMenuSubItem;
                    linearLayout.addView(actionBarMenuSubItem);
                    i = i5;
                    final boolean z6 = z4;
                    iArr = iArr2;
                    rect = rect3;
                    actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            DialogsActivity.C534912.this.lambda$didSelectTab$4(i6, z6, tabView, isSortingFilter, r6, filterById, view);
                        }
                    });
                }
                i5 = i + 1;
                iArr2 = iArr;
                rect3 = rect;
                i4 = 7;
                i3 = 1;
                i2 = -2;
                z3 = false;
            }
            Rect rect4 = rect3;
            scrollView2.addView(linearLayout, LayoutHelper.createScroll(-2, -2, 51));
            DialogsActivity.this.scrimPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2) { // from class: org.telegram.ui.DialogsActivity.12.3
                @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                public void dismiss() {
                    super.dismiss();
                    if (DialogsActivity.this.scrimPopupWindow != this) {
                        return;
                    }
                    DialogsActivity.this.scrimPopupWindow = null;
                    DialogsActivity.this.scrimPopupWindowItems = null;
                    if (DialogsActivity.this.scrimAnimatorSet != null) {
                        DialogsActivity.this.scrimAnimatorSet.cancel();
                        DialogsActivity.this.scrimAnimatorSet = null;
                    }
                    DialogsActivity.this.scrimAnimatorSet = new AnimatorSet();
                    DialogsActivity.this.scrimViewAppearing = false;
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(ObjectAnimator.ofInt(DialogsActivity.this.scrimPaint, AnimationProperties.PAINT_ALPHA, 0));
                    DialogsActivity.this.scrimAnimatorSet.playTogether(arrayList);
                    DialogsActivity.this.scrimAnimatorSet.setDuration(220L);
                    DialogsActivity.this.scrimAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.12.3.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (DialogsActivity.this.scrimView != null) {
                                DialogsActivity.this.scrimView.setBackground(null);
                                DialogsActivity.this.scrimView = null;
                            }
                            if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                                ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                            }
                        }
                    });
                    DialogsActivity.this.scrimAnimatorSet.start();
                    if (Build.VERSION.SDK_INT >= 19) {
                        DialogsActivity.this.getParentActivity().getWindow().getDecorView().setImportantForAccessibility(0);
                    }
                }
            };
            DialogsActivity.this.scrimViewBackground = Theme.createRoundRectDrawable(AndroidUtilities.m50dp(6), 0, Theme.getColor(DialogsActivity.this.isArchive() ? "actionBarDefaultArchived" : "actionBarDefault"));
            DialogsActivity.this.scrimPopupWindow.setDismissAnimationDuration(220);
            DialogsActivity.this.scrimPopupWindow.setOutsideTouchable(true);
            DialogsActivity.this.scrimPopupWindow.setClippingEnabled(true);
            DialogsActivity.this.scrimPopupWindow.setAnimationStyle(C3158R.style.PopupContextAnimation);
            DialogsActivity.this.scrimPopupWindow.setFocusable(true);
            actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE));
            DialogsActivity.this.scrimPopupWindow.setInputMethodMode(2);
            DialogsActivity.this.scrimPopupWindow.setSoftInputMode(0);
            DialogsActivity.this.scrimPopupWindow.getContentView().setFocusableInTouchMode(true);
            tabView.getLocationInWindow(DialogsActivity.this.scrimViewLocation);
            int m50dp = (DialogsActivity.this.scrimViewLocation[0] + rect4.left) - AndroidUtilities.m50dp(16);
            if (m50dp >= AndroidUtilities.m50dp(6)) {
                if (m50dp > (((BaseFragment) DialogsActivity.this).fragmentView.getMeasuredWidth() - AndroidUtilities.m50dp(6)) - actionBarPopupWindowLayout.getMeasuredWidth()) {
                    m50dp = (((BaseFragment) DialogsActivity.this).fragmentView.getMeasuredWidth() - AndroidUtilities.m50dp(6)) - actionBarPopupWindowLayout.getMeasuredWidth();
                }
            } else {
                m50dp = AndroidUtilities.m50dp(6);
            }
            int measuredHeight = (DialogsActivity.this.scrimViewLocation[1] + tabView.getMeasuredHeight()) - AndroidUtilities.m50dp(12);
            if (SharedConfig.isFilterTabsAtBottomEnabled) {
                measuredHeight = (DialogsActivity.this.scrimViewLocation[1] - actionBarPopupWindowLayout.getMeasuredHeight()) + AndroidUtilities.m50dp(12);
            }
            DialogsActivity.this.scrimPopupWindow.showAtLocation(((BaseFragment) DialogsActivity.this).fragmentView, 51, m50dp, measuredHeight);
            DialogsActivity.this.scrimView = tabView;
            DialogsActivity.this.scrimViewSelected = z;
            ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
            if (DialogsActivity.this.scrimAnimatorSet != null) {
                DialogsActivity.this.scrimAnimatorSet.cancel();
            }
            DialogsActivity.this.scrimAnimatorSet = new AnimatorSet();
            DialogsActivity.this.scrimViewAppearing = true;
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofInt(DialogsActivity.this.scrimPaint, AnimationProperties.PAINT_ALPHA, 0, 50));
            DialogsActivity.this.scrimAnimatorSet.playTogether(arrayList);
            DialogsActivity.this.scrimAnimatorSet.setDuration(150L);
            DialogsActivity.this.scrimAnimatorSet.start();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$3(KeyEvent keyEvent) {
            if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && DialogsActivity.this.scrimPopupWindow != null && DialogsActivity.this.scrimPopupWindow.isShowing()) {
                DialogsActivity.this.scrimPopupWindow.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$4(int i, boolean z, FilterTabsView.TabView tabView, boolean z2, int i2, MessagesController.DialogFilter dialogFilter, View view) {
            if (i == -1) {
                if (z) {
                    DialogsActivity.this.readAllCurrentFolderDialogs();
                } else {
                    DialogsActivity.this.readAllFilterDialogs(tabView.getId());
                }
            } else if (i == -2) {
                if (!DialogsActivity.this.getUserConfig().isPremium() && DialogsActivity.this.getMessagesController().dialogFilters.size() - 1 >= DialogsActivity.this.getMessagesController().dialogFiltersLimitDefault) {
                    DialogsActivity dialogsActivity = DialogsActivity.this;
                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                    dialogsActivity.showDialog(new LimitReachedBottomSheet(dialogsActivity2, dialogsActivity2.getParentActivity(), 3, ((BaseFragment) DialogsActivity.this).currentAccount));
                } else {
                    DialogsActivity.this.presentFragment(new FilterCreateActivity());
                }
            } else if (i == -3) {
                DialogsActivity.this.presentFragment(new FiltersSetupActivity());
            } else if (i == -4) {
                if (z) {
                    DialogsActivity.this.getFiltersController().setAllChatsTabEnabled(false);
                    DialogsActivity.this.getFiltersController().saveConfig();
                    DialogsActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.dialogFiltersUpdated, new Object[0]);
                    AlertsCreator.showArchiveAccessAlert(DialogsActivity.this);
                } else if (z2) {
                    DialogsActivity.this.getFiltersController().disableSortingFilter(SortingFilter.getFilterByIdWithExtra(DialogsActivity.this.isArchive(), tabView.getId()));
                    DialogsActivity.this.getFiltersController().saveConfig();
                    DialogsActivity.this.updateFilterTabs(true, true);
                }
            } else if (i == 0 && z2) {
                DialogsActivity dialogsActivity3 = DialogsActivity.this;
                dialogsActivity3.presentFragment(new SortingFilterSettingsActivity(dialogsActivity3.isArchive()));
            } else if (i == 0) {
                DialogsActivity.this.resetScroll();
                DialogsActivity.this.filterTabsView.setIsEditing(true);
                DialogsActivity.this.showDoneItem(true);
            } else if (i == 1) {
                if (i2 == 2) {
                    DialogsActivity.this.presentFragment(new FiltersSetupActivity());
                } else {
                    DialogsActivity.this.presentFragment(new FilterCreateActivity(dialogFilter));
                }
            } else if (i == 2) {
                showDeleteAlert(dialogFilter);
            }
            if (DialogsActivity.this.scrimPopupWindow != null) {
                DialogsActivity.this.scrimPopupWindow.dismiss();
            }
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
        public boolean isTabMenuVisible() {
            return DialogsActivity.this.scrimPopupWindow != null && DialogsActivity.this.scrimPopupWindow.isShowing();
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onDeletePressed(int i) {
            showDeleteAlert(DialogsActivity.this.getMessagesController().dialogFilters.get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$37(View view) {
        showDisablePopup(this.switchItem);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$38(View view) {
        this.customForwardEditText.clearFocus();
        this.customForwardEditText.requestFocus();
        AndroidUtilities.showKeyboard(this.customForwardEditText);
    }

    /* renamed from: org.telegram.ui.DialogsActivity$20 */
    /* loaded from: classes5.dex */
    class C536220 extends LinearLayoutManager {
        private boolean fixOffset;
        final /* synthetic */ ViewPage val$viewPage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C536220(Context context, ViewPage viewPage) {
            super(context);
            this.val$viewPage = viewPage;
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

        /* JADX WARN: Removed duplicated region for block: B:59:0x0141  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0145  */
        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int scrollVerticallyBy(int r18, androidx.recyclerview.widget.RecyclerView.Recycler r19, androidx.recyclerview.widget.RecyclerView.State r20) {
            /*
                Method dump skipped, instructions count: 741
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.C536220.scrollVerticallyBy(int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):int");
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
                FileLog.m45e(e);
                final ViewPage viewPage = this.val$viewPage;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$20$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C536220.lambda$onLayoutChildren$0(DialogsActivity.ViewPage.this);
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
    public /* synthetic */ void lambda$createView$39(ViewPage viewPage, View view, int i) {
        int i2 = this.initialDialogsType;
        if (i2 == 15 && (view instanceof TextCell)) {
            viewPage.dialogsAdapter.onCreateGroupForThisClick();
        } else if (i2 == 10) {
            onItemLongClick(viewPage.listView, view, i, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, viewPage.dialogsType, viewPage.dialogsAdapter);
        } else if ((i2 != 11 && i2 != 13) || i != 1) {
            if (viewPage.dialogsType == DIALOGS_TYPE_ALBUMS && this.actionBar.isActionModeShowed()) {
                return;
            }
            onItemClick(view, i, viewPage.dialogsAdapter);
        } else {
            Bundle bundle = new Bundle();
            bundle.putBoolean("forImport", true);
            bundle.putLongArray("result", new long[]{getUserConfig().getClientUserId()});
            bundle.putInt("chatType", 4);
            String string = this.arguments.getString("importTitle");
            if (string != null) {
                bundle.putString("title", string);
            }
            GroupCreateFinalActivity groupCreateFinalActivity = new GroupCreateFinalActivity(bundle);
            groupCreateFinalActivity.setDelegate(new GroupCreateFinalActivity.GroupCreateFinalActivityDelegate() { // from class: org.telegram.ui.DialogsActivity.21
                @Override // org.telegram.p048ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
                public void didFailChatCreation() {
                }

                @Override // org.telegram.p048ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
                public void didStartChatCreation() {
                }

                @Override // org.telegram.p048ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
                public void didFinishChatCreation(GroupCreateFinalActivity groupCreateFinalActivity2, long j) {
                    ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                    arrayList.add(MessagesStorage.TopicKey.m42of(-j, 0));
                    DialogsActivityDelegate dialogsActivityDelegate = DialogsActivity.this.delegate;
                    if (DialogsActivity.this.closeFragment) {
                        DialogsActivity.this.removeSelfFromStack();
                    }
                    dialogsActivityDelegate.didSelectDialogs(DialogsActivity.this, arrayList, null, true, null);
                }
            });
            presentFragment(groupCreateFinalActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$28 */
    /* loaded from: classes5.dex */
    public class C537028 implements DialogsSearchAdapter.DialogsSearchAdapterDelegate {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$clearTopPeers$0(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        }

        C537028() {
        }

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public boolean isCustomForward() {
            return DialogsActivity.this.isCustomForward();
        }

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public boolean checkDialogIsSelected(long j) {
            return DialogsActivity.this.selectedDialogs.contains(Long.valueOf(j));
        }

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void clearTopPeers() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("ChatHintsDeleteAlertTitle", C3158R.string.ChatHintsDeleteAlertTitle));
            builder.setMessage(LocaleController.getString("SuggestContactsAlert", C3158R.string.SuggestContactsAlert));
            builder.setPositiveButton(LocaleController.getString("MuteDisable", C3158R.string.MuteDisable), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C537028.this.lambda$clearTopPeers$2(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed2"));
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
                    DialogsActivity.C537028.this.lambda$clearTopPeers$1(tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$clearTopPeers$1(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            TLRPC$TL_contacts_toggleTopPeers tLRPC$TL_contacts_toggleTopPeers = new TLRPC$TL_contacts_toggleTopPeers();
            tLRPC$TL_contacts_toggleTopPeers.enabled = true;
            DialogsActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_contacts_toggleTopPeers, DialogsActivity$28$$ExternalSyntheticLambda5.INSTANCE);
        }

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
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

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void didPressedOnSubDialog(long j) {
            if (DialogsActivity.this.onlySelect) {
                if (DialogsActivity.this.validateSlowModeDialog(j)) {
                    if (!DialogsActivity.this.selectedDialogs.isEmpty()) {
                        if (DialogsActivity.this.getMessagesController().isForum(j) && isCustomForward()) {
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

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void needRemoveHint(final long j) {
            TLRPC$User user;
            if (DialogsActivity.this.getParentActivity() == null || (user = DialogsActivity.this.getMessagesController().getUser(Long.valueOf(j))) == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("ChatHintsDeleteAlertTitle", C3158R.string.ChatHintsDeleteAlertTitle));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ChatHintsDeleteAlert", C3158R.string.ChatHintsDeleteAlert, ContactsController.formatName(user.first_name, user.last_name))));
            builder.setPositiveButton(LocaleController.getString("StickersRemove", C3158R.string.StickersRemove), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C537028.this.lambda$needRemoveHint$3(j, dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed2"));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$needRemoveHint$3(long j, DialogInterface dialogInterface, int i) {
            DialogsActivity.this.getMediaDataController().removePeer(j);
        }

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void needClearList() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            if (DialogsActivity.this.searchViewPager.dialogsSearchAdapter.isSearchWas() && DialogsActivity.this.searchViewPager.dialogsSearchAdapter.isRecentSearchDisplayed()) {
                builder.setTitle(LocaleController.getString("ClearSearchAlertPartialTitle", C3158R.string.ClearSearchAlertPartialTitle));
                builder.setMessage(LocaleController.formatPluralString("ClearSearchAlertPartial", DialogsActivity.this.searchViewPager.dialogsSearchAdapter.getRecentResultsCount(), new Object[0]));
                builder.setPositiveButton(LocaleController.getString("Clear", C3158R.string.Clear), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        DialogsActivity.C537028.this.lambda$needClearList$4(dialogInterface, i);
                    }
                });
            } else {
                builder.setTitle(LocaleController.getString("ClearSearchAlertTitle", C3158R.string.ClearSearchAlertTitle));
                builder.setMessage(LocaleController.getString("ClearSearchAlert", C3158R.string.ClearSearchAlert));
                builder.setPositiveButton(LocaleController.getString("ClearButton", C3158R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        DialogsActivity.C537028.this.lambda$needClearList$5(dialogInterface, i);
                    }
                });
            }
            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed2"));
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

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void runResultsEnterAnimation() {
            if (DialogsActivity.this.searchViewPager != null) {
                DialogsActivity.this.searchViewPager.runResultsEnterAnimation();
            }
        }

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public boolean isSelected(long j) {
            return DialogsActivity.this.selectedDialogs.contains(Long.valueOf(j));
        }

        @Override // org.telegram.p048ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public long getSearchForumDialogId() {
            RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer == null || !(rightSlidingDialogContainer.getFragment() instanceof TopicsFragment)) {
                return 0L;
            }
            return ((TopicsFragment) DialogsActivity.this.rightSlidingDialogContainer.getFragment()).getDialogId();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$40(View view, int i) {
        if (this.initialDialogsType == 10) {
            SearchViewPager searchViewPager = this.searchViewPager;
            onItemLongClick(searchViewPager.searchListView, view, i, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1, searchViewPager.dialogsSearchAdapter);
            return;
        }
        onItemClick(view, i, this.searchViewPager.dialogsSearchAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$41(boolean z, ArrayList arrayList, ArrayList arrayList2, boolean z2) {
        updateFiltersView(z, arrayList, arrayList2, z2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$42(View view, int i) {
        this.filtersView.cancelClickRunnables(true);
        addSearchFilter(this.filtersView.getFilterAt(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$44(View view) {
        expandMultiFab(false);
        final ViewPage viewPage = this.viewPages[0];
        showDialog(new SelectFabsBottomSheet(getParentActivity(), new HashSet(getFabsForPage(this.viewPages[0])), new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda109
            @Override // org.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                DialogsActivity.this.lambda$createView$43(viewPage, (Set) obj);
            }
        }));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$43(ViewPage viewPage, Set set) {
        if (viewPage.selectedType != this.filterTabsView.getDefaultTabId()) {
            if (SortingFilter.isSortingFilter(false, viewPage.selectedType)) {
                getFiltersController().getSortingFilterState(SortingFilter.getFilterByIdWithExtra(false, viewPage.selectedType)).setFabs(set);
                getFiltersController().saveConfig();
            } else if (viewPage.selectedType >= getMessagesController().dialogFilters.size()) {
                return;
            } else {
                FilterSettingsModel settings = getFiltersController().getSettings(getMessagesController().dialogFilters.get(viewPage.selectedType).f1434id);
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
    public /* synthetic */ void lambda$createView$45(View view) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isInPreviewMode()) {
            finishPreviewFragment();
        } else if (this.initialDialogsType == 10) {
            if (this.delegate == null || this.selectedDialogs.isEmpty()) {
                return;
            }
            ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
            for (int i = 0; i < this.selectedDialogs.size(); i++) {
                arrayList.add(MessagesStorage.TopicKey.m42of(this.selectedDialogs.get(i).longValue(), 0));
            }
            this.delegate.didSelectDialogs(this, arrayList, null, false, null);
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
    public /* synthetic */ void lambda$createView$46(FilterFab filterFab) {
        expandMultiFab(false);
        resolveFabClickByType(filterFab);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$47(Long l) {
        this.cacheSize = l;
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$48(Long l, Long l2) {
        this.deviceSize = l;
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$32 */
    /* loaded from: classes5.dex */
    public class C537532 implements RecentChatsBar.HorizontalListViewDelegate {
        C537532() {
        }

        private void showDialogDelete() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            int i = C3158R.string.ClearHistory;
            builder.setTitle(LocaleController.getString("ClearHistory", i));
            builder.setMessage(LocaleController.getInternalString(C3158R.string.recent_chats_clear_history));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    DialogsActivity.C537532.this.lambda$showDialogDelete$0(dialogInterface, i2);
                }
            });
            builder.setPositiveButton(LocaleController.getString("ClearHistory", i), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    DialogsActivity.C537532.this.lambda$showDialogDelete$1(dialogInterface, i2);
                }
            });
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed2"));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDialogDelete$0(DialogInterface dialogInterface, int i) {
            DialogsActivity.this.finishPreviewFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDialogDelete$1(DialogInterface dialogInterface, int i) {
            DialogsActivity.this.getRecentChatsController().clearRecentChatsHistory();
            DialogsActivity.this.recentChatsBar.removeData();
            if (DialogsActivity.this.recentChatsBar.getListView().getAdapter().getItemCount() == 0) {
                DialogsActivity.this.recentChatsBar.setVisibility(8);
            }
            DialogsActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.recentChatsDidLoad, new Object[0]);
        }

        @Override // com.smedialink.p031ui.recent_chats.RecentChatsBar.HorizontalListViewDelegate
        public void onItemListener(HistoryDialogModel historyDialogModel, View view) {
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

        @Override // com.smedialink.p031ui.recent_chats.RecentChatsBar.HorizontalListViewDelegate
        public void onItemLongListener(HistoryDialogModel historyDialogModel, View view) {
            final long dialogId = historyDialogModel.getDialogId();
            Bundle bundle = new Bundle();
            LockedSectionsController.SectionPasscodeData sectionsPasscodeData = DialogsActivity.this.getLockedSectionsController().getSectionsPasscodeData(LockedSection.CLOUD);
            if (UserObject.isUserSelf(DialogsActivity.this.getMessagesController().getUser(Long.valueOf(dialogId))) && sectionsPasscodeData != null && !sectionsPasscodeData.getPasscodeHash().isEmpty()) {
                DialogsActivity.this.showToast(LocaleController.getInternalString(C3158R.string.section_is_locked));
                return;
            }
            if (DialogObject.isUserDialog(dialogId)) {
                bundle.putLong("user_id", dialogId);
            } else {
                bundle.putLong("chat_id", -dialogId);
            }
            ActionBarPopupWindow.ActionBarPopupWindowLayout[] actionBarPopupWindowLayoutArr = {new ActionBarPopupWindow.ActionBarPopupWindowLayout(DialogsActivity.this.getParentActivity(), C3158R.C3160drawable.popup_fixed_alert, DialogsActivity.this.getResourceProvider(), 2)};
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, false);
            if (historyDialogModel.isPinned()) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("UnpinMessage", C3158R.string.UnpinMessage), C3158R.C3160drawable.msg_calls_unpin);
            } else {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("PinMessage", C3158R.string.PinMessage), C3158R.C3160drawable.msg_calls_pin);
            }
            actionBarMenuSubItem.setMinimumWidth(160);
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C537532.this.lambda$onItemLongListener$2(dialogId, view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem);
            ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, true);
            actionBarMenuSubItem2.setIconColor(DialogsActivity.this.getThemedColor("dialogRedIcon"));
            actionBarMenuSubItem2.setTextColor(DialogsActivity.this.getThemedColor("dialogTextRed"));
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("DeleteFromRecent", C3158R.string.DeleteFromRecent), C3158R.C3160drawable.msg_delete);
            actionBarMenuSubItem2.setMinimumWidth(160);
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C537532.this.lambda$onItemLongListener$3(dialogId, view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem2);
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, true);
            actionBarMenuSubItem3.setIconColor(DialogsActivity.this.getThemedColor("dialogRedIcon"));
            actionBarMenuSubItem3.setTextColor(DialogsActivity.this.getThemedColor("dialogTextRed"));
            actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("ClearRecentHistory", C3158R.string.ClearRecentHistory), C3158R.C3160drawable.msg_clear);
            actionBarMenuSubItem3.setMinimumWidth(160);
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C537532.this.lambda$onItemLongListener$4(view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem3);
            FrameLayout frameLayout = new FrameLayout(DialogsActivity.this.getParentActivity());
            frameLayout.setBackgroundColor(DialogsActivity.this.getThemedColor("actionBarDefaultSubmenuSeparator"));
            actionBarPopupWindowLayoutArr[0].addView((View) frameLayout, LayoutHelper.createLinear(-1, 8));
            ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, true);
            actionBarMenuSubItem4.setText(LocaleController.getString("Disable", C3158R.string.Disable));
            actionBarMenuSubItem4.setMinimumWidth(160);
            actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$32$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C537532.this.lambda$onItemLongListener$5(view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem4);
            ChatActivity[] chatActivityArr = new ChatActivity[1];
            if (DialogsActivity.this.getMessagesController().checkCanOpenChat(bundle, DialogsActivity.this)) {
                DialogsActivity.this.prepareBlurBitmap();
                ((BaseFragment) DialogsActivity.this).parentLayout.setHighlightActionButtons(true);
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    DialogsActivity dialogsActivity = DialogsActivity.this;
                    ChatActivity chatActivity = new ChatActivity(bundle);
                    chatActivityArr[0] = chatActivity;
                    dialogsActivity.presentFragmentAsPreview(chatActivity);
                    return;
                }
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                ChatActivity chatActivity2 = new ChatActivity(bundle);
                chatActivityArr[0] = chatActivity2;
                dialogsActivity2.presentFragmentAsPreviewWithMenu(chatActivity2, actionBarPopupWindowLayoutArr[0]);
                chatActivityArr[0].allowExpandPreviewByClick = false;
                try {
                    chatActivityArr[0].getAvatarContainer().getAvatarImageView().performAccessibilityAction(64, null);
                } catch (Exception unused) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongListener$2(long j, View view) {
            if (DialogsActivity.this.recentChatsBar == null) {
                return;
            }
            DialogsActivity.this.getRecentChatsController().updatePin(j);
            DialogsActivity.this.recentChatsBar.scrollToStart();
            DialogsActivity.this.finishPreviewFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongListener$3(long j, View view) {
            DialogsActivity.this.getRecentChatsController().removeRecentChat(j);
            DialogsActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.recentChatsDidLoad, new Object[0]);
            DialogsActivity.this.finishPreviewFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongListener$4(View view) {
            showDialogDelete();
            DialogsActivity.this.finishPreviewFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemLongListener$5(View view) {
            DialogsActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.recentChatsDidLoad, new Object[0]);
            DialogsActivity.this.getRecentChatsController().toggleEnabled();
            DialogsActivity.this.finishPreviewFragment();
        }

        @Override // com.smedialink.p031ui.recent_chats.RecentChatsBar.HorizontalListViewDelegate
        public void onLongClickRelease() {
            DialogsActivity.this.finishPreviewFragment();
        }

        @Override // com.smedialink.p031ui.recent_chats.RecentChatsBar.HorizontalListViewDelegate
        public void onMove(float f) {
            DialogsActivity.this.movePreviewFragment(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$33 */
    /* loaded from: classes5.dex */
    public class C537633 implements TopicsBar.TopicsBarDelegate {
        C537633() {
        }

        private void showDeleteAlert(final TopicModel topicModel) {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getInternalString(C3158R.string.topics_remove));
            builder.setMessage(LocaleController.getInternalString(C3158R.string.topics_remove_alert));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("Delete", C3158R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C537633.this.lambda$showDeleteAlert$0(topicModel, dialogInterface, i);
                }
            });
            AlertDialog create = builder.create();
            DialogsActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed2"));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDeleteAlert$0(TopicModel topicModel, DialogInterface dialogInterface, int i) {
            DialogsActivity.this.getTopicsController().removeTopicFilterDialogs(topicModel);
        }

        @Override // com.smedialink.p031ui.topics.TopicsBar.TopicsBarDelegate
        public boolean canPerformActions() {
            return ((DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.isEditing()) || DialogsActivity.this.searching || ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) ? false : true;
        }

        @Override // com.smedialink.p031ui.topics.TopicsBar.TopicsBarDelegate
        public boolean didSelectTab(final TopicView topicView) {
            if (((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed() || DialogsActivity.this.getTopicsController().hasSelectedTopic(DialogsActivity.this.isArchive())) {
                return false;
            }
            if (DialogsActivity.this.scrimPopupWindow != null) {
                DialogsActivity.this.scrimPopupWindow.dismiss();
                DialogsActivity.this.scrimPopupWindow = null;
                DialogsActivity.this.scrimPopupWindowItems = null;
                return false;
            }
            final Rect rect = new Rect();
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(DialogsActivity.this.getParentActivity());
            actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.DialogsActivity.33.1
                private final int[] pos = new int[2];

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getActionMasked() == 0) {
                        if (DialogsActivity.this.scrimPopupWindow != null && DialogsActivity.this.scrimPopupWindow.isShowing()) {
                            View contentView = DialogsActivity.this.scrimPopupWindow.getContentView();
                            contentView.getLocationInWindow(this.pos);
                            Rect rect2 = rect;
                            int[] iArr = this.pos;
                            rect2.set(iArr[0], iArr[1], iArr[0] + contentView.getMeasuredWidth(), this.pos[1] + contentView.getMeasuredHeight());
                            if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                                DialogsActivity.this.scrimPopupWindow.dismiss();
                            }
                        }
                    } else if (motionEvent.getActionMasked() == 4 && DialogsActivity.this.scrimPopupWindow != null && DialogsActivity.this.scrimPopupWindow.isShowing()) {
                        DialogsActivity.this.scrimPopupWindow.dismiss();
                    }
                    return false;
                }
            });
            actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda2
                @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                    DialogsActivity.C537633.this.lambda$didSelectTab$1(keyEvent);
                }
            });
            Rect rect2 = new Rect();
            Drawable mutate = DialogsActivity.this.getParentActivity().getResources().getDrawable(C3158R.C3160drawable.popup_fixed_alert).mutate();
            mutate.getPadding(rect2);
            actionBarPopupWindowLayout.setBackgroundDrawable(mutate);
            actionBarPopupWindowLayout.setBackgroundColor(Theme.getColor("actionBarDefaultSubmenuBackground"));
            final LinearLayout linearLayout = new LinearLayout(DialogsActivity.this.getParentActivity());
            ScrollView scrollView = new ScrollView(this, DialogsActivity.this.getParentActivity(), null, 0, C3158R.style.scrollbarShapeStyle) { // from class: org.telegram.ui.DialogsActivity.33.2
                @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(i, i2);
                    setMeasuredDimension(linearLayout.getMeasuredWidth(), getMeasuredHeight());
                }
            };
            scrollView.setClipToPadding(false);
            actionBarPopupWindowLayout.addView(scrollView, LayoutHelper.createFrame(-2, -2));
            linearLayout.setMinimumWidth(AndroidUtilities.m50dp(200));
            linearLayout.setOrientation(1);
            boolean z = topicView.getTopic().getTopicId() == -2;
            DialogsActivity.this.scrimPopupWindowItems = new ActionBarMenuSubItem[5];
            final int i = 0;
            for (int i2 = 5; i < i2; i2 = 5) {
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), i == 0, i == 4);
                if (i == 0) {
                    if (DialogsActivity.this.topicsBar.allowReorder() && !z) {
                        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("FilterReorder", C3158R.string.FilterReorder), C3158R.C3160drawable.tabs_reorder);
                        DialogsActivity.this.scrimPopupWindowItems[i] = actionBarMenuSubItem;
                        linearLayout.addView(actionBarMenuSubItem);
                        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogsActivity.C537633.this.lambda$didSelectTab$2(i, topicView, view);
                            }
                        });
                    }
                    i++;
                } else {
                    if (i == 1) {
                        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Settings", C3158R.string.Settings), C3158R.C3160drawable.msg_settings);
                    } else if (i == 2) {
                        if (z) {
                            i++;
                        } else {
                            actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3158R.string.topic_edit), C3158R.C3160drawable.msg_edit);
                        }
                    } else if (i == 3) {
                        if (z) {
                            i++;
                        } else {
                            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Delete", C3158R.string.Delete), C3158R.C3160drawable.msg_delete);
                        }
                    } else if (!z) {
                        i++;
                    } else if (DialogsActivity.this.getTopicsController().isNoTopicFirstEnabled()) {
                        actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3158R.string.topics_move_no_topic_to_end), C3158R.C3160drawable.tabs_reorder);
                    } else {
                        actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3158R.string.topics_move_no_topic_to_beginning), C3158R.C3160drawable.fork_move_to_beginning);
                    }
                    DialogsActivity.this.scrimPopupWindowItems[i] = actionBarMenuSubItem;
                    linearLayout.addView(actionBarMenuSubItem);
                    actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$33$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            DialogsActivity.C537633.this.lambda$didSelectTab$2(i, topicView, view);
                        }
                    });
                    i++;
                }
            }
            scrollView.addView(linearLayout, LayoutHelper.createScroll(-2, -2, 51));
            DialogsActivity.this.scrimPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2) { // from class: org.telegram.ui.DialogsActivity.33.3
                @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                public void dismiss() {
                    super.dismiss();
                    if (DialogsActivity.this.scrimPopupWindow != this) {
                        return;
                    }
                    DialogsActivity.this.scrimPopupWindow = null;
                    DialogsActivity.this.scrimPopupWindowItems = null;
                    if (DialogsActivity.this.scrimAnimatorSet != null) {
                        DialogsActivity.this.scrimAnimatorSet.cancel();
                        DialogsActivity.this.scrimAnimatorSet = null;
                    }
                    DialogsActivity.this.scrimAnimatorSet = new AnimatorSet();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(ObjectAnimator.ofInt(DialogsActivity.this.scrimPaint, AnimationProperties.PAINT_ALPHA, 0));
                    DialogsActivity.this.scrimAnimatorSet.playTogether(arrayList);
                    DialogsActivity.this.scrimAnimatorSet.setDuration(220L);
                    DialogsActivity.this.scrimAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.33.3.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (DialogsActivity.this.scrimView != null) {
                                DialogsActivity.this.scrimView = null;
                            }
                            if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                                ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                            }
                        }
                    });
                    DialogsActivity.this.scrimAnimatorSet.start();
                    if (Build.VERSION.SDK_INT >= 19) {
                        DialogsActivity.this.getParentActivity().getWindow().getDecorView().setImportantForAccessibility(0);
                    }
                }
            };
            DialogsActivity.this.scrimPopupWindow.setDismissAnimationDuration(220);
            DialogsActivity.this.scrimPopupWindow.setOutsideTouchable(true);
            DialogsActivity.this.scrimPopupWindow.setClippingEnabled(true);
            DialogsActivity.this.scrimPopupWindow.setAnimationStyle(C3158R.style.PopupContextAnimation);
            DialogsActivity.this.scrimPopupWindow.setFocusable(true);
            actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE));
            DialogsActivity.this.scrimPopupWindow.setInputMethodMode(2);
            DialogsActivity.this.scrimPopupWindow.setSoftInputMode(0);
            DialogsActivity.this.scrimPopupWindow.getContentView().setFocusableInTouchMode(true);
            topicView.getLocationInWindow(DialogsActivity.this.scrimViewLocation);
            int m50dp = (DialogsActivity.this.scrimViewLocation[0] + rect2.left) - AndroidUtilities.m50dp(16);
            if (m50dp >= AndroidUtilities.m50dp(6)) {
                if (m50dp > (((BaseFragment) DialogsActivity.this).fragmentView.getMeasuredWidth() - AndroidUtilities.m50dp(6)) - actionBarPopupWindowLayout.getMeasuredWidth()) {
                    m50dp = (((BaseFragment) DialogsActivity.this).fragmentView.getMeasuredWidth() - AndroidUtilities.m50dp(6)) - actionBarPopupWindowLayout.getMeasuredWidth();
                }
            } else {
                m50dp = AndroidUtilities.m50dp(6);
            }
            DialogsActivity.this.scrimPopupWindow.showAtLocation(((BaseFragment) DialogsActivity.this).fragmentView, 51, m50dp, DialogsActivity.this.getTopicsController().isTopicsBarAtBottomEnabled() ? (DialogsActivity.this.scrimViewLocation[1] - actionBarPopupWindowLayout.getMeasuredHeight()) + AndroidUtilities.m50dp(3) : (DialogsActivity.this.scrimViewLocation[1] + topicView.getMeasuredHeight()) - AndroidUtilities.m50dp(3));
            DialogsActivity.this.scrimView = topicView;
            DialogsActivity.this.scrimViewSelected = false;
            ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
            if (DialogsActivity.this.scrimAnimatorSet != null) {
                DialogsActivity.this.scrimAnimatorSet.cancel();
            }
            DialogsActivity.this.scrimAnimatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofInt(DialogsActivity.this.scrimPaint, AnimationProperties.PAINT_ALPHA, 0, 50));
            DialogsActivity.this.scrimAnimatorSet.playTogether(arrayList);
            DialogsActivity.this.scrimAnimatorSet.setDuration(150L);
            DialogsActivity.this.scrimAnimatorSet.start();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$1(KeyEvent keyEvent) {
            if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && DialogsActivity.this.scrimPopupWindow != null && DialogsActivity.this.scrimPopupWindow.isShowing()) {
                DialogsActivity.this.scrimPopupWindow.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$2(int i, TopicView topicView, View view) {
            if (i == 0) {
                DialogsActivity.this.resetScroll();
                DialogsActivity.this.topicsBar.setEditing(true);
                DialogsActivity.this.showDoneItem(true);
            } else if (i == 1) {
                DialogsActivity.this.presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
            } else if (i == 2) {
                DialogsActivity.this.presentFragment(new FilterCreateActivity(topicView.getTopic(), null, FilterActivityType.TOPIC));
            } else if (i == 3) {
                if (topicView.getTopic() != null) {
                    showDeleteAlert(topicView.getTopic());
                }
            } else {
                DialogsActivity.this.getTopicsController().setNoTopicFirstEnabled(!DialogsActivity.this.getTopicsController().isNoTopicFirstEnabled());
                DialogsActivity.this.getTopicsController().saveConfig();
                DialogsActivity.this.updateTopicsBar();
            }
            if (DialogsActivity.this.scrimPopupWindow != null) {
                DialogsActivity.this.scrimPopupWindow.dismiss();
            }
        }

        @Override // com.smedialink.p031ui.topics.TopicsBar.TopicsBarDelegate
        public void onTopicSelected(long j) {
            DialogsActivity.this.floatingButtonContainer.setVisibility(8);
            if (DialogsActivity.this.topFilterTabsShadow != null) {
                DialogsActivity.this.topFilterTabsShadow.setAlpha(0);
            }
            if (DialogsActivity.this.getTopicsController().getSelectedTopicId(DialogsActivity.this.isArchive()) == j) {
                DialogsActivity.this.floatingButtonContainer.setVisibility(0);
                if (DialogsActivity.this.topFilterTabsShadow != null) {
                    DialogsActivity.this.topFilterTabsShadow.setAlpha(1);
                }
                DialogsActivity.this.filterTabsView.notifyTabCounterChanged(DialogsActivity.this.filterTabsView.getDefaultTabId());
                return;
            }
            if (j != -1 && DialogsActivity.this.tabIdBeforeSelectTopic == -1) {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.tabIdBeforeSelectTopic = dialogsActivity.filterTabsView.getCurrentTabId();
            }
            DialogsActivity.this.getTopicsController().selectTopic(DialogsActivity.this.isArchive(), j);
            DialogsActivity.this.updateFilterTabs(true, true);
        }

        @Override // com.smedialink.p031ui.topics.TopicsBar.TopicsBarDelegate
        public boolean isTabMenuVisible() {
            return DialogsActivity.this.scrimPopupWindow != null && DialogsActivity.this.scrimPopupWindow.isShowing();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$49(View view) {
        if (this.delegate == null || this.selectedDialogs.isEmpty()) {
            return;
        }
        if (this.customForwardToInactiveAccount) {
            CharSequence fieldText = this.commentView.getFieldText();
            if (fieldText != null) {
                SendMessagesHelper.getInstance(UserConfig.selectedAccount).sendMessage(fieldText.toString(), getUserConfig().getClientUserId(), null, null, null, true, null, null, null, false, 0, null, false, null);
            }
            crossAccountsForward();
            return;
        }
        ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
        for (int i = 0; i < this.selectedDialogs.size(); i++) {
            arrayList.add(MessagesStorage.TopicKey.m42of(this.selectedDialogs.get(i).longValue(), 0));
        }
        this.delegate.didSelectDialogs(this, arrayList, this.commentView.getFieldText(), this.isNextButton, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$50(FrameLayout frameLayout, View view) {
        if (this.isNextButton) {
            return false;
        }
        onSendLongClick(frameLayout);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$51(View view) {
        openForwardingOptions();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$52(View view) {
        if (SharedConfig.isAppUpdateAvailable()) {
            AndroidUtilities.openForView(SharedConfig.pendingAppUpdate.document, true, getParentActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$41 */
    /* loaded from: classes5.dex */
    public class C539041 extends UndoView {
        C539041(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            if (this != DialogsActivity.this.undoView[0] || DialogsActivity.this.undoView[1].getVisibility() == 0) {
                return;
            }
            DialogsActivity.this.additionalFloatingTranslation = (getMeasuredHeight() + AndroidUtilities.m50dp(8)) - f;
            if (DialogsActivity.this.additionalFloatingTranslation < BitmapDescriptorFactory.HUE_RED) {
                DialogsActivity.this.additionalFloatingTranslation = BitmapDescriptorFactory.HUE_RED;
            }
            if (DialogsActivity.this.floatingHidden) {
                return;
            }
            DialogsActivity.this.updateFloatingButtonOffset();
        }

        @Override // org.telegram.p048ui.Components.UndoView
        protected boolean canUndo() {
            for (int i = 0; i < DialogsActivity.this.viewPages.length; i++) {
                if (DialogsActivity.this.viewPages[i].dialogsItemAnimator.isRunning()) {
                    return false;
                }
            }
            return true;
        }

        @Override // org.telegram.p048ui.Components.UndoView
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
                        } else if (((TLRPC$Dialog) DialogsActivity.this.frozenDialogsList.get(i3)).f1500id == j) {
                            i2 = i3;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (i2 >= 0) {
                        final TLRPC$Dialog tLRPC$Dialog = (TLRPC$Dialog) DialogsActivity.this.frozenDialogsList.remove(i2);
                        DialogsActivity.this.viewPages[0].dialogsAdapter.notifyDataSetChanged();
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$41$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.C539041.this.lambda$onRemoveDialogAction$0(i2, tLRPC$Dialog);
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$53(View view) {
        finishPreviewFragment();
    }

    public boolean isPremiumHintVisible() {
        if (MessagesController.getInstance(this.currentAccount).premiumLocked || this.folderId != 0 || ((!(MessagesController.getInstance(this.currentAccount).pendingSuggestions.contains("PREMIUM_UPGRADE") && getUserConfig().isPremium()) && (!MessagesController.getInstance(this.currentAccount).pendingSuggestions.contains("PREMIUM_ANNUAL") || getUserConfig().isPremium())) || (!UserConfig.getInstance(this.currentAccount).isPremium() ? MediaDataController.getInstance(this.currentAccount).getPremiumHintAnnualDiscount(false) != null : !(BuildVars.useInvoiceBilling() || MediaDataController.getInstance(this.currentAccount).getPremiumHintAnnualDiscount(true) == null)))) {
            return false;
        }
        this.isPremiumHintUpgrade = MessagesController.getInstance(this.currentAccount).pendingSuggestions.contains("PREMIUM_UPGRADE");
        return true;
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
            int m50dp = (-(this.actionBar.getHeight() - rect.centerY())) - AndroidUtilities.m50dp(16);
            i = rect.centerX() - AndroidUtilities.m50dp(16);
            DrawerProfileCell.AnimatedStatusView animatedStatusView = this.animatedStatusView;
            if (animatedStatusView != null) {
                animatedStatusView.translate(rect.centerX(), rect.centerY());
            }
            i2 = m50dp;
        }
        int i3 = i2;
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(this, getContext(), true, Integer.valueOf(i), 0, getResourceProvider()) { // from class: org.telegram.ui.DialogsActivity.44
            @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog
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
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, -2, -2) { // from class: org.telegram.ui.DialogsActivity.45
            @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                DialogsActivity.this.selectAnimatedEmojiDialog = null;
            }
        };
        this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(this.actionBar, AndroidUtilities.m50dp(16), i3, 48);
        selectAnimatedEmojiDialogWindowArr[0].dimBehind();
    }

    private void updateDialogsHint() {
        if (this.dialogsHintCell == null) {
            return;
        }
        if (isPremiumHintVisible()) {
            this.dialogsHintCell.setVisibility(0);
            this.dialogsHintCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda33
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateDialogsHint$56(view);
                }
            });
            this.dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString(this.isPremiumHintUpgrade ? C3158R.string.SaveOnAnnualPremiumTitle : C3158R.string.UpgradePremiumTitle, MediaDataController.getInstance(this.currentAccount).getPremiumHintAnnualDiscount(false)), "windowBackgroundWhiteValueText", 0, null), LocaleController.getString(this.isPremiumHintUpgrade ? C3158R.string.UpgradePremiumMessage : C3158R.string.SaveOnAnnualPremiumMessage));
        } else if (isCacheHintVisible()) {
            this.dialogsHintCell.setVisibility(0);
            this.dialogsHintCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda39
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateDialogsHint$58(view);
                }
            });
            this.dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString(C3158R.string.ClearStorageHintTitle, AndroidUtilities.formatFileSize(this.cacheSize.longValue())), "windowBackgroundWhiteValueText", 0, null), LocaleController.getString(C3158R.string.ClearStorageHintMessage));
        } else {
            this.dialogsHintCell.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$56(View view) {
        presentFragment(new PremiumPreviewFragment("dialogs_hint").setSelectAnnualByDefault());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$updateDialogsHint$55();
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$55() {
        MessagesController.getInstance(this.currentAccount).removeSuggestion(0L, this.isPremiumHintUpgrade ? "PREMIUM_UPGRADE" : "PREMIUM_ANNUAL");
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$58(View view) {
        presentFragment(new CacheControlActivity());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda80
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$updateDialogsHint$57();
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$57() {
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
            channelCreateActivity.setOnFinishListener(new Utilities.Callback2() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda123
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    DialogsActivity.this.lambda$createGroupForThis$68(channelCreateActivity, alertDialog, (BaseFragment) obj, (Long) obj2);
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
            groupCreateFinalActivity.setDelegate(new C539646(alertDialog));
            presentFragment(groupCreateFinalActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$68(final ChannelCreateActivity channelCreateActivity, final AlertDialog alertDialog, final BaseFragment baseFragment, final Long l) {
        Utilities.doCallbacks(new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda127
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$60(l, channelCreateActivity, baseFragment, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda128
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$62(alertDialog, l, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda125
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$64(l, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda126
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$66(l, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda129
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$67(alertDialog, l, channelCreateActivity, baseFragment, (Runnable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$60(Long l, final ChannelCreateActivity channelCreateActivity, final BaseFragment baseFragment, Runnable runnable) {
        showSendToBotAlert(getMessagesController().getChat(l), runnable, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda97
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createGroupForThis$59(channelCreateActivity, baseFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$59(ChannelCreateActivity channelCreateActivity, BaseFragment baseFragment) {
        removeSelfFromStack();
        channelCreateActivity.removeSelfFromStack();
        baseFragment.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$62(AlertDialog alertDialog, Long l, final Runnable runnable) {
        alertDialog.showDelayed(150L);
        Boolean bool = this.requestPeerType.bot_participant;
        if (bool != null && bool.booleanValue()) {
            getMessagesController().addUserToChat(l.longValue(), getMessagesController().getUser(Long.valueOf(this.requestPeerBotId)), 0, null, this, false, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda116
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
    public /* synthetic */ void lambda$createGroupForThis$64(Long l, final Runnable runnable) {
        if (this.requestPeerType.bot_admin_rights != null) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.requestPeerBotId));
            MessagesController messagesController = getMessagesController();
            long longValue = l.longValue();
            TLRPC$RequestPeerType tLRPC$RequestPeerType = this.requestPeerType;
            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = tLRPC$RequestPeerType.bot_admin_rights;
            Boolean bool = tLRPC$RequestPeerType.bot_participant;
            messagesController.setUserAdminRole(longValue, user, tLRPC$TL_chatAdminRights, null, false, this, bool == null || !bool.booleanValue(), true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda118
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
    public /* synthetic */ void lambda$createGroupForThis$66(Long l, final Runnable runnable) {
        if (this.requestPeerType.user_admin_rights != null) {
            getMessagesController().setUserAdminRole(l.longValue(), getAccountInstance().getUserConfig().getCurrentUser(), ChatRightsEditActivity.rightsOR(getMessagesController().getChat(l).admin_rights, this.requestPeerType.user_admin_rights), null, true, this, false, true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda115
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
    public /* synthetic */ void lambda$createGroupForThis$67(AlertDialog alertDialog, Long l, ChannelCreateActivity channelCreateActivity, BaseFragment baseFragment, Runnable runnable) {
        alertDialog.dismiss();
        getMessagesController().loadChannelParticipants(l);
        DialogsActivityDelegate dialogsActivityDelegate = this.delegate;
        removeSelfFromStack();
        channelCreateActivity.removeSelfFromStack();
        baseFragment.finishFragment();
        if (dialogsActivityDelegate != null) {
            ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
            arrayList.add(MessagesStorage.TopicKey.m42of(-l.longValue(), 0));
            dialogsActivityDelegate.didSelectDialogs(this, arrayList, null, false, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$46 */
    /* loaded from: classes5.dex */
    public class C539646 implements GroupCreateFinalActivity.GroupCreateFinalActivityDelegate {
        final /* synthetic */ AlertDialog val$progress;

        @Override // org.telegram.p048ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
        public void didFailChatCreation() {
        }

        @Override // org.telegram.p048ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
        public void didStartChatCreation() {
        }

        C539646(AlertDialog alertDialog) {
            this.val$progress = alertDialog;
        }

        @Override // org.telegram.p048ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
        public void didFinishChatCreation(GroupCreateFinalActivity groupCreateFinalActivity, final long j) {
            final BaseFragment[] baseFragmentArr = {groupCreateFinalActivity, null};
            final AlertDialog alertDialog = this.val$progress;
            final AlertDialog alertDialog2 = this.val$progress;
            Utilities.doCallbacks(new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C539646.this.lambda$didFinishChatCreation$1(j, baseFragmentArr, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C539646.this.lambda$didFinishChatCreation$3(j, baseFragmentArr, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C539646.this.lambda$didFinishChatCreation$5(alertDialog, j, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C539646.this.lambda$didFinishChatCreation$7(j, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C539646.this.lambda$didFinishChatCreation$9(j, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C539646.this.lambda$didFinishChatCreation$10(alertDialog2, j, baseFragmentArr, (Runnable) obj);
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
                channelCreateActivity.setOnFinishListener(new Utilities.Callback2() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda4
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
            DialogsActivity.this.showSendToBotAlert(DialogsActivity.this.getMessagesController().getChat(Long.valueOf(j)), runnable, new Runnable() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C539646.this.lambda$didFinishChatCreation$2(baseFragmentArr);
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
                DialogsActivity.this.getMessagesController().addUserToChat(j, DialogsActivity.this.getMessagesController().getUser(Long.valueOf(DialogsActivity.this.requestPeerBotId)), 0, null, DialogsActivity.this, false, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda1
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
                messagesController.setUserAdminRole(j, user, tLRPC$TL_chatAdminRights, null, false, dialogsActivity, dialogsActivity.requestPeerType.bot_participant == null || !DialogsActivity.this.requestPeerType.bot_participant.booleanValue(), true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda3
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
                DialogsActivity.this.getMessagesController().setUserAdminRole(j, DialogsActivity.this.getAccountInstance().getUserConfig().getCurrentUser(), ChatRightsEditActivity.rightsOR(DialogsActivity.this.getMessagesController().getChat(Long.valueOf(j)).admin_rights, DialogsActivity.this.requestPeerType.user_admin_rights), null, false, DialogsActivity.this, false, true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$46$$ExternalSyntheticLambda2
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
                arrayList.add(MessagesStorage.TopicKey.m42of(-j, 0));
                dialogsActivityDelegate.didSelectDialogs(DialogsActivity.this, arrayList, null, false, null);
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
                this.updateLayoutAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.47
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
                this.updateLayoutAnimator.playTogether(ObjectAnimator.ofFloat(this.updateLayout, View.TRANSLATION_Y, AndroidUtilities.m50dp(48)));
                this.updateLayoutAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.48
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
            this.updateLayout.setTranslationY(AndroidUtilities.m50dp(48));
            this.updateLayout.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContextViewPosition() {
        FilterTabsView filterTabsView;
        boolean z = SharedConfig.isFilterTabsAtBottomEnabled;
        float f = BitmapDescriptorFactory.HUE_RED;
        float measuredHeight = ((z && !isCustomForward() && !isManagement()) || (filterTabsView = this.filterTabsView) == null || filterTabsView.getVisibility() == 8) ? BitmapDescriptorFactory.HUE_RED : this.filterTabsView.getMeasuredHeight();
        if (!getTopicsController().isTopicsBarAtBottomEnabled()) {
            measuredHeight += getTopicsBarHeight();
        }
        float horizontalListViewHeight = measuredHeight + getHorizontalListViewHeight();
        ViewPagerFixed.TabsView tabsView = this.searchTabsView;
        float measuredHeight2 = (tabsView == null || tabsView.getVisibility() == 8) ? BitmapDescriptorFactory.HUE_RED : this.searchTabsView.getMeasuredHeight();
        if (this.fragmentContextView != null) {
            FragmentContextView fragmentContextView = this.fragmentLocationContextView;
            float m50dp = (fragmentContextView == null || fragmentContextView.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(36) + BitmapDescriptorFactory.HUE_RED;
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                FragmentContextView fragmentContextView2 = this.fragmentContextView;
                fragmentContextView2.setTranslationY(m50dp + fragmentContextView2.getTopPadding() + this.actionBar.getTranslationY() + (this.searchAnimationProgress * measuredHeight2));
            } else {
                FragmentContextView fragmentContextView3 = this.fragmentContextView;
                float topPadding = m50dp + fragmentContextView3.getTopPadding() + this.actionBar.getTranslationY();
                float f2 = this.searchAnimationProgress;
                fragmentContextView3.setTranslationY(topPadding + ((1.0f - f2) * horizontalListViewHeight) + (f2 * measuredHeight2) + this.tabsYOffset);
            }
        }
        if (this.fragmentLocationContextView != null) {
            FragmentContextView fragmentContextView4 = this.fragmentContextView;
            if (fragmentContextView4 != null && fragmentContextView4.getVisibility() == 0) {
                f = BitmapDescriptorFactory.HUE_RED + AndroidUtilities.m50dp(this.fragmentContextView.getStyleHeight()) + this.fragmentContextView.getTopPadding();
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
            fragmentContextView6.setTranslationY(topPadding2 + (horizontalListViewHeight * (1.0f - f3)) + (measuredHeight2 * f3) + this.tabsYOffset);
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
    public void updateFiltersView(boolean r11, java.util.ArrayList<java.lang.Object> r12, java.util.ArrayList<org.telegram.p048ui.Adapters.FiltersView.DateData> r13, boolean r14, boolean r15) {
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
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
        L16:
            int r7 = r0.size()
            r8 = 1
            if (r2 >= r7) goto L54
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p048ui.Adapters.FiltersView.MediaFilterData) r7
            boolean r7 = r7.isMedia()
            if (r7 == 0) goto L2b
            r4 = 1
            goto L51
        L2b:
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p048ui.Adapters.FiltersView.MediaFilterData) r7
            int r7 = r7.filterType
            r9 = 4
            if (r7 != r9) goto L38
            r5 = 1
            goto L51
        L38:
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p048ui.Adapters.FiltersView.MediaFilterData) r7
            int r7 = r7.filterType
            r9 = 6
            if (r7 != r9) goto L45
            r6 = 1
            goto L51
        L45:
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p048ui.Adapters.FiltersView.MediaFilterData) r7
            int r7 = r7.filterType
            r9 = 7
            if (r7 != r9) goto L51
            r3 = 1
        L51:
            int r2 = r2 + 1
            goto L16
        L54:
            if (r3 == 0) goto L57
            r14 = 0
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
            r0 = 1
            goto L6c
        L6b:
            r0 = 0
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
            r11 = 1
            goto L9c
        L9b:
            r11 = 0
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.updateFiltersView(boolean, java.util.ArrayList, java.util.ArrayList, boolean, boolean):void");
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
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.49
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
        this.selectedDialogsCountTextView.setTextColor(Theme.getColor("actionBarActionModeDefaultIcon"));
        createActionMode.addView(this.selectedDialogsCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, 72, 0, 0, 0));
        this.selectedDialogsCountTextView.setOnTouchListener(DialogsActivity$$ExternalSyntheticLambda56.INSTANCE);
        this.selectTopicItem = createActionMode.addItemWithWidth(IdFabric$Menu.DIALOGS_SELECT_TOPIC, C3158R.C3160drawable.fork_topic_select_26, AndroidUtilities.m50dp(54));
        int i = C3158R.C3160drawable.msg_pin;
        this.pinItem = createActionMode.addItemWithWidth(100, i, AndroidUtilities.m50dp(54));
        this.muteItem = createActionMode.addItemWithWidth(104, C3158R.C3160drawable.msg_mute, AndroidUtilities.m50dp(54));
        int i2 = C3158R.C3160drawable.msg_archive;
        this.archive2Item = createActionMode.addItemWithWidth(107, i2, AndroidUtilities.m50dp(54));
        this.deleteItem = createActionMode.addItemWithWidth(102, C3158R.C3160drawable.msg_delete, AndroidUtilities.m50dp(54), LocaleController.getString("Delete", C3158R.string.Delete));
        ActionBarMenuItem addItemWithWidth = createActionMode.addItemWithWidth(0, C3158R.C3160drawable.ic_ab_other, AndroidUtilities.m50dp(54), LocaleController.getString("AccDescrMoreOptions", C3158R.string.AccDescrMoreOptions));
        this.actionModeOtherItem = addItemWithWidth;
        this.archiveItem = addItemWithWidth.addSubItem(105, i2, LocaleController.getString("Archive", C3158R.string.Archive));
        this.pin2Item = addItemWithWidth.addSubItem(108, i, LocaleController.getString("DialogPin", C3158R.string.DialogPin));
        this.addToFolderItem = addItemWithWidth.addSubItem(109, C3158R.C3160drawable.msg_addfolder, LocaleController.getString("FilterAddTo", C3158R.string.FilterAddTo));
        this.removeFromFolderItem = addItemWithWidth.addSubItem(110, C3158R.C3160drawable.msg_removefolder, LocaleController.getString("FilterRemoveFrom", C3158R.string.FilterRemoveFrom));
        this.moveToFolderItem = addItemWithWidth.addSubItem(IdFabric$Menu.DIALOGS_MOVE_TO_FOLDER, C3158R.C3160drawable.fork_ic_replace_24, LocaleController.getInternalString(C3158R.string.dialogs_activity_move_to_folder));
        this.readItem = addItemWithWidth.addSubItem(101, C3158R.C3160drawable.msg_markread, LocaleController.getString("MarkAsRead", C3158R.string.MarkAsRead));
        this.clearItem = addItemWithWidth.addSubItem(103, C3158R.C3160drawable.msg_clear, LocaleController.getString("ClearHistory", C3158R.string.ClearHistory));
        this.blockItem = addItemWithWidth.addSubItem(106, C3158R.C3160drawable.msg_block, LocaleController.getString("BlockUser", C3158R.string.BlockUser));
        this.muteItem.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda53
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean lambda$createActionMode$70;
                lambda$createActionMode$70 = DialogsActivity.this.lambda$createActionMode$70(view);
                return lambda$createActionMode$70;
            }
        });
        this.actionModeViews.add(this.selectTopicItem);
        this.actionModeViews.add(this.pinItem);
        this.actionModeViews.add(this.archive2Item);
        this.actionModeViews.add(this.muteItem);
        this.actionModeViews.add(this.deleteItem);
        this.actionModeViews.add(addItemWithWidth);
        if (str == null) {
            this.actionBar.setActionBarMenuOnItemClick(new C540150());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createActionMode$70(View view) {
        performSelectedDialogsAction(this.selectedDialogs, 104, true, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$50 */
    /* loaded from: classes5.dex */
    public class C540150 extends C3222ActionBar.ActionBarMenuOnItemClick {
        C540150() {
        }

        @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == IdFabric$Menu.MESSAGE_FORWARD_CLOUD) {
                DialogsActivity.this.searchViewPager.onActionBarItemClick(i);
            } else if ((i == 201 || i == 200 || i == 202 || i == 203) && DialogsActivity.this.searchViewPager != null) {
                DialogsActivity.this.searchViewPager.onActionBarItemClick(i);
            } else {
                if (i == IdFabric$Menu.DIALOGS_MANAGEMENT_DELETE_ALL) {
                    if (DialogsActivity.this.viewPages[0].dialogsType == 401) {
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        AlertsCreator.showConfirmationDialog(dialogsActivity, dialogsActivity.getParentActivity(), LocaleController.getString("DeleteAll", C3158R.string.DeleteAll), LocaleController.getInternalString(C3158R.string.management_bookmarks_delete_all_alert_message), LocaleController.getString("Delete", C3158R.string.Delete), true, DialogsActivity.this.getResourceProvider(), new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$50$$ExternalSyntheticLambda3
                            @Override // org.fork.utils.Callbacks$Callback1
                            public final void invoke(Object obj) {
                                DialogsActivity.C540150.this.lambda$onItemClick$0((Boolean) obj);
                            }
                        });
                        return;
                    }
                    AlertsCreator.showDeleteAllCloudDraftsAlert(DialogsActivity.this);
                } else if (i == IdFabric$Menu.DIALOGS_ARCHIVE_LOCK) {
                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                    dialogsActivity2.presentFragment(PasscodeActivity.determineOpenFragment(dialogsActivity2.getScreenLockedSection()));
                } else {
                    int i2 = IdFabric$Menu.SEARCH_QR;
                    if (i == i2 || i == IdFabric$Menu.DIALOGS_SCAN_LOGIN_QR_CODE) {
                        DialogsActivity.this.currentQrScannerType = i == i2 ? IdFabric$CustomType.QR_CODE_SCANNER_CHAT_LINK : 2;
                        if (Build.VERSION.SDK_INT < 23 || DialogsActivity.this.getParentActivity().checkSelfPermission("android.permission.CAMERA") == 0) {
                            DialogsActivity.this.openQrCodeScan();
                        } else {
                            DialogsActivity.this.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
                        }
                    } else if (i == IdFabric$Menu.SEARCH_TEL) {
                        Bundle bundle = new Bundle();
                        bundle.putInt("custom_screen_type", IdFabric$CustomType.LOGIN_SEARCH_BY_TEL);
                        DialogsActivity.this.presentFragment(new LoginActivity(bundle));
                    } else if (i == IdFabric$Menu.DIALOGS_TOOLS_SETTINGS) {
                        DialogsActivity.this.presentFragment(new SettingsToolsActivity());
                    } else if (i == IdFabric$Menu.DIALOGS_CHAT_SETTINGS) {
                        DialogsActivity.this.presentFragment(new ThemeActivity(0));
                    } else if (i == IdFabric$Menu.DIALOGS_CLEAR_CACHE) {
                        DialogsActivity.this.prepareClearCacheBottomSheet();
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
                        dialogsActivity3.showDialog(new TopicsAlert(dialogsActivity4, dialogsActivity4.selectedDialogs, true, new TopicsAlert.TopicsAlertDelegate() { // from class: org.telegram.ui.DialogsActivity$50$$ExternalSyntheticLambda0
                            @Override // com.smedialink.p031ui.topics.TopicsAlert.TopicsAlertDelegate
                            public final void onTopicSelected() {
                                DialogsActivity.C540150.this.lambda$onItemClick$1();
                            }
                        }));
                    } else if (i == IdFabric$Menu.SWITCH_ACCOUNT) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("user_id", DialogsActivity.this.getUserConfig().getClientUserId());
                        if (DialogsActivity.this.switchItemImageView.getImageReceiver().hasNotThumb()) {
                            bundle2.putBoolean("expandPhoto", true);
                        }
                        DialogsActivity.this.presentFragment(new ProfileActivity(bundle2));
                    } else if (i == IdFabric$Menu.SWITCH_ARCHIVE) {
                        DialogsActivity dialogsActivity5 = DialogsActivity.this;
                        dialogsActivity5.customForwardArchive = dialogsActivity5.customForwardSwitchArchiveImageView.toggleArchive();
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(DialogsActivity.this.getSwitchArchiveAnimators(true));
                        animatorSet.setDuration(200L);
                        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.50.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                ViewPage[] viewPageArr;
                                ColorBlenderAnimator colorBlenderAnimator;
                                if (DialogsActivity.this.customForwardArchive) {
                                    DialogsActivity dialogsActivity6 = DialogsActivity.this;
                                    dialogsActivity6.customForwardLastMainSelectedTab = dialogsActivity6.filterTabsView.getCurrentTabId();
                                } else {
                                    DialogsActivity dialogsActivity7 = DialogsActivity.this;
                                    dialogsActivity7.customForwardLastArchiveSelectedTab = dialogsActivity7.filterTabsView.getCurrentTabId();
                                }
                                for (ViewPage viewPage2 : DialogsActivity.this.viewPages) {
                                    viewPage2.dialogsAdapter.setFolderId(DialogsActivity.this.customForwardArchive ? 1 : 0);
                                    viewPage2.dialogsAdapter.notifyDataSetChanged();
                                }
                                DialogsActivity.this.filterTabsView.setCustomForwardArchive(DialogsActivity.this.customForwardArchive);
                                DialogsActivity.this.updateFilterTabs(true, false);
                                if (DialogsActivity.this.customForwardArchive) {
                                    DialogsActivity dialogsActivity8 = DialogsActivity.this;
                                    dialogsActivity8.scrollToFilterTab(dialogsActivity8.customForwardLastArchiveSelectedTab);
                                } else {
                                    DialogsActivity dialogsActivity9 = DialogsActivity.this;
                                    dialogsActivity9.scrollToFilterTab(dialogsActivity9.customForwardLastMainSelectedTab);
                                }
                                DialogsActivity.this.customForwardScrollView.setTranslationY(-AndroidUtilities.m50dp(44));
                                DialogsActivity.this.filterTabsView.setTranslationY(-AndroidUtilities.m50dp(44));
                                DialogsActivity.this.actionBarDefaultPaint.setColor(Theme.getColor(DialogsActivity.this.customForwardArchive ? "actionBarDefaultArchived" : "actionBarDefault"));
                                DialogsActivity.this.filterTabsView.getTabsContainer().setSelectorDrawableColor(Theme.getColor(DialogsActivity.this.customForwardArchive ? "actionBarDefaultArchivedSelector" : "actionBarDefaultSelector"));
                                AnimatorSet animatorSet2 = new AnimatorSet();
                                if (DialogsActivity.this.customForwardArchive) {
                                    colorBlenderAnimator = new ColorBlenderAnimator("actionBarDefault", "actionBarDefaultArchived");
                                } else {
                                    colorBlenderAnimator = new ColorBlenderAnimator("actionBarDefaultArchived", "actionBarDefault");
                                }
                                animatorSet2.playTogether(ObjectAnimator.ofFloat(((BaseFragment) DialogsActivity.this).actionBar, colorBlenderAnimator, BitmapDescriptorFactory.HUE_RED, 1.0f));
                                animatorSet2.setDuration(50L);
                                animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.50.1.1
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator2) {
                                        AnimatorSet animatorSet3 = new AnimatorSet();
                                        animatorSet3.playTogether(DialogsActivity.this.getSwitchArchiveAnimators(false));
                                        animatorSet3.setDuration(200L);
                                        animatorSet3.start();
                                    }
                                });
                                animatorSet2.start();
                            }
                        });
                        animatorSet.start();
                    } else if (i == -1) {
                        if (!DialogsActivity.this.isCustomForward() || !DialogsActivity.this.searching) {
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
                        DialogsActivity.this.customForwardEditText.setText((CharSequence) null);
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
                        ((LaunchActivity) DialogsActivity.this.getParentActivity()).showPasscodeActivity(false, true, iArr[0] + (DialogsActivity.this.passcodeItem.getMeasuredWidth() / 2), iArr[1] + (DialogsActivity.this.passcodeItem.getMeasuredHeight() / 2), new Runnable() { // from class: org.telegram.ui.DialogsActivity$50$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.C540150.this.lambda$onItemClick$2();
                            }
                        }, new Runnable() { // from class: org.telegram.ui.DialogsActivity$50$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.C540150.this.lambda$onItemClick$3();
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
                            if (DialogsActivity.this.isMainNoFolderDialogList()) {
                                launchActivity.switchToAccount(i3, true);
                            } else if (DialogsActivity.this.isCustomForward() && !DialogsActivity.this.customSharingMode) {
                                if (i3 == UserConfig.selectedAccount) {
                                    ((BaseFragment) DialogsActivity.this).arguments.remove("selectAlertString");
                                    ((BaseFragment) DialogsActivity.this).arguments.remove("selectAlertStringGroup");
                                } else {
                                    ((BaseFragment) DialogsActivity.this).arguments.putString("selectAlertString", LocaleController.getString("SendMessagesToText", C3158R.string.SendMessagesToText));
                                    ((BaseFragment) DialogsActivity.this).arguments.putString("selectAlertStringGroup", LocaleController.getString("SendMessagesToGroupText", C3158R.string.SendMessagesToGroupText));
                                }
                                DialogsActivity dialogsActivity6 = new DialogsActivity(((BaseFragment) DialogsActivity.this).arguments);
                                dialogsActivity6.setCurrentAccount(i3);
                                dialogsActivity6.setDelegate(dialogsActivityDelegate);
                                dialogsActivity6.setCustomForwardDelegate(DialogsActivity.this.customForwardDelegate);
                                launchActivity.presentFragment(dialogsActivity6, true, true);
                            } else {
                                launchActivity.switchToAccount(i3, true);
                                DialogsActivity dialogsActivity7 = new DialogsActivity(((BaseFragment) DialogsActivity.this).arguments);
                                if (DialogsActivity.this.customSharingMode) {
                                    dialogsActivity7.enableCustomSharingMode();
                                }
                                dialogsActivity7.setDelegate(dialogsActivityDelegate);
                                launchActivity.presentFragment(dialogsActivity7, false, true);
                            }
                        }
                    } else if (i == 109) {
                        DialogsActivity dialogsActivity8 = DialogsActivity.this;
                        FiltersListBottomSheet filtersListBottomSheet = new FiltersListBottomSheet(dialogsActivity8, dialogsActivity8.selectedDialogs);
                        filtersListBottomSheet.setDelegate(new FiltersListBottomSheet.FiltersListBottomSheetDelegate() { // from class: org.telegram.ui.DialogsActivity$50$$ExternalSyntheticLambda4
                            @Override // org.telegram.p048ui.Components.FiltersListBottomSheet.FiltersListBottomSheetDelegate
                            public final void didSelectFilter(MessagesController.DialogFilter dialogFilter) {
                                DialogsActivity.C540150.this.lambda$onItemClick$4(dialogFilter);
                            }
                        });
                        DialogsActivity.this.showDialog(filtersListBottomSheet);
                    } else if (i != 110) {
                        if (i == 100 || i == 101 || i == 102 || i == 103 || i == 104 || i == 105 || i == 106 || i == 107 || i == 108) {
                            DialogsActivity dialogsActivity9 = DialogsActivity.this;
                            dialogsActivity9.performSelectedDialogsAction(dialogsActivity9.selectedDialogs, i, true, false);
                        }
                    } else {
                        MessagesController.DialogFilter dialogFilter = DialogsActivity.this.getMessagesController().dialogFilters.get(DialogsActivity.this.viewPages[0].selectedType);
                        DialogsActivity dialogsActivity10 = DialogsActivity.this;
                        ArrayList<Long> dialogsCount = FiltersListBottomSheet.getDialogsCount(dialogsActivity10, dialogFilter, dialogsActivity10.selectedDialogs, false, false);
                        if ((dialogFilter != null ? dialogFilter.neverShow.size() : 0) + dialogsCount.size() > 100) {
                            DialogsActivity dialogsActivity11 = DialogsActivity.this;
                            dialogsActivity11.showDialog(AlertsCreator.createSimpleAlert(dialogsActivity11.getParentActivity(), LocaleController.getString("FilterAddToAlertFullTitle", C3158R.string.FilterAddToAlertFullTitle), LocaleController.getString("FilterAddToAlertFullText", C3158R.string.FilterAddToAlertFullText)).create());
                            return;
                        }
                        if (!dialogsCount.isEmpty()) {
                            dialogFilter.neverShow.addAll(dialogsCount);
                            for (int i4 = 0; i4 < dialogsCount.size(); i4++) {
                                Long l = dialogsCount.get(i4);
                                dialogFilter.alwaysShow.remove(l);
                                dialogFilter.pinnedDialogs.delete(l.longValue());
                            }
                            FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, false, false, true, false, false, DialogsActivity.this, null);
                        }
                        DialogsActivity.this.getUndoView().showWithAction(dialogsCount.size() == 1 ? dialogsCount.get(0).longValue() : 0L, 21, Integer.valueOf(dialogsCount.size()), dialogFilter, (Runnable) null, (Runnable) null);
                        DialogsActivity.this.hideActionMode(false);
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
        public /* synthetic */ void lambda$onItemClick$1() {
            for (ViewPage viewPage : DialogsActivity.this.viewPages) {
                viewPage.dialogsAdapter.notifyDataSetChanged();
            }
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
                    DialogsActivity.this.getUndoView().showWithAction(j, 20, Integer.valueOf(arrayList2.size()), dialogFilter, (Runnable) null, (Runnable) null);
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

    /* JADX INFO: Access modifiers changed from: private */
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
        boolean z2 = i3 == DIALOGS_TYPE_ALBUMS || isManagement();
        if (z2) {
            this.viewPages[z ? 1 : 0].dialogsType = i3;
        }
        MessagesController.DialogFilter filterById = getFilterById(i3);
        if (filterById != null && !z2) {
            if (!filterById.isDefault()) {
                if (this.viewPages[!z ? 1 : 0].dialogsType == 7) {
                    this.viewPages[z ? 1 : 0].dialogsType = 8;
                } else {
                    this.viewPages[z ? 1 : 0].dialogsType = 7;
                }
                if (isCustomForward()) {
                    if (this.viewPages[!z ? 1 : 0].dialogsType == 200) {
                        this.viewPages[z ? 1 : 0].dialogsType = 201;
                    } else {
                        this.viewPages[z ? 1 : 0].dialogsType = 200;
                    }
                } else if (isArchive()) {
                    if (this.viewPages[!z ? 1 : 0].dialogsType == 300) {
                        this.viewPages[z ? 1 : 0].dialogsType = 301;
                    } else {
                        this.viewPages[z ? 1 : 0].dialogsType = 300;
                    }
                }
                this.viewPages[z ? 1 : 0].listView.setScrollEnabled(true);
                if (isCustomForward()) {
                    getMessagesController().selectDialogFilter(filterById, this.viewPages[z ? 1 : 0].dialogsType == 201 ? 1 : 0, getMessagesController().selectedForwardDialogFilter);
                } else if (isArchive()) {
                    getMessagesController().selectDialogFilter(filterById, this.viewPages[z ? 1 : 0].dialogsType == 301 ? 1 : 0, getMessagesController().selectedArchiveDialogFilter);
                } else {
                    getMessagesController().selectDialogFilter(filterById, this.viewPages[z ? 1 : 0].dialogsType == 8 ? 1 : 0);
                }
            } else {
                if (isCustomForward()) {
                    this.viewPages[z ? 1 : 0].dialogsType = 3;
                } else {
                    this.viewPages[z ? 1 : 0].dialogsType = 0;
                }
                this.viewPages[z ? 1 : 0].listView.updatePullState();
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
    /* JADX WARN: Code restructure failed: missing block: B:133:0x02cd, code lost:
        if (((getFiltersController().isHideFoldersEnabled() ? 0 : r2.size()) + r3.size()) == r6) goto L148;
     */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0484  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x04bc A[LOOP:2: B:213:0x04b7->B:215:0x04bc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x04ef  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x04c9 A[EDGE_INSN: B:256:0x04c9->B:216:0x04c9 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateFilterTabs(boolean r28, boolean r29) {
        /*
            Method dump skipped, instructions count: 1344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.updateFilterTabs(boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFilterTabs$71(int i) {
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void finishFragment() {
        super.finishFragment();
        ActionBarPopupWindow actionBarPopupWindow = this.scrimPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        int i;
        View view;
        ForwardingPreviewView forwardingPreviewView;
        super.onResume();
        updateAlbumsMenu();
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer != null) {
            rightSlidingDialogContainer.onResume();
        }
        if (!this.parentLayout.isInPreviewMode() && (view = this.blurredView) != null && view.getVisibility() == 0 && ((forwardingPreviewView = this.forwardingPreviewView) == null || !forwardingPreviewView.isShowing())) {
            this.blurredView.setVisibility(8);
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
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda100
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.this.lambda$onResume$73(z, z2, parentActivity);
                    }
                }, (this.afterSignup && z) ? 4000L : 0L);
            }
        } else if (!this.onlySelect && XiaomiUtilities.isMIUI() && Build.VERSION.SDK_INT >= 19 && !XiaomiUtilities.isCustomPermissionGranted(XiaomiUtilities.OP_SHOW_WHEN_LOCKED)) {
            if (getParentActivity() == null || MessagesController.getGlobalNotificationsSettings().getBoolean("askedAboutMiuiLockscreen", false)) {
                return;
            }
            showDialog(new AlertDialog.Builder(getParentActivity()).setTopAnimation(C3158R.C3164raw.permission_request_apk, 72, false, Theme.getColor("dialogTopBackground")).setMessage(LocaleController.getString("PermissionXiaomiLockscreen", C3158R.string.PermissionXiaomiLockscreen)).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3158R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda17
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    DialogsActivity.this.lambda$onResume$74(dialogInterface, i3);
                }
            }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3158R.string.ContactsPermissionAlertNotNow), DialogsActivity$$ExternalSyntheticLambda22.INSTANCE).create());
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
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.DialogsActivity.51
            @Override // org.telegram.p048ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p048ui.Components.Bulletin.Delegate
            public /* synthetic */ int getBottomOffset(int i4) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i4);
            }

            @Override // org.telegram.p048ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p048ui.Components.Bulletin.Delegate
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

            @Override // org.telegram.p048ui.Components.Bulletin.Delegate
            public void onShow(Bulletin bulletin) {
                if (DialogsActivity.this.undoView[0] == null || DialogsActivity.this.undoView[0].getVisibility() != 0) {
                    return;
                }
                DialogsActivity.this.undoView[0].hide(true, 2);
            }

            @Override // org.telegram.p048ui.Components.Bulletin.Delegate
            public int getTopOffset(int i4) {
                int i5 = 0;
                int measuredHeight = (((BaseFragment) DialogsActivity.this).actionBar != null ? ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight() + ((int) ((BaseFragment) DialogsActivity.this).actionBar.getTranslationY()) : 0) + ((DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0) ? 0 : DialogsActivity.this.filterTabsView.getMeasuredHeight()) + ((DialogsActivity.this.fragmentContextView == null || !DialogsActivity.this.fragmentContextView.isCallTypeVisible()) ? 0 : AndroidUtilities.m50dp(DialogsActivity.this.fragmentContextView.getStyleHeight()));
                if (DialogsActivity.this.dialogsHintCell != null && DialogsActivity.this.dialogsHintCell.getVisibility() == 0) {
                    i5 = DialogsActivity.this.dialogsHintCell.getHeight();
                }
                return measuredHeight + i5;
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
    public /* synthetic */ void lambda$onResume$73(boolean z, boolean z2, Activity activity) {
        this.afterSignup = false;
        if (z || z2) {
            this.askingForPermissions = true;
            if (z && this.askAboutContacts && getUserConfig().syncContacts && activity.shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS")) {
                AlertDialog create = AlertsCreator.createContactsPermissionDialog(activity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda121
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i) {
                        DialogsActivity.this.lambda$onResume$72(i);
                    }
                }).create();
                this.permissionDialog = create;
                showDialog(create);
            } else if (z2 && activity.shouldShowRequestPermissionRationale("android.permission.WRITE_EXTERNAL_STORAGE")) {
                if (activity instanceof BasePermissionsActivity) {
                    AlertDialog createPermissionErrorAlert = ((BasePermissionsActivity) activity).createPermissionErrorAlert(C3158R.C3164raw.permission_request_folder, LocaleController.getString(C3158R.string.PermissionStorageWithHint));
                    this.permissionDialog = createPermissionErrorAlert;
                    showDialog(createPermissionErrorAlert);
                }
            } else {
                askForPermissons(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$72(int i) {
        this.askAboutContacts = i != 0;
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askAboutContacts", this.askAboutContacts).apply();
        askForPermissons(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$74(DialogInterface dialogInterface, int i) {
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
                FileLog.m45e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onResume$75(DialogInterface dialogInterface, int i) {
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askedAboutMiuiLockscreen", true).commit();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        int i = 0;
        expandMultiFab(false);
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer != null) {
            rightSlidingDialogContainer.onPause();
        }
        ActionBarPopupWindow actionBarPopupWindow = this.scrimPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        ForwardingPreviewView forwardingPreviewView = this.forwardingPreviewView;
        if (forwardingPreviewView != null && forwardingPreviewView.isShowing()) {
            this.forwardingPreviewView.dismiss(true);
            return false;
        } else if (this.multiFabExpanded) {
            expandMultiFab(false);
            return false;
        } else if (isCustomForward() && this.searching) {
            this.customForwardEditText.setText((CharSequence) null);
            return false;
        } else {
            TopicsBar topicsBar = this.topicsBar;
            if (topicsBar != null && topicsBar.isEditing()) {
                this.topicsBar.setEditing(false);
                showDoneItem(false);
                return false;
            } else if (this.rightSlidingDialogContainer.hasFragment()) {
                if (this.rightSlidingDialogContainer.getFragment().onBackPressed()) {
                    this.rightSlidingDialogContainer.lambda$presentFragment$1();
                    this.searchViewPager.updateTabs();
                }
                return false;
            } else {
                ActionBarPopupWindow actionBarPopupWindow = this.scrimPopupWindow;
                if (actionBarPopupWindow != null) {
                    actionBarPopupWindow.dismiss();
                    return false;
                }
                FilterTabsView filterTabsView = this.filterTabsView;
                if (filterTabsView != null && filterTabsView.isEditing()) {
                    this.filterTabsView.setIsEditing(false);
                    showDoneItem(false);
                    return false;
                }
                C3222ActionBar c3222ActionBar = this.actionBar;
                if (c3222ActionBar != null && c3222ActionBar.isActionModeShowed()) {
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
                    if (this.filterTabsView.getCurrentPosition() == 0 || isCustomForward() || isManagement()) {
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        if (this.closeSearchFieldOnHide) {
            C3222ActionBar c3222ActionBar = this.actionBar;
            if (c3222ActionBar != null) {
                c3222ActionBar.closeSearchField();
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
            int currentActionBarHeight = C3222ActionBar.getCurrentActionBarHeight();
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        if (SharedConfig.useLNavigation) {
            if (this.viewPages != null) {
                int i = 0;
                while (true) {
                    ViewPage[] viewPageArr = this.viewPages;
                    if (i >= viewPageArr.length) {
                        break;
                    }
                    if (viewPageArr[i].dialogsType == 0 && this.viewPages[i].archivePullViewState == 2 && this.viewPages[i].layoutManager.findFirstVisibleItemPosition() == 0 && hasHiddenArchive()) {
                        this.viewPages[i].layoutManager.scrollToPositionWithOffset(1, (int) this.actionBar.getTranslationY());
                    }
                    if (i == 0) {
                        this.viewPages[i].dialogsAdapter.resume();
                    } else {
                        this.viewPages[i].dialogsAdapter.pause();
                    }
                    i++;
                }
            }
            if (this.searchIsShowed) {
                AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
            }
            updateVisibleRows(0, false);
            updateProxyButton(false, true);
            checkSuggestClearDatabase();
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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
        if (isCustomForward()) {
            if (this.customForwardSelectedContacts.indexOfKey(j) >= 0) {
                if (view instanceof ProfileSearchCell) {
                    ((ProfileSearchCell) view).setChecked(false, true);
                }
                this.customForwardSpansContainer.removeSpan(this.customForwardSelectedContacts.get(j));
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
                this.customForwardSpansContainer.addSpan(groupCreateSpan, false);
                groupCreateSpan.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda31
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        DialogsActivity.this.lambda$addOrRemoveSelectedDialog$76(view2);
                    }
                });
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
    public /* synthetic */ void lambda$addOrRemoveSelectedDialog$76(View view) {
        GroupCreateSpan groupCreateSpan = (GroupCreateSpan) view;
        if (groupCreateSpan.isDeleting()) {
            addOrRemoveSelectedDialog(groupCreateSpan.getDialogId(), null);
            findAndUpdateCheckBox(groupCreateSpan.getDialogId(), false);
            updateSelectedCount();
            this.customForwardCurrentDeletingSpan = null;
            return;
        }
        GroupCreateSpan groupCreateSpan2 = this.customForwardCurrentDeletingSpan;
        if (groupCreateSpan2 != null) {
            groupCreateSpan2.cancelDeleteAnimation();
        }
        this.customForwardCurrentDeletingSpan = groupCreateSpan;
        groupCreateSpan.startDeleteAnimation();
    }

    public void search(String str, boolean z) {
        showSearch(true, false, z);
        this.actionBar.openSearchField(str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSearch(final boolean z, boolean z2, boolean z3) {
        float f;
        FilterTabsView filterTabsView;
        TopicsBar topicsBar;
        RightSlidingDialogContainer rightSlidingDialogContainer;
        int i;
        int i2;
        if (!z) {
            updateSpeedItem(false);
        }
        boolean z4 = (isCustomForward() || (i2 = this.initialDialogsType) == 0 || i2 == 3) ? z3 : false;
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
                searchField.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
                searchField.setHintTextColor(Theme.getColor("player_time"));
                searchField.setCursorColor(Theme.getColor("chat_messagePanelCursor"));
            } else {
                searchField.setCursorColor(Theme.getColor("actionBarDefaultSearch"));
                searchField.setHintTextColor(Theme.getColor("actionBarDefaultSearchPlaceholder"));
                searchField.setTextColor(Theme.getColor("actionBarDefaultSearch"));
            }
            this.searchViewPager.setKeyboardHeight(((ContentView) this.fragmentView).getKeyboardHeight());
            updateDrawerSwipeEnabled();
            this.searchViewPager.clear();
            if (this.folderId != 0 && ((rightSlidingDialogContainer = this.rightSlidingDialogContainer) == null || !rightSlidingDialogContainer.hasFragment())) {
                addSearchFilter(new FiltersView.MediaFilterData(C3158R.C3160drawable.chats_archive, LocaleController.getString("ArchiveSearchFilter", C3158R.string.ArchiveSearchFilter), null, 7));
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
        if (!z && (filterTabsView = this.filterTabsView) != null && this.canShowFilterTabsView) {
            filterTabsView.setVisibility(0);
        }
        boolean z6 = SharedConfig.getDevicePerformanceClass() == 0 || !LiteMode.isEnabled(32);
        if (z4) {
            if (!z) {
                f = 1.0f;
                this.viewPages[0].listView.setVisibility(0);
                this.viewPages[0].setVisibility(0);
            } else {
                this.searchViewPager.setVisibility(0);
                this.searchViewPager.reset();
                f = 1.0f;
                updateFiltersView(true, null, null, false, false);
                ViewPagerFixed.TabsView tabsView2 = this.searchTabsView;
                if (tabsView2 != null) {
                    tabsView2.hide(false, false);
                    this.searchTabsView.setVisibility(0);
                }
            }
            setDialogsListFrozen(true);
            this.viewPages[0].listView.setVerticalScrollBarEnabled(false);
            this.searchViewPager.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            this.searchAnimator = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            ViewPage viewPage = this.viewPages[0];
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
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
                this.viewPages[0].setScaleX(f);
                this.viewPages[0].setScaleY(f);
            }
            RightSlidingDialogContainer rightSlidingDialogContainer2 = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer2 != null) {
                rightSlidingDialogContainer2.setVisibility(0);
                RightSlidingDialogContainer rightSlidingDialogContainer3 = this.rightSlidingDialogContainer;
                Property property4 = View.ALPHA;
                float[] fArr4 = new float[1];
                fArr4[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                arrayList.add(ObjectAnimator.ofFloat(rightSlidingDialogContainer3, property4, fArr4));
            }
            SearchViewPager searchViewPager = this.searchViewPager;
            Property property5 = View.ALPHA;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            arrayList.add(ObjectAnimator.ofFloat(searchViewPager, property5, fArr5));
            if (!z6) {
                SearchViewPager searchViewPager2 = this.searchViewPager;
                Property property6 = View.SCALE_X;
                float[] fArr6 = new float[1];
                fArr6[0] = z ? 1.0f : 1.05f;
                arrayList.add(ObjectAnimator.ofFloat(searchViewPager2, property6, fArr6));
                SearchViewPager searchViewPager3 = this.searchViewPager;
                Property property7 = View.SCALE_Y;
                float[] fArr7 = new float[1];
                fArr7[0] = z ? 1.0f : 1.05f;
                arrayList.add(ObjectAnimator.ofFloat(searchViewPager3, property7, fArr7));
            } else {
                this.searchViewPager.setScaleX(f);
                this.searchViewPager.setScaleY(f);
            }
            ActionBarMenuItem actionBarMenuItem = this.passcodeItem;
            if (actionBarMenuItem != null) {
                RLottieImageView iconView = actionBarMenuItem.getIconView();
                Property property8 = View.ALPHA;
                float[] fArr8 = new float[1];
                fArr8[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                arrayList.add(ObjectAnimator.ofFloat(iconView, property8, fArr8));
            }
            ActionBarMenuItem actionBarMenuItem2 = this.downloadsItem;
            if (actionBarMenuItem2 != null) {
                if (z) {
                    actionBarMenuItem2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                } else {
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem2, View.ALPHA, f));
                }
                updateProxyButton(false, false);
            }
            TopicsBar topicsBar2 = this.topicsBar;
            if (topicsBar2 != null && topicsBar2.getVisibility() == 0) {
                TopicsBar topicsBar3 = this.topicsBar;
                Property property9 = View.ALPHA;
                float[] fArr9 = new float[1];
                fArr9[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                ObjectAnimator duration = ObjectAnimator.ofFloat(topicsBar3, property9, fArr9).setDuration(100L);
                this.topicsBarAlphaAnimator = duration;
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.52
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator4) {
                        DialogsActivity.this.topicsBarAlphaAnimator = null;
                    }
                });
            }
            RecentChatsBar recentChatsBar = this.recentChatsBar;
            if (recentChatsBar != null && recentChatsBar.getVisibility() == 0) {
                RecentChatsBar recentChatsBar2 = this.recentChatsBar;
                Property property10 = View.ALPHA;
                float[] fArr10 = new float[1];
                fArr10[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                ObjectAnimator duration2 = ObjectAnimator.ofFloat(recentChatsBar2, property10, fArr10).setDuration(100L);
                this.recentChatsAlphaAnimator = duration2;
                duration2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.53
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator4) {
                        DialogsActivity.this.recentChatsAlphaAnimator = null;
                    }
                });
            }
            FilterTabsView filterTabsView2 = this.filterTabsView;
            if (filterTabsView2 != null && filterTabsView2.getVisibility() == 0) {
                if (isCustomForward()) {
                    ScrollView scrollView = this.customForwardScrollView;
                    Property property11 = View.TRANSLATION_Y;
                    float[] fArr11 = new float[1];
                    fArr11[0] = z ? -AndroidUtilities.m50dp(44) : BitmapDescriptorFactory.HUE_RED;
                    arrayList.add(ObjectAnimator.ofFloat(scrollView, property11, fArr11));
                    FilterTabsView filterTabsView3 = this.filterTabsView;
                    Property property12 = View.TRANSLATION_Y;
                    float[] fArr12 = new float[1];
                    fArr12[0] = z ? -AndroidUtilities.m50dp(44) : BitmapDescriptorFactory.HUE_RED;
                    arrayList.add(ObjectAnimator.ofFloat(filterTabsView3, property12, fArr12));
                    ActionBarMenuItem actionBarMenuItem3 = this.customForwardSwitchArchiveItem;
                    Property property13 = View.ALPHA;
                    float[] fArr13 = new float[1];
                    fArr13[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem3, property13, fArr13));
                    ActionBarMenuItem actionBarMenuItem4 = this.switchItem;
                    Property property14 = View.ALPHA;
                    float[] fArr14 = new float[1];
                    fArr14[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem4, property14, fArr14));
                    this.customForwardSwitchArchiveItem.setEnabled(!z);
                    this.switchItem.setEnabled(!z);
                } else if (SharedConfig.isFilterTabsAtBottomEnabled) {
                    FilterTabsView filterTabsView4 = this.filterTabsView;
                    Property property15 = View.TRANSLATION_Y;
                    float[] fArr15 = new float[1];
                    fArr15[0] = z ? AndroidUtilities.m50dp(44) : BitmapDescriptorFactory.HUE_RED;
                    arrayList.add(ObjectAnimator.ofFloat(filterTabsView4, property15, fArr15));
                }
                RecyclerListView tabsContainer = this.filterTabsView.getTabsContainer();
                Property property16 = View.ALPHA;
                float[] fArr16 = new float[1];
                fArr16[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                ObjectAnimator duration3 = ObjectAnimator.ofFloat(tabsContainer, property16, fArr16).setDuration(100L);
                this.tabsAlphaAnimator = duration3;
                duration3.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.54
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator4) {
                        DialogsActivity.this.tabsAlphaAnimator = null;
                    }
                });
            }
            float[] fArr17 = new float[2];
            fArr17[0] = this.searchAnimationProgress;
            fArr17[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr17);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DialogsActivity.this.lambda$showSearch$77(valueAnimator);
                }
            });
            arrayList.add(ofFloat);
            this.searchAnimator.playTogether(arrayList);
            this.searchAnimator.setDuration(z ? 200L : 180L);
            this.searchAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            if (this.filterTabsViewIsVisible) {
                int color = Theme.getColor(this.folderId == 0 ? "actionBarDefault" : "actionBarDefaultArchived");
                int color2 = Theme.getColor("windowBackgroundWhite");
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
            this.searchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.55
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator7) {
                    DialogsActivity.this.getNotificationCenter().onAnimationFinish(DialogsActivity.this.animationIndex);
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
                    DialogsActivity.this.setSearchAnimationProgress(z ? 1.0f : BitmapDescriptorFactory.HUE_RED, false);
                    DialogsActivity.this.viewPages[0].listView.setVerticalScrollBarEnabled(true);
                    DialogsActivity.this.searchViewPager.setBackground(null);
                    DialogsActivity.this.searchAnimator = null;
                    if (DialogsActivity.this.downloadsItem != null) {
                        DialogsActivity.this.downloadsItem.setAlpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator7) {
                    DialogsActivity.this.getNotificationCenter().onAnimationFinish(DialogsActivity.this.animationIndex);
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
            this.animationIndex = getNotificationCenter().setAnimationInProgress(this.animationIndex, null);
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
            this.viewPages[0].setAlpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
            if (!z6) {
                this.viewPages[0].setScaleX(z ? 0.9f : 1.0f);
                this.viewPages[0].setScaleY(z ? 0.9f : 1.0f);
            } else {
                this.viewPages[0].setScaleX(1.0f);
                this.viewPages[0].setScaleY(1.0f);
            }
            this.searchViewPager.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.filtersView.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
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
                    this.topicsBar.setAlpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                }
                if (this.topicsBar.getTag() != null && !z) {
                    this.topicsBar.setVisibility(0);
                } else {
                    this.topicsBar.setVisibility(8);
                }
            }
            RecentChatsBar recentChatsBar3 = this.recentChatsBar;
            if (recentChatsBar3 != null) {
                if (recentChatsBar3.getVisibility() == 0) {
                    this.recentChatsBar.setAlpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
                }
                if (this.recentChatsBar.getTag() != null && !z) {
                    this.recentChatsBar.setVisibility(0);
                } else {
                    this.recentChatsBar.setVisibility(8);
                }
            }
            FilterTabsView filterTabsView5 = this.filterTabsView;
            if (filterTabsView5 != null && filterTabsView5.getVisibility() == 0) {
                if (SharedConfig.isFilterTabsAtBottomEnabled && !isCustomForward()) {
                    this.filterTabsView.setTranslationY(z ? AndroidUtilities.m50dp(44) : BitmapDescriptorFactory.HUE_RED);
                } else {
                    this.filterTabsView.setTranslationY(z ? -AndroidUtilities.m50dp(44) : BitmapDescriptorFactory.HUE_RED);
                }
                this.filterTabsView.getTabsContainer().setAlpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
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
            setSearchAnimationProgress(z ? 1.0f : BitmapDescriptorFactory.HUE_RED, false);
            this.fragmentView.invalidate();
            ActionBarMenuItem actionBarMenuItem5 = this.downloadsItem;
            if (actionBarMenuItem5 != null) {
                actionBarMenuItem5.setAlpha(z ? BitmapDescriptorFactory.HUE_RED : 1.0f);
            }
        }
        int i3 = this.initialSearchType;
        if (i3 >= 0) {
            SearchViewPager searchViewPager4 = this.searchViewPager;
            searchViewPager4.setPosition(searchViewPager4.getPositionForType(i3));
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
    public /* synthetic */ void lambda$showSearch$77(ValueAnimator valueAnimator) {
        setSearchAnimationProgress(((Float) valueAnimator.getAnimatedValue()).floatValue(), false);
    }

    public boolean onlyDialogsAdapter() {
        return this.onlySelect || !this.searchViewPager.dialogsSearchAdapter.hasRecentSearch() || getMessagesController().getTotalDialogsCount() <= 10;
    }

    private void updateFilterTabsVisibility(boolean z) {
        if (this.fragmentView == null) {
            return;
        }
        z = (this.isPaused || this.databaseMigrationHint != null) ? false : false;
        if (this.searchIsShowed) {
            ValueAnimator valueAnimator = this.filtersTabAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            boolean z2 = this.canShowFilterTabsView;
            this.filterTabsViewIsVisible = z2;
            this.filterTabsProgress = z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
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
                    this.filterTabsMoveFrom = AndroidUtilities.m50dp(44);
                } else {
                    this.filtersTabAnimator = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
                    this.filterTabsMoveFrom = Math.max((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(44) + this.actionBar.getTranslationY());
                }
                final float translationY = this.actionBar.getTranslationY();
                this.filtersTabAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.56
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        DialogsActivity.this.filtersTabAnimator = null;
                        DialogsActivity.this.scrollAdditionalOffset = AndroidUtilities.m50dp(44) - DialogsActivity.this.filterTabsMoveFrom;
                        if (!z3) {
                            DialogsActivity.this.filterTabsView.setVisibility(8);
                        }
                        if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                            ((BaseFragment) DialogsActivity.this).fragmentView.requestLayout();
                        }
                        DialogsActivity.this.getNotificationCenter().onAnimationFinish(DialogsActivity.this.animationIndex);
                    }
                });
                this.filtersTabAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda8
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        DialogsActivity.this.lambda$updateFilterTabsVisibility$78(z3, translationY, valueAnimator3);
                    }
                });
                this.filtersTabAnimator.setDuration(220L);
                this.filtersTabAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.animationIndex = getNotificationCenter().setAnimationInProgress(this.animationIndex, null);
                this.filtersTabAnimator.start();
                View view = this.fragmentView;
                if (view != null) {
                    view.requestLayout();
                    return;
                }
                return;
            }
            this.filterTabsProgress = z3 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            float translationY2 = this.actionBar.getTranslationY();
            if (!z3) {
                setScrollY(this.filterTabsProgress * translationY2);
            }
            if (z3) {
                this.scrollAdditionalOffset = BitmapDescriptorFactory.HUE_RED;
            } else {
                int m50dp = AndroidUtilities.m50dp(44);
                if (translationY2 < (-m50dp)) {
                    translationY2 = m50dp;
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
    public /* synthetic */ void lambda$updateFilterTabsVisibility$78(boolean z, float f, ValueAnimator valueAnimator) {
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
            this.actionBar.setItemsColor(ColorUtils.blendARGB(Theme.getColor(this.folderId != 0 ? "actionBarDefaultArchivedIcon" : "actionBarDefaultIcon"), Theme.getColor("actionBarActionModeDefaultIcon"), this.searchAnimationProgress), false);
            this.actionBar.setItemsColor(ColorUtils.blendARGB(Theme.getColor("actionBarActionModeDefaultIcon"), Theme.getColor("actionBarActionModeDefaultIcon"), this.searchAnimationProgress), true);
            this.actionBar.setItemsBackgroundColor(ColorUtils.blendARGB(Theme.getColor(this.folderId != 0 ? "actionBarDefaultArchivedSelector" : "actionBarDefaultSelector"), Theme.getColor("actionBarActionModeDefaultSelector"), this.searchAnimationProgress), false);
        }
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
        DialogsHintCell dialogsHintCell = this.dialogsHintCell;
        if (dialogsHintCell != null) {
            dialogsHintCell.setAlpha(1.0f - f);
        }
        if (SharedConfig.getDevicePerformanceClass() != 0 && LiteMode.isEnabled(32)) {
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
        if (isCustomForward()) {
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
        if (viewPage.dialogsType == 7 || viewPage.dialogsType == 8 || (isForwardDialogsType(viewPage.dialogsType) && !this.customForwardArchive)) {
            ArrayList<MessagesController.DialogFilter> arrayList = getMessagesController().dialogFilters;
            if ((viewPage.selectedType >= 0 && viewPage.selectedType < arrayList.size()) || SortingFilter.isSortingFilter(false, viewPage.selectedType)) {
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
                        z = z6;
                        z2 = true;
                    } else {
                        z = z6;
                        z2 = false;
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
                    if (!z3 || z2) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda101
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.this.lambda$checkListLoad$79(z3, z4, z2, z);
                            }
                        });
                    }
                    return;
                }
            }
        }
        z2 = false;
        z = false;
        if (abs > 0) {
        }
        z3 = false;
        z4 = false;
        if (z3) {
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda101
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$checkListLoad$79(z3, z4, z2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkListLoad$79(boolean z, boolean z2, boolean z3, boolean z4) {
        if (z) {
            getMessagesController().loadDialogs(this.folderId, -1, 100, z2);
        }
        if (z3) {
            getMessagesController().loadDialogs(1, -1, 100, z4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:125:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x024d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x024e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onItemClick(android.view.View r18, int r19, androidx.recyclerview.widget.RecyclerView.Adapter r20) {
        /*
            Method dump skipped, instructions count: 1408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.onItemClick(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Adapter):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$57 */
    /* loaded from: classes5.dex */
    public class C541057 implements ChatActivity.ChatActivityDelegate {
        final /* synthetic */ long val$finalDialogId;

        @Override // org.telegram.p048ui.ChatActivity.ChatActivityDelegate
        public /* synthetic */ void onCompleteForwardingEditing(ArrayList arrayList) {
            ChatActivity.ChatActivityDelegate.CC.$default$onCompleteForwardingEditing(this, arrayList);
        }

        @Override // org.telegram.p048ui.ChatActivity.ChatActivityDelegate
        public /* synthetic */ void onReport() {
            ChatActivity.ChatActivityDelegate.CC.$default$onReport(this);
        }

        C541057(long j) {
            this.val$finalDialogId = j;
        }

        @Override // org.telegram.p048ui.ChatActivity.ChatActivityDelegate
        public void openReplyMessage(int i) {
            DialogsActivity.this.presentFragment(ChatActivity.newInstanceForDialogId(this.val$finalDialogId, i));
        }

        @Override // org.telegram.p048ui.ChatActivity.ChatActivityDelegate
        public void openSearch(String str) {
            Bundle bundle = new Bundle();
            bundle.putString("searchFromString", str);
            DialogsActivity.this.presentFragment(ChatActivity.newInstanceForDialogId(this.val$finalDialogId, 0, bundle));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.telegram.p048ui.ChatActivity.ChatActivityDelegate
        public void onUnpin(boolean z, boolean z2, final boolean z3, boolean z4, ChatActivity chatActivity, ArrayList<Integer> arrayList, HashMap<Integer, MessageObject> hashMap) {
            final int totalBookmarkMessagesCount = chatActivity.getTotalBookmarkMessagesCount();
            final ArrayList arrayList2 = new ArrayList(arrayList);
            final ArrayList arrayList3 = new ArrayList(hashMap.values());
            DialogsActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.didLoadBookmarkMessages, Long.valueOf(this.val$finalDialogId), arrayList2, Boolean.FALSE, null, null, 0, Integer.valueOf(totalBookmarkMessagesCount - arrayList3.size()), Boolean.TRUE);
            if (DialogsActivity.this.pinBulletin != null) {
                DialogsActivity.this.pinBulletin.hide();
            }
            DialogsActivity.this.showPinBulletin = true;
            final int access$40804 = DialogsActivity.access$40804(DialogsActivity.this);
            DialogsActivity dialogsActivity = DialogsActivity.this;
            ChatActivity chatActivity2 = z3 ? chatActivity : dialogsActivity;
            int size = arrayList3.size();
            final long j = this.val$finalDialogId;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$57$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C541057.this.lambda$onUnpin$0(j, arrayList2, arrayList3, totalBookmarkMessagesCount, access$40804);
                }
            };
            final long j2 = this.val$finalDialogId;
            dialogsActivity.pinBulletin = BulletinFactory.createUnpinAllMessagesBulletin(chatActivity2, size, false, runnable, new Runnable() { // from class: org.telegram.ui.DialogsActivity$57$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C541057.this.lambda$onUnpin$1(z3, j2, arrayList2, access$40804);
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
            if (i2 == DialogsActivity.this.pinBullerinTag) {
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
            if (i == DialogsActivity.this.pinBullerinTag) {
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
        if (getParentActivity() != null && !this.inPreviewMode) {
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
                    if (isCustomForward()) {
                        if (item instanceof TLRPC$Chat) {
                            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) item;
                            if (tLRPC$Chat.forum) {
                                return false;
                            }
                            makeEncryptedDialogId2 = -tLRPC$Chat.f1494id;
                        } else if (item instanceof TLRPC$User) {
                            makeEncryptedDialogId2 = ((TLRPC$User) item).f1633id;
                        } else {
                            if (item instanceof TLRPC$EncryptedChat) {
                                makeEncryptedDialogId2 = DialogObject.makeEncryptedDialogId(((TLRPC$EncryptedChat) item).f1506id);
                            }
                            return false;
                        }
                        if (validateSlowModeDialog(makeEncryptedDialogId2) && checkCanWrite(makeEncryptedDialogId2)) {
                            boolean addOrRemoveSelectedDialog = addOrRemoveSelectedDialog(makeEncryptedDialogId2, view);
                            this.actionBar.closeSearchField();
                            this.customForwardEditText.setText((CharSequence) null);
                            findAndUpdateCheckBox(makeEncryptedDialogId2, addOrRemoveSelectedDialog);
                            updateSelectedCount();
                            return true;
                        }
                        return false;
                    } else if (!this.searchViewPager.dialogsSearchAdapter.isSearchWas()) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                        builder.setTitle(LocaleController.getString("ClearSearchSingleAlertTitle", C3158R.string.ClearSearchSingleAlertTitle));
                        if (item instanceof TLRPC$Chat) {
                            TLRPC$Chat tLRPC$Chat2 = (TLRPC$Chat) item;
                            builder.setMessage(LocaleController.formatString("ClearSearchSingleChatAlertText", C3158R.string.ClearSearchSingleChatAlertText, tLRPC$Chat2.title));
                            makeEncryptedDialogId = -tLRPC$Chat2.f1494id;
                        } else if (item instanceof TLRPC$User) {
                            TLRPC$User tLRPC$User = (TLRPC$User) item;
                            if (tLRPC$User.f1633id == getUserConfig().clientUserId) {
                                builder.setMessage(LocaleController.formatString("ClearSearchSingleChatAlertText", C3158R.string.ClearSearchSingleChatAlertText, LocaleController.getString("SavedMessages", C3158R.string.SavedMessages)));
                            } else {
                                builder.setMessage(LocaleController.formatString("ClearSearchSingleUserAlertText", C3158R.string.ClearSearchSingleUserAlertText, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name)));
                            }
                            makeEncryptedDialogId = tLRPC$User.f1633id;
                        } else if (!(item instanceof TLRPC$EncryptedChat)) {
                            return false;
                        } else {
                            TLRPC$User user = getMessagesController().getUser(Long.valueOf(((TLRPC$EncryptedChat) item).user_id));
                            builder.setMessage(LocaleController.formatString("ClearSearchSingleUserAlertText", C3158R.string.ClearSearchSingleUserAlertText, ContactsController.formatName(user.first_name, user.last_name)));
                            makeEncryptedDialogId = DialogObject.makeEncryptedDialogId(tLRPC$EncryptedChat.f1506id);
                        }
                        builder.setPositiveButton(LocaleController.getString("ClearSearchRemove", C3158R.string.ClearSearchRemove), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda18
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                DialogsActivity.this.lambda$onItemLongClick$80(makeEncryptedDialogId, dialogInterface, i3);
                            }
                        });
                        builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                        AlertDialog create = builder.create();
                        showDialog(create);
                        TextView textView = (TextView) create.getButton(-1);
                        if (textView != null) {
                            textView.setTextColor(Theme.getColor("dialogTextRed2"));
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
                ArrayList<TLRPC$Dialog> dialogsArray = getDialogsArray(this.currentAccount, i2, this.customForwardArchive ? 1 : this.folderId, this.dialogsListFrozen);
                int fixPosition = dialogsAdapter.fixPosition(i);
                if (fixPosition < 0 || fixPosition >= dialogsArray.size() || (tLRPC$Dialog = dialogsArray.get(fixPosition)) == null) {
                    return false;
                }
                if (this.onlySelect && !isManagement()) {
                    if ((!isCustomForward() || checkCanWrite(tLRPC$Dialog.f1500id)) && !getMessagesController().isForum(tLRPC$Dialog.f1500id)) {
                        int i3 = this.initialDialogsType;
                        if ((i3 == 3 || i3 == 10) && validateSlowModeDialog(tLRPC$Dialog.f1500id)) {
                            addOrRemoveSelectedDialog(tLRPC$Dialog.f1500id, view);
                            updateSelectedCount();
                            return true;
                        }
                        return false;
                    }
                    return false;
                } else if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
                    onArchiveLongPress(view);
                    return false;
                } else if (this.actionBar.isActionModeShowed() && isDialogPinned(tLRPC$Dialog)) {
                    return false;
                } else {
                    showOrUpdateActionMode(tLRPC$Dialog.f1500id, view);
                    if (this.viewPages != null && (adapter instanceof DialogsAdapter) && (view instanceof DialogCell) && !isDialogPinned(tLRPC$Dialog) && (currentViewPage = getCurrentViewPage()) != null && currentViewPage.listView != null) {
                        final boolean z = !this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog.f1500id));
                        final ArrayList arrayList = new ArrayList(this.selectedDialogs);
                        currentViewPage.listView.hideSelector(true);
                        currentViewPage.listView.startMultiselect(fixPosition, false, new RecyclerListView.onMultiSelectionChanged() { // from class: org.telegram.ui.DialogsActivity.58
                            @Override // org.telegram.p048ui.Components.RecyclerListView.onMultiSelectionChanged
                            public int checkPosition(int i4, boolean z2) {
                                return i4;
                            }

                            @Override // org.telegram.p048ui.Components.RecyclerListView.onMultiSelectionChanged
                            public boolean limitReached() {
                                return false;
                            }

                            @Override // org.telegram.p048ui.Components.RecyclerListView.onMultiSelectionChanged
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
                                if (z2 && DialogsActivity.this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog2.f1500id))) {
                                    return;
                                }
                                if (z2 || DialogsActivity.this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog2.f1500id))) {
                                    DialogsActivity.this.showOrUpdateActionMode(tLRPC$Dialog2.f1500id, null);
                                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                                    dialogsActivity2.findAndUpdateCheckBox(tLRPC$Dialog2.f1500id, dialogsActivity2.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog2.f1500id)));
                                }
                            }

                            @Override // org.telegram.p048ui.Components.RecyclerListView.onMultiSelectionChanged
                            public boolean canSelect(int i4) {
                                TLRPC$Dialog tLRPC$Dialog2;
                                DialogsActivity dialogsActivity = DialogsActivity.this;
                                ArrayList<TLRPC$Dialog> dialogsArray2 = dialogsActivity.getDialogsArray(((BaseFragment) dialogsActivity).currentAccount, i2, DialogsActivity.this.folderId, DialogsActivity.this.dialogsListFrozen);
                                int fixPosition2 = ((DialogsAdapter) adapter).fixPosition(i4);
                                if (fixPosition2 < 0 || fixPosition2 >= dialogsArray2.size() || (tLRPC$Dialog2 = dialogsArray2.get(fixPosition2)) == null) {
                                    return false;
                                }
                                if (z || arrayList.contains(Long.valueOf(tLRPC$Dialog2.f1500id))) {
                                    return z && arrayList.contains(Long.valueOf(tLRPC$Dialog2.f1500id));
                                }
                                return true;
                            }

                            @Override // org.telegram.p048ui.Components.RecyclerListView.onMultiSelectionChanged
                            public void getPaddings(int[] iArr) {
                                iArr[1] = 0;
                                iArr[0] = 0;
                            }

                            @Override // org.telegram.p048ui.Components.RecyclerListView.onMultiSelectionChanged
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
    public /* synthetic */ void lambda$onItemLongClick$80(long j, DialogInterface dialogInterface, int i) {
        this.searchViewPager.dialogsSearchAdapter.removeRecentSearch(j);
    }

    private void onArchiveLongPress(View view) {
        int i;
        String str;
        view.performHapticFeedback(0, 2);
        BottomSheet.Builder builder = new BottomSheet.Builder(getParentActivity());
        boolean z = getMessagesStorage().getArchiveUnreadCount() != 0;
        int[] iArr = new int[3];
        iArr[0] = z ? C3158R.C3160drawable.msg_markread : 0;
        iArr[1] = SharedConfig.archiveHidden ? C3158R.C3160drawable.chats_pin : C3158R.C3160drawable.chats_unpin;
        iArr[2] = SharedConfig.isShowDrawerHeaderArchiveEnabled ? 0 : C3158R.C3160drawable.slidearrow;
        CharSequence[] charSequenceArr = new CharSequence[3];
        charSequenceArr[0] = z ? LocaleController.getString("MarkAllAsRead", C3158R.string.MarkAllAsRead) : null;
        if (SharedConfig.archiveHidden) {
            i = C3158R.string.PinInTheList;
            str = "PinInTheList";
        } else {
            i = C3158R.string.HideAboveTheList;
            str = "HideAboveTheList";
        }
        charSequenceArr[1] = LocaleController.getString(str, i);
        charSequenceArr[2] = SharedConfig.isShowDrawerHeaderArchiveEnabled ? null : LocaleController.getInternalString(C3158R.string.drawer_enable_archive_button);
        builder.setItems(charSequenceArr, iArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda14
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                DialogsActivity.this.lambda$onArchiveLongPress$81(dialogInterface, i2);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onArchiveLongPress$81(DialogInterface dialogInterface, int i) {
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
    /* JADX WARN: Type inference failed for: r1v90 */
    public boolean showChatPreview(final DialogCell dialogCell) {
        long j;
        TLRPC$Chat chat;
        final MessagesController.DialogFilter dialogFilter;
        ChatActivity[] chatActivityArr;
        ?? r1;
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
                showToast(LocaleController.getInternalString(C3158R.string.section_is_locked));
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
        ActionBarPopupWindow.ActionBarPopupWindowLayout[] actionBarPopupWindowLayoutArr = {new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity(), C3158R.C3160drawable.popup_fixed_alert2, getResourceProvider(), 2)};
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getParentActivity(), true, false);
        if (dialogCell.getHasUnread()) {
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("MarkAsRead", C3158R.string.MarkAsRead), C3158R.C3160drawable.msg_markread);
        } else {
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("MarkAsUnread", C3158R.string.MarkAsUnread), C3158R.C3160drawable.msg_markunread);
        }
        actionBarMenuSubItem.setMinimumWidth(160);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda48
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$82(dialogCell, dialogId, view);
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
            chatActivityArr = chatActivityArr2;
            r1 = 0;
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
                    if (DialogObject.isEncryptedDialog(tLRPC$Dialog2.f1500id)) {
                        i8++;
                    } else {
                        i7++;
                    }
                } else {
                    arrayList = dialogs;
                    i5 = size;
                    chatActivityArr = chatActivityArr2;
                    if (!getMessagesController().isPromoDialog(tLRPC$Dialog2.f1500id, false)) {
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
                i4 = getMessagesController().maxFolderPinnedDialogsCount;
            } else {
                i4 = getMessagesController().maxPinnedDialogsCount;
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
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("UnpinMessage", C3158R.string.UnpinMessage), C3158R.C3160drawable.msg_unpin);
            } else {
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("PinMessage", C3158R.string.PinMessage), C3158R.C3160drawable.msg_pin);
            }
            actionBarMenuSubItem2.setMinimumWidth(160);
            bundle = null;
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda46
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$showChatPreview$84(dialogFilter, tLRPC$Dialog, dialogId, view);
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
                actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("Mute", C3158R.string.Mute), C3158R.C3160drawable.msg_mute);
            } else {
                actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("Unmute", C3158R.string.Unmute), C3158R.C3160drawable.msg_unmute);
            }
            actionBarMenuSubItem3.setMinimumWidth(160);
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda43
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$showChatPreview$85(dialogId, view);
                }
            });
            z = false;
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem3);
        }
        ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(getParentActivity(), z, true);
        actionBarMenuSubItem4.setIconColor(getThemedColor("dialogRedIcon"));
        actionBarMenuSubItem4.setTextColor(getThemedColor("dialogTextRed"));
        actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString("Delete", C3158R.string.Delete), C3158R.C3160drawable.msg_delete);
        actionBarMenuSubItem4.setMinimumWidth(160);
        actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$86(arrayList2, view);
            }
        });
        actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem4);
        actionBarPopupWindowLayoutArr[0].removeInnerViews();
        ActionBarMenuSubItem actionBarMenuSubItem5 = new ActionBarMenuSubItem(getParentActivity(), false, true);
        actionBarMenuSubItem5.setTextAndIcon(LocaleController.getString("Open", C3158R.string.Open), C3158R.C3160drawable.msg_message);
        actionBarMenuSubItem5.setMinimumWidth(160);
        actionBarMenuSubItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda41
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$87(view);
            }
        });
        actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem5);
        ActionBarMenuSubItem actionBarMenuSubItem6 = new ActionBarMenuSubItem(getParentActivity(), false, true);
        actionBarMenuSubItem6.setTextAndIcon(LocaleController.getString("Close", C3158R.string.Close), C3158R.C3160drawable.poll_remove);
        actionBarMenuSubItem6.setMinimumWidth(160);
        actionBarMenuSubItem6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$88(view);
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
    public /* synthetic */ void lambda$showChatPreview$82(DialogCell dialogCell, long j, View view) {
        if (dialogCell.getHasUnread()) {
            markAsRead(j);
        } else {
            markAsUnread(j);
        }
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$84(final MessagesController.DialogFilter dialogFilter, final TLRPC$Dialog tLRPC$Dialog, final long j, View view) {
        finishPreviewFragment();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda91
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showChatPreview$83(dialogFilter, tLRPC$Dialog, j);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$83(MessagesController.DialogFilter dialogFilter, TLRPC$Dialog tLRPC$Dialog, long j) {
        int i;
        boolean z;
        int i2 = Integer.MAX_VALUE;
        if (dialogFilter == null || !isDialogPinned(tLRPC$Dialog)) {
            i = Integer.MAX_VALUE;
        } else {
            int size = dialogFilter.pinnedDialogs.size();
            for (int i3 = 0; i3 < size; i3++) {
                i2 = Math.min(i2, dialogFilter.pinnedDialogs.valueAt(i3));
            }
            i = i2 - this.canPinCount;
        }
        TLRPC$EncryptedChat encryptedChat = DialogObject.isEncryptedDialog(j) ? getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) : null;
        if (!isDialogPinned(tLRPC$Dialog)) {
            pinDialog(j, true, dialogFilter, i, true);
            getUndoView().showWithAction(0L, 78, (Object) 1, (Object) 1600, (Runnable) null, (Runnable) null);
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
            pinDialog(j, false, dialogFilter, i, true);
            getUndoView().showWithAction(0L, 79, (Object) 1, (Object) 1600, (Runnable) null, (Runnable) null);
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
    public /* synthetic */ void lambda$showChatPreview$85(long j, View view) {
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
    public /* synthetic */ void lambda$showChatPreview$86(ArrayList arrayList, View view) {
        performSelectedDialogsAction(arrayList, 102, false, false);
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$87(View view) {
        this.parentLayout.expandPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$88(View view) {
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
        frameLayout.setTranslationZ(f == BitmapDescriptorFactory.HUE_RED ? AndroidUtilities.m50dp(2) : BitmapDescriptorFactory.HUE_RED);
        if (isMainDialogList()) {
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null && filterTabsView.getVisibility() == 0 && SharedConfig.isFilterTabsAtBottomEnabled) {
                f2 = (AndroidUtilities.m50dp(44) - this.filterTabsView.getTranslationY()) + BitmapDescriptorFactory.HUE_RED;
            }
            if (getTopicsController().isTopicsBarAtBottomEnabled()) {
                f2 += getTopicsBarHeight();
            }
        }
        float f3 = this.additionalFloatingTranslation + f2;
        this.additionalFloatingTranslation = f3;
        this.floatingButtonContainer.setTranslationY((this.floatingButtonTranslation - this.floatingButtonPanOffset) - (Math.max(f3, this.additionalFloatingTranslation2) * (1.0f - this.floatingButtonHideProgress)));
        this.additionalFloatingTranslation -= f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasHiddenArchive() {
        return !this.onlySelect && this.initialDialogsType == 0 && this.folderId == 0 && getMessagesController().hasHiddenArchive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean waitingForDialogsAnimationEnd(ViewPage viewPage) {
        return viewPage.dialogsItemAnimator.isRunning();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAnimationFinished() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$checkAnimationFinished$89();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAnimationFinished$89() {
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
        FilterTabsView filterTabsView;
        if (this.fragmentView == null) {
            return;
        }
        View view = this.scrimView;
        if (view != null) {
            view.getLocationInWindow(this.scrimViewLocation);
        }
        int i = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i == 0 || (!SharedConfig.isFilterTabsAtBottomEnabled && !isCustomForward() && !isManagement())) {
            this.actionBar.setTranslationY(f);
        }
        Bulletin bulletin = this.topBulletin;
        if (bulletin != null) {
            bulletin.updatePosition();
        }
        if ((i == 0 || (!SharedConfig.isFilterTabsAtBottomEnabled && !isCustomForward() && !isManagement())) && (filterTabsView = this.filterTabsView) != null) {
            filterTabsView.setTranslationY(f);
        }
        DialogsHintCell dialogsHintCell = this.dialogsHintCell;
        if (dialogsHintCell != null) {
            dialogsHintCell.setTranslationY(f);
        }
        if (this.topicsBar != null && (i == 0 || (!SharedConfig.isFilterTabsAtBottomEnabled && !getTopicsController().isTopicsBarAtBottomEnabled()))) {
            this.topicsBar.setTranslationY(f);
        }
        RecentChatsBar recentChatsBar = this.recentChatsBar;
        if (recentChatsBar != null && (i == 0 || !SharedConfig.isFilterTabsAtBottomEnabled)) {
            recentChatsBar.setTranslationY(f);
        }
        DrawerProfileCell.AnimatedStatusView animatedStatusView = this.animatedStatusView;
        if (animatedStatusView != null) {
            animatedStatusView.translateY2((int) f);
            this.animatedStatusView.setAlpha(1.0f - ((-f) / C3222ActionBar.getCurrentActionBarHeight()));
        }
        updateContextViewPosition();
        if ((i == 0 || (!SharedConfig.isFilterTabsAtBottomEnabled && !isCustomForward() && !isManagement())) && this.viewPages != null) {
            int i2 = 0;
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i2 >= viewPageArr.length) {
                    break;
                }
                viewPageArr[i2].listView.setTopGlowOffset(this.viewPages[i2].listView.getPaddingTop() + ((int) f));
                i2++;
            }
        }
        View view2 = this.fragmentView;
        if (view2 != null) {
            view2.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareBlurBitmap() {
        if (this.blurredView == null) {
            return;
        }
        int measuredWidth = (int) (this.fragmentView.getMeasuredWidth() / 6.0f);
        int measuredHeight = (int) (this.fragmentView.getMeasuredHeight() / 6.0f);
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.scale(0.16666667f, 0.16666667f);
        this.fragmentView.draw(canvas);
        Utilities.stackBlurBitmap(createBitmap, Math.max(7, Math.max(measuredWidth, measuredHeight) / 180));
        this.blurredView.setBackground(new BitmapDrawable(createBitmap));
        this.blurredView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.blurredView.setVisibility(0);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
            this.rightSlidingDialogContainer.getFragment().onTransitionAnimationProgress(z, f);
            return;
        }
        View view = this.blurredView;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        ForwardingPreviewView forwardingPreviewView = this.forwardingPreviewView;
        if (forwardingPreviewView == null || !forwardingPreviewView.isShowing()) {
            if (z) {
                this.blurredView.setAlpha(1.0f - f);
            } else {
                this.blurredView.setAlpha(f);
            }
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        View view;
        ForwardingPreviewView forwardingPreviewView;
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
        if (z && (view = this.blurredView) != null && view.getVisibility() == 0 && ((forwardingPreviewView = this.forwardingPreviewView) == null || !forwardingPreviewView.isShowing())) {
            this.blurredView.setVisibility(8);
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
            this.actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrOpenMenu", C3158R.string.AccDescrOpenMenu));
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
                this.filterTabsView.animateColorsTo("actionBarTabLine", "actionBarTabActiveText", "actionBarTabUnactiveText", "actionBarDefaultArchivedSelector", "actionBarDefaultArchived");
            } else {
                this.filterTabsView.animateColorsTo("actionBarTabLine", "actionBarTabActiveText", "actionBarTabUnactiveText", "actionBarTabSelector", "actionBarDefault");
            }
        }
        ValueAnimator valueAnimator = this.actionBarColorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.progressToActionMode, BitmapDescriptorFactory.HUE_RED);
        this.actionBarColorAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DialogsActivity.this.lambda$hideActionMode$90(valueAnimator2);
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
    public /* synthetic */ void lambda$hideActionMode$90(ValueAnimator valueAnimator) {
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
        if ((this.viewPages[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8 || isForwardDialogsType(this.viewPages[0].dialogsType) || isArchiveDialogsType(this.viewPages[0].dialogsType)) && (!this.actionBar.isActionModeShowed() || this.actionBar.isActionModeShowed(null))) {
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
                } else if (!getMessagesController().isPromoDialog(tLRPC$Dialog.f1500id, false)) {
                    break;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDialogPinned(TLRPC$Dialog tLRPC$Dialog) {
        if (tLRPC$Dialog == null) {
            return false;
        }
        MessagesController.DialogFilter dialogFilter = null;
        if ((this.viewPages[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8 || isForwardDialogsType(this.viewPages[0].dialogsType) || isArchiveDialogsType(this.viewPages[0].dialogsType)) && (!this.actionBar.isActionModeShowed() || this.actionBar.isActionModeShowed(null))) {
            if (isForwardDialogsType(this.viewPages[0].dialogsType)) {
                dialogFilter = getMessagesController().selectedForwardDialogFilter[this.viewPages[0].dialogsType == 201 ? (char) 1 : (char) 0];
            } else if (isArchiveDialogsType(this.viewPages[0].dialogsType)) {
                dialogFilter = getMessagesController().selectedArchiveDialogFilter[this.viewPages[0].dialogsType == 301 ? (char) 1 : (char) 0];
            } else {
                dialogFilter = getMessagesController().selectedDialogFilter[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
            }
        }
        if (dialogFilter != null) {
            return dialogFilter.pinnedDialogs.indexOfKey(tLRPC$Dialog.f1500id) >= 0;
        }
        return tLRPC$Dialog.pinned;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x07e0  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0842  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0336 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v126 */
    /* JADX WARN: Type inference failed for: r0v154 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void performSelectedDialogsAction(final java.util.ArrayList<java.lang.Long> r35, final int r36, boolean r37, boolean r38, boolean r39) {
        /*
            Method dump skipped, instructions count: 2506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.performSelectedDialogsAction(java.util.ArrayList, int, boolean, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$91(ArrayList arrayList, int i, Boolean bool) {
        if (bool.booleanValue()) {
            performSelectedDialogsAction(arrayList, i, false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$92(ArrayList arrayList) {
        getMessagesController().addDialogToFolder(arrayList, this.folderId == 0 ? 0 : 1, -1, null, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$performSelectedDialogsAction$93(boolean[] zArr, CheckBoxCell checkBoxCell, View view) {
        zArr[0] = !zArr[0];
        checkBoxCell.toggle(zArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$95(ArrayList arrayList, final int i, final boolean[] zArr, DialogInterface dialogInterface, int i2) {
        if (arrayList.isEmpty()) {
            return;
        }
        final ArrayList<Long> arrayList2 = new ArrayList<>(arrayList);
        getUndoView().showWithAction(arrayList2, i == 102 ? 27 : 26, (Object) null, (Object) null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda85
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$performSelectedDialogsAction$94(i, arrayList2, zArr);
            }
        }, (Runnable) null);
        hideActionMode(i == 103);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$94(int i, ArrayList arrayList, boolean[] zArr) {
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
    public /* synthetic */ void lambda$performSelectedDialogsAction$96(AlertDialog alertDialog) {
        showDialog(alertDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$97(ArrayList arrayList, boolean z, boolean z2) {
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
    public /* synthetic */ void lambda$performSelectedDialogsAction$98(DialogInterface dialogInterface, int i) {
        getMessagesController().hidePromoDialog();
        hideActionMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$100(final int i, final TLRPC$Chat tLRPC$Chat, final long j, final boolean z, final boolean z2) {
        int i2;
        int i3;
        int i4;
        ArrayList<TLRPC$Dialog> arrayList;
        int i5;
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
                i5 = 0;
                while (i5 < this.frozenDialogsList.size()) {
                    if (this.frozenDialogsList.get(i5).f1500id == j) {
                        break;
                    }
                    i5++;
                }
            }
            i5 = -1;
            checkAnimationFinished();
            i2 = i5;
        } else {
            i2 = -1;
        }
        int i6 = i2;
        getUndoView().showWithAction(j, i == 103 ? 0 : 1, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda84
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$performSelectedDialogsAction$99(i, j, tLRPC$Chat, z, z2);
            }
        });
        ArrayList arrayList2 = new ArrayList(getDialogsArray(this.currentAccount, this.viewPages[0].dialogsType, this.folderId, false));
        int i7 = 0;
        while (true) {
            if (i7 >= arrayList2.size()) {
                i3 = 102;
                i4 = -1;
                break;
            } else if (((TLRPC$Dialog) arrayList2.get(i7)).f1500id == j) {
                i4 = i7;
                i3 = 102;
                break;
            } else {
                i7++;
            }
        }
        if (i == i3) {
            if (i6 >= 0 && i4 < 0 && (arrayList = this.frozenDialogsList) != null) {
                arrayList.remove(i6);
                this.viewPages[0].dialogsItemAnimator.prepareForRemove();
                this.viewPages[0].updateList(true);
                return;
            }
            setDialogsListFrozen(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$101(DialogInterface dialogInterface) {
        hideActionMode(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$102(DialogInterface dialogInterface) {
        hideActionMode(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void markAsRead(long r16) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.markAsRead(long):void");
    }

    private void markAsUnread(long j) {
        getMessagesController().markDialogAsUnread(j, null, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: performDeleteOrClearDialogAction */
    public void lambda$performSelectedDialogsAction$99(int i, long j, TLRPC$Chat tLRPC$Chat, boolean z, boolean z2) {
        if (i == 103) {
            getMessagesController().deleteDialog(j, 1, z2);
            return;
        }
        if (tLRPC$Chat != null) {
            if (ChatObject.isNotInChat(tLRPC$Chat)) {
                getMessagesController().deleteDialog(j, 0, z2);
            } else {
                getMessagesController().deleteParticipantFromChat((int) (-j), getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId())), null, z2, false);
            }
        } else {
            getMessagesController().deleteDialog(j, 0, z2);
            if (z) {
                getMessagesController().blockPeer((int) j);
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.pinDialog(long, boolean, org.telegram.messenger.MessagesController$DialogFilter, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pinDialog$103() {
        setDialogsListFrozen(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToTop(boolean z) {
        ViewPage[] viewPageArr = this.viewPages;
        int itemCount = (z ? viewPageArr[0].dialogsAdapter.getItemCount() - this.viewPages[0].layoutManager.findLastVisibleItemPosition() : viewPageArr[0].layoutManager.findFirstVisibleItemPosition()) * AndroidUtilities.m50dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72);
        ViewPage[] viewPageArr2 = this.viewPages;
        int itemCount2 = z ? viewPageArr2[0].dialogsAdapter.getItemCount() - 1 : (viewPageArr2[0].dialogsType == 0 && hasHiddenArchive() && this.viewPages[0].archivePullViewState == 2) ? 1 : 0;
        this.viewPages[0].listView.getItemAnimator();
        if (itemCount >= this.viewPages[0].listView.getMeasuredHeight() * 1.2f) {
            this.viewPages[0].scrollHelper.setScrollDirection(!z ? 1 : 0);
            this.viewPages[0].scrollHelper.scrollToPosition(itemCount2, 0, z, true);
            resetScroll();
        } else {
            this.viewPages[0].listView.smoothScrollToPosition(itemCount2);
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
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0132, code lost:
        if (org.telegram.messenger.MessagesController.isSupportUser(r1) == false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateCounters(boolean r22) {
        /*
            Method dump skipped, instructions count: 1283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.updateCounters(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean validateSlowModeDialog(long j) {
        TLRPC$Chat chat;
        ChatActivityEnterView chatActivityEnterView;
        if ((this.messagesCount > 1 || !((chatActivityEnterView = this.commentView) == null || chatActivityEnterView.getVisibility() != 0 || TextUtils.isEmpty(this.commentView.getFieldText()))) && DialogObject.isChatDialog(j) && (chat = getMessagesController().getChat(Long.valueOf(-j))) != null && !ChatObject.hasAdminRights(chat) && chat.slowmode_enabled) {
            AlertsCreator.showSimpleAlert(this, LocaleController.getString("Slowmode", C3158R.string.Slowmode), LocaleController.getString("SlowmodeSendError", C3158R.string.SlowmodeSendError));
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
            this.actionBar.setActionModeOverrideColor(Theme.getColor("windowBackgroundWhite"));
            this.actionBar.showActionMode();
            resetScroll();
            if (this.menuDrawable != null) {
                this.actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrGoBack", C3158R.string.AccDescrGoBack));
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
                    view2.setPivotY(C3222ActionBar.getCurrentActionBarHeight() / 2);
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
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    DialogsActivity.this.lambda$showOrUpdateActionMode$104(valueAnimator2);
                }
            });
            this.actionBarColorAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.actionBarColorAnimator.setDuration(200L);
            this.actionBarColorAnimator.start();
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null) {
                filterTabsView.animateColorsTo("profile_tabSelectedLine", "profile_tabSelectedText", "profile_tabText", "profile_tabSelector", "actionBarActionModeDefault");
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
    public /* synthetic */ void lambda$showOrUpdateActionMode$104(ValueAnimator valueAnimator) {
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
            C3222ActionBar c3222ActionBar = this.actionBar;
            if (c3222ActionBar != null) {
                c3222ActionBar.closeSearchField();
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

    public UndoView getUndoView() {
        if (this.undoView[0].getVisibility() == 0) {
            UndoView[] undoViewArr = this.undoView;
            UndoView undoView = undoViewArr[0];
            undoViewArr[0] = undoViewArr[1];
            undoViewArr[1] = undoView;
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
                if (!this.searching && (getDownloadController().hasUnviewedDownloads() || z3 || (this.downloadsItem.getVisibility() == 0 && this.downloadsItem.getAlpha() == 1.0f && !z2))) {
                    this.downloadsItemVisible = true;
                    this.downloadsItem.setVisibility(0);
                } else {
                    this.downloadsItem.setVisibility(8);
                    this.downloadsItemVisible = false;
                }
                SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
                String string = sharedPreferences.getString("proxy_ip", "");
                boolean z5 = sharedPreferences.getBoolean("proxy_enabled", false);
                if ((!this.downloadsItemVisible && !this.searching && ((z5 && !TextUtils.isEmpty(string)) || SharedConfig.isProxyButtonForceVisible)) || (getMessagesController().blockedCountry && !SharedConfig.proxyList.isEmpty())) {
                    if (!this.actionBar.isSearchFieldVisible() && ((actionBarMenuItem = this.doneItem) == null || actionBarMenuItem.getVisibility() != 0)) {
                        this.proxyItem.setVisibility(0);
                    }
                    this.proxyItemVisible = true;
                    ProxyDrawable proxyDrawable = this.proxyDrawable;
                    int i2 = this.currentConnectionState;
                    proxyDrawable.setConnected(z5, (i2 == 3 || i2 == 5) ? true : true, z);
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
            fArr[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem5, property, fArr));
        }
        ActionBarMenuItem actionBarMenuItem6 = this.switchItem;
        if (actionBarMenuItem6 != null) {
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem6, property2, fArr2));
        }
        ActionBarMenuItem actionBarMenuItem7 = this.doneItem;
        Property property3 = View.ALPHA;
        float[] fArr3 = new float[1];
        fArr3[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem7, property3, fArr3));
        if (this.proxyItemVisible) {
            ActionBarMenuItem actionBarMenuItem8 = this.proxyItem;
            Property property4 = View.ALPHA;
            float[] fArr4 = new float[1];
            fArr4[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem8, property4, fArr4));
        }
        if (this.passcodeItemVisible) {
            ActionBarMenuItem actionBarMenuItem9 = this.passcodeItem;
            Property property5 = View.ALPHA;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
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
                if (this.customSharingMode) {
                    this.actionBar.setTitle(LocaleController.getString("SelectChats", C3158R.string.SelectChats));
                } else if ((this.initialDialogsType == 3 && this.selectAlertString == null) || isCustomForward()) {
                    this.actionBar.setTitle(LocaleController.getString("ForwardTo", C3158R.string.ForwardTo));
                } else {
                    this.actionBar.setTitle(LocaleController.getString("SelectChat", C3158R.string.SelectChat));
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
                    fArr3[0] = this.showForwardingOptionsButton ? 1.0f : BitmapDescriptorFactory.HUE_RED;
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
                AlertDialog create = AlertsCreator.createContactsPermissionDialog(parentActivity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda120
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i) {
                        DialogsActivity.this.lambda$askForPermissons$105(i);
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
    public /* synthetic */ void lambda$askForPermissons$105(int i) {
        this.askAboutContacts = i != 0;
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askAboutContacts", this.askAboutContacts).commit();
        askForPermissons(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        super.onDialogDismiss(dialog);
        AlertDialog alertDialog = this.permissionDialog;
        if (alertDialog == null || dialog != alertDialog || getParentActivity() == null) {
            return;
        }
        askForPermissons(false);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionBarPopupWindow actionBarPopupWindow = this.scrimPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
        if ((this.onlySelect || this.floatingButtonContainer == null) && (!this.albumsMode || this.floatingButtonContainer == null)) {
            return;
        }
        this.floatingButtonContainer.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.telegram.ui.DialogsActivity.65
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.floatingButtonTranslation = dialogsActivity.floatingHidden ? AndroidUtilities.m50dp(100) : BitmapDescriptorFactory.HUE_RED;
                DialogsActivity.this.updateFloatingButtonOffset();
                DialogsActivity.this.floatingButtonContainer.setClickable(!DialogsActivity.this.floatingHidden);
                if (DialogsActivity.this.floatingButtonContainer != null) {
                    DialogsActivity.this.floatingButtonContainer.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        });
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda73
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.this.lambda$onRequestPermissionsResultFragment$106();
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
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$106() {
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
            FileLog.m45e(e);
        }
        checkListLoad(viewPage);
    }

    public void setPanTranslationOffset(float f) {
        this.floatingButtonPanOffset = f;
        updateFloatingButtonOffset();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, final Object... objArr) {
        DialogsSearchAdapter dialogsSearchAdapter;
        DialogsSearchAdapter dialogsSearchAdapter2;
        MessagesController.DialogFilter dialogFilter;
        FilterTabsView filterTabsView;
        int i3 = 0;
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.updateHistoryDialogs();
                }
            }, 250L);
            View view2 = this.fragmentView;
            if (view2 != null) {
                view2.invalidate();
            }
        } else {
            int i4 = NotificationCenter.didReceiveNewMessages;
            if (i == i4) {
                if (this.customForwardToInactiveAccount && this.crossAccountForwardCounts == null) {
                    getNotificationCenter().removeObserver(this, i4);
                    ((Long) objArr[0]).longValue();
                    ArrayList<MessageObject> arrayList = (ArrayList) objArr[1];
                    this.crossAccountsForwardMessagesIds = new ArrayList<>();
                    Iterator<MessageObject> it = arrayList.iterator();
                    while (it.hasNext()) {
                        this.crossAccountsForwardMessagesIds.add(Integer.valueOf(it.next().getId()));
                    }
                    this.crossAccountForwardCounts = new LongSparseArray<>();
                    if (this.crossAccountsForwardSelectedDialogId != 0) {
                        getSendMessagesHelper().sendMessage(arrayList, this.crossAccountsForwardSelectedDialogId, false, false, true, 0);
                        this.crossAccountForwardCounts.put(this.crossAccountsForwardSelectedDialogId, Integer.valueOf(this.crossAccountsForwardMessagesIds.size()));
                    } else if (!this.selectedDialogs.isEmpty()) {
                        Iterator<Long> it2 = this.selectedDialogs.iterator();
                        while (it2.hasNext()) {
                            long longValue = it2.next().longValue();
                            getSendMessagesHelper().sendMessage(arrayList, longValue, false, false, this.notify, this.scheduleDate);
                            this.crossAccountForwardCounts.put(longValue, Integer.valueOf(this.crossAccountsForwardMessagesIds.size()));
                        }
                    }
                }
            } else if (i == NotificationCenter.dialogsNeedReload) {
                if (this.viewPages == null || this.dialogsListFrozen) {
                    return;
                }
                int i5 = 0;
                while (true) {
                    ViewPage[] viewPageArr = this.viewPages;
                    if (i5 >= viewPageArr.length) {
                        break;
                    }
                    final ViewPage viewPage = viewPageArr[i5];
                    if (viewPageArr[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8) {
                        dialogFilter = getMessagesController().selectedDialogFilter[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
                    } else {
                        dialogFilter = null;
                    }
                    boolean z = (dialogFilter == null || (dialogFilter.flags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ) == 0) ? false : true;
                    if (this.slowedReloadAfterDialogClick && z) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda98
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.this.lambda$didReceivedNotification$107(viewPage, objArr);
                            }
                        }, 160L);
                    } else {
                        reloadViewPageDialogs(viewPage, objArr.length > 0);
                    }
                    i5++;
                }
                FilterTabsView filterTabsView2 = this.filterTabsView;
                if (filterTabsView2 != null && filterTabsView2.getVisibility() == 0) {
                    this.filterTabsView.checkTabsCounter();
                }
                this.slowedReloadAfterDialogClick = false;
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
                updateVisibleRows(0);
                FilterTabsView filterTabsView5 = this.filterTabsView;
                if (filterTabsView5 != null) {
                    filterTabsView5.getTabsContainer().invalidateViews();
                }
            } else if (i == NotificationCenter.closeSearchByActiveAction) {
                C3222ActionBar c3222ActionBar = this.actionBar;
                if (c3222ActionBar != null) {
                    c3222ActionBar.closeSearchField();
                }
            } else if (i == NotificationCenter.proxySettingsChanged) {
                updateProxyButton(false, false);
            } else if (i == NotificationCenter.updateInterfaces) {
                Integer num = (Integer) objArr[0];
                updateVisibleRows(num.intValue());
                FilterTabsView filterTabsView6 = this.filterTabsView;
                if (filterTabsView6 != null && filterTabsView6.getVisibility() == 0 && (num.intValue() & MessagesController.UPDATE_MASK_READ_DIALOG_MESSAGE) != 0) {
                    this.filterTabsView.checkTabsCounter();
                }
                if (this.viewPages != null) {
                    for (int i6 = 0; i6 < this.viewPages.length; i6++) {
                        if ((num.intValue() & MessagesController.UPDATE_MASK_STATUS) != 0) {
                            this.viewPages[i6].dialogsAdapter.sortOnlineContacts(true);
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
                boolean z2 = this.floatingProgressVisible;
                setFloatingProgressVisible(false, true);
                for (ViewPage viewPage2 : this.viewPages) {
                    viewPage2.dialogsAdapter.setForceUpdatingContacts(false);
                }
                if (z2) {
                    setContactsAlpha(BitmapDescriptorFactory.HUE_RED);
                    animateContactsAlpha(1.0f);
                }
                int i7 = 0;
                boolean z3 = false;
                while (true) {
                    ViewPage[] viewPageArr2 = this.viewPages;
                    if (i7 >= viewPageArr2.length) {
                        break;
                    }
                    if (!viewPageArr2[i7].isDefaultDialogType() || getMessagesController().getAllFoldersDialogsCount() > 10) {
                        z3 = true;
                    } else {
                        this.viewPages[i7].dialogsAdapter.notifyDataSetChanged();
                    }
                    i7++;
                }
                if (z3) {
                    updateVisibleRows(0);
                }
            } else if (i == NotificationCenter.openedChatChanged) {
                if (this.viewPages == null) {
                    return;
                }
                int i8 = 0;
                while (true) {
                    ViewPage[] viewPageArr3 = this.viewPages;
                    if (i8 < viewPageArr3.length) {
                        if (viewPageArr3[i8].isDefaultDialogType() && AndroidUtilities.isTablet()) {
                            boolean booleanValue = ((Boolean) objArr[2]).booleanValue();
                            long longValue2 = ((Long) objArr[0]).longValue();
                            int intValue = ((Integer) objArr[1]).intValue();
                            if (booleanValue) {
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
                            this.viewPages[i8].dialogsAdapter.setOpenedDialogId(this.openedDialogId.dialogId);
                        }
                        i8++;
                    } else {
                        updateVisibleRows(MessagesController.UPDATE_MASK_SELECT_DIALOG);
                        return;
                    }
                }
            } else if (i == NotificationCenter.notificationsSettingsUpdated) {
                updateVisibleRows(0);
            } else if (i == NotificationCenter.messageReceivedByAck || i == NotificationCenter.messageReceivedByServer || i == NotificationCenter.messageSendError) {
                updateVisibleRows(MessagesController.UPDATE_MASK_SEND_STATE);
                if (i != NotificationCenter.messageReceivedByServer || this.crossAccountForwardCounts == null) {
                    return;
                }
                Long l = (Long) objArr[3];
                if (((TLRPC$Message) objArr[2]).from_id.user_id != getUserConfig().getClientUserId() || this.crossAccountForwardCounts.indexOfKey(l.longValue()) < 0) {
                    return;
                }
                int intValue2 = this.crossAccountForwardCounts.get(l.longValue()).intValue() - 1;
                if (intValue2 == 0) {
                    this.crossAccountForwardCounts.remove(l.longValue());
                } else {
                    this.crossAccountForwardCounts.put(l.longValue(), Integer.valueOf(intValue2));
                }
                if (this.crossAccountForwardCounts.size() == 0) {
                    AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
                    AccountInstance accountInstance2 = AccountInstance.getInstance(this.currentAccount);
                    accountInstance.getUserConfig().getClientUserId();
                    long clientUserId = accountInstance2.getUserConfig().getClientUserId();
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda64
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.this.lambda$didReceivedNotification$109();
                        }
                    };
                    getMessagesController().deleteMessages(this.crossAccountsForwardMessagesIds, null, null, clientUserId, true, false, runnable, runnable);
                }
            } else if (i == NotificationCenter.didSetPasscode) {
                updatePasscodeButton();
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
                final boolean booleanValue2 = ((Boolean) objArr[3]).booleanValue();
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda92
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.this.lambda$didReceivedNotification$110(tLRPC$Chat, longValue3, booleanValue2, tLRPC$User);
                    }
                };
                if (this.undoView[0] != null) {
                    if (!ChatObject.isForum(tLRPC$Chat)) {
                        getUndoView().showWithAction(longValue3, 1, runnable2);
                        return;
                    } else {
                        runnable2.run();
                        return;
                    }
                }
                runnable2.run();
            } else if (i == NotificationCenter.folderBecomeEmpty) {
                int intValue3 = ((Integer) objArr[0]).intValue();
                int i9 = this.folderId;
                if (i9 != intValue3 || i9 == 0) {
                    return;
                }
                finishFragment();
            } else {
                int i10 = NotificationCenter.dialogFiltersUpdated;
                if (i == i10) {
                    FilterTabsView filterTabsView7 = this.filterTabsView;
                    if (filterTabsView7 != null) {
                        filterTabsView7.initTabCustomWidth();
                    }
                    updateFilterTabs(true, true);
                    if (isCustomForward()) {
                        getNotificationCenter().removeObserver(this, i10);
                    }
                } else if (i == NotificationCenter.filterSettingsUpdated) {
                    showFiltersHint();
                } else if (i == NotificationCenter.newSuggestionsAvailable) {
                    showNextSupportedSuggestion();
                    updateDialogsHint();
                } else if (i == NotificationCenter.forceImportContactsStart) {
                    setFloatingProgressVisible(true, true);
                    ViewPage[] viewPageArr4 = this.viewPages;
                    if (viewPageArr4 != null) {
                        for (ViewPage viewPage3 : viewPageArr4) {
                            viewPage3.dialogsAdapter.setForceShowEmptyCell(false);
                            viewPage3.dialogsAdapter.setForceUpdatingContacts(true);
                            viewPage3.dialogsAdapter.notifyDataSetChanged();
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
                            ViewPage[] viewPageArr5 = this.viewPages;
                            if (i3 >= viewPageArr5.length) {
                                break;
                            }
                            viewPageArr5[i3].dialogsAdapter.didDatabaseCleared();
                            i3++;
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
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$107(ViewPage viewPage, Object[] objArr) {
        reloadViewPageDialogs(viewPage, objArr.length > 0);
        FilterTabsView filterTabsView = this.filterTabsView;
        if (filterTabsView == null || filterTabsView.getVisibility() != 0) {
            return;
        }
        this.filterTabsView.checkTabsCounter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$109() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$didReceivedNotification$108();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$108() {
        if (getParentActivity() instanceof LaunchActivity) {
            LaunchActivity launchActivity = (LaunchActivity) getParentActivity();
            launchActivity.switchToAccount(this.currentAccount, true);
            if (this.crossAccountsForwardSelectedDialogId != 0) {
                Bundle bundle = new Bundle();
                if (DialogObject.isUserDialog(this.crossAccountsForwardSelectedDialogId)) {
                    bundle.putLong("user_id", this.crossAccountsForwardSelectedDialogId);
                } else {
                    bundle.putLong("chat_id", -this.crossAccountsForwardSelectedDialogId);
                }
                launchActivity.lambda$runLinkRequest$80(new ChatActivity(bundle));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$110(TLRPC$Chat tLRPC$Chat, long j, boolean z, TLRPC$User tLRPC$User) {
        if (tLRPC$Chat != null) {
            if (ChatObject.isNotInChat(tLRPC$Chat)) {
                getMessagesController().deleteDialog(j, 0, z);
            } else {
                getMessagesController().deleteParticipantFromChat(-j, getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId())), null, z, z);
            }
        } else {
            getMessagesController().deleteDialog(j, 0, z);
            if (tLRPC$User != null && tLRPC$User.bot) {
                getMessagesController().blockPeer(tLRPC$User.f1633id);
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
            builder.setTitle(LocaleController.getString("HideNewChatsAlertTitle", C3158R.string.HideNewChatsAlertTitle));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("HideNewChatsAlertText", C3158R.string.HideNewChatsAlertText)));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("GoToSettings", C3158R.string.GoToSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda16
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.this.lambda$showSuggestion$111(dialogInterface, i);
                }
            });
            showDialog(builder.create(), new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda24
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    DialogsActivity.this.lambda$showSuggestion$112(dialogInterface);
                }
            });
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSuggestion$111(DialogInterface dialogInterface, int i) {
        presentFragment(new PrivacySettingsActivity());
        AndroidUtilities.scrollToFragmentRow(this.parentLayout, "newChatsRow");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSuggestion$112(DialogInterface dialogInterface) {
        onSuggestionDismiss();
    }

    private void showFiltersHint() {
        if (this.askingForPermissions || !getMessagesController().dialogFiltersLoaded || !getMessagesController().showFiltersTooltip || this.filterTabsView == null || !getMessagesController().dialogFilters.isEmpty() || this.isPaused || !getUserConfig().filtersLoaded || this.inPreviewMode) {
            return;
        }
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        if (globalMainSettings.getBoolean("filterhint", false)) {
            return;
        }
        globalMainSettings.edit().putBoolean("filterhint", true).commit();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showFiltersHint$114();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersHint$113() {
        presentFragment(new FiltersSetupActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersHint$114() {
        getUndoView().showWithAction(0L, 15, null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showFiltersHint$113();
            }
        });
    }

    private void setDialogsListFrozen(boolean z, boolean z2) {
        if (this.viewPages == null || this.dialogsListFrozen == z) {
            return;
        }
        if (z) {
            if (this.customForwardArchive) {
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
                Collections.sort(messagesController.dialogsAlbumsOnly, new Comparator() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda103
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$getDialogsArray$115;
                        lambda$getDialogsArray$115 = DialogsActivity.this.lambda$getDialogsArray$115(messagesController, (TLRPC$Dialog) obj, (TLRPC$Dialog) obj2);
                        return lambda$getDialogsArray$115;
                    }
                });
                return messagesController.dialogsAlbumsOnly;
            }
            boolean z2 = true;
            if (isArchiveDialogsType(i2)) {
                MessagesController.DialogFilter dialogFilter = messagesController.selectedArchiveDialogFilter[i2 != 300 ? (char) 1 : (char) 0];
                if (dialogFilter == null) {
                    return messagesController.getDialogs(1);
                }
                return dialogFilter.dialogs;
            } else if (isForwardDialogsType(i2)) {
                MessagesController.DialogFilter dialogFilter2 = messagesController.selectedForwardDialogFilter[i2 != 200 ? (char) 1 : (char) 0];
                if (dialogFilter2 == null) {
                    return getDialogsArray(i, 3, i3, z);
                }
                return dialogFilter2.dialogs;
            } else if (i2 == 0) {
                return messagesController.getDialogs(i3);
            } else {
                if (i2 == 1 || i2 == 10 || i2 == 13) {
                    return messagesController.dialogsServerOnly;
                }
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
                            if ((this.allowChannels && ChatObject.isChannelAndNotMegaGroup(-tLRPC$Dialog.f1500id, i)) || (this.allowGroups && (ChatObject.isMegagroup(i, -tLRPC$Dialog.f1500id) || !ChatObject.isChannel(-tLRPC$Dialog.f1500id, i)))) {
                                if (z2) {
                                    arrayList2.add(new DialogsHeader(this, 2));
                                    z2 = false;
                                }
                                arrayList2.add(tLRPC$Dialog);
                            }
                        }
                    }
                    return arrayList2;
                } else if (i2 == 3) {
                    return i3 == 1 ? this.customForwardToInactiveAccount ? messagesController.crossAccountsArchivedDialogsForward : messagesController.archivedDialogsForward : this.customForwardToInactiveAccount ? messagesController.crossAccountsDialogsForward : messagesController.dialogsForward;
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
                        MessagesController.DialogFilter dialogFilter3 = messagesController.selectedDialogFilter[i2 != 7 ? (char) 1 : (char) 0];
                        if (dialogFilter3 == null) {
                            return messagesController.getDialogs(i3);
                        }
                        return dialogFilter3.dialogs;
                    } else if (i2 == 9) {
                        return messagesController.dialogsForBlock;
                    } else {
                        if (i2 == 14) {
                            ArrayList<TLRPC$Dialog> arrayList3 = new ArrayList<>();
                            if (this.allowUsers || this.allowBots) {
                                Iterator<TLRPC$Dialog> it = messagesController.dialogsUsersOnly.iterator();
                                while (it.hasNext()) {
                                    TLRPC$Dialog next = it.next();
                                    TLRPC$User user = messagesController.getUser(Long.valueOf(next.f1500id));
                                    if (user != null && !UserObject.isUserSelf(user)) {
                                        if (user.bot) {
                                            if (this.allowBots) {
                                                arrayList3.add(next);
                                            }
                                        } else if (this.allowUsers) {
                                            arrayList3.add(next);
                                        }
                                    }
                                }
                            }
                            if (this.allowGroups) {
                                arrayList3.addAll(messagesController.dialogsGroupsOnly);
                            }
                            if (this.allowChannels) {
                                arrayList3.addAll(messagesController.dialogsChannelsOnly);
                            }
                            return arrayList3;
                        } else if (i2 == 15) {
                            ArrayList<TLRPC$Dialog> arrayList4 = new ArrayList<>();
                            TLRPC$User user2 = messagesController.getUser(Long.valueOf(this.requestPeerBotId));
                            TLRPC$RequestPeerType tLRPC$RequestPeerType = this.requestPeerType;
                            if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeUser) {
                                ConcurrentHashMap<Long, TLRPC$User> users = messagesController.getUsers();
                                Iterator<TLRPC$Dialog> it2 = messagesController.dialogsUsersOnly.iterator();
                                while (it2.hasNext()) {
                                    TLRPC$Dialog next2 = it2.next();
                                    if (meetRequestPeerRequirements(getMessagesController().getUser(Long.valueOf(next2.f1500id)))) {
                                        arrayList4.add(next2);
                                    }
                                }
                                for (TLRPC$User tLRPC$User : users.values()) {
                                    if (tLRPC$User != null && !messagesController.dialogs_dict.containsKey(tLRPC$User.f1633id) && meetRequestPeerRequirements(tLRPC$User)) {
                                        TLRPC$TL_dialog tLRPC$TL_dialog = new TLRPC$TL_dialog();
                                        TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
                                        tLRPC$TL_dialog.peer = tLRPC$TL_peerUser;
                                        long j = tLRPC$User.f1633id;
                                        tLRPC$TL_peerUser.user_id = j;
                                        tLRPC$TL_dialog.f1500id = j;
                                        arrayList4.add(tLRPC$TL_dialog);
                                    }
                                }
                            } else if ((tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeChat) || (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeBroadcast)) {
                                ConcurrentHashMap<Long, TLRPC$Chat> chats = messagesController.getChats();
                                Iterator<TLRPC$Dialog> it3 = (this.requestPeerType instanceof TLRPC$TL_requestPeerTypeChat ? messagesController.dialogsGroupsOnly : messagesController.dialogsChannelsOnly).iterator();
                                while (it3.hasNext()) {
                                    TLRPC$Dialog next3 = it3.next();
                                    if (meetRequestPeerRequirements(user2, getMessagesController().getChat(Long.valueOf(-next3.f1500id)))) {
                                        arrayList4.add(next3);
                                    }
                                }
                                for (TLRPC$Chat tLRPC$Chat : chats.values()) {
                                    if (tLRPC$Chat != null && !messagesController.dialogs_dict.containsKey(-tLRPC$Chat.f1494id) && meetRequestPeerRequirements(user2, tLRPC$Chat)) {
                                        TLRPC$TL_dialog tLRPC$TL_dialog2 = new TLRPC$TL_dialog();
                                        if (ChatObject.isChannel(tLRPC$Chat)) {
                                            TLRPC$TL_peerChannel tLRPC$TL_peerChannel = new TLRPC$TL_peerChannel();
                                            tLRPC$TL_dialog2.peer = tLRPC$TL_peerChannel;
                                            tLRPC$TL_peerChannel.channel_id = tLRPC$Chat.f1494id;
                                        } else {
                                            TLRPC$TL_peerChat tLRPC$TL_peerChat = new TLRPC$TL_peerChat();
                                            tLRPC$TL_dialog2.peer = tLRPC$TL_peerChat;
                                            tLRPC$TL_peerChat.chat_id = tLRPC$Chat.f1494id;
                                        }
                                        tLRPC$TL_dialog2.f1500id = -tLRPC$Chat.f1494id;
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
    public /* synthetic */ int lambda$getDialogsArray$115(MessagesController messagesController, TLRPC$Dialog tLRPC$Dialog, TLRPC$Dialog tLRPC$Dialog2) {
        TLRPC$Chat chat = messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1500id));
        TLRPC$Chat chat2 = messagesController.getChat(Long.valueOf(-tLRPC$Dialog2.f1500id));
        return (this.albumsMode && SharedConfig.isSortCloudAlbumsByNameEnabled) ? chat.title.compareTo(chat2.title) : chat2.date - chat.date;
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
            r3 = 1
            goto L4b
        L4a:
            r3 = 0
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
            r0 = 0
        L95:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.meetRequestPeerRequirements(org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Chat):boolean");
    }

    public void setSideMenu(RecyclerView recyclerView) {
        this.sideMenu = recyclerView;
        recyclerView.setBackgroundColor(Theme.getColor("chats_menuBackground"));
        this.sideMenu.setGlowColor(Theme.getColor("chats_menuBackground"));
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
            fArr[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
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
        if (this.rightSlidingDialogContainer.hasFragment()) {
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
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DialogsActivity.this.lambda$hideFloatingButton$116(valueAnimator);
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
    public /* synthetic */ void lambda$hideFloatingButton$116(ValueAnimator valueAnimator) {
        this.floatingButtonHideProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingButtonTranslation = AndroidUtilities.m50dp(100) * this.floatingButtonHideProgress;
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
        this.contactsAlphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DialogsActivity.this.lambda$animateContactsAlpha$117(valueAnimator2);
            }
        });
        this.contactsAlphaAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateContactsAlpha$117(ValueAnimator valueAnimator) {
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

    /* JADX WARN: Removed duplicated region for block: B:102:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0190 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateVisibleRows(int r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.updateVisibleRows(int, boolean):void");
    }

    public void setDelegate(DialogsActivityDelegate dialogsActivityDelegate) {
        this.delegate = dialogsActivityDelegate;
    }

    public void setSearchString(String str) {
        this.searchString = str;
    }

    public void setInitialSearchString(String str) {
        this.initialSearchString = str;
    }

    public boolean isMainDialogList() {
        return !isManagement() && this.delegate == null && this.searchString == null;
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
                    builder.setTitle(LocaleController.getString("SendMessageTitle", C3158R.string.SendMessageTitle));
                    if (this.hasPoll == 2) {
                        builder.setMessage(LocaleController.getString("PublicPollCantForward", C3158R.string.PublicPollCantForward));
                    } else {
                        builder.setMessage(LocaleController.getString("ChannelCantSendMessage", C3158R.string.ChannelCantSendMessage));
                    }
                    builder.setNegativeButton(LocaleController.getString("OK", C3158R.string.OK), null);
                    showDialog(builder.create());
                    return false;
                }
                return true;
            } else if (DialogObject.isEncryptedDialog(j)) {
                if (this.hasPoll != 0 || this.hasInvoice) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
                    builder2.setTitle(LocaleController.getString("SendMessageTitle", C3158R.string.SendMessageTitle));
                    if (this.hasPoll != 0) {
                        builder2.setMessage(LocaleController.getString("PollCantForwardSecretChat", C3158R.string.PollCantForwardSecretChat));
                    } else {
                        builder2.setMessage(LocaleController.getString("InvoiceCantForwardSecretChat", C3158R.string.InvoiceCantForwardSecretChat));
                    }
                    builder2.setNegativeButton(LocaleController.getString("OK", C3158R.string.OK), null);
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
                        getUndoView().showWithAction(j, 45, (Runnable) null);
                        return;
                    } else {
                        tLRPC$User = user;
                        tLRPC$Chat = null;
                    }
                } else {
                    TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-j));
                    if (!ChatObject.hasAdminRights(chat) || !ChatObject.canChangeChatInfo(chat)) {
                        getUndoView().showWithAction(j, 46, (Runnable) null);
                        return;
                    } else {
                        tLRPC$Chat = chat;
                        tLRPC$User = null;
                    }
                }
                final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
                final TLRPC$TL_messages_checkHistoryImportPeer tLRPC$TL_messages_checkHistoryImportPeer = new TLRPC$TL_messages_checkHistoryImportPeer();
                tLRPC$TL_messages_checkHistoryImportPeer.peer = getMessagesController().getInputPeer(j);
                getConnectionsManager().sendRequest(tLRPC$TL_messages_checkHistoryImportPeer, new RequestDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda131
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        DialogsActivity.this.lambda$didSelectResult$120(alertDialog, tLRPC$User, tLRPC$Chat, j, z2, tLRPC$TL_messages_checkHistoryImportPeer, tLObject, tLRPC$TL_error);
                    }
                });
                try {
                    alertDialog.showDelayed(300L);
                } catch (Exception unused) {
                }
            } else if (!z || ((this.selectAlertString == null || this.selectAlertStringGroup == null) && this.addToGroupAlertString == null)) {
                if (i2 == 15) {
                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda87
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.this.lambda$didSelectResult$123(j, i, z2, topicsFragment);
                        }
                    };
                    Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda88
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.this.lambda$didSelectResult$125(j, runnable);
                        }
                    };
                    if (j < 0) {
                        showSendToBotAlert(getMessagesController().getChat(Long.valueOf(-j)), runnable2, (Runnable) null);
                    } else {
                        showSendToBotAlert(getMessagesController().getUser(Long.valueOf(j)), runnable2, (Runnable) null);
                    }
                } else if (this.customForwardToInactiveAccount) {
                    this.crossAccountsForwardSelectedDialogId = j;
                    crossAccountsForward();
                } else if (this.delegate != null) {
                    ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                    arrayList.add(MessagesStorage.TopicKey.m42of(j, i));
                    if (this.delegate.didSelectDialogs(this, arrayList, null, z2, topicsFragment) && this.resetDelegate) {
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
                    string = LocaleController.getString("SendMessageTitle", C3158R.string.SendMessageTitle);
                    formatStringSimple = LocaleController.formatStringSimple(this.selectAlertString, UserObject.getUserName(user2));
                    string2 = LocaleController.getString("Send", C3158R.string.Send);
                } else if (DialogObject.isUserDialog(j)) {
                    if (j == getUserConfig().getClientUserId()) {
                        string = LocaleController.getString("SendMessageTitle", C3158R.string.SendMessageTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.selectAlertStringGroup, LocaleController.getString("SavedMessages", C3158R.string.SavedMessages));
                        string2 = LocaleController.getString("Send", C3158R.string.Send);
                    } else {
                        TLRPC$User user3 = getMessagesController().getUser(Long.valueOf(j));
                        if (user3 == null || this.selectAlertString == null) {
                            return;
                        }
                        string = LocaleController.getString("SendMessageTitle", C3158R.string.SendMessageTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.selectAlertString, UserObject.getUserName(user3));
                        string2 = LocaleController.getString("Send", C3158R.string.Send);
                    }
                } else {
                    TLRPC$Chat chat2 = getMessagesController().getChat(Long.valueOf(-j));
                    if (chat2 == null) {
                        return;
                    }
                    String str = chat2.title;
                    if (i != 0 && (findTopic = getMessagesController().getTopicsController().findTopic(chat2.f1494id, i)) != null) {
                        str = ((Object) str) + " " + findTopic.title;
                    }
                    if (this.addToGroupAlertString != null) {
                        string = LocaleController.getString("AddToTheGroupAlertTitle", C3158R.string.AddToTheGroupAlertTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.addToGroupAlertString, str);
                        string2 = LocaleController.getString("Add", C3158R.string.Add);
                    } else {
                        string = LocaleController.getString("SendMessageTitle", C3158R.string.SendMessageTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.selectAlertStringGroup, str);
                        string2 = LocaleController.getString("Send", C3158R.string.Send);
                    }
                }
                String str2 = string2;
                builder.setTitle(string);
                builder.setMessage(AndroidUtilities.replaceTags(formatStringSimple));
                builder.setPositiveButton(str2, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda20
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        DialogsActivity.this.lambda$didSelectResult$121(j, i, topicsFragment, dialogInterface, i3);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                if (this.sharePhotoVideo) {
                    builder.setNeutralButton(LocaleController.getString("Edit", C3158R.string.Edit), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda19
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i3) {
                            DialogsActivity.this.lambda$didSelectResult$122(j, dialogInterface, i3);
                        }
                    });
                }
                showDialog(builder.create());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$120(final AlertDialog alertDialog, final TLRPC$User tLRPC$User, final TLRPC$Chat tLRPC$Chat, final long j, final boolean z, final TLRPC$TL_messages_checkHistoryImportPeer tLRPC$TL_messages_checkHistoryImportPeer, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda96
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$didSelectResult$119(alertDialog, tLObject, tLRPC$User, tLRPC$Chat, j, z, tLRPC$TL_error, tLRPC$TL_messages_checkHistoryImportPeer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$119(AlertDialog alertDialog, TLObject tLObject, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, final long j, final boolean z, TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_messages_checkHistoryImportPeer tLRPC$TL_messages_checkHistoryImportPeer) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        this.checkingImportDialog = false;
        if (tLObject != null) {
            AlertsCreator.createImportDialogAlert(this, this.arguments.getString("importTitle"), ((TLRPC$TL_messages_checkedHistoryImportPeer) tLObject).confirm_text, tLRPC$User, tLRPC$Chat, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda89
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$didSelectResult$118(j, z);
                }
            });
            return;
        }
        AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, this, tLRPC$TL_messages_checkHistoryImportPeer, new Object[0]);
        getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(j), tLRPC$TL_messages_checkHistoryImportPeer, tLRPC$TL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$118(long j, boolean z) {
        setDialogsListFrozen(true);
        ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
        arrayList.add(MessagesStorage.TopicKey.m42of(j, 0));
        this.delegate.didSelectDialogs(this, arrayList, null, z, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$121(long j, int i, TopicsFragment topicsFragment, DialogInterface dialogInterface, int i2) {
        didSelectResult(j, i, false, false, topicsFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$122(long j, DialogInterface dialogInterface, int i) {
        didSelectResult(j, 0, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$123(long j, int i, boolean z, TopicsFragment topicsFragment) {
        if (this.delegate != null) {
            ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
            arrayList.add(MessagesStorage.TopicKey.m42of(j, i));
            this.delegate.didSelectDialogs(this, arrayList, null, z, topicsFragment);
            if (this.resetDelegate) {
                this.delegate = null;
                return;
            }
            return;
        }
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$125(long j, final Runnable runnable) {
        if (this.requestPeerType.bot_admin_rights != null) {
            getMessagesController().setUserAdminRole(-j, getMessagesController().getUser(Long.valueOf(this.requestPeerBotId)), this.requestPeerType.bot_admin_rights, null, false, this, true, true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda117
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
        showDialog(new AlertDialog.Builder(getContext()).setTitle(LocaleController.formatString(C3158R.string.AreYouSureSendChatToBotTitle, UserObject.getFirstName(tLRPC$User), UserObject.getFirstName(user))).setMessage(TextUtils.concat(AndroidUtilities.replaceTags(LocaleController.formatString(C3158R.string.AreYouSureSendChatToBotMessage, UserObject.getFirstName(tLRPC$User), UserObject.getFirstName(user))))).setPositiveButton(LocaleController.formatString("Send", C3158R.string.Send, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        }).setNegativeButton(LocaleController.formatString("Cancel", C3158R.string.Cancel, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogsActivity.lambda$showSendToBotAlert$127(runnable2, dialogInterface, i);
            }
        }).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSendToBotAlert$127(Runnable runnable, DialogInterface dialogInterface, int i) {
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
        AlertDialog.Builder title = new AlertDialog.Builder(getContext()).setTitle(LocaleController.formatString(C3158R.string.AreYouSureSendChatToBotTitle, tLRPC$Chat.title, UserObject.getFirstName(user)));
        CharSequence[] charSequenceArr = new CharSequence[2];
        charSequenceArr[0] = AndroidUtilities.replaceTags(LocaleController.formatString(C3158R.string.AreYouSureSendChatToBotMessage, tLRPC$Chat.title, UserObject.getFirstName(user)));
        Boolean bool = this.requestPeerType.bot_participant;
        if ((bool == null || !bool.booleanValue() || getMessagesController().isInChatCached(tLRPC$Chat, user)) && this.requestPeerType.bot_admin_rights == null) {
            charSequence = "";
        } else {
            CharSequence[] charSequenceArr2 = new CharSequence[2];
            charSequenceArr2[0] = "\n\n";
            if (this.requestPeerType.bot_admin_rights == null) {
                formatString = LocaleController.formatString(C3158R.string.AreYouSureSendChatToBotAdd, UserObject.getFirstName(user), tLRPC$Chat.title);
            } else {
                formatString = LocaleController.formatString(C3158R.string.AreYouSureSendChatToBotAddRights, UserObject.getFirstName(user), tLRPC$Chat.title, RequestPeerRequirementsCell.rightsToString(this.requestPeerType.bot_admin_rights, isChannelAndNotMegaGroup));
            }
            charSequenceArr2[1] = AndroidUtilities.replaceTags(formatString);
            charSequence = TextUtils.concat(charSequenceArr2);
        }
        charSequenceArr[1] = charSequence;
        showDialog(title.setMessage(TextUtils.concat(charSequenceArr)).setPositiveButton(LocaleController.formatString("Send", C3158R.string.Send, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        }).setNegativeButton(LocaleController.formatString("Cancel", C3158R.string.Cancel, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogsActivity.lambda$showSendToBotAlert$129(runnable2, dialogInterface, i);
            }
        }).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSendToBotAlert$129(Runnable runnable, DialogInterface dialogInterface, int i) {
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
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda133
            @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                DialogsActivity.this.lambda$onSendLongClick$130(keyEvent);
            }
        });
        actionBarPopupWindowLayout.setShownFromBottom(false);
        actionBarPopupWindowLayout.setupRadialSelectors(getThemedColor("dialogButtonSelector"));
        long clientUserId = getUserConfig().getClientUserId();
        boolean z = this.selectedDialogs.size() == 1 && this.selectedDialogs.get(0).longValue() == clientUserId;
        if (z || !this.selectedDialogs.contains(Long.valueOf(clientUserId))) {
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem((Context) parentActivity, true, true, resourceProvider);
            if (z) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("SetReminder", C3158R.string.SetReminder), C3158R.C3160drawable.msg_schedule);
            } else {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("ScheduleMessage", C3158R.string.ScheduleMessage), C3158R.C3160drawable.msg_schedule);
            }
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m50dp(196));
            actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda44
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.this.lambda$onSendLongClick$131(parentActivity, view2);
                }
            });
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem((Context) parentActivity, true, true, resourceProvider);
        if (getToolsController().isSilentSendingEnabled()) {
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3158R.string.send_with_sound), C3158R.C3160drawable.input_notify_on);
        } else {
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("SendWithoutSound", C3158R.string.SendWithoutSound), C3158R.C3160drawable.input_notify_off);
        }
        actionBarMenuSubItem2.setMinimumWidth(AndroidUtilities.m50dp(196));
        actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem2, LayoutHelper.createLinear(-1, 48));
        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DialogsActivity.this.lambda$onSendLongClick$132(view2);
            }
        });
        linearLayout.addView(actionBarPopupWindowLayout, LayoutHelper.createLinear(-1, -2));
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(linearLayout, -2, -2);
        this.sendPopupWindow = actionBarPopupWindow;
        actionBarPopupWindow.setAnimationEnabled(false);
        this.sendPopupWindow.setAnimationStyle(C3158R.style.PopupContextAnimation2);
        this.sendPopupWindow.setOutsideTouchable(true);
        this.sendPopupWindow.setClippingEnabled(true);
        this.sendPopupWindow.setInputMethodMode(2);
        this.sendPopupWindow.setSoftInputMode(0);
        this.sendPopupWindow.getContentView().setFocusableInTouchMode(true);
        SharedConfig.removeScheduledOrNoSoundHint();
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE));
        this.sendPopupWindow.setFocusable(true);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        this.sendPopupWindow.showAtLocation(view, 51, ((iArr[0] + view.getMeasuredWidth()) - linearLayout.getMeasuredWidth()) + AndroidUtilities.m50dp(8), (iArr[1] - linearLayout.getMeasuredHeight()) - AndroidUtilities.m50dp(2));
        this.sendPopupWindow.dimBehind();
        view.performHapticFeedback(3, 2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$130(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$131(Activity activity, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        AlertsCreator.createScheduleDatePickerDialog(activity, 0L, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.DialogsActivity.69
            @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public ArrayList<Long> getSelectedDialogs() {
                return DialogsActivity.this.selectedDialogs;
            }

            @Override // org.telegram.p048ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public void didSelectDate(boolean z, int i, String str) {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.scheduleDate = i;
                if (dialogsActivity.delegate == null || DialogsActivity.this.selectedDialogs.isEmpty()) {
                    return;
                }
                ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < DialogsActivity.this.selectedDialogs.size(); i2++) {
                    arrayList.add(MessagesStorage.TopicKey.m42of(((Long) DialogsActivity.this.selectedDialogs.get(i2)).longValue(), 0));
                }
                DialogsActivityDelegate dialogsActivityDelegate = DialogsActivity.this.delegate;
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                dialogsActivityDelegate.didSelectDialogs(dialogsActivity2, arrayList, dialogsActivity2.commentView.getFieldText(), false, null);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$132(View view) {
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
            arrayList.add(MessagesStorage.TopicKey.m42of(this.selectedDialogs.get(i).longValue(), 0));
        }
        this.delegate.didSelectDialogs(this, arrayList, this.commentView.getFieldText(), false, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x0d54 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x089a  */
    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<org.telegram.p048ui.ActionBar.ThemeDescription> getThemeDescriptions() {
        /*
            Method dump skipped, instructions count: 8248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.getThemeDescriptions():java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getThemeDescriptions$133() {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DialogsActivity.lambda$getThemeDescriptions$133():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$134() {
        SearchViewPager searchViewPager = this.searchViewPager;
        if (searchViewPager != null) {
            ActionBarMenu actionMode = searchViewPager.getActionMode();
            if (actionMode != null) {
                actionMode.setBackgroundColor(getThemedColor("actionBarActionModeDefault"));
            }
            ActionBarMenuItem speedItem = this.searchViewPager.getSpeedItem();
            if (speedItem != null) {
                speedItem.getIconView().setColorFilter(new PorterDuffColorFilter(getThemedColor("actionBarActionModeDefaultIcon"), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$135() {
        this.speedItem.getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor("actionBarActionModeDefaultIcon"), PorterDuff.Mode.SRC_IN));
        this.speedItem.setBackground(Theme.createSelectorDrawable(Theme.getColor("actionBarActionModeDefaultSelector")));
    }

    private void updateFloatingButtonColor() {
        if (getParentActivity() == null || this.floatingButtonContainer == null) {
            return;
        }
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m50dp(56), Theme.getColor("chats_actionBackground"), Theme.getColor("chats_actionPressedBackground"));
        if (Build.VERSION.SDK_INT < 21) {
            Drawable mutate = ContextCompat.getDrawable(getParentActivity(), C3158R.C3160drawable.floating_shadow).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, createSimpleSelectorCircleDrawable, 0, 0);
            combinedDrawable.setIconSize(AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
            createSimpleSelectorCircleDrawable = combinedDrawable;
        }
        this.floatingButtonContainer.setBackground(createSimpleSelectorCircleDrawable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogsActivity.this.lambda$getCustomSlideTransition$136(valueAnimator);
            }
        });
        this.slideBackTransitionAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.slideBackTransitionAnimator.setDuration(i);
        this.slideBackTransitionAnimator.start();
        return this.slideBackTransitionAnimator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCustomSlideTransition$136(ValueAnimator valueAnimator) {
        setSlideTransitionProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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
        if (SharedConfig.getDevicePerformanceClass() <= 1 || !LiteMode.isEnabled(32)) {
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
            C3222ActionBar c3222ActionBar = this.actionBar;
            if (c3222ActionBar != null) {
                c3222ActionBar.setLayerType(2, null);
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
        C3222ActionBar c3222ActionBar2 = this.actionBar;
        if (c3222ActionBar2 != null) {
            c3222ActionBar2.setLayerType(0, null);
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onSlideProgress(boolean z, float f) {
        if (SharedConfig.getDevicePerformanceClass() > 0 && LiteMode.isEnabled(32) && this.isSlideBackTransition && this.slideBackTransitionAnimator == null) {
            setSlideTransitionProgress(f);
        }
    }

    private void setSlideTransitionProgress(float f) {
        if (SharedConfig.getDevicePerformanceClass() <= 0 || !LiteMode.isEnabled(32)) {
            return;
        }
        this.slideFragmentLite = SharedConfig.getDevicePerformanceClass() <= 1;
        this.slideFragmentProgress = f;
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
        if (this.slideFragmentLite) {
            FilterTabsView filterTabsView = this.filterTabsView;
            if (filterTabsView != null) {
                filterTabsView.getListView().setTranslationX((this.isDrawerTransition ? 1 : -1) * AndroidUtilities.m50dp(40) * (1.0f - this.slideFragmentProgress));
                this.filterTabsView.invalidate();
            }
            TopicsBar topicsBar = this.topicsBar;
            if (topicsBar != null) {
                topicsBar.getListView().setTranslationX(this.filterTabsView.getListView().getTranslationX());
                this.topicsBar.invalidate();
            }
            RecentChatsBar recentChatsBar = this.recentChatsBar;
            if (recentChatsBar != null) {
                recentChatsBar.getListView().setTranslationX(this.filterTabsView.getListView().getTranslationX());
                this.recentChatsBar.invalidate();
            }
            PinnedPlayerView pinnedPlayerView = this.pinnedPlayerView;
            if (pinnedPlayerView != null) {
                pinnedPlayerView.getRootContainer().setTranslationX(this.filterTabsView.getListView().getTranslationX());
                this.pinnedPlayerView.invalidate();
            }
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer == null || rightSlidingDialogContainer.getFragmentView() == null || this.rightFragmentTransitionInProgress) {
                return;
            }
            this.rightSlidingDialogContainer.getFragmentView().setTranslationX((this.isDrawerTransition ? 1 : -1) * AndroidUtilities.m50dp(40) * (1.0f - this.slideFragmentProgress));
            return;
        }
        float f2 = 1.0f - ((1.0f - this.slideFragmentProgress) * 0.05f);
        FilterTabsView filterTabsView2 = this.filterTabsView;
        if (filterTabsView2 != null) {
            filterTabsView2.getListView().setScaleX(f2);
            this.filterTabsView.getListView().setScaleY(f2);
            this.filterTabsView.getListView().setTranslationX((this.isDrawerTransition ? AndroidUtilities.m50dp(4) : -AndroidUtilities.m50dp(4)) * (1.0f - this.slideFragmentProgress));
            this.filterTabsView.getListView().setPivotX(this.isDrawerTransition ? this.filterTabsView.getMeasuredWidth() : BitmapDescriptorFactory.HUE_RED);
            this.filterTabsView.getListView().setPivotY(BitmapDescriptorFactory.HUE_RED);
            this.filterTabsView.invalidate();
        }
        TopicsBar topicsBar2 = this.topicsBar;
        if (topicsBar2 != null) {
            topicsBar2.getListView().setScaleX(f2);
            this.topicsBar.getListView().setScaleY(f2);
            this.topicsBar.getListView().setTranslationX(this.filterTabsView.getListView().getTranslationX());
            this.topicsBar.getListView().setPivotX(this.filterTabsView.getListView().getPivotX());
            this.topicsBar.getListView().setPivotY(this.filterTabsView.getListView().getPivotY());
            this.topicsBar.invalidate();
        }
        RecentChatsBar recentChatsBar2 = this.recentChatsBar;
        if (recentChatsBar2 != null) {
            recentChatsBar2.getListView().setScaleX(f2);
            this.recentChatsBar.getListView().setScaleY(f2);
            this.recentChatsBar.getListView().setTranslationX(this.filterTabsView.getListView().getTranslationX());
            this.recentChatsBar.getListView().setPivotX(this.filterTabsView.getListView().getPivotX());
            this.recentChatsBar.getListView().setPivotY(this.filterTabsView.getListView().getPivotY());
            this.recentChatsBar.invalidate();
        }
        PinnedPlayerView pinnedPlayerView2 = this.pinnedPlayerView;
        if (pinnedPlayerView2 != null) {
            pinnedPlayerView2.getRootContainer().setScaleX(f2);
            this.pinnedPlayerView.getRootContainer().setScaleY(f2);
            this.pinnedPlayerView.getRootContainer().setTranslationX(this.filterTabsView.getListView().getTranslationX());
            this.pinnedPlayerView.getRootContainer().setPivotX(this.filterTabsView.getListView().getPivotX());
            this.pinnedPlayerView.getRootContainer().setPivotY(this.filterTabsView.getListView().getPivotY());
            this.pinnedPlayerView.invalidate();
        }
        RightSlidingDialogContainer rightSlidingDialogContainer2 = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer2 == null || rightSlidingDialogContainer2.getFragmentView() == null) {
            return;
        }
        if (!this.rightFragmentTransitionInProgress) {
            this.rightSlidingDialogContainer.getFragmentView().setScaleX(f2);
            this.rightSlidingDialogContainer.getFragmentView().setScaleY(f2);
            this.rightSlidingDialogContainer.getFragmentView().setTranslationX((this.isDrawerTransition ? AndroidUtilities.m50dp(4) : -AndroidUtilities.m50dp(4)) * (1.0f - this.slideFragmentProgress));
        }
        this.rightSlidingDialogContainer.getFragmentView().setPivotX(this.isDrawerTransition ? this.rightSlidingDialogContainer.getMeasuredWidth() : BitmapDescriptorFactory.HUE_RED);
        this.rightSlidingDialogContainer.getFragmentView().setPivotY(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public INavigationLayout.BackButtonState getBackButtonState() {
        return (isArchive() || this.rightSlidingDialogContainer.isOpenned) ? INavigationLayout.BackButtonState.BACK : INavigationLayout.BackButtonState.MENU;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void setProgressToDrawerOpened(float f) {
        if (SharedConfig.getDevicePerformanceClass() <= 0 || this.isSlideBackTransition) {
            return;
        }
        boolean z = f > BitmapDescriptorFactory.HUE_RED;
        if (this.searchIsShowed) {
            f = BitmapDescriptorFactory.HUE_RED;
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        RightSlidingDialogContainer rightSlidingDialogContainer;
        if (!this.searching && (rightSlidingDialogContainer = this.rightSlidingDialogContainer) != null && rightSlidingDialogContainer.getFragment() != null) {
            return this.rightSlidingDialogContainer.getFragment().isLightStatusBar();
        }
        int color = Theme.getColor((this.searching && this.whiteActionBar) ? "windowBackgroundWhite" : this.folderId == 0 ? "actionBarDefault" : "actionBarDefaultArchived");
        if (this.actionBar.isActionModeShowed()) {
            color = Theme.getColor("actionBarActionModeDefault");
        }
        return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
    }

    @Override // org.telegram.p048ui.Components.FloatingDebug.FloatingDebugProvider
    public List<FloatingDebugController.DebugItem> onGetDebugItems() {
        return Arrays.asList(new FloatingDebugController.DebugItem(LocaleController.getString(C3158R.string.DebugDialogsActivity)), new FloatingDebugController.DebugItem(LocaleController.getString(C3158R.string.ClearLocalDatabase), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$onGetDebugItems$137();
            }
        }), new FloatingDebugController.DebugItem(LocaleController.getString(C3158R.string.DebugClearSendMessageAsPeers), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$onGetDebugItems$138();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGetDebugItems$137() {
        getMessagesStorage().clearLocalDatabase();
        Toast.makeText(getContext(), LocaleController.getString(C3158R.string.DebugClearLocalDatabaseSuccess), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGetDebugItems$138() {
        getMessagesController().clearSendAsPeers();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        ForwardingPreviewView forwardingPreviewView;
        FilterTabsView filterTabsView = this.filterTabsView;
        boolean z = filterTabsView == null || filterTabsView.getVisibility() != 0 || this.filterTabsView.getCurrentTabId() == this.filterTabsView.getFirstTabId();
        if (!isArchive() || this.searching || z) {
            if (!isCustomForward() || (!this.searching && z && ((forwardingPreviewView = this.forwardingPreviewView) == null || !forwardingPreviewView.isShowing()))) {
                if (!isManagement() || z) {
                    return !this.rightSlidingDialogContainer.hasFragment();
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
