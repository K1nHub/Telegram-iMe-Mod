package org.telegram.p042ui;

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
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.FiltersController;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.enums.FilterActivityType;
import com.iMe.fork.enums.FilterTabWidthMode;
import com.iMe.fork.enums.LockedSection;
import com.iMe.fork.enums.SortingFilter;
import com.iMe.fork.p023ui.dialog.SelectFabsBottomSheet;
import com.iMe.fork.p023ui.fragment.MusicActivity;
import com.iMe.fork.p023ui.fragment.RecentChatsDialogTypeSettingsActivity;
import com.iMe.fork.p023ui.fragment.SettingsToolsActivity;
import com.iMe.fork.p023ui.fragment.SortingFilterSettingsActivity;
import com.iMe.fork.p023ui.view.AvatarDrawableCell;
import com.iMe.fork.p023ui.view.FragmentPreviewMenu;
import com.iMe.fork.p023ui.view.PinnedPlayerView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p030ui.base.mvp.JavaMvpFragment;
import com.iMe.p030ui.common.ColorBlenderAnimator;
import com.iMe.p030ui.multifab.MiniFabsContainer;
import com.iMe.p030ui.recent_chats.RecentChatsBar;
import com.iMe.p030ui.topics.TopicView;
import com.iMe.p030ui.topics.TopicsAlert;
import com.iMe.p030ui.topics.TopicsBar;
import com.iMe.p030ui.wallet.airdrop.WalletAirdropPresenter;
import com.iMe.p030ui.wallet.airdrop.WalletAirdropView;
import com.iMe.p030ui.wallet.common.WalletRootFragment;
import com.iMe.storage.domain.model.HistoryDialogModel;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.storage.domain.model.filters.FilterSettingsModel;
import com.iMe.storage.domain.model.topics.TopicModel;
import com.iMe.utils.extentions.model.filter.FilterFabExtKt;
import com.iMe.utils.helper.NewsAndUserActivityHelper;
import com.iMe.utils.helper.wallet.WalletHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
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
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3630R;
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
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.XiaomiUtilities;
import org.telegram.p042ui.ActionBar.ActionBarMenu;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p042ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p042ui.ActionBar.AlertDialog;
import org.telegram.p042ui.ActionBar.BackDrawable;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.BottomSheet;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.INavigationLayout;
import org.telegram.p042ui.ActionBar.MenuDrawable;
import org.telegram.p042ui.ActionBar.SimpleTextView;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Adapters.DialogsAdapter;
import org.telegram.p042ui.Adapters.DialogsSearchAdapter;
import org.telegram.p042ui.Adapters.FiltersView;
import org.telegram.p042ui.CameraScanActivity;
import org.telegram.p042ui.Cells.AccountSelectCell;
import org.telegram.p042ui.Cells.CheckBoxCell;
import org.telegram.p042ui.Cells.DialogCell;
import org.telegram.p042ui.Cells.DialogsHintCell;
import org.telegram.p042ui.Cells.DrawerProfileCell;
import org.telegram.p042ui.Cells.DrawerUserCell;
import org.telegram.p042ui.Cells.HeaderCell;
import org.telegram.p042ui.Cells.HintDialogCell;
import org.telegram.p042ui.Cells.ProfileSearchCell;
import org.telegram.p042ui.Cells.RequestPeerRequirementsCell;
import org.telegram.p042ui.Cells.TextCell;
import org.telegram.p042ui.Cells.UnconfirmedAuthHintCell;
import org.telegram.p042ui.Cells.UserCell;
import org.telegram.p042ui.Components.AlertsCreator;
import org.telegram.p042ui.Components.AnimatedEmojiDrawable;
import org.telegram.p042ui.Components.AnimationProperties;
import org.telegram.p042ui.Components.ArchiveHelp;
import org.telegram.p042ui.Components.AvatarDrawable;
import org.telegram.p042ui.Components.BackupImageView;
import org.telegram.p042ui.Components.BlurredRecyclerView;
import org.telegram.p042ui.Components.Bulletin;
import org.telegram.p042ui.Components.BulletinFactory;
import org.telegram.p042ui.Components.ChatActivityEnterView;
import org.telegram.p042ui.Components.ChatAvatarContainer;
import org.telegram.p042ui.Components.CombinedDrawable;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.DialogsItemAnimator;
import org.telegram.p042ui.Components.EditTextBoldCursor;
import org.telegram.p042ui.Components.FilterTabsView;
import org.telegram.p042ui.Components.FiltersListBottomSheet;
import org.telegram.p042ui.Components.FlickerLoadingView;
import org.telegram.p042ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.p042ui.Components.FloatingDebug.FloatingDebugProvider;
import org.telegram.p042ui.Components.FolderBottomSheet;
import org.telegram.p042ui.Components.ForwardingPreviewView;
import org.telegram.p042ui.Components.FragmentContextView;
import org.telegram.p042ui.Components.GroupCreateSpan;
import org.telegram.p042ui.Components.HintView;
import org.telegram.p042ui.Components.ItemOptions;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.MediaActivity;
import org.telegram.p042ui.Components.NumberTextView;
import org.telegram.p042ui.Components.PacmanAnimation;
import org.telegram.p042ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p042ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p042ui.Components.ProxyDrawable;
import org.telegram.p042ui.Components.PullForegroundDrawable;
import org.telegram.p042ui.Components.RLottieDrawable;
import org.telegram.p042ui.Components.RLottieImageView;
import org.telegram.p042ui.Components.RadialProgress2;
import org.telegram.p042ui.Components.RadialProgressView;
import org.telegram.p042ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p042ui.Components.RecyclerAnimationScrollHelper;
import org.telegram.p042ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.p042ui.Components.SearchViewPager;
import org.telegram.p042ui.Components.SizeNotifierFrameLayout;
import org.telegram.p042ui.Components.UndoView;
import org.telegram.p042ui.Components.ViewPagerFixed;
import org.telegram.p042ui.DialogsActivity;
import org.telegram.p042ui.FilterCreateActivity;
import org.telegram.p042ui.GroupCreateFinalActivity;
import org.telegram.p042ui.SelectAnimatedEmojiDialog;
import org.telegram.p042ui.Stories.DialogStoriesCell;
import org.telegram.p042ui.Stories.StoriesController;
import org.telegram.p042ui.Stories.StoriesListPlaceProvider;
import org.telegram.p042ui.Stories.StoryViewer;
import org.telegram.p042ui.Stories.UserListPoller;
import org.telegram.p042ui.Stories.recorder.HintView2;
import org.telegram.p042ui.Stories.recorder.StoryRecorder;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$EncryptedChat;
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
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: org.telegram.ui.DialogsActivity */
/* loaded from: classes5.dex */
public class DialogsActivity extends JavaMvpFragment implements NotificationCenter.NotificationCenterDelegate, FloatingDebugProvider, WalletAirdropView {
    public final Property<DialogsActivity, Float> SCROLL_Y;
    public final Property<View, Float> SEARCH_TRANSLATION_Y;
    private ValueAnimator actionBarColorAnimator;
    private Paint actionBarDefaultPaint;
    private int actionModeAdditionalHeight;
    private boolean actionModeFullyShowed;
    private ActionBarPopupWindow.GapView actionModeMenuGap;
    private ArrayList<View> actionModeViews;
    private ActionBarMenuSubItem addToFolderItem;
    private String addToGroupAlertString;
    private float additionalFloatingTranslation;
    private float additionalFloatingTranslation2;
    private float additionalOffset;
    private boolean afterSignup;
    public boolean allowBots;
    public boolean allowChannels;
    private boolean allowGlobalSearch;
    public boolean allowGroups;
    public boolean allowLegacyGroups;
    public boolean allowMegagroups;
    private boolean allowMoving;
    private boolean allowSwipeDuringCurrentTouch;
    private boolean allowSwitchAccount;
    public boolean allowUsers;
    private boolean animateToHasStories;
    private DrawerProfileCell.AnimatedStatusView animatedStatusView;
    private boolean animatingForward;
    private ActionBarMenuItem archive2Item;
    private ActionBarMenuSubItem archiveItem;
    private boolean askAboutContacts;
    private boolean askingForPermissions;
    private UnconfirmedAuthHintCell authHintCell;
    private boolean authHintCellAnimating;
    private ValueAnimator authHintCellAnimator;
    private float authHintCellProgress;
    private boolean authHintCellVisible;
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
    private boolean canShowStoryHint;
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
    private int currentConnectionState;
    private int currentQrScannerType;
    View databaseMigrationHint;
    private int debugLastUpdateAction;
    private DialogsActivityDelegate delegate;
    private ActionBarMenuItem deleteItem;
    private Long deviceSize;
    public DialogStoriesCell dialogStoriesCell;
    public boolean dialogStoriesCellVisible;
    private DialogsHintCell dialogsHintCell;
    private boolean dialogsHintCellVisible;
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
    private boolean fixScrollYAfterArchiveOpened;
    private RadialProgressView floating2ProgressView;
    private RLottieImageView floatingButton;
    private RLottieImageView floatingButton2;
    private FrameLayout floatingButton2Container;
    private FrameLayout floatingButtonContainer;
    private float floatingButtonHideProgress;
    private float floatingButtonPanOffset;
    private float floatingButtonTranslation;
    private boolean floatingForceVisible;
    private boolean floatingHidden;
    private final AccelerateDecelerateInterpolator floatingInterpolator;
    private AnimatorSet floatingProgressAnimator;
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
    private int fragmentContextTopPadding;
    private FragmentContextView fragmentContextView;
    private FragmentContextView fragmentLocationContextView;
    private ArrayList<TLRPC$Dialog> frozenDialogsList;
    private boolean hasInvoice;
    public boolean hasOnlySlefStories;
    private int hasPoll;
    public boolean hasStories;
    private ActionBarMenuSubItem hiddenChatsItem;
    private int initialDialogsType;
    private String initialSearchString;
    private int initialSearchType;
    private boolean invalidateScrollY;
    boolean isDrawerTransition;
    private boolean isFabScaleInAnimation;
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
    private AnimationNotificationsLocker notificationsLocker;
    public boolean notify;
    private boolean onlySelect;
    private ActionBarMenuSubItem openCloudInsteadAlbumsItem;
    private MessagesStorage.TopicKey openedDialogId;
    private ActionBarMenuItem optionsItem;
    private PacmanAnimation pacmanAnimation;
    private Paint paint;
    float panTranslationY;
    private RLottieDrawable passcodeDrawable;
    private ActionBarMenuItem passcodeItem;
    private boolean passcodeItemVisible;
    private int pendingUpdateInterfaceMask;
    private AlertDialog permissionDialog;
    private ActionBarMenuSubItem pin2Item;
    private ActionBarMenuItem pinItem;
    private Drawable premiumStar;
    @InjectPresenter
    public WalletAirdropPresenter presenter;
    private int prevPosition;
    private int prevTop;
    private float progressToActionMode;
    public float progressToDialogStoriesCell;
    public float progressToShowStories;
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
    private boolean rightFragmentTransitionIsOpen;
    public RightSlidingDialogContainer rightSlidingDialogContainer;
    public int scheduleDate;
    private float scrollAdditionalOffset;
    private boolean scrollBarVisible;
    private boolean scrollUpdated;
    private float scrollYOffset;
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
    float searchViewPagerTranslationY;
    private boolean searchWas;
    private boolean searchWasFullyShowed;
    private boolean searching;
    private String selectAlertString;
    private String selectAlertStringGroup;
    private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialog;
    private ActionBarMenuSubItem selectTopicItem;
    private View selectedCountView;
    private ArrayList<Long> selectedDialogs;
    private NumberTextView selectedDialogsCountTextView;
    private int selectedFilterIdToRestore;
    private FilterFab selectedMultiFab;
    private ActionBarPopupWindow sendPopupWindow;
    private boolean showForwardingOptionsButton;
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
    private Bulletin storiesBulletin;
    public boolean storiesEnabled;
    private float storiesOverscroll;
    private boolean storiesOverscrollCalled;
    ValueAnimator storiesVisibilityAnimator;
    ValueAnimator storiesVisibilityAnimator2;
    private float storiesYOffset;
    private HintView2 storyHint;
    private boolean storyHintShown;
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
    private boolean wasDrawn;
    public boolean whiteActionBar;
    private ImageView[] writeButton;
    private FrameLayout writeButtonContainer;
    public static final int DIALOGS_TYPE_DRAFTS = SortingFilter.DRAFTS.generateIdWithExtra();
    private static final int[] observers = {NotificationCenter.mainUserInfoChanged, NotificationCenter.topicsDidLoad, NotificationCenter.filterTabsAtBottomUpdated, NotificationCenter.needUpdateMainActionBarMenu, NotificationCenter.topicsSettingsChanged, NotificationCenter.recentChatsDidLoad};
    public static boolean[] dialogsLoaded = new boolean[5];
    private static final Interpolator interpolator = new Interpolator() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda61
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float lambda$static$19;
            lambda$static$19 = DialogsActivity.lambda$static$19(f);
            return lambda$static$19;
        }
    };
    public static float viewOffset = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: org.telegram.ui.DialogsActivity$DialogsActivityDelegate */
    /* loaded from: classes5.dex */
    public interface DialogsActivityDelegate {
        boolean didSelectDialogs(DialogsActivity dialogsActivity, ArrayList<MessagesStorage.TopicKey> arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1<ArrayList<MessageObject>> callbacks$Callback1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createActionMode$84(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$19(float f) {
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

    static /* synthetic */ float access$9024(DialogsActivity dialogsActivity, float f) {
        float f2 = dialogsActivity.tabsYOffset - f;
        dialogsActivity.tabsYOffset = f2;
        return f2;
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
        bundle.putInt("dialogsType", SortingFilter.ARCHIVE_ALBUMS.generateIdWithExtra());
        bundle.putInt("folderId", 1);
        DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        dialogsActivity.setDelegate(new DialogsActivityDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda160
            @Override // org.telegram.p042ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
                boolean lambda$newInstanceInAlbumsMode$0;
                lambda$newInstanceInAlbumsMode$0 = DialogsActivity.lambda$newInstanceInAlbumsMode$0(dialogsActivity2, arrayList, charSequence, z, topicsFragment, callbacks$Callback1);
                return lambda$newInstanceInAlbumsMode$0;
            }
        });
        return dialogsActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$newInstanceInAlbumsMode$0(DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(null);
            return true;
        }
        dialogsActivity.presentFragment(ChatActivity.newInstanceForDialogId(-((MessagesStorage.TopicKey) arrayList.get(0)).dialogId));
        return true;
    }

    public static DialogsActivity newInstanceInArchiveMode() {
        Bundle bundle = new Bundle();
        bundle.putInt("folderId", 1);
        return new DialogsActivity(bundle);
    }

    public static boolean isAlbumsDialogsType(int i) {
        return i == SortingFilter.ALBUMS.generateIdWithExtra() || i == SortingFilter.ARCHIVE_ALBUMS.generateIdWithExtra();
    }

    public boolean showChatPreview(DialogCell dialogCell) {
        return showChatPreview(dialogCell, null);
    }

    public void scrollToTop(boolean z, boolean z2) {
        scrollToTop(z, z2, false);
    }

    public void processQr(String str) {
        final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        alertDialog.setCanCancel(false);
        alertDialog.show();
        byte[] decode = Base64.decode(str.substring(17).replaceAll("\\/", "_").replaceAll("\\+", "-"), 8);
        TLRPC$TL_auth_acceptLoginToken tLRPC$TL_auth_acceptLoginToken = new TLRPC$TL_auth_acceptLoginToken();
        tLRPC$TL_auth_acceptLoginToken.token = decode;
        getConnectionsManager().sendRequest(tLRPC$TL_auth_acceptLoginToken, new RequestDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda149
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                DialogsActivity.this.lambda$processQr$3(alertDialog, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processQr$3(final AlertDialog alertDialog, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda118
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda116
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
            str = LocaleController.getString("AccountAlreadyLoggedIn", C3630R.string.AccountAlreadyLoggedIn);
        } else {
            str = LocaleController.getString("ErrorOccurred", C3630R.string.ErrorOccurred) + "\n" + tLRPC$TL_error.text;
        }
        AlertsCreator.showSimpleAlert(this, LocaleController.getString("AuthAnotherClient", C3630R.string.AuthAnotherClient), str);
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

    public boolean isFabAnimationsDisabled() {
        if (isMainNoFolderDialogList()) {
            if (isFilterTabsAtBottom()) {
                return true;
            }
            List<FilterFab> fabsForPage = getFabsForPage(this.viewPages[0]);
            if (fabsForPage.size() > 1) {
                return true;
            }
            FilterFab filterFab = fabsForPage.get(0);
            return (filterFab == FilterFab.CREATE_STORY || filterFab == FilterFab.CREATE_CHAT) ? false : true;
        }
        return false;
    }

    public boolean checkCurrentFab(FilterFab filterFab) {
        List<FilterFab> fabsForPage = getFabsForPage(this.viewPages[0]);
        return fabsForPage.size() <= 1 && filterFab == fabsForPage.get(0);
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

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return canBeginSlide();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public LockedSection getLockedSection() {
        if (isArchive() && !isAlbums()) {
            return LockedSection.ARCHIVE;
        }
        return super.getLockedSection();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isAllowPinnedPlayer() {
        return isMainDialogList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performSelectedDialogsAction(ArrayList<Long> arrayList, int i, boolean z, boolean z2) {
        performSelectedDialogsAction(arrayList, i, z, z2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAnimationFinished() {
        checkAnimationFinished(true);
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
            @Override // org.telegram.p042ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p042ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p042ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p042ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p042ui.CameraScanActivity.CameraScanActivityDelegate
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

    private void hideOrUnhideChats(final List<Long> list) {
        int i;
        if (isHiddenChats()) {
            i = list.size() > 1 ? IdFabric$CustomType.UNDO_ACTION_CHAT_UNARCHIVED_FEW : 23;
        } else {
            i = list.size() > 1 ? 4 : 2;
        }
        int i2 = i;
        if (getHiddenChatsController().hideChats(list, true ^ isHiddenChats()) || getUndoView() == null) {
            return;
        }
        getUndoView().showWithAction(0L, i2, Boolean.TRUE, null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda113
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$hideOrUnhideChats$4(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideOrUnhideChats$4(List list) {
        getHiddenChatsController().hideChats(list, isHiddenChats());
    }

    private void showReadAllDialog(final Runnable runnable) {
        if (SharedConfig.isReadAllChatsConfirmationShown) {
            runnable.run();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getInternalString(C3630R.string.dialogs_mark_folder_dialogs_as_read_alert_title));
        final CheckBoxCell checkBoxCell = new CheckBoxCell(getParentActivity(), 1);
        checkBoxCell.setText(LocaleController.getInternalString(C3630R.string.dialogs_mark_all_folder_dialogs_as_read_alert_not_show_again_check_box), "", false, false);
        checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.m102dp(16) : AndroidUtilities.m102dp(8), 0, LocaleController.isRTL ? AndroidUtilities.m102dp(8) : AndroidUtilities.m102dp(16), 0);
        checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.lambda$showReadAllDialog$5(CheckBoxCell.this, view);
            }
        });
        builder.setView(checkBoxCell);
        builder.setPositiveButton(LocaleController.getInternalString(C3630R.string.common_ok), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda15
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogsActivity.lambda$showReadAllDialog$6(CheckBoxCell.this, runnable, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getInternalString(C3630R.string.common_cancel), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showReadAllDialog$5(CheckBoxCell checkBoxCell, View view) {
        checkBoxCell.setChecked(!checkBoxCell.isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showReadAllDialog$6(CheckBoxCell checkBoxCell, Runnable runnable, DialogInterface dialogInterface, int i) {
        if (checkBoxCell.isChecked()) {
            SharedConfig.setReadAllChatsConfirmationShown(true);
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readAllCurrentFolderDialogs$7() {
        getMessagesStorage().readAllDialogs(this.folderId);
    }

    private void readAllCurrentFolderDialogs() {
        showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda97
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$readAllCurrentFolderDialogs$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expandMultiFab(final boolean z) {
        MiniFabsContainer miniFabsContainer = this.miniFabsContainer;
        if (miniFabsContainer == null || this.floatingButton == null || this.multiFabExpanded == z) {
            return;
        }
        this.multiFabExpanded = z;
        miniFabsContainer.show(z);
        this.floatingButton.animate().cancel();
        this.floatingButton.animate().rotation(33.0f).scaleX(0.4f).scaleY(0.4f).withEndAction(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda123
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$expandMultiFab$8(z);
            }
        }).setDuration(100L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$expandMultiFab$8(boolean z) {
        RLottieImageView rLottieImageView = this.floatingButton;
        if (rLottieImageView != null) {
            rLottieImageView.setImageResource(z ? C3630R.C3632drawable.ic_close_white : C3630R.C3632drawable.ic_ab_other);
            this.floatingButton.animate().rotation(BitmapDescriptorFactory.HUE_RED).scaleX(1.0f).scaleY(1.0f).setDuration(100L).start();
        }
    }

    private boolean needForceActivateTabs() {
        return isArchive() && !isAlbums();
    }

    private FilterTabsView.TabMode getFilterTabsMode() {
        if (isArchive()) {
            return FilterTabsView.TabMode.ARCHIVE;
        }
        if (isForward()) {
            return FilterTabsView.TabMode.FORWARD;
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

    /* JADX INFO: Access modifiers changed from: private */
    public List<FilterFab> getFabsForPage(ViewPage viewPage) {
        Collection singletonList;
        boolean isSortingFilter = SortingFilter.isSortingFilter(isArchive(), viewPage.selectedType);
        if (isAlbums() || isAlbumsDialogsType(viewPage.selectedType)) {
            singletonList = Collections.singletonList(FilterFab.CREATE_ALBUM);
        } else if (viewPage.selectedType == DIALOGS_TYPE_DRAFTS) {
            singletonList = Collections.singletonList(FilterFab.CLEAR_DRAFTS);
        } else if (isArchive()) {
            singletonList = Collections.singletonList(FilterFab.MARK_ALL_READ);
        } else if ((this.filterTabsView != null && viewPage.selectedType == this.filterTabsView.getDefaultTabId()) || (!isSortingFilter && getMessagesController().dialogFilters.isEmpty())) {
            singletonList = getFiltersController().getSelectedAllChatsTabFabs();
        } else if (isSortingFilter) {
            singletonList = getFiltersController().getSortingFilterState(SortingFilter.getFilterByIdWithExtra(isArchive(), viewPage.selectedType)).getFabs();
        } else {
            singletonList = (viewPage.selectedType < 0 || viewPage.selectedType >= getMessagesController().dialogFilters.size()) ? null : getFiltersController().getSettings(getMessagesController().dialogFilters.get(viewPage.selectedType).f1537id).getFabs();
        }
        return (singletonList == null || singletonList.isEmpty()) ? Collections.singletonList(FilterFab.CREATE_CHAT) : new ArrayList(singletonList);
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
            if (!this.searching) {
                this.topicsBar.setVisibility(0);
            }
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
                layoutParams.topMargin = z2 ? 0 : AndroidUtilities.m102dp(-36);
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
                    DialogsActivity.this.lambda$updateTopicsBar$9(z2, valueAnimator2);
                }
            });
            this.topicsBarTranslationYAnimator.setDuration(220L);
            this.topicsBarTranslationYAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.topicsBarTranslationYAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTopicsBar$9(boolean z, ValueAnimator valueAnimator) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.topicsBar.getLayoutParams();
        layoutParams.topMargin = AndroidUtilities.m102dp(((Integer) valueAnimator.getAnimatedValue()).intValue());
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
        int i = 0;
        final boolean z = (!getRecentChatsController().isRecentChatsEnabled() || this.inPreviewMode || recentChatsFilter.isEmpty()) ? false : true;
        if (z) {
            this.recentChatsBar.setData(recentChatsFilter);
            this.recentChatsBar.setTag(1);
            if (!this.searching) {
                this.recentChatsBar.setVisibility(0);
            }
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
                if (!z) {
                    i = AndroidUtilities.m102dp(SharedConfig.isDialogsCompactModeEnabled ? -48 : -60);
                }
                layoutParams.topMargin = i;
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
                int[] iArr = new int[2];
                iArr[0] = SharedConfig.isDialogsCompactModeEnabled ? -48 : -60;
                iArr[1] = 0;
                this.recentChatsBarTranslationYAnimator = ValueAnimator.ofInt(iArr);
            } else {
                int[] iArr2 = new int[2];
                iArr2[0] = 0;
                iArr2[1] = SharedConfig.isDialogsCompactModeEnabled ? -48 : -60;
                this.recentChatsBarTranslationYAnimator = ValueAnimator.ofInt(iArr2);
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
            this.recentChatsBarTranslationYAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda9
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    DialogsActivity.this.lambda$updateRecentChatsBar$10(z, valueAnimator2);
                }
            });
            this.recentChatsBarTranslationYAnimator.setDuration(220L);
            this.recentChatsBarTranslationYAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.recentChatsBarTranslationYAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRecentChatsBar$10(boolean z, ValueAnimator valueAnimator) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.recentChatsBar.getLayoutParams();
        layoutParams.topMargin = AndroidUtilities.m102dp(((Integer) valueAnimator.getAnimatedValue()).intValue());
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
    public void updateOptionsItemVisibility(boolean z) {
        ActionBarMenuItem actionBarMenuItem = this.optionsItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility((!z || (isMainNoFolderDialogList() && !SharedConfig.isMainActionBarMenuEnabled)) ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveToFolder() {
        final MessagesController.DialogFilter filterById = getFilterById(this.viewPages[0].selectedType);
        if (filterById == null) {
            return;
        }
        final ArrayList<Long> dialogsCount = FiltersListBottomSheet.getDialogsCount(this, filterById, this.selectedDialogs, false, false);
        if (filterById.neverShow.size() + dialogsCount.size() > 100) {
            showDialog(AlertsCreator.createSimpleAlert(getParentActivity(), LocaleController.getString("FilterAddToAlertFullTitle", C3630R.string.FilterAddToAlertFullTitle), LocaleController.getString("FilterAddToAlertFullText", C3630R.string.FilterAddToAlertFullText)).create());
            return;
        }
        FiltersListBottomSheet filtersListBottomSheet = new FiltersListBottomSheet(this, this.selectedDialogs, filterById.f1537id);
        filtersListBottomSheet.setDelegate(new FiltersListBottomSheet.FiltersListBottomSheetDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda156
            @Override // org.telegram.p042ui.Components.FiltersListBottomSheet.FiltersListBottomSheetDelegate
            public final void didSelectFilter(MessagesController.DialogFilter dialogFilter) {
                DialogsActivity.this.lambda$moveToFolder$13(dialogsCount, filterById, dialogFilter);
            }
        });
        showDialog(filtersListBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$moveToFolder$13(final ArrayList arrayList, final MessagesController.DialogFilter dialogFilter, MessagesController.DialogFilter dialogFilter2) {
        boolean z;
        char c;
        long j;
        ArrayList<Long> dialogsCount = FiltersListBottomSheet.getDialogsCount(this, dialogFilter2, this.selectedDialogs, true, false);
        int size = (dialogFilter2 != null ? dialogFilter2.alwaysShow.size() : 0) + dialogsCount.size();
        if ((size > getMessagesController().dialogFiltersChatsLimitDefault && !getUserConfig().isPremium()) || size > getMessagesController().dialogFiltersChatsLimitPremium) {
            showDialog(AlertsCreator.createSimpleAlert(getParentActivity(), LocaleController.getString("FilterAddToAlertFullTitle", C3630R.string.FilterAddToAlertFullTitle), LocaleController.getString("FilterAddToAlertFullText", C3630R.string.FilterAddToAlertFullText)).create());
            return;
        }
        final Callbacks$Callback callbacks$Callback = new Callbacks$Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda71
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                DialogsActivity.this.lambda$moveToFolder$11(arrayList, dialogFilter);
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
                showDialog(new LimitReachedBottomSheet(this, getParentActivity(), 3, this.currentAccount, null));
            } else {
                FilterCreateActivity filterCreateActivity = new FilterCreateActivity(null, dialogsCount);
                filterCreateActivity.setDoneCallback(new Callbacks$Callback2() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda69
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
    public /* synthetic */ void lambda$moveToFolder$11(ArrayList arrayList, MessagesController.DialogFilter dialogFilter) {
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
        return AndroidUtilities.m102dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : 60) + ((FrameLayout.LayoutParams) this.recentChatsBar.getLayoutParams()).topMargin;
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
        return AndroidUtilities.m102dp(36) + ((FrameLayout.LayoutParams) this.topicsBar.getLayoutParams()).topMargin;
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
    public int getUpdateLayoutHeight() {
        FrameLayout frameLayout = this.updateLayout;
        if (frameLayout == null || frameLayout.getVisibility() != 0) {
            return 0;
        }
        return this.updateLayout.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSwitchItemVisibility(boolean z) {
        RightSlidingDialogContainer rightSlidingDialogContainer;
        if (this.switchItem == null) {
            return;
        }
        boolean z2 = true;
        boolean z3 = this.allowSwitchAccount && (UserConfig.getActivatedAccountsCount() > 1);
        if (!(getParentActivity() instanceof LaunchActivity) || !isMainNoFolderDialogList() || !SharedConfig.isActionBarAccountSwitchEnabled || ((rightSlidingDialogContainer = this.rightSlidingDialogContainer) != null && rightSlidingDialogContainer.hasFragment())) {
            z2 = false;
        }
        if (z && (z3 || z2)) {
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
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda131
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$updateAccountSwitchItems$14;
                lambda$updateAccountSwitchItems$14 = DialogsActivity.lambda$updateAccountSwitchItems$14((Integer) obj, (Integer) obj2);
                return lambda$updateAccountSwitchItems$14;
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            final int intValue = ((Integer) it.next()).intValue();
            if (UserConfig.getInstance(intValue).getCurrentUser() != null) {
                if (isMainNoFolderDialogList()) {
                    DrawerUserCell drawerUserCell = new DrawerUserCell(getParentActivity(), IdFabric$CustomType.DRAWER_USER_CELL_ACTION_BAR_ACCOUNT_SWITCH);
                    drawerUserCell.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda58
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean lambda$updateAccountSwitchItems$15;
                            lambda$updateAccountSwitchItems$15 = DialogsActivity.this.lambda$updateAccountSwitchItems$15(intValue, view);
                            return lambda$updateAccountSwitchItems$15;
                        }
                    });
                    drawerUserCell.setAccount(intValue);
                    accountSelectCell = drawerUserCell;
                } else {
                    AccountSelectCell accountSelectCell2 = new AccountSelectCell(getParentActivity(), false);
                    accountSelectCell2.setAccount(intValue, true, this.currentAccount);
                    accountSelectCell = accountSelectCell2;
                }
                this.switchItem.addSubItem(intValue + 10, accountSelectCell, AndroidUtilities.m102dp(230), AndroidUtilities.m102dp(56));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateAccountSwitchItems$14(Integer num, Integer num2) {
        int i = (UserConfig.getInstance(num.intValue()).loginTime > UserConfig.getInstance(num2.intValue()).loginTime ? 1 : (UserConfig.getInstance(num.intValue()).loginTime == UserConfig.getInstance(num2.intValue()).loginTime ? 0 : -1));
        if (i > 0) {
            return 1;
        }
        return i < 0 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$updateAccountSwitchItems$15(int i, View view) {
        if (i == UserConfig.selectedAccount) {
            return true;
        }
        prepareBlurBitmap();
        this.parentLayout.setHighlightActionButtons(true);
        this.switchItem.closeSubMenu();
        C59424 c59424 = new C59424(null, (LaunchActivity) getParentActivity(), i);
        c59424.setCurrentAccount(i);
        presentFragmentAsPreviewWithMenu(c59424, new FragmentPreviewMenu(this, c59424, null));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$4 */
    /* loaded from: classes5.dex */
    public class C59424 extends DialogsActivity {
        private Bundle chatArgs;
        final /* synthetic */ int val$accountNumberFinal;
        final /* synthetic */ LaunchActivity val$launchActivity;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C59424(Bundle bundle, LaunchActivity launchActivity, int i) {
            super(bundle);
            this.val$launchActivity = launchActivity;
            this.val$accountNumberFinal = i;
        }

        @Override // org.telegram.p042ui.DialogsActivity
        protected void onPreviewChatOpened(Bundle bundle) {
            super.onPreviewChatOpened(bundle);
            this.chatArgs = bundle;
            finishPreviewFragment();
        }

        @Override // org.telegram.p042ui.DialogsActivity, org.telegram.p042ui.ActionBar.BaseFragment
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
                    DialogsActivity.C59424.this.lambda$onTransitionAnimationEnd$0(launchActivity, i);
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTransitionAnimationEnd$0(final LaunchActivity launchActivity, final int i) {
            ChatActivity chatActivity = new ChatActivity(this, this.chatArgs) { // from class: org.telegram.ui.DialogsActivity.4.1
                @Override // org.telegram.p042ui.ActionBar.BaseFragment
                public void onPreviewOpenAnimationEnd() {
                    super.onPreviewOpenAnimationEnd();
                    launchActivity.switchToAccount(i, true, this, false);
                }
            };
            chatActivity.setCurrentAccount(i);
            DialogsActivity.this.prepareBlurBitmap();
            DialogsActivity.this.parentLayout.setHighlightActionButtons(true);
            DialogsActivity.this.presentFragmentAsPreviewWithMenu(chatActivity, new FragmentPreviewMenu(DialogsActivity.this, chatActivity, null));
        }

        @Override // org.telegram.p042ui.ActionBar.BaseFragment
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
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3630R.string.dialogs_albums_sort_date), C3630R.C3632drawable.msg_contacts_time);
            } else {
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3630R.string.dialogs_albums_sort_alphabetically), C3630R.C3632drawable.msg_contacts_name);
            }
        }
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
        fArr4[0] = z ? -AndroidUtilities.m102dp(44) : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(scrollView, property4, fArr4));
        RecyclerListView listView = this.filterTabsView.getListView();
        Property property5 = View.ALPHA;
        float[] fArr5 = new float[1];
        fArr5[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(listView, property5, fArr5));
        FilterTabsView filterTabsView = this.filterTabsView;
        Property property6 = View.TRANSLATION_Y;
        float[] fArr6 = new float[1];
        fArr6[0] = z ? -AndroidUtilities.m102dp(44) : 0.0f;
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
                DialogsActivity.this.lambda$animateSwitchArchive$16(valueAnimator);
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
                    DialogsActivity.this.forwardSwitchArchiveButton.setImageResource(DialogsActivity.this.isForwardToArchive ? C3630R.C3632drawable.msg_list : C3630R.C3632drawable.msg_archive);
                    DialogsActivity.this.actionBarDefaultPaint.setColor(Theme.getColor(i2));
                    DialogsActivity.this.filterTabsView.getTabsContainer().setSelectorDrawableColor(Theme.getColor(i3));
                    DialogsActivity.this.forwardSpansScrollView.setTranslationY(-AndroidUtilities.m102dp(44));
                    DialogsActivity.this.filterTabsView.setTranslationY(-AndroidUtilities.m102dp(44));
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
    public /* synthetic */ void lambda$animateSwitchArchive$16(ValueAnimator valueAnimator) {
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

    private void showEnableSortingByDefaultAlert() {
        Dialog dialog = this.enableSortingByDefaultAlert;
        if ((dialog != null && dialog.isShowing()) || this.askingForPermissions || this.isPaused || this.inPreviewMode || SharedConfig.hasPreferenceKey(TelegramPreferenceKeys.Global.isChatSortingEnabledByDefault()) || getUserConfig().hasPreferenceKey(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
            return;
        }
        Dialog createTopAnimationDialog = AlertsCreator.createTopAnimationDialog(getParentActivity(), C3630R.raw.fork_dialogs_sorting, 300, LocaleController.getInternalString(C3630R.string.sorting_enable_alert_message), LocaleController.getString("Enable", C3630R.string.Enable), new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda63
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                DialogsActivity.this.lambda$showEnableSortingByDefaultAlert$17((Boolean) obj);
            }
        });
        this.enableSortingByDefaultAlert = createTopAnimationDialog;
        createTopAnimationDialog.setCanceledOnTouchOutside(false);
        this.enableSortingByDefaultAlert.setCancelable(false);
        this.enableSortingByDefaultAlert.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda26
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                DialogsActivity.this.lambda$showEnableSortingByDefaultAlert$18(dialogInterface);
            }
        });
        this.enableSortingByDefaultAlert.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEnableSortingByDefaultAlert$17(Boolean bool) {
        SharedConfig.setChatSortingEnabledByDefault(bool.booleanValue());
        for (int i = 0; i < 5; i++) {
            FiltersController filtersController = FiltersController.getInstance(i);
            filtersController.setSortingEnabled(false, bool.booleanValue());
            filtersController.setSortingEnabled(true, bool.booleanValue());
            filtersController.setIconInsteadAllChatsTabTitleEnabled(bool.booleanValue());
            filtersController.saveConfig();
        }
        if (bool.booleanValue()) {
            SharedConfig.setSelectedFilterTabsWidthMode(FilterTabWidthMode.MEDIUM);
        }
        updateFilterTabs(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showEnableSortingByDefaultAlert$18(DialogInterface dialogInterface) {
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
        C59676 c59676 = new C59676(getParentActivity(), this.forwardingParams, null, null, this.currentAccount, null, editField);
        this.forwardingPreviewView = c59676;
        ((ContentView) this.fragmentView).addView(c59676);
        if (editField != null) {
            AndroidUtilities.hideKeyboard(editField);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$6 */
    /* loaded from: classes5.dex */
    public class C59676 extends ForwardingPreviewView {
        final /* synthetic */ EditText val$focusedEditText;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C59676(Context context, ForwardingMessagesParams forwardingMessagesParams, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, int i, ForwardingPreviewView.ResourcesDelegate resourcesDelegate, EditText editText) {
            super(context, forwardingMessagesParams, tLRPC$User, tLRPC$Chat, i, resourcesDelegate);
            this.val$focusedEditText = editText;
        }

        @Override // org.telegram.p042ui.Components.ForwardingPreviewView
        protected void onDismiss(boolean z) {
            final EditText editText = this.val$focusedEditText;
            if (editText == null || !z) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$6$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C59676.lambda$onDismiss$0(editText);
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

        @Override // org.telegram.p042ui.Components.ForwardingPreviewView
        protected void didSendPressed() {
            dismiss(true);
            DialogsActivity.this.commentView.getSendButton().callOnClick();
        }

        @Override // org.telegram.p042ui.Components.ForwardingPreviewView
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

        @Override // org.telegram.p042ui.Components.ForwardingPreviewView
        protected void didOpenEditorPressed() {
            if (DialogsActivity.this.forwardingParams == null) {
                return;
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            dialogsActivity.presentFragment(ChatActivity.newInstanceInForwardingEditor(((Long) dialogsActivity.selectedDialogs.get(0)).longValue(), DialogsActivity.this.forwardingParams, new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$6$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DialogsActivity.C59676.this.lambda$didOpenEditorPressed$1((ForwardingMessagesParams) obj);
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
                hintView.setText(LocaleController.getString("TapForForwardingOptions", C3630R.string.TapForForwardingOptions));
                this.forwardingOptionsHintView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.forwardingOptionsHintView.setVisibility(4);
                this.forwardingOptionsHintView.createCloseButton();
                ((ContentView) this.fragmentView).addView(this.forwardingOptionsHintView, LayoutHelper.createFrame(-2, -2, 51, 0, 0, 20, 0));
            }
            this.forwardingOptionsHintView.showForView(this.forwardingOptionsButton, true);
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
        return SharedConfig.isFilterTabsAtBottomEnabled && !isForward();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isForward() {
        return this.initialDialogsType == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAlbums() {
        return isAlbumsDialogsType(this.initialDialogsType);
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
    public void openStoriesSettings() {
        Bundle bundle = new Bundle();
        bundle.putLong("dialog_id", UserConfig.getInstance(this.currentAccount).getClientUserId());
        bundle.putInt(SessionDescription.ATTR_TYPE, 1);
        bundle.putInt("start_from", 10);
        presentFragment(new MediaActivity(bundle, null));
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
            int m102dp = size - AndroidUtilities.m102dp(26);
            int m102dp2 = AndroidUtilities.m102dp(10);
            int m102dp3 = AndroidUtilities.m102dp(10);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt instanceof GroupCreateSpan) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(32), 1073741824));
                    if (childAt != this.removingSpan && childAt.getMeasuredWidth() + i3 > m102dp) {
                        m102dp2 += childAt.getMeasuredHeight() + AndroidUtilities.m102dp(8);
                        i3 = 0;
                    }
                    if (childAt.getMeasuredWidth() + i4 > m102dp) {
                        m102dp3 += childAt.getMeasuredHeight() + AndroidUtilities.m102dp(8);
                        i4 = 0;
                    }
                    int m102dp4 = AndroidUtilities.m102dp(13) + i3;
                    if (!this.animationStarted) {
                        View view = this.removingSpan;
                        if (childAt == view) {
                            childAt.setTranslationX(AndroidUtilities.m102dp(13) + i4);
                            childAt.setTranslationY(m102dp3);
                        } else if (view != null) {
                            float f = m102dp4;
                            if (childAt.getTranslationX() != f) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, View.TRANSLATION_X, f));
                            }
                            float f2 = m102dp2;
                            if (childAt.getTranslationY() != f2) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, View.TRANSLATION_Y, f2));
                            }
                        } else {
                            childAt.setTranslationX(m102dp4);
                            childAt.setTranslationY(m102dp2);
                        }
                    }
                    if (childAt != this.removingSpan) {
                        i3 += childAt.getMeasuredWidth() + AndroidUtilities.m102dp(9);
                    }
                    i4 += childAt.getMeasuredWidth() + AndroidUtilities.m102dp(9);
                }
            }
            if (AndroidUtilities.isTablet()) {
                min = AndroidUtilities.m102dp(372) / 3;
            } else {
                Point point = AndroidUtilities.displaySize;
                min = (Math.min(point.x, point.y) - AndroidUtilities.m102dp(158)) / 3;
            }
            if (m102dp - i3 < min) {
                m102dp2 += AndroidUtilities.m102dp(40);
                i3 = 0;
            }
            if (m102dp - i4 < min) {
                m102dp3 += AndroidUtilities.m102dp(40);
            }
            DialogsActivity.this.forwardSearchEditText.measure(View.MeasureSpec.makeMeasureSpec(m102dp - i3, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(32), 1073741824));
            if (!this.animationStarted) {
                int m102dp5 = m102dp3 + AndroidUtilities.m102dp(42);
                int m102dp6 = i3 + AndroidUtilities.m102dp(16);
                DialogsActivity.this.forwardSearchEditTextTranslationY = m102dp2;
                if (this.currentAnimation == null) {
                    DialogsActivity.this.forwardSpansContainerHeight = m102dp5;
                    DialogsActivity.this.forwardSearchEditText.setTranslationX(m102dp6);
                    DialogsActivity.this.forwardSearchEditText.setTranslationY(DialogsActivity.this.forwardSearchEditTextTranslationY);
                } else {
                    int m102dp7 = m102dp2 + AndroidUtilities.m102dp(42);
                    if (DialogsActivity.this.forwardSpansContainerHeight != m102dp7) {
                        this.animators.add(ObjectAnimator.ofInt(DialogsActivity.this, "forwardSpansContainerHeight", m102dp7));
                    }
                    float f3 = m102dp6;
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
        public boolean animateStoriesView;
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
        public DialogsRecyclerView listView;
        public int pageAdditionalOffset;
        private FlickerLoadingView progressView;
        private PullForegroundDrawable pullForegroundDrawable;
        private RecyclerItemsEnterAnimator recyclerItemsEnterAnimator;
        private RecyclerAnimationScrollHelper scrollHelper;
        public RecyclerListViewScroller scroller;
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
            float f = DialogsActivity.this.scrollYOffset;
            DialogsActivity dialogsActivity = DialogsActivity.this;
            this.dialogsAdapter.updateList(this.listView, this.dialogsType == 0 && dialogsActivity.hasHiddenArchive() && this.archivePullViewState == 2, f, dialogsActivity.hasStories);
            DialogsActivity.this.invalidateScrollY = true;
            this.listView.updateDialogsOnNextDraw = true;
            this.updating = false;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.listView.getLayoutParams();
            if (this.animateStoriesView) {
                layoutParams.bottomMargin = -AndroidUtilities.m102dp(85);
            } else {
                layoutParams.bottomMargin = 0;
            }
            super.onMeasure(i, i2);
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
            DialogsActivity.this.fragmentContextTopPadding = i2;
            DialogsActivity.this.updateTopPadding();
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
            float measuredHeight = height + (((isFilterTabsAtBottom || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() == 8) ? 0.0f : DialogsActivity.this.filterTabsView.getMeasuredHeight() - ((1.0f - DialogsActivity.this.filterTabsProgress) * DialogsActivity.this.filterTabsView.getMeasuredHeight())) * (1.0f - DialogsActivity.this.searchAnimationProgress)) + (((DialogsActivity.this.searchTabsView == null || DialogsActivity.this.searchTabsView.getVisibility() == 8) ? 0.0f : DialogsActivity.this.searchTabsView.getMeasuredHeight()) * DialogsActivity.this.searchAnimationProgress);
            RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                f = DialogsActivity.this.rightSlidingDialogContainer.openedProgress;
            }
            if (DialogsActivity.this.hasStories) {
                measuredHeight += AndroidUtilities.m102dp(81) * (1.0f - DialogsActivity.this.searchAnimationProgress) * (1.0f - f) * (1.0f - DialogsActivity.this.progressToActionMode);
            }
            return (int) (measuredHeight + DialogsActivity.this.storiesOverscroll);
        }

        public int getActionBarTop() {
            float f = DialogsActivity.this.scrollYOffset;
            DialogsActivity dialogsActivity = DialogsActivity.this;
            if (dialogsActivity.hasStories) {
                float f2 = BitmapDescriptorFactory.HUE_RED;
                RightSlidingDialogContainer rightSlidingDialogContainer = dialogsActivity.rightSlidingDialogContainer;
                if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                    f2 = DialogsActivity.this.rightSlidingDialogContainer.openedProgress;
                }
                f *= (1.0f - DialogsActivity.this.progressToActionMode) * (1.0f - f2);
            }
            return (int) ((-getY()) + (f * (1.0f - DialogsActivity.this.searchAnimationProgress)));
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == DialogsActivity.this.fragmentContextView && DialogsActivity.this.fragmentContextView.isCallStyle()) {
                return true;
            }
            ScrollView scrollView = DialogsActivity.this.forwardSpansScrollView;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (view != scrollView) {
                if (view != DialogsActivity.this.viewPages[0] && ((DialogsActivity.this.viewPages.length <= 1 || view != DialogsActivity.this.viewPages[1]) && view != DialogsActivity.this.fragmentContextView && view != DialogsActivity.this.fragmentLocationContextView && view != DialogsActivity.this.dialogsHintCell && view != DialogsActivity.this.authHintCell && view != DialogsActivity.this.topicsBar && view != DialogsActivity.this.recentChatsBar)) {
                    if (view == ((BaseFragment) DialogsActivity.this).actionBar && DialogsActivity.this.slideFragmentProgress != 1.0f) {
                        canvas.save();
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        if (dialogsActivity.slideFragmentLite) {
                            canvas.translate((dialogsActivity.isDrawerTransition ? 1 : -1) * AndroidUtilities.m102dp(40) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                        } else {
                            float f2 = 1.0f - ((1.0f - dialogsActivity.slideFragmentProgress) * 0.05f);
                            canvas.translate((dialogsActivity.isDrawerTransition ? AndroidUtilities.m102dp(4) : -AndroidUtilities.m102dp(4)) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                            if (DialogsActivity.this.isDrawerTransition) {
                                f = getMeasuredWidth();
                            }
                            canvas.scale(f2, f2, f, (((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + (C3702ActionBar.getCurrentActionBarHeight() / 2.0f));
                        }
                        boolean drawChild = super.drawChild(canvas, view, j);
                        canvas.restore();
                        return drawChild;
                    }
                    return super.drawChild(canvas, view, j);
                }
                canvas.save();
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, (-getY()) + getActionBarTop() + getActionBarFullHeight(), getMeasuredWidth(), getMeasuredHeight());
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                if (dialogsActivity2.slideFragmentProgress != 1.0f && view != dialogsActivity2.topicsBar && view != DialogsActivity.this.recentChatsBar) {
                    DialogsActivity dialogsActivity3 = DialogsActivity.this;
                    if (dialogsActivity3.slideFragmentLite) {
                        canvas.translate((dialogsActivity3.isDrawerTransition ? 1 : -1) * AndroidUtilities.m102dp(40) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                    } else {
                        float f3 = 1.0f - ((1.0f - dialogsActivity3.slideFragmentProgress) * 0.05f);
                        canvas.translate((dialogsActivity3.isDrawerTransition ? AndroidUtilities.m102dp(4) : -AndroidUtilities.m102dp(4)) * (1.0f - DialogsActivity.this.slideFragmentProgress), BitmapDescriptorFactory.HUE_RED);
                        if (DialogsActivity.this.isDrawerTransition) {
                            f = getMeasuredWidth();
                        }
                        canvas.scale(f3, f3, f, (-getY()) + DialogsActivity.this.scrollYOffset + getActionBarFullHeight() + DialogsActivity.this.getTopicsBarHeight(true) + DialogsActivity.this.getRecentChatsBarHeight());
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
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00ae, code lost:
            if (r0 == 1) goto L18;
         */
        @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void dispatchDraw(android.graphics.Canvas r19) {
            /*
                Method dump skipped, instructions count: 2215
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.ContentView.dispatchDraw(android.graphics.Canvas):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:121:0x02ca  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x02f9  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x0324  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r20, int r21) {
            /*
                Method dump skipped, instructions count: 1212
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.ContentView.onMeasure(int, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0() {
            if (DialogsActivity.this.selectAnimatedEmojiDialog != null) {
                DialogsActivity.this.selectAnimatedEmojiDialog.dismiss();
                DialogsActivity.this.selectAnimatedEmojiDialog = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00e6  */
        @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onLayout(boolean r17, int r18, int r19, int r20, int r21) {
            /*
                Method dump skipped, instructions count: 1026
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.ContentView.onLayout(boolean, int, int, int, int):void");
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
            if ((DialogsActivity.this.topicsBar != null && DialogsActivity.this.topicsBar.isEditing()) || DialogsActivity.this.isForwardingPreviewShowing() || ((DialogsActivity.this.forwardSwitchArchiveAnimator != null && DialogsActivity.this.forwardSwitchArchiveAnimator.isRunning()) || ((BaseFragment) DialogsActivity.this).parentLayout == null || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.isEditing() || DialogsActivity.this.searching || DialogsActivity.this.rightSlidingDialogContainer.hasFragment() || ((BaseFragment) DialogsActivity.this).parentLayout.checkTransitionAnimation() || ((BaseFragment) DialogsActivity.this).parentLayout.isInPreviewMode() || ((BaseFragment) DialogsActivity.this).parentLayout.isPreviewOpenAnimationInProgress() || ((BaseFragment) DialogsActivity.this).parentLayout.getDrawerLayoutContainer().isDrawerOpened() || ((motionEvent != null && !DialogsActivity.this.startedTracking && motionEvent.getY() <= getActionBarTop() + getActionBarFullHeight()) || (DialogsActivity.this.isMainNoFolderDialogList() && DialogsActivity.this.initialDialogsType != 3 && SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 5 && (SharedConfig.getChatSwipeAction(((BaseFragment) DialogsActivity.this).currentAccount) != 2 || DialogsActivity.this.viewPages[0] == null || (DialogsActivity.this.viewPages[0].dialogsAdapter.getDialogsType() != 7 && DialogsActivity.this.viewPages[0].dialogsAdapter.getDialogsType() != 8)))))) {
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
            DialogsActivity.this.showDialog(new LimitReachedBottomSheet(DialogsActivity.this, getContext(), 3, ((BaseFragment) DialogsActivity.this).currentAccount, null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayout
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
                        if (childAt.getY() < DialogsActivity.this.viewPages[i].listView.blurTopPadding + AndroidUtilities.m102dp(100)) {
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
        @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (DialogsActivity.this.statusDrawable != null) {
                DialogsActivity.this.statusDrawable.attach();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p042ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (DialogsActivity.this.statusDrawable != null) {
                DialogsActivity.this.statusDrawable.detach();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTopPadding() {
        SearchViewPager searchViewPager;
        this.topPadding = this.fragmentContextTopPadding;
        updateContextViewPosition();
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer != null) {
            rightSlidingDialogContainer.setFragmentViewPadding(this.topPadding);
        }
        if (this.whiteActionBar && (searchViewPager = this.searchViewPager) != null) {
            searchViewPager.setTranslationY((this.topPadding - this.lastMeasuredTopPadding) + this.searchViewPagerTranslationY);
        } else {
            this.fragmentView.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStoriesViewAlpha(float f) {
        float f2;
        float f3;
        this.dialogStoriesCell.setAlpha((1.0f - this.progressToActionMode) * f * this.progressToDialogStoriesCell * (1.0f - Utilities.clamp(this.searchAnimationProgress / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED)));
        if (this.hasStories || this.animateToHasStories) {
            float clamp = Utilities.clamp((-this.scrollYOffset) / AndroidUtilities.m102dp(81), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            if (this.progressToActionMode == 1.0f) {
                clamp = 1.0f;
            }
            float clamp2 = Utilities.clamp(clamp / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            this.dialogStoriesCell.setClipTop(0);
            if (!this.hasStories && this.animateToHasStories) {
                this.dialogStoriesCell.setTranslationY((-AndroidUtilities.m102dp(81)) - AndroidUtilities.m102dp(8));
                this.dialogStoriesCell.setProgressToCollapse(1.0f);
                f3 = this.progressToDialogStoriesCell;
            } else {
                this.dialogStoriesCell.setTranslationY(((this.scrollYOffset + this.storiesYOffset) + (this.storiesOverscroll / 2.0f)) - AndroidUtilities.m102dp(8));
                this.dialogStoriesCell.setProgressToCollapse(clamp, !this.rightSlidingDialogContainer.hasFragment());
                if (!this.animateToHasStories) {
                    f3 = this.progressToDialogStoriesCell;
                } else {
                    f2 = 1.0f - clamp2;
                    this.actionBar.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
            }
            f2 = 1.0f - f3;
            this.actionBar.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        } else {
            if (this.hasOnlySlefStories) {
                this.dialogStoriesCell.setTranslationY(((-AndroidUtilities.m102dp(81)) + this.scrollYOffset) - AndroidUtilities.m102dp(8));
                this.dialogStoriesCell.setProgressToCollapse(1.0f);
                DialogStoriesCell dialogStoriesCell = this.dialogStoriesCell;
                dialogStoriesCell.setClipTop((int) (AndroidUtilities.statusBarHeight - dialogStoriesCell.getY()));
            }
            f2 = 1.0f - this.progressToDialogStoriesCell;
            if (!isFilterTabsAtBottom()) {
                this.actionBar.setTranslationY(this.scrollYOffset);
            }
        }
        if (f2 != 1.0f) {
            this.actionBar.getTitlesContainer().setPivotY(AndroidUtilities.statusBarHeight + (C3702ActionBar.getCurrentActionBarHeight() / 2.0f));
            this.actionBar.getTitlesContainer().setPivotX(AndroidUtilities.m102dp(72));
            float f4 = (0.2f * f2) + 0.8f;
            this.actionBar.getTitlesContainer().setScaleY(f4);
            this.actionBar.getTitlesContainer().setScaleX(f4);
            this.actionBar.getTitlesContainer().setAlpha(f2 * (1.0f - this.progressToActionMode));
            return;
        }
        this.actionBar.getTitlesContainer().setScaleY(1.0f);
        this.actionBar.getTitlesContainer().setScaleY(1.0f);
        this.actionBar.getTitlesContainer().setScaleX(1.0f);
        this.actionBar.getTitlesContainer().setAlpha(1.0f - this.progressToActionMode);
    }

    /* renamed from: org.telegram.ui.DialogsActivity$DialogsRecyclerView */
    /* loaded from: classes5.dex */
    public class DialogsRecyclerView extends BlurredRecyclerView implements StoriesListPlaceProvider.ClippedView {
        public int additionalPadding;
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
        UserListPoller poller;
        RectF rectF;
        private float rightFragmentOpenedProgress;
        private Paint selectorPaint;
        float selectorPositionProgress;
        public boolean updateDialogsOnNextDraw;

        @Override // org.telegram.p042ui.Components.RecyclerListView
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
            this.additionalClipBottom = AndroidUtilities.m102dp(200);
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

        /* JADX WARN: Removed duplicated region for block: B:100:0x02b4  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x02ef  */
        @Override // org.telegram.p042ui.Components.BlurredRecyclerView, org.telegram.p042ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void dispatchDraw(android.graphics.Canvas r24) {
            /*
                Method dump skipped, instructions count: 1202
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.DialogsRecyclerView.dispatchDraw(android.graphics.Canvas):void");
        }

        private boolean drawMovingViewsOverlayed() {
            return getItemAnimator() != null && getItemAnimator().isRunning();
        }

        @Override // org.telegram.p042ui.Components.BlurredRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if (drawMovingViewsOverlayed() && (view instanceof DialogCell) && ((DialogCell) view).isMoving()) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p042ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
        }

        @Override // org.telegram.p042ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView
        public void setAdapter(RecyclerView.Adapter adapter) {
            super.setAdapter(adapter);
            this.firstLayout = true;
        }

        @Override // org.telegram.p042ui.Components.BlurredRecyclerView, org.telegram.p042ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        protected void onMeasure(int i, int i2) {
            int currentActionBarHeight;
            int findFirstVisibleItemPosition = this.parentPage.layoutManager.findFirstVisibleItemPosition();
            if (findFirstVisibleItemPosition != -1 && this.parentPage.itemTouchhelper.isIdle() && !this.parentPage.layoutManager.hasPendingScrollPosition() && this.parentPage.listView.getScrollState() != 1) {
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.parentPage.listView.findViewHolderForAdapterPosition(findFirstVisibleItemPosition);
                if (findViewHolderForAdapterPosition != null) {
                    int top = findViewHolderForAdapterPosition.itemView.getTop();
                    if (this.parentPage.dialogsType == 0 && DialogsActivity.this.hasHiddenArchive() && this.parentPage.archivePullViewState == 2) {
                        findFirstVisibleItemPosition = Math.max(1, findFirstVisibleItemPosition);
                    }
                    this.ignoreLayout = true;
                    this.parentPage.layoutManager.scrollToPositionWithOffset(findFirstVisibleItemPosition, (int) ((top - this.lastListPadding) + DialogsActivity.this.scrollAdditionalOffset + this.parentPage.pageAdditionalOffset));
                    this.ignoreLayout = false;
                }
            } else if (findFirstVisibleItemPosition == -1 && this.firstLayout) {
                this.parentPage.layoutManager.scrollToPositionWithOffset((this.parentPage.dialogsType == 0 && DialogsActivity.this.hasHiddenArchive()) ? 1 : 0, (int) DialogsActivity.this.scrollYOffset);
            }
            if (!DialogsActivity.this.onlySelect || DialogsActivity.this.initialDialogsType == 3) {
                this.ignoreLayout = true;
                DialogsActivity dialogsActivity = DialogsActivity.this;
                currentActionBarHeight = (dialogsActivity.hasStories || (dialogsActivity.filterTabsView != null && DialogsActivity.this.filterTabsView.getVisibility() == 0 && !DialogsActivity.this.isFilterTabsAtBottom())) ? C3702ActionBar.getCurrentActionBarHeight() + (((BaseFragment) DialogsActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) : (!((BaseFragment) DialogsActivity.this).inPreviewMode || Build.VERSION.SDK_INT < 21) ? 0 : AndroidUtilities.statusBarHeight;
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                if (dialogsActivity2.hasStories && !dialogsActivity2.actionModeFullyShowed) {
                    currentActionBarHeight += AndroidUtilities.m102dp(81);
                }
                this.additionalPadding = 0;
                if (DialogsActivity.this.authHintCell != null && DialogsActivity.this.authHintCellProgress != BitmapDescriptorFactory.HUE_RED && !DialogsActivity.this.authHintCellAnimating) {
                    currentActionBarHeight += DialogsActivity.this.authHintCell.getMeasuredHeight();
                    this.additionalPadding += DialogsActivity.this.authHintCell.getMeasuredHeight();
                }
                if (currentActionBarHeight != getPaddingTop()) {
                    setTopGlowOffset(currentActionBarHeight);
                    setPadding(0, currentActionBarHeight, 0, 0);
                    if (DialogsActivity.this.hasStories) {
                        this.parentPage.progressView.setPaddingTop(currentActionBarHeight - AndroidUtilities.m102dp(81));
                    } else {
                        this.parentPage.progressView.setPaddingTop(currentActionBarHeight);
                    }
                    for (int i3 = 0; i3 < getChildCount(); i3++) {
                        if (getChildAt(i3) instanceof DialogsAdapter.LastEmptyView) {
                            getChildAt(i3).requestLayout();
                        }
                    }
                }
                this.ignoreLayout = false;
            } else {
                currentActionBarHeight = 0;
            }
            if (this.firstLayout && DialogsActivity.this.getMessagesController().dialogsLoaded) {
                if (this.parentPage.dialogsType == 0 && DialogsActivity.this.hasHiddenArchive()) {
                    this.ignoreLayout = true;
                    ((LinearLayoutManager) getLayoutManager()).scrollToPositionWithOffset(1, (int) DialogsActivity.this.scrollYOffset);
                    this.ignoreLayout = false;
                }
                this.firstLayout = false;
            }
            super.onMeasure(i, i2);
            if (DialogsActivity.this.onlySelect || this.appliedPaddingTop == currentActionBarHeight || DialogsActivity.this.viewPages == null || DialogsActivity.this.viewPages.length <= 1 || DialogsActivity.this.startedTracking) {
                return;
            }
            if ((DialogsActivity.this.tabsAnimation != null && DialogsActivity.this.tabsAnimation.isRunning()) || DialogsActivity.this.tabsAnimationInProgress || DialogsActivity.this.filterTabsView == null) {
                return;
            }
            DialogsActivity.this.filterTabsView.isAnimatingIndicator();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p042ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            this.lastListPadding = getPaddingTop();
            DialogsActivity.this.scrollAdditionalOffset = BitmapDescriptorFactory.HUE_RED;
            this.parentPage.pageAdditionalOffset = 0;
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

        @Override // org.telegram.p042ui.Components.BlurredRecyclerView, org.telegram.p042ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
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
                int measuredHeight = dialogCell.getMeasuredHeight() + (dialogCell.getTop() - getPaddingTop());
                DialogsActivity dialogsActivity = DialogsActivity.this;
                if (dialogsActivity.hasStories && !dialogsActivity.dialogStoriesCell.isExpanded()) {
                    DialogsActivity.this.fixScrollYAfterArchiveOpened = true;
                    measuredHeight += AndroidUtilities.m102dp(81);
                }
                smoothScrollBy(0, measuredHeight, CubicBezierInterpolator.EASE_OUT);
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

        @Override // org.telegram.p042ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
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
            if (this.parentPage.dialogsType == 0 && ((action == 1 || action == 3) && this.parentPage.archivePullViewState == 2 && DialogsActivity.this.hasHiddenArchive() && ((LinearLayoutManager) getLayoutManager()).findFirstVisibleItemPosition() == 0)) {
                int paddingTop = getPaddingTop();
                DialogCell findArchiveDialogCell = DialogsActivity.this.findArchiveDialogCell(this.parentPage);
                if (findArchiveDialogCell != null) {
                    int m102dp = (int) (AndroidUtilities.m102dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72) * 0.85f);
                    int top = (findArchiveDialogCell.getTop() - paddingTop) + findArchiveDialogCell.getMeasuredHeight();
                    long currentTimeMillis = System.currentTimeMillis() - DialogsActivity.this.startArchivePullingTime;
                    if (top < m102dp || currentTimeMillis < 200) {
                        DialogsActivity.this.disableActionBarScrolling = true;
                        smoothScrollBy(0, top, CubicBezierInterpolator.EASE_OUT_QUINT);
                        this.parentPage.archivePullViewState = 2;
                    } else if (this.parentPage.archivePullViewState != 1) {
                        if (getViewOffset() == BitmapDescriptorFactory.HUE_RED) {
                            DialogsActivity.this.disableActionBarScrolling = true;
                            smoothScrollBy(0, findArchiveDialogCell.getTop() - paddingTop, CubicBezierInterpolator.EASE_OUT_QUINT);
                        }
                        if (!DialogsActivity.this.canShowHiddenArchive) {
                            DialogsActivity.this.canShowHiddenArchive = true;
                            performHapticFeedback(3, 2);
                            if (this.parentPage.pullForegroundDrawable != null) {
                                this.parentPage.pullForegroundDrawable.colorize(true);
                            }
                        }
                        findArchiveDialogCell.startOutAnimation();
                        this.parentPage.archivePullViewState = 1;
                        if (AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
                            AndroidUtilities.makeAccessibilityAnnouncement(LocaleController.getString(C3630R.string.AccDescrArchivedChatsShown));
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

        @Override // org.telegram.p042ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
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
        @Override // org.telegram.p042ui.Components.RecyclerListView
        public boolean allowSelectChildAtPosition(View view) {
            return !(view instanceof HeaderCell) || view.isClickable();
        }

        public void setOpenRightFragmentProgress(float f) {
            this.rightFragmentOpenedProgress = f;
            invalidate();
        }

        public void setAnimationSupportView(RecyclerListView recyclerListView, float f, boolean z, boolean z2) {
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
                    if (childAt.getTop() >= 0 && dialogCell3.getDialogId() != 0 && childAt.getTop() < i) {
                        DialogCell dialogCell4 = (DialogCell) childAt;
                        i = dialogCell4.getTop();
                        dialogCell2 = dialogCell4;
                    }
                }
            }
            DialogCell dialogCell5 = (dialogCell == null || getAdapter().getItemCount() * AndroidUtilities.m102dp(70) <= getMeasuredHeight() || ((float) (dialogCell2.getTop() - getPaddingTop())) <= ((float) (getMeasuredHeight() - getPaddingTop())) / 2.0f) ? dialogCell2 : dialogCell;
            this.animationSupportListView = recyclerListView;
            if (dialogCell5 != null) {
                if (recyclerListView != null) {
                    recyclerListView.setPadding(getPaddingLeft(), this.topPadding, getPaddingLeft(), getPaddingBottom());
                    DialogsAdapter dialogsAdapter = (DialogsAdapter) recyclerListView.getAdapter();
                    int findDialogPosition = dialogsAdapter.findDialogPosition(dialogCell5.getDialogId());
                    int top = (int) ((dialogCell5.getTop() - recyclerListView2.getPaddingTop()) + f);
                    if (findDialogPosition >= 0) {
                        boolean z3 = this.parentPage.dialogsType == 0 && this.parentPage.archivePullViewState == 2 && DialogsActivity.this.hasHiddenArchive();
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        ((LinearLayoutManager) recyclerListView.getLayoutManager()).scrollToPositionWithOffset(findDialogPosition, dialogsAdapter.fixScrollGap(this, findDialogPosition, top, z3, dialogsActivity.hasStories, dialogsActivity.canShowFilterTabsView, z));
                    }
                }
                int findDialogPosition2 = ((DialogsAdapter) getAdapter()).findDialogPosition(dialogCell5.getDialogId());
                int top2 = dialogCell5.getTop() - getPaddingTop();
                if (z2 && DialogsActivity.this.hasStories) {
                    top2 += AndroidUtilities.m102dp(81);
                }
                if (findDialogPosition2 >= 0) {
                    ((LinearLayoutManager) getLayoutManager()).scrollToPositionWithOffset(findDialogPosition2, top2);
                }
            }
        }

        @Override // org.telegram.p042ui.Stories.StoriesListPlaceProvider.ClippedView
        public void updateClip(int[] iArr) {
            int paddingTop = (int) (getPaddingTop() + DialogsActivity.this.scrollYOffset);
            iArr[0] = paddingTop;
            iArr[1] = paddingTop + getMeasuredHeight();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoriesController getStoriesController() {
        return getMessagesController().getStoriesController();
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

        /* JADX WARN: Code restructure failed: missing block: B:124:0x0264, code lost:
            if (org.telegram.messenger.DialogObject.isFolderDialogId(r12.getDialogId()) == false) goto L117;
         */
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int getMovementFlags(androidx.recyclerview.widget.RecyclerView r12, androidx.recyclerview.widget.RecyclerView.ViewHolder r13) {
            /*
                Method dump skipped, instructions count: 628
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.SwipeController.getMovementFlags(androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$ViewHolder):int");
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
                    ViewPage viewPage = this.parentPage;
                    viewPage.listView.setItemAnimator(viewPage.dialogsItemAnimator);
                }
                this.parentPage.dialogsAdapter.moveDialogs(this.parentPage.listView, adapterPosition, adapterPosition2);
                if (DialogsActivity.this.viewPages[0].dialogsType != 7 && DialogsActivity.this.viewPages[0].dialogsType != 8) {
                    DialogsActivity.this.movingWas = true;
                } else {
                    MessagesController.DialogFilter dialogFilter = DialogsActivity.this.getMessagesController().getSelectedDialogFilter(DialogsActivity.this.isForward(), DialogsActivity.this.isArchive())[DialogsActivity.this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
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
            if (!DialogsActivity.this.getMessagesController().isPromoDialog(tLRPC$Dialog.f1606id, false)) {
                if (!DialogsActivity.this.isHiddenChats()) {
                    int addDialogToFolder = DialogsActivity.this.getMessagesController().addDialogToFolder(tLRPC$Dialog.f1606id, DialogsActivity.this.folderId == 0 ? 1 : 0, -1, 0L);
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
                                        this.parentPage.listView.smoothScrollBy(0, -AndroidUtilities.m102dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72));
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
                        if (globalMainSettings.getBoolean("archivehint_l", false) || SharedConfig.archiveHidden) {
                            z = true;
                        }
                        if (!z) {
                            globalMainSettings.edit().putBoolean("archivehint_l", true).commit();
                        }
                        UndoView undoView = DialogsActivity.this.getUndoView();
                        if (undoView != null) {
                            long j = tLRPC$Dialog.f1606id;
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
                } else if (DialogsActivity.this.getHiddenChatsController().hideChats(tLRPC$Dialog.f1606id, false)) {
                    return;
                } else {
                    if (DialogsActivity.this.getUndoView() != null) {
                        DialogsActivity.this.getUndoView().showWithAction(0L, 23, Boolean.TRUE, null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$SwipeController$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.SwipeController.this.lambda$onSwiped$0(tLRPC$Dialog);
                            }
                        });
                    }
                    this.parentPage.updateList(true);
                    return;
                }
            }
            DialogsActivity.this.getMessagesController().hidePromoDialog();
            this.parentPage.dialogsItemAnimator.prepareForRemove();
            this.parentPage.updateList(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSwiped$0(TLRPC$Dialog tLRPC$Dialog) {
            DialogsActivity.this.getHiddenChatsController().hideChats(tLRPC$Dialog.f1606id, true);
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
            DialogsActivity.this.getMessagesController().addDialogToFolder(tLRPC$Dialog.f1606id, DialogsActivity.this.isArchive() ? 1 : 0, i, 0L);
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
        this.hasStories = false;
        this.hasOnlySlefStories = false;
        this.animateToHasStories = false;
        this.invalidateScrollY = true;
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
            @Override // org.telegram.p042ui.Components.AnimationProperties.FloatProperty
            public void setValue(DialogsActivity dialogsActivity, float f) {
                dialogsActivity.setScrollY(f);
            }

            @Override // android.util.Property
            public Float get(DialogsActivity dialogsActivity) {
                return Float.valueOf(DialogsActivity.this.scrollYOffset);
            }
        };
        this.SEARCH_TRANSLATION_Y = new AnimationProperties.FloatProperty<View>("viewPagerTranslation") { // from class: org.telegram.ui.DialogsActivity.8
            @Override // org.telegram.p042ui.Components.AnimationProperties.FloatProperty
            public void setValue(View view, float f) {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.searchViewPagerTranslationY = f;
                view.setTranslationY(dialogsActivity.panTranslationY + f);
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(DialogsActivity.this.searchViewPagerTranslationY);
            }
        };
        this.scrollBarVisible = true;
        this.storiesEnabled = true;
        this.isNextButton = false;
        this.slideFragmentProgress = 1.0f;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        Bundle bundle = this.arguments;
        if (bundle != null) {
            this.needForceHideForwardAuthor = bundle.getBoolean("force_hide_forward_author", false);
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
        NewsAndUserActivityHelper.markActivity();
        NewsAndUserActivityHelper.subscribeToBot(this.currentAccount);
        if (isHiddenChats()) {
            getMessagesController().sortDialogs(null);
        }
        if (this.initialDialogsType == 0) {
            this.askAboutContacts = MessagesController.getGlobalNotificationsSettings().getBoolean("askAboutContacts", true);
            SharedConfig.loadProxyList();
        }
        if (this.searchString == null) {
            this.currentConnectionState = getConnectionsManager().getConnectionState();
            getNotificationCenter().addObservers(this, observers);
            if (isForward()) {
                getNotificationCenter().addObserver(this, NotificationCenter.dialogFiltersUpdated);
            }
            if (isMainNoFolderDialogList()) {
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.notificationsCountUpdated);
            }
            if (BuildVars.isStandaloneApp()) {
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.httpFileDidLoad);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.httpFileDidFailedLoad);
                NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.fileLoadProgressChanged);
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
        getNotificationCenter().addObserver(this, NotificationCenter.storiesUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.storiesEnabledUpdate);
        getNotificationCenter().addObserver(this, NotificationCenter.unconfirmedAuthUpdate);
        if (this.initialDialogsType == 0) {
            getNotificationCenter().addObserver(this, NotificationCenter.chatlistFolderUpdate);
            getNotificationCenter().addObserver(this, NotificationCenter.dialogTranslate);
        }
        loadDialogs(getAccountInstance());
        getMessagesController().getStoriesController().loadAllStories();
        getMessagesController().loadPinnedDialogs(this.folderId, 0L, null);
        if (this.databaseMigrationHint != null && !getMessagesStorage().isDatabaseMigrationInProgress()) {
            View view = this.databaseMigrationHint;
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.databaseMigrationHint = null;
        }
        if (isArchive()) {
            getMessagesController().getStoriesController().loadHiddenStories();
        } else {
            getMessagesController().getStoriesController().loadStories();
        }
        getContactsController().loadGlobalPrivacySetting();
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
        accountInstance.getMediaDataController().checkAllMedia(false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.lambda$loadDialogs$20(AccountInstance.this);
            }
        }, 200L);
        Iterator<String> it = messagesController.diceEmojies.iterator();
        while (it.hasNext()) {
            accountInstance.getMediaDataController().loadStickersByEmojiOrName(it.next(), true, true);
        }
        dialogsLoaded[currentAccount] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadDialogs$20(AccountInstance accountInstance) {
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
            this.actionBar.setRightDrawableOnClick(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda35
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateStatus$21(view);
                }
            });
            SelectAnimatedEmojiDialog.preload(this.currentAccount);
        } else if ((isShowPremiumBadgeEnabled || isShowPremiumStatusEnabled) && tLRPC$User != null && MessagesController.getInstance(this.currentAccount).isPremiumUser(tLRPC$User)) {
            if (this.premiumStar == null) {
                this.premiumStar = getContext().getResources().getDrawable(C3630R.C3632drawable.msg_premium_liststar).mutate();
                this.premiumStar = new AnimatedEmojiDrawable.WrapSizeDrawable(this, this.premiumStar, AndroidUtilities.m102dp(18), AndroidUtilities.m102dp(18)) { // from class: org.telegram.ui.DialogsActivity.9
                    @Override // org.telegram.p042ui.Components.AnimatedEmojiDrawable.WrapSizeDrawable, android.graphics.drawable.Drawable
                    public void draw(Canvas canvas) {
                        canvas.save();
                        canvas.translate(AndroidUtilities.m102dp(-2), AndroidUtilities.m102dp(1));
                        super.draw(canvas);
                        canvas.restore();
                    }
                };
            }
            this.premiumStar.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_profile_verifiedBackground), PorterDuff.Mode.MULTIPLY));
            this.statusDrawable.set(this.premiumStar, z);
            this.actionBar.setRightDrawableOnClick(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda33
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateStatus$22(view);
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
    public /* synthetic */ void lambda$updateStatus$21(View view) {
        DialogStoriesCell dialogStoriesCell;
        if (this.dialogStoriesCellVisible && (dialogStoriesCell = this.dialogStoriesCell) != null && !dialogStoriesCell.isExpanded()) {
            scrollToTop(true, true);
        } else {
            showSelectStatusDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStatus$22(View view) {
        DialogStoriesCell dialogStoriesCell;
        if (this.dialogStoriesCellVisible && (dialogStoriesCell = this.dialogStoriesCell) != null && !dialogStoriesCell.isExpanded()) {
            scrollToTop(true, true);
        } else {
            showSelectStatusDialog();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (isForward()) {
            getMessagesController().clearForwardFiltersCache();
        } else if (isArchive() && !isAlbums()) {
            getMessagesController().clearArchiveFiltersCache();
        }
        if (isMainDialogList() && isArchive()) {
            getTopicsController().selectTopic(true, -1L);
        }
        if (this.searchString == null) {
            getNotificationCenter().removeObservers(this, observers);
            if (isForward()) {
                getNotificationCenter().removeObserver(this, NotificationCenter.dialogFiltersUpdated);
            }
            if (isMainNoFolderDialogList()) {
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.notificationsCountUpdated);
            }
            if (BuildVars.isStandaloneApp()) {
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.httpFileDidLoad);
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.httpFileDidFailedLoad);
                NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.fileLoadProgressChanged);
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
        getNotificationCenter().removeObserver(this, NotificationCenter.storiesUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.storiesEnabledUpdate);
        getNotificationCenter().removeObserver(this, NotificationCenter.unconfirmedAuthUpdate);
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
        this.notificationsLocker.unlock();
        this.delegate = null;
        SuggestClearDatabaseBottomSheet.dismissDialog();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public C3702ActionBar createActionBar(Context context) {
        C3702ActionBar c3702ActionBar = new C3702ActionBar(context) { // from class: org.telegram.ui.DialogsActivity.10
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar, android.view.View
            public void setTranslationY(float f) {
                if (f != getTranslationY() && ((BaseFragment) DialogsActivity.this).fragmentView != null) {
                    ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                }
                super.setTranslationY(f);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar
            public boolean shouldClipChild(View view) {
                return super.shouldClipChild(view) || view == DialogsActivity.this.doneItem;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (!((BaseFragment) DialogsActivity.this).inPreviewMode || DialogsActivity.this.avatarContainer == null || view == DialogsActivity.this.avatarContainer) {
                    return super.drawChild(canvas, view, j);
                }
                return false;
            }

            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar
            public void setTitleOverlayText(String str, int i, Runnable runnable) {
                super.setTitleOverlayText(str, i, runnable);
                if (DialogsActivity.this.selectAnimatedEmojiDialog != null && (DialogsActivity.this.selectAnimatedEmojiDialog.getContentView() instanceof SelectAnimatedEmojiDialog)) {
                    SimpleTextView titleTextView = getTitleTextView();
                    ((SelectAnimatedEmojiDialog) DialogsActivity.this.selectAnimatedEmojiDialog.getContentView()).setScrimDrawable((titleTextView == null || titleTextView.getRightDrawable() != DialogsActivity.this.statusDrawable) ? null : DialogsActivity.this.statusDrawable, titleTextView);
                }
                DialogStoriesCell dialogStoriesCell = DialogsActivity.this.dialogStoriesCell;
                if (dialogStoriesCell != null) {
                    dialogStoriesCell.setTitleOverlayText(str, i);
                }
            }

            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar
            protected boolean onSearchChangedIgnoreTitles() {
                RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
                return rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment();
            }

            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar
            public void onSearchFieldVisibilityChanged(boolean z) {
                RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
                if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                    getBackButton().animate().alpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED).start();
                }
                super.onSearchFieldVisibilityChanged(z);
            }
        };
        c3702ActionBar.setUseContainerForTitles();
        c3702ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSelector), false);
        c3702ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), true);
        c3702ActionBar.setItemsColor(Theme.getColor(Theme.key_actionBarDefaultIcon), false);
        c3702ActionBar.setItemsColor(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon), true);
        if (this.inPreviewMode || (AndroidUtilities.isTablet() && this.folderId != 0)) {
            c3702ActionBar.setOccupyStatusBar(false);
        }
        return c3702ActionBar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:183:0x0703, code lost:
        if (r0 == 3) goto L373;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0b1f, code lost:
        if (r41.initialDialogsType != 10) goto L359;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0714  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0978  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0a60  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0a69  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0a6b  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0aeb  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0af3  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0b00  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0b08  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0b3f  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0b42  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0b46  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0b49  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0b4f  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0b52  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0b58  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0b5b  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0b61  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0b64  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0b75  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0c2c  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0ca4  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0cd1  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0ce6  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0e13  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x10b4  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x10be  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x1114  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x114e  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x11ee  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x11f7  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x1216  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x127f  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x12af  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x12c2  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x12d2  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x12d5  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x12e2  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x136c  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x1377  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x13a1  */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v418 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v117 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v8 */
    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createView(final android.content.Context r42) {
        /*
            Method dump skipped, instructions count: 5085
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.createView(android.content.Context):android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$24(View view) {
        TopicsBar topicsBar = this.topicsBar;
        if (topicsBar != null && topicsBar.isEditing()) {
            this.topicsBar.setEditing(false);
        } else {
            this.filterTabsView.setIsEditing(false);
        }
        showDoneItem(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$27(View view) {
        this.filterOptions = ItemOptions.makeOptions(this, this.proxyItem).setViewAdditionalOffsets(-AndroidUtilities.m102dp(5), -AndroidUtilities.m102dp(9), -AndroidUtilities.m102dp(5), -AndroidUtilities.m102dp(9)).setScrimViewBackground(Theme.createCircleDrawable(AndroidUtilities.m102dp(48), Theme.getColor(isArchive() ? Theme.key_actionBarDefaultArchived : Theme.key_actionBarDefault))).add(C3630R.C3632drawable.msg_disable, LocaleController.getString("Disable", C3630R.string.Disable), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda87
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$26();
            }
        }).translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m102dp(-8)).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$26() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda95
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$25();
            }
        }, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$25() {
        SharedConfig.setProxyButtonEnabled(false);
        updateProxyButton(false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$11 */
    /* loaded from: classes5.dex */
    public class C591011 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        boolean isSpeedItemCreated = false;
        final /* synthetic */ Context val$context;
        final /* synthetic */ ActionBarMenu val$menu;

        C591011(Context context, ActionBarMenu actionBarMenu) {
            this.val$context = context;
            this.val$menu = actionBarMenu;
        }

        @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
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
            DialogsActivity.this.speedItem.setIcon(C3630R.C3632drawable.avd_speed);
            DialogsActivity.this.speedItem.getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN));
            DialogsActivity.this.speedItem.setTranslationX(AndroidUtilities.m102dp(32));
            DialogsActivity.this.speedItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
            DialogsActivity.this.speedItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$11$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.C591011.this.lambda$onPreToggleSearch$0(view);
                }
            });
            DialogsActivity.this.speedItem.setClickable(false);
            DialogsActivity.this.speedItem.setFixBackground(true);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AndroidUtilities.m102dp(42), -1);
            int m102dp = AndroidUtilities.m102dp(38);
            layoutParams.rightMargin = m102dp;
            layoutParams.leftMargin = m102dp;
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

        @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchExpand() {
            DialogsActivity.this.searching = true;
            DialogsActivity.this.updateSwitchItemVisibility(false);
            DialogsActivity.this.updateOptionsItemVisibility(false);
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
                    if (DialogsActivity.this.floatingButton2Container != null) {
                        DialogsActivity.this.floatingButton2Container.setVisibility(8);
                    }
                    if (DialogsActivity.this.storyHint != null) {
                        DialogsActivity.this.storyHint.hide();
                    }
                }
            }
            DialogStoriesCell dialogStoriesCell = DialogsActivity.this.dialogStoriesCell;
            if (dialogStoriesCell != null && dialogStoriesCell.getPremiumHint() != null) {
                DialogsActivity.this.dialogStoriesCell.getPremiumHint().hide();
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            if (!dialogsActivity.hasStories) {
                dialogsActivity.setScrollY(BitmapDescriptorFactory.HUE_RED);
            }
            DialogsActivity.this.updatePasscodeButton();
            DialogsActivity.this.updateProxyButton(false, false);
            ((BaseFragment) DialogsActivity.this).actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrGoBack", C3630R.string.AccDescrGoBack));
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            ((SizeNotifierFrameLayout) ((BaseFragment) DialogsActivity.this).fragmentView).invalidateBlur();
        }

        @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public boolean canCollapseSearch() {
            DialogsActivity.this.updateSwitchItemVisibility(true);
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

        @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchCollapse() {
            DialogsActivity.this.searching = false;
            DialogsActivity.this.searchWas = false;
            DialogsActivity.this.updateSwitchItemVisibility(true);
            DialogsActivity.this.updateOptionsItemVisibility(true);
            if (DialogsActivity.this.searchMenuItem != null) {
                DialogsActivity.this.searchMenuItem.setVisibility(8);
            }
            if (DialogsActivity.this.viewPages[0] != null) {
                DialogsActivity.this.viewPages[0].listView.setEmptyView(DialogsActivity.this.folderId == 0 ? DialogsActivity.this.viewPages[0].progressView : null);
                if (!DialogsActivity.this.onlySelect || DialogsActivity.this.isAlbums()) {
                    DialogsActivity.this.floatingButtonContainer.setVisibility(0);
                    if (DialogsActivity.this.floatingButton2Container != null) {
                        DialogsActivity.this.floatingButton2Container.setVisibility(DialogsActivity.this.storiesEnabled ? 0 : 8);
                    }
                    DialogsActivity.this.floatingHidden = true;
                    DialogsActivity.this.floatingButtonTranslation = AndroidUtilities.m102dp(100);
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
                ((BaseFragment) DialogsActivity.this).actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrOpenMenu", C3630R.string.AccDescrOpenMenu));
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
            ((SizeNotifierFrameLayout) ((BaseFragment) DialogsActivity.this).fragmentView).invalidateBlur();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
            if (r0.hasOnlySlefStories == false) goto L13;
         */
        @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onTextChanged(android.widget.EditText r4) {
            /*
                r3 = this;
                android.text.Editable r4 = r4.getText()
                java.lang.String r4 = r4.toString()
                int r0 = r4.length()
                if (r0 != 0) goto L38
                org.telegram.ui.DialogsActivity r0 = org.telegram.p042ui.DialogsActivity.this
                org.telegram.ui.Components.SearchViewPager r0 = org.telegram.p042ui.DialogsActivity.access$11600(r0)
                org.telegram.ui.Adapters.DialogsSearchAdapter r0 = r0.dialogsSearchAdapter
                if (r0 == 0) goto L26
                org.telegram.ui.DialogsActivity r0 = org.telegram.p042ui.DialogsActivity.this
                org.telegram.ui.Components.SearchViewPager r0 = org.telegram.p042ui.DialogsActivity.access$11600(r0)
                org.telegram.ui.Adapters.DialogsSearchAdapter r0 = r0.dialogsSearchAdapter
                boolean r0 = r0.hasRecentSearch()
                if (r0 != 0) goto L38
            L26:
                org.telegram.ui.DialogsActivity r0 = org.telegram.p042ui.DialogsActivity.this
                boolean r0 = org.telegram.p042ui.DialogsActivity.access$25600(r0)
                if (r0 != 0) goto L38
                org.telegram.ui.DialogsActivity r0 = org.telegram.p042ui.DialogsActivity.this
                boolean r1 = r0.hasStories
                if (r1 != 0) goto L38
                boolean r0 = r0.hasOnlySlefStories
                if (r0 == 0) goto L4c
            L38:
                org.telegram.ui.DialogsActivity r0 = org.telegram.p042ui.DialogsActivity.this
                r1 = 1
                org.telegram.p042ui.DialogsActivity.access$24502(r0, r1)
                org.telegram.ui.DialogsActivity r0 = org.telegram.p042ui.DialogsActivity.this
                boolean r0 = org.telegram.p042ui.DialogsActivity.access$8200(r0)
                if (r0 != 0) goto L4c
                org.telegram.ui.DialogsActivity r0 = org.telegram.p042ui.DialogsActivity.this
                r2 = 0
                org.telegram.p042ui.DialogsActivity.access$25000(r0, r1, r2, r1)
            L4c:
                org.telegram.ui.DialogsActivity r0 = org.telegram.p042ui.DialogsActivity.this
                org.telegram.ui.Components.SearchViewPager r0 = org.telegram.p042ui.DialogsActivity.access$11600(r0)
                r0.onTextChanged(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.C591011.onTextChanged(android.widget.EditText):void");
        }

        @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchFilterCleared(FiltersView.MediaFilterData mediaFilterData) {
            if (DialogsActivity.this.searchIsShowed) {
                DialogsActivity.this.searchViewPager.removeSearchFilter(mediaFilterData);
                DialogsActivity.this.searchViewPager.onTextChanged(DialogsActivity.this.searchItem.getSearchField().getText().toString());
                DialogsActivity.this.updateFiltersView(true, null, null, false, true);
            }
        }

        @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public boolean canToggleSearch() {
            return !((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed() && DialogsActivity.this.databaseMigrationHint == null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$30(View view) {
        this.filterOptions = ItemOptions.makeOptions(this, this.optionsItem).setViewAdditionalOffsets(-AndroidUtilities.m102dp(5), -AndroidUtilities.m102dp(9), -AndroidUtilities.m102dp(5), -AndroidUtilities.m102dp(9)).setScrimViewBackground(Theme.createCircleDrawable(AndroidUtilities.m102dp(48), Theme.getColor(Theme.key_actionBarDefault))).add(C3630R.C3632drawable.msg_disable, LocaleController.getString("Disable", C3630R.string.Disable), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda93
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$29();
            }
        }).translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m102dp(-8)).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$29() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda76
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$28();
            }
        }, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$28() {
        SharedConfig.setMainActionBarMenuEnabled(false);
        updateOptionsItemVisibility(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$31(View view) {
        if (isArchive() && !isAlbums()) {
            getContactsController().loadGlobalPrivacySetting();
        }
        this.optionsItem.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$32() {
        if (this.initialDialogsType != 10) {
            hideFloatingButton(false);
        }
        if (this.hasOnlySlefStories && getStoriesController().hasOnlySelfStories()) {
            this.dialogStoriesCell.openSelfStories();
        } else {
            scrollToTop(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$12 */
    /* loaded from: classes5.dex */
    public class C591112 extends FilterTabsView {
        C591112(Context context, FilterTabsView.TabMode tabMode, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
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

        @Override // org.telegram.p042ui.Components.FilterTabsView
        protected void onDefaultTabMoved() {
            if (DialogsActivity.this.getMessagesController().premiumLocked) {
                return;
            }
            try {
                performHapticFeedback(3, 1);
            } catch (Exception unused) {
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            dialogsActivity.topBulletin = BulletinFactory.m61of(dialogsActivity).createSimpleBulletin(C3630R.raw.filter_reorder, AndroidUtilities.replaceTags(LocaleController.formatString("LimitReachedReorderFolder", C3630R.string.LimitReachedReorderFolder, LocaleController.getString(C3630R.string.FilterAllChats))), LocaleController.getString("PremiumMore", C3630R.string.PremiumMore), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS, new Runnable() { // from class: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C591112.this.lambda$onDefaultTabMoved$0();
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
    /* renamed from: org.telegram.ui.DialogsActivity$13 */
    /* loaded from: classes5.dex */
    public class C591213 implements FilterTabsView.FilterTabsViewDelegate {
        final /* synthetic */ Context val$context;

        C591213(Context context) {
            this.val$context = context;
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
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
                FilterFabExtKt.bindBig((FilterFab) fabsForPage.get(0), DialogsActivity.this.floatingButton);
            } else {
                DialogsActivity.this.floatingButton.setImageResource(C3630R.C3632drawable.ic_ab_other);
                DialogsActivity.this.miniFabsContainer.setFabs(fabsForPage);
            }
            DialogsActivity.this.hideFloatingButton(false);
            if (DialogsActivity.this.isMainNoFolderDialogList()) {
                if (SortingFilter.isSortingFilter(false, i)) {
                    DialogsActivity.this.getForkCommonController().setLastFilterTab(i);
                } else if (i >= 0 && i < DialogsActivity.this.getMessagesController().dialogFilters.size()) {
                    DialogsActivity.this.getForkCommonController().setLastFilterTab(DialogsActivity.this.getMessagesController().dialogFilters.get(i).f1537id);
                }
                DialogsActivity.this.getForkCommonController().saveConfig();
            }
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onSwipeProgressChanged(float f) {
            if (!DialogsActivity.this.isMainDialogList() || f == 1.0f) {
                return;
            }
            DialogsActivity dialogsActivity = DialogsActivity.this;
            List fabsForPage = dialogsActivity.getFabsForPage(dialogsActivity.viewPages[0]);
            DialogsActivity dialogsActivity2 = DialogsActivity.this;
            List fabsForPage2 = dialogsActivity2.getFabsForPage(dialogsActivity2.viewPages[1]);
            FilterFab filterFab = fabsForPage.size() > 1 ? null : (FilterFab) fabsForPage.get(0);
            FilterFab filterFab2 = fabsForPage2.size() <= 1 ? (FilterFab) fabsForPage2.get(0) : null;
            if (filterFab != filterFab2) {
                int i = (f > 0.5f ? 1 : (f == 0.5f ? 0 : -1));
                boolean z = i < 0;
                if (DialogsActivity.this.isFabScaleInAnimation != z) {
                    DialogsActivity.this.isFabScaleInAnimation = z;
                    if (i < 0) {
                        if (filterFab == null) {
                            DialogsActivity.this.floatingButton.setImageResource(C3630R.C3632drawable.ic_ab_other);
                        } else {
                            FilterFabExtKt.bindBig(filterFab, DialogsActivity.this.floatingButton);
                        }
                    } else if (filterFab2 == null) {
                        DialogsActivity.this.floatingButton.setImageResource(C3630R.C3632drawable.ic_ab_other);
                    } else {
                        FilterFabExtKt.bindBig(filterFab2, DialogsActivity.this.floatingButton);
                    }
                }
                float abs = Math.abs(1.0f - (f * 2.0f));
                DialogsActivity.this.floatingButtonContainer.setScaleX(abs);
                DialogsActivity.this.floatingButtonContainer.setScaleY(abs);
                DialogsActivity.this.floatingButtonContainer.setAlpha(abs);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: showDeleteAlert */
        public void lambda$didSelectTab$10(final MessagesController.DialogFilter dialogFilter) {
            if (dialogFilter == null) {
                return;
            }
            if (dialogFilter.isChatlist()) {
                FolderBottomSheet.showForDeletion(DialogsActivity.this, dialogFilter.f1537id, null);
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("FilterDelete", C3630R.string.FilterDelete));
            builder.setMessage(LocaleController.getString("FilterDeleteAlert", C3630R.string.FilterDeleteAlert));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("Delete", C3630R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C591213.this.lambda$showDeleteAlert$0(dialogFilter, dialogInterface, i);
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
            tLRPC$TL_messages_updateDialogFilter.f1721id = dialogFilter.f1537id;
            DialogsActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFilter, null);
            DialogsActivity.this.getMessagesController().removeFilter(dialogFilter);
            DialogsActivity.this.getMessagesStorage().deleteDialogFilter(dialogFilter);
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onSamePageSelected() {
            DialogsActivity.this.hideFloatingButton(false);
            DialogsActivity.this.scrollToTop(true, false);
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onPageReorder(int i, int i2) {
            for (int i3 = 0; i3 < DialogsActivity.this.viewPages.length; i3++) {
                if (DialogsActivity.this.viewPages[i3].selectedType == i) {
                    DialogsActivity.this.viewPages[i3].selectedType = i2;
                } else if (DialogsActivity.this.viewPages[i3].selectedType == i2) {
                    DialogsActivity.this.viewPages[i3].selectedType = i;
                }
            }
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onPageSelected(FilterTabsView.Tab tab, boolean z) {
            int i;
            if (DialogsActivity.this.viewPages[0].selectedType == tab.f1841id) {
                return;
            }
            if (tab.isLocked) {
                DialogsActivity.this.filterTabsView.shakeLock(tab.f1841id);
                DialogsActivity dialogsActivity = DialogsActivity.this;
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                dialogsActivity.showDialog(new LimitReachedBottomSheet(dialogsActivity2, this.val$context, 3, ((BaseFragment) dialogsActivity2).currentAccount, null));
                return;
            }
            ArrayList<MessagesController.DialogFilter> dialogFilters = DialogsActivity.this.getMessagesController().getDialogFilters();
            if (SortingFilter.isSortingFilter(false, tab.f1841id)) {
                if (SortingFilter.removeExtraFromId(false, tab.f1841id) >= DialogsActivity.this.getMessagesController().sortingDialogFilters.size()) {
                    return;
                }
            } else if (SortingFilter.isSortingFilter(true, tab.f1841id)) {
                if (SortingFilter.removeExtraFromId(true, tab.f1841id) >= DialogsActivity.this.getMessagesController().archiveSortingDialogFilters.size()) {
                    return;
                }
            } else if (!tab.isDefault && (((i = tab.f1841id) < 0 || i >= dialogFilters.size()) && !DialogsActivity.isAlbumsDialogsType(tab.f1841id) && !DialogsActivity.this.isArchive())) {
                return;
            }
            DialogsActivity dialogsActivity3 = DialogsActivity.this;
            dialogsActivity3.isFirstTab = tab.f1841id == dialogsActivity3.filterTabsView.getFirstTabId();
            DialogsActivity.this.updateDrawerSwipeEnabled();
            DialogsActivity.this.viewPages[1].selectedType = tab.f1841id;
            DialogsActivity.this.viewPages[1].setVisibility(0);
            DialogsActivity.this.viewPages[1].setTranslationX(DialogsActivity.this.viewPages[0].getMeasuredWidth());
            DialogsActivity.this.showScrollbars(false);
            DialogsActivity.this.switchToCurrentSelectedMode(true);
            DialogsActivity.this.animatingForward = z;
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
        public boolean canPerformActions() {
            if (DialogsActivity.this.topicsBar == null || !DialogsActivity.this.topicsBar.isEditing()) {
                return !DialogsActivity.this.searching;
            }
            return false;
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
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

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
        public int getTabCounter(int i) {
            ArrayList<MessagesController.DialogFilter> arrayList;
            int removeExtraFromId;
            if (DialogsActivity.this.initialDialogsType != 3 && !DialogsActivity.isAlbumsDialogsType(i)) {
                if (DialogsActivity.this.isArchive() && i == Math.max(0, DialogsActivity.this.filterTabsView.getDefaultTabId())) {
                    return DialogsActivity.this.getMessagesStorage().getArchiveUnreadCount();
                }
                if (i != DialogsActivity.DIALOGS_TYPE_DRAFTS) {
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
                    return DialogsActivity.this.getMediaDataController().getDrafts().size();
                }
            }
            return 0;
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
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
                if (((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed() || DialogsActivity.this.storiesOverscroll != BitmapDescriptorFactory.HUE_RED) {
                    return false;
                }
                final MessagesController.DialogFilter dialogFilter = null;
                if (DialogsActivity.this.filterOptions == null || !DialogsActivity.this.filterOptions.isShown()) {
                    final MessagesController.DialogFilter filterById = tabView.getId() == DialogsActivity.this.filterTabsView.getDefaultTabId() ? null : DialogsActivity.this.getFilterById(tabView.getId());
                    final boolean z5 = filterById == null;
                    final boolean isSortingFilter = SortingFilter.isSortingFilter(DialogsActivity.this.isArchive(), tabView.getId());
                    boolean z6 = (DialogsActivity.this.isArchive() || z5 || isSortingFilter) ? false : true;
                    boolean isAlbumsDialogsType = DialogsActivity.isAlbumsDialogsType(tabView.getId());
                    final boolean[] zArr = {true};
                    MessagesController messagesController = DialogsActivity.this.getMessagesController();
                    final ArrayList arrayList = new ArrayList(z5 ? messagesController.getDialogs(DialogsActivity.this.folderId) : messagesController.getAllDialogs());
                    if (filterById != null) {
                        dialogFilter = DialogsActivity.this.getFilterById(tabView.getId());
                        int i3 = 0;
                        if (dialogFilter != null) {
                            while (i3 < arrayList.size()) {
                                if (!dialogFilter.includesDialog(DialogsActivity.this.getAccountInstance(), ((TLRPC$Dialog) arrayList.get(i3)).f1606id)) {
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
                                if (!DialogsActivity.this.getMessagesController().isDialogMuted(((TLRPC$Dialog) arrayList.get(i5)).f1606id, 0)) {
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
                    boolean z7 = false;
                    for (int i6 = 0; i6 < arrayList.size(); i6++) {
                        if (((TLRPC$Dialog) arrayList.get(i6)).unread_mark || ((TLRPC$Dialog) arrayList.get(i6)).unread_count > 0) {
                            z7 = true;
                        }
                    }
                    DialogsActivity dialogsActivity = DialogsActivity.this;
                    boolean z8 = z3;
                    ItemOptions addIf = ItemOptions.makeOptions(dialogsActivity, tabView).setScrimViewBackground(Theme.createRoundRectDrawable(AndroidUtilities.m102dp(6), 0, Theme.getColor(DialogsActivity.this.isArchive() ? Theme.key_actionBarDefaultArchived : Theme.key_actionBarDefault))).addFuturePlacement().addIf(!(z5 && DialogsActivity.this.isArchive()) && (!isSortingFilter || DialogsActivity.this.getFiltersController().getActiveSortingTabsCount(DialogsActivity.this.isArchive()) > 1) && !DialogsActivity.this.getFiltersController().isFoldersHidden() && DialogsActivity.this.getMessagesController().getDialogFilters().size() > 1, C3630R.C3632drawable.tabs_reorder, LocaleController.getString("FilterReorder", C3630R.string.FilterReorder), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$1(isSortingFilter);
                        }
                    }).addIf(!DialogsActivity.this.isArchive() && DialogsActivity.this.getMessagesController().dialogFilters.size() < DialogsActivity.this.getMessagesController().dialogFiltersLimitPremium, C3630R.C3632drawable.fork_create_folder, LocaleController.getInternalString(C3630R.string.dialogs_tab_popup_create_folder), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$2();
                        }
                    }).addIf(!z6, C3630R.C3632drawable.msg_settings, LocaleController.getInternalString(C3630R.string.dialogs_tab_popup_sorting_settings), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$3();
                        }
                    });
                    int i7 = C3630R.C3632drawable.msg_edit;
                    if (z5) {
                        i = C3630R.string.FilterEditAll;
                        str = "FilterEditAll";
                    } else {
                        i = C3630R.string.FilterEdit;
                        str = "FilterEdit";
                    }
                    ItemOptions add = addIf.add(i7, (CharSequence) LocaleController.getString(str, i), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$4(z5, filterById);
                        }
                    }, z6, false);
                    boolean z9 = (isAlbumsDialogsType || filterById == null || arrayList.isEmpty()) ? false : true;
                    int i8 = z2 ? C3630R.C3632drawable.msg_mute : C3630R.C3632drawable.msg_unmute;
                    if (z2) {
                        i2 = C3630R.string.FilterMuteAll;
                        str2 = "FilterMuteAll";
                    } else {
                        i2 = C3630R.string.FilterUnmuteAll;
                        str2 = "FilterUnmuteAll";
                    }
                    dialogsActivity.filterOptions = add.addIf(z9, i8, LocaleController.getString(str2, i2), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$5(arrayList, z2);
                        }
                    }).addIf(z7, C3630R.C3632drawable.msg_markread, (CharSequence) LocaleController.getString("MarkAllAsRead", C3630R.string.MarkAllAsRead), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$6(arrayList);
                        }
                    }, true).addIf(z8, C3630R.C3632drawable.msg_share, FilterCreateActivity.withNew((dialogFilter == null || !dialogFilter.isMyChatlist()) ? 0 : -1, LocaleController.getString("LinkActionShare", C3630R.string.LinkActionShare), true), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda12
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$7(zArr, dialogFilter);
                        }
                    }).addIf(z6, C3630R.C3632drawable.msg_stories_stealth, LocaleController.getString("HideOnTop", C3630R.string.HideOnTop), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$9(filterById);
                        }
                    }).addIf((z5 || isSortingFilter) ? false : true, C3630R.C3632drawable.msg_delete, (CharSequence) LocaleController.getString("FilterDeleteItem", C3630R.string.FilterDeleteItem), true, new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$10(filterById);
                        }
                    }).addIf((z6 || (z5 && (DialogsActivity.this.isArchive() || !DialogsActivity.this.getFiltersController().isAllChatsTabEnabled() || DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getTabsCount() == 2))) ? false : true, C3630R.C3632drawable.msg_disable, LocaleController.getInternalString(C3630R.string.dialogs_tab_popup_disable), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C591213.this.lambda$didSelectTab$12(z5, isSortingFilter, tabView);
                        }
                    }).setGravity(3).translate(AndroidUtilities.m102dp(-8), AndroidUtilities.m102dp(DialogsActivity.this.isFilterTabsAtBottom() ? 10 : -10)).show();
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
                dialogsActivity.showDialog(new LimitReachedBottomSheet(dialogsActivity2, dialogsActivity2.getParentActivity(), 3, ((BaseFragment) DialogsActivity.this).currentAccount, null));
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
                    DialogsActivity.this.getNotificationsController().setDialogNotificationsSettings(tLRPC$Dialog.f1606id, 0, z ? 3 : 4);
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
        public /* synthetic */ void lambda$didSelectTab$9(final MessagesController.DialogFilter dialogFilter) {
            DialogsActivity.this.getFiltersController().setHidden(dialogFilter.f1537id, true);
            UndoView undoView = DialogsActivity.this.getUndoView();
            if (undoView != null) {
                undoView.showInfo(LocaleController.getInternalString(C3630R.string.undo_folder_tabs_settings_hide_folder_info), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C591213.this.lambda$didSelectTab$8(dialogFilter);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$8(MessagesController.DialogFilter dialogFilter) {
            DialogsActivity.this.getFiltersController().setHidden(dialogFilter.f1537id, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$12(boolean z, boolean z2, FilterTabsView.TabView tabView) {
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
            DialogsActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
            UndoView undoView = DialogsActivity.this.getUndoView();
            if (undoView != null) {
                undoView.showInfo(AndroidUtilities.replaceTags(LocaleController.getInternalString(C3630R.string.undo_all_chats_tab_disabled)), new Runnable() { // from class: org.telegram.ui.DialogsActivity$13$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C591213.this.lambda$didSelectTab$11();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectTab$11() {
            DialogsActivity.this.getFiltersController().setAllChatsTabEnabled(true);
            DialogsActivity.this.getFiltersController().saveConfig();
            DialogsActivity.this.updateFilterTabs(true, true);
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
        public boolean isTabMenuVisible() {
            return DialogsActivity.this.filterOptions != null && DialogsActivity.this.filterOptions.isShown();
        }

        @Override // org.telegram.p042ui.Components.FilterTabsView.FilterTabsViewDelegate
        public void onDeletePressed(int i) {
            if (i < 0 || i >= DialogsActivity.this.getMessagesController().getDialogFilters().size()) {
                return;
            }
            lambda$didSelectTab$10(DialogsActivity.this.getMessagesController().getDialogFilters().get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$35(View view) {
        this.filterOptions = ItemOptions.makeOptions(this, this.switchItem).setViewAdditionalOffsets(-AndroidUtilities.m102dp(5), -AndroidUtilities.m102dp(5), -AndroidUtilities.m102dp(5), -AndroidUtilities.m102dp(5)).setScrimViewBackground(Theme.createCircleDrawable(AndroidUtilities.m102dp(46), Theme.getColor(Theme.key_actionBarDefault))).add(C3630R.C3632drawable.msg_disable, LocaleController.getString("Disable", C3630R.string.Disable), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda100
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$34();
            }
        }).translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m102dp(-4)).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$34() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda94
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$33();
            }
        }, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$33() {
        SharedConfig.setActionBarAccountSwitchEnabled(false);
        updateSwitchItemVisibility(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$16 */
    /* loaded from: classes5.dex */
    public class C591516 extends LinearLayoutManager {
        private boolean fixOffset;
        boolean lastDragging;
        ValueAnimator storiesOverscrollAnimator;
        final /* synthetic */ ViewPage val$viewPage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C591516(Context context, ViewPage viewPage) {
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

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onScrollStateChanged(int i) {
            super.onScrollStateChanged(i);
            ValueAnimator valueAnimator = this.storiesOverscrollAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.storiesOverscrollAnimator.cancel();
            }
            if (this.val$viewPage.listView.getScrollState() != 1) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(DialogsActivity.this.storiesOverscroll, BitmapDescriptorFactory.HUE_RED);
                this.storiesOverscrollAnimator = ofFloat;
                final ViewPage viewPage = this.val$viewPage;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$16$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        DialogsActivity.C591516.this.lambda$onScrollStateChanged$0(viewPage, valueAnimator2);
                    }
                });
                this.storiesOverscrollAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.16.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        C591516 c591516 = C591516.this;
                        DialogsActivity.this.setStoriesOvercroll(c591516.val$viewPage, BitmapDescriptorFactory.HUE_RED);
                    }
                });
                this.storiesOverscrollAnimator.setDuration(200L);
                this.storiesOverscrollAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.storiesOverscrollAnimator.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScrollStateChanged$0(ViewPage viewPage, ValueAnimator valueAnimator) {
            DialogsActivity.this.setStoriesOvercroll(viewPage, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        /* JADX WARN: Code restructure failed: missing block: B:120:0x020e, code lost:
            if (r6 > (-1)) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00d7, code lost:
            if (r15.rightSlidingDialogContainer.hasFragment() == false) goto L163;
         */
        /* JADX WARN: Removed duplicated region for block: B:126:0x021c  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x023d  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x0240  */
        /* JADX WARN: Removed duplicated region for block: B:137:0x0251  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x0440 A[ADDED_TO_REGION] */
        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int scrollVerticallyBy(int r19, androidx.recyclerview.widget.RecyclerView.Recycler r20, androidx.recyclerview.widget.RecyclerView.State r21) {
            /*
                Method dump skipped, instructions count: 1151
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.C591516.scrollVerticallyBy(int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):int");
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
                FileLog.m97e(e);
                final ViewPage viewPage = this.val$viewPage;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$16$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C591516.lambda$onLayoutChildren$1(DialogsActivity.ViewPage.this);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onLayoutChildren$1(ViewPage viewPage) {
            viewPage.dialogsAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$36(ViewPage viewPage, View view, int i, float f, float f2) {
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
            groupCreateFinalActivity.setDelegate(new GroupCreateFinalActivity.GroupCreateFinalActivityDelegate() { // from class: org.telegram.ui.DialogsActivity.17
                @Override // org.telegram.p042ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
                public void didFailChatCreation() {
                }

                @Override // org.telegram.p042ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
                public void didStartChatCreation() {
                }

                @Override // org.telegram.p042ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
                public void didFinishChatCreation(GroupCreateFinalActivity groupCreateFinalActivity2, long j) {
                    ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                    arrayList.add(MessagesStorage.TopicKey.m94of(-j, 0));
                    DialogsActivityDelegate dialogsActivityDelegate = DialogsActivity.this.delegate;
                    if (DialogsActivity.this.closeFragment) {
                        DialogsActivity.this.removeSelfFromStack();
                    }
                    dialogsActivityDelegate.didSelectDialogs(DialogsActivity.this, arrayList, null, true, null, null);
                }
            });
            presentFragment(groupCreateFinalActivity);
        } else {
            if ((view instanceof DialogsHintCell) && (viewPage.dialogsType == 7 || viewPage.dialogsType == 8)) {
                TLRPC$TL_chatlists_chatlistUpdates chatlistUpdate = viewPage.dialogsAdapter.getChatlistUpdate();
                if (chatlistUpdate != null) {
                    MessagesController.DialogFilter dialogFilter = getMessagesController().getSelectedDialogFilter(isForward(), isArchive())[viewPage.dialogsType - 7];
                    if (dialogFilter != null) {
                        showDialog(new FolderBottomSheet(this, dialogFilter.f1537id, chatlistUpdate));
                        return;
                    }
                    return;
                }
            } else if ((view instanceof DialogCell) && !this.actionBar.isActionModeShowed() && !this.rightSlidingDialogContainer.hasFragment()) {
                DialogCell dialogCell = (DialogCell) view;
                AndroidUtilities.rectTmp.set(dialogCell.avatarImage.getImageX(), dialogCell.avatarImage.getImageY(), dialogCell.avatarImage.getImageX2(), dialogCell.avatarImage.getImageY2());
            }
            if (isAlbumsDialogsType(viewPage.dialogsType) && this.actionBar.isActionModeShowed()) {
                return;
            }
            onItemClick(view, i, viewPage.dialogsAdapter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$37(View view) {
        this.forwardSearchEditText.clearFocus();
        this.forwardSearchEditText.requestFocus();
        AndroidUtilities.showKeyboard(this.forwardSearchEditText);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$30 */
    /* loaded from: classes5.dex */
    public class C593230 implements DialogsSearchAdapter.DialogsSearchAdapterDelegate {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$clearTopPeers$0(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        }

        C593230() {
        }

        @Override // org.telegram.p042ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void clearTopPeers() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("ChatHintsDeleteAlertTitle", C3630R.string.ChatHintsDeleteAlertTitle));
            builder.setMessage(LocaleController.getString("SuggestContactsAlert", C3630R.string.SuggestContactsAlert));
            builder.setPositiveButton(LocaleController.getString("MuteDisable", C3630R.string.MuteDisable), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$30$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C593230.this.lambda$clearTopPeers$2(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
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
            DialogsActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
            TLRPC$TL_contacts_toggleTopPeers tLRPC$TL_contacts_toggleTopPeers = new TLRPC$TL_contacts_toggleTopPeers();
            tLRPC$TL_contacts_toggleTopPeers.enabled = false;
            DialogsActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_contacts_toggleTopPeers, new RequestDelegate() { // from class: org.telegram.ui.DialogsActivity$30$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    DialogsActivity.C593230.this.lambda$clearTopPeers$1(tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$clearTopPeers$1(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            TLRPC$TL_contacts_toggleTopPeers tLRPC$TL_contacts_toggleTopPeers = new TLRPC$TL_contacts_toggleTopPeers();
            tLRPC$TL_contacts_toggleTopPeers.enabled = true;
            DialogsActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_contacts_toggleTopPeers, new RequestDelegate() { // from class: org.telegram.ui.DialogsActivity$30$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error2) {
                    DialogsActivity.C593230.lambda$clearTopPeers$0(tLObject2, tLRPC$TL_error2);
                }
            });
        }

        @Override // org.telegram.p042ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
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

        @Override // org.telegram.p042ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
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
                    DialogsActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
                    DialogsActivity.this.presentFragment(new ChatActivity(bundle));
                }
            } else if (DialogsActivity.this.getMessagesController().checkCanOpenChat(bundle, DialogsActivity.this)) {
                DialogsActivity.this.presentFragment(new ChatActivity(bundle));
            }
        }

        @Override // org.telegram.p042ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void needRemoveHint(final long j) {
            TLRPC$User user;
            if (DialogsActivity.this.getParentActivity() == null || (user = DialogsActivity.this.getMessagesController().getUser(Long.valueOf(j))) == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getString("ChatHintsDeleteAlertTitle", C3630R.string.ChatHintsDeleteAlertTitle));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ChatHintsDeleteAlert", C3630R.string.ChatHintsDeleteAlert, ContactsController.formatName(user.first_name, user.last_name))));
            builder.setPositiveButton(LocaleController.getString("StickersRemove", C3630R.string.StickersRemove), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$30$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C593230.this.lambda$needRemoveHint$3(j, dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
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

        @Override // org.telegram.p042ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void needClearList() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            if (DialogsActivity.this.searchViewPager.dialogsSearchAdapter.isSearchWas() && DialogsActivity.this.searchViewPager.dialogsSearchAdapter.isRecentSearchDisplayed()) {
                builder.setTitle(LocaleController.getString("ClearSearchAlertPartialTitle", C3630R.string.ClearSearchAlertPartialTitle));
                builder.setMessage(LocaleController.formatPluralString("ClearSearchAlertPartial", DialogsActivity.this.searchViewPager.dialogsSearchAdapter.getRecentResultsCount(), new Object[0]));
                builder.setPositiveButton(LocaleController.getString("Clear", C3630R.string.Clear), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$30$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        DialogsActivity.C593230.this.lambda$needClearList$4(dialogInterface, i);
                    }
                });
            } else {
                builder.setTitle(LocaleController.getString("ClearSearchAlertTitle", C3630R.string.ClearSearchAlertTitle));
                builder.setMessage(LocaleController.getString("ClearSearchAlert", C3630R.string.ClearSearchAlert));
                builder.setPositiveButton(LocaleController.getString("ClearButton", C3630R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$30$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        DialogsActivity.C593230.this.lambda$needClearList$5(dialogInterface, i);
                    }
                });
            }
            builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
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

        @Override // org.telegram.p042ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public void runResultsEnterAnimation() {
            if (DialogsActivity.this.searchViewPager != null) {
                DialogsActivity.this.searchViewPager.runResultsEnterAnimation();
            }
        }

        @Override // org.telegram.p042ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public boolean isSelected(long j) {
            return DialogsActivity.this.selectedDialogs.contains(Long.valueOf(j));
        }

        @Override // org.telegram.p042ui.Adapters.DialogsSearchAdapter.DialogsSearchAdapterDelegate
        public long getSearchForumDialogId() {
            RightSlidingDialogContainer rightSlidingDialogContainer = DialogsActivity.this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer == null || !(rightSlidingDialogContainer.getFragment() instanceof TopicsFragment)) {
                return 0L;
            }
            return ((TopicsFragment) DialogsActivity.this.rightSlidingDialogContainer.getFragment()).getDialogId();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$38(View view, int i) {
        if (this.initialDialogsType == 10) {
            SearchViewPager searchViewPager = this.searchViewPager;
            onItemLongClick(searchViewPager.searchListView, view, i, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1, searchViewPager.dialogsSearchAdapter);
            return;
        }
        onItemClick(view, i, this.searchViewPager.dialogsSearchAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$39(boolean z, ArrayList arrayList, ArrayList arrayList2, boolean z2) {
        updateFiltersView(z, arrayList, arrayList2, z2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$40(View view, int i) {
        this.filtersView.cancelClickRunnables(true);
        addSearchFilter(this.filtersView.getFilterAt(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$43(View view) {
        expandMultiFab(false);
        final ViewPage viewPage = this.viewPages[0];
        final SortingFilter filterByIdWithExtra = SortingFilter.isSortingFilter(false, viewPage.selectedType) ? SortingFilter.getFilterByIdWithExtra(false, viewPage.selectedType) : SortingFilter.isSortingFilter(true, viewPage.selectedType) ? SortingFilter.getFilterByIdWithExtra(true, viewPage.selectedType) : null;
        if (filterByIdWithExtra == null || filterByIdWithExtra.isFabEditable()) {
            showDialog(new SelectFabsBottomSheet(getParentActivity(), new HashSet(getFabsForPage(this.viewPages[0])), new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda68
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DialogsActivity.this.lambda$createView$42(viewPage, filterByIdWithExtra, (Set) obj);
                }
            }));
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$42(ViewPage viewPage, SortingFilter sortingFilter, Set set) {
        if (getParentActivity() == null) {
            return;
        }
        if (viewPage.selectedType == this.filterTabsView.getDefaultTabId()) {
            getFiltersController().setSelectedAllChatsTabFabs(set);
            getFiltersController().saveConfig();
        } else if (sortingFilter == null) {
            if (viewPage.selectedType >= getMessagesController().dialogFilters.size()) {
                return;
            }
            FilterSettingsModel settings = getFiltersController().getSettings(getMessagesController().dialogFilters.get(viewPage.selectedType).f1537id);
            settings.setFabs(set);
            getFiltersController().addOrEditFilterSettings(settings);
        } else {
            getFiltersController().getSortingFilterState(sortingFilter).setFabs(set);
            getFiltersController().saveConfig();
        }
        updateFilterTabs(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$48(View view) {
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isInPreviewMode()) {
            finishPreviewFragment();
            return;
        }
        if (this.initialDialogsType == 10) {
            if (this.delegate == null || this.selectedDialogs.isEmpty()) {
                return;
            }
            ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
            for (int i = 0; i < this.selectedDialogs.size(); i++) {
                arrayList.add(MessagesStorage.TopicKey.m94of(this.selectedDialogs.get(i).longValue(), 0));
            }
            this.delegate.didSelectDialogs(this, arrayList, null, false, null, null);
        } else if (this.floatingButton.getVisibility() == 0) {
            List<FilterFab> fabsForPage = this.selectedMultiFab != null ? null : getFabsForPage(this.viewPages[0]);
            if (fabsForPage != null && fabsForPage.size() > 1) {
                expandMultiFab(!this.multiFabExpanded);
                return;
            }
            FilterFab filterFab = this.selectedMultiFab;
            if (filterFab == null) {
                filterFab = fabsForPage.get(0);
            }
            FilterFab filterFab2 = FilterFab.CREATE_CHAT;
            if (filterFab != filterFab2 && filterFab != FilterFab.CREATE_STORY) {
                if (filterFab == FilterFab.ARCHIVE) {
                    presentFragment(newInstanceInArchiveMode());
                } else if (filterFab == FilterFab.CLOUD) {
                    if (SharedConfig.isCloudAlbumsEnabled && getAlbumsController().isOpenAlbumsInsteadCloudEnabled()) {
                        presentFragment(newInstanceInAlbumsMode());
                    } else {
                        presentFragment(ChatActivity.newInstanceInCloudMode());
                    }
                } else if (filterFab == FilterFab.MARK_ALL_READ) {
                    if (getTopicsController().hasSelectedTopic(isArchive())) {
                        showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda98
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.this.lambda$createView$44();
                            }
                        });
                        return;
                    }
                    FilterTabsView filterTabsView = this.filterTabsView;
                    if (filterTabsView == null || filterTabsView.getVisibility() != 0 || this.filterTabsView.currentTabIsDefault()) {
                        readAllCurrentFolderDialogs();
                    } else {
                        showReadAllDialog(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda82
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.this.lambda$createView$45();
                            }
                        });
                    }
                } else if (filterFab == FilterFab.WALLET) {
                    WalletHelper.safeRunWithActivationCheck(this, new Callbacks$Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda70
                        @Override // com.iMe.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            DialogsActivity.this.lambda$createView$46();
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
                        presentFragment(ChannelCreateActivity.newInstanceInAlbumMode(new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda64
                            @Override // com.iMe.fork.utils.Callbacks$Callback1
                            public final void invoke(Object obj) {
                                DialogsActivity.this.lambda$createView$47((Long) obj);
                            }
                        }));
                    } else {
                        presentFragment(new ActionIntroActivity(110));
                    }
                } else if (filterFab == FilterFab.CLEAR_DRAFTS && !getMediaDataController().getDrafts().isEmpty()) {
                    AlertsCreator.showDeleteAllCloudDraftsAlert(this);
                }
            } else {
                if (filterFab == filterFab2) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("destroyAfterSelect", true);
                    presentFragment(new ContactsActivity(bundle));
                    return;
                }
                HintView2 hintView2 = this.storyHint;
                if (hintView2 != null) {
                    hintView2.hide();
                }
                if (!getMessagesController().storiesEnabled()) {
                    UndoView undoView = getUndoView();
                    if (undoView != null) {
                        undoView.showError(LocaleController.getString("DialogNotAvailable", C3630R.string.DialogNotAvailable));
                        return;
                    }
                    return;
                }
                StoriesController.StoryLimit checkStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit();
                if (checkStoryLimit != null) {
                    showDialog(new LimitReachedBottomSheet(this, getContext(), checkStoryLimit.getLimitReachedType(), this.currentAccount, null));
                } else {
                    StoryRecorder.getInstance(getParentActivity(), this.currentAccount).closeToWhenSent(new StoryRecorder.ClosingViewProvider() { // from class: org.telegram.ui.DialogsActivity.34
                        @Override // org.telegram.p042ui.Stories.recorder.StoryRecorder.ClosingViewProvider
                        public void preLayout(long j, final Runnable runnable) {
                            DialogsActivity dialogsActivity = DialogsActivity.this;
                            if (dialogsActivity.dialogStoriesCell != null) {
                                dialogsActivity.scrollToTop(false, true);
                                DialogsActivity.this.invalidateScrollY = true;
                                ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                                if (j == 0 || j == DialogsActivity.this.getUserConfig().getClientUserId()) {
                                    DialogsActivity.this.dialogStoriesCell.scrollToFirstCell();
                                } else {
                                    DialogsActivity.this.dialogStoriesCell.scrollTo(j);
                                }
                                DialogsActivity.this.viewPages[0].listView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.DialogsActivity.34.1
                                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                                    public boolean onPreDraw() {
                                        DialogsActivity.this.viewPages[0].listView.getViewTreeObserver().removeOnPreDrawListener(this);
                                        AndroidUtilities.runOnUIThread(runnable, 100L);
                                        return false;
                                    }
                                });
                                return;
                            }
                            runnable.run();
                        }

                        @Override // org.telegram.p042ui.Stories.recorder.StoryRecorder.ClosingViewProvider
                        public StoryRecorder.SourceView getView(long j) {
                            DialogStoriesCell dialogStoriesCell = DialogsActivity.this.dialogStoriesCell;
                            return StoryRecorder.SourceView.fromStoryCell(dialogStoriesCell != null ? dialogStoriesCell.findStoryCell(j) : null);
                        }
                    }).open(StoryRecorder.SourceView.fromFloatingButton(this.floatingButtonContainer, this.selectedMultiFab != null), true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$44() {
        TopicModel topic = getTopicsController().getTopic(getTopicsController().getSelectedTopicId(isArchive()));
        if (topic != null) {
            getMessagesController().readDialogs(topic.getDialogs());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$45() {
        MessagesController.DialogFilter filterById = getFilterById(this.viewPages[0].selectedType);
        if (filterById != null) {
            getMessagesController().readDialogs(filterById.dialogs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$46() {
        this.walletFlowCoordinator.getValue().start(this.parentLayout, WalletRootFragment.newInstance(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$47(Long l) {
        presentFragment(ChatActivity.newInstanceForDialogId(l.longValue(), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$49() {
        MessagesController.getInstance(this.currentAccount).getMainSettings().edit().putBoolean("storyhint", false).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$50(FilterFab filterFab) {
        expandMultiFab(false);
        this.selectedMultiFab = filterFab;
        this.floatingButtonContainer.callOnClick();
        this.selectedMultiFab = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$53(View view) {
        if (isPremiumRestoreHintVisible() || !isPremiumHintVisible()) {
            return false;
        }
        this.filterOptions = ItemOptions.makeOptions(this, this.dialogsHintCell).setScrimViewBackground(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundWhite))).add(C3630R.C3632drawable.fork_wallet_crypto_cipher_eye, LocaleController.getString("Hide", C3630R.string.Hide), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$52();
            }
        }).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$52() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda78
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createView$51();
            }
        }, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$51() {
        SharedConfig.setDialogsPremiumHintEnabled(false);
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$54(Long l) {
        this.cacheSize = l;
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$55(Long l, Long l2) {
        this.deviceSize = l;
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$37 */
    /* loaded from: classes5.dex */
    public class C593937 implements RecentChatsBar.Delegate {
        C593937() {
        }

        @Override // com.iMe.p030ui.recent_chats.RecentChatsBar.Delegate
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

        @Override // com.iMe.p030ui.recent_chats.RecentChatsBar.Delegate
        public void onRecentChatLongClick(HistoryDialogModel historyDialogModel, View view) {
            final long dialogId = historyDialogModel.getDialogId();
            LockedSectionsController.SectionPasscodeData sectionsPasscodeData = DialogsActivity.this.getLockedSectionsController().getSectionsPasscodeData(LockedSection.CLOUD);
            if (dialogId == DialogsActivity.this.getUserConfig().getClientUserId() && sectionsPasscodeData != null && !sectionsPasscodeData.getPasscodeHash().isEmpty()) {
                DialogsActivity.this.showToast(LocaleController.getInternalString(C3630R.string.section_is_locked));
                return;
            }
            ActionBarPopupWindow.ActionBarPopupWindowLayout[] actionBarPopupWindowLayoutArr = {new ActionBarPopupWindow.ActionBarPopupWindowLayout(DialogsActivity.this.getParentActivity(), C3630R.C3632drawable.popup_fixed_alert, DialogsActivity.this.getResourceProvider(), 2)};
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), true, false);
            if (historyDialogModel.isPinned()) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("UnpinMessage", C3630R.string.UnpinMessage), C3630R.C3632drawable.msg_unpin);
            } else {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("PinMessage", C3630R.string.PinMessage), C3630R.C3632drawable.msg_pin);
            }
            actionBarMenuSubItem.setMinimumWidth(160);
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C593937.this.lambda$onRecentChatLongClick$0(dialogId, view2);
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
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("DeleteFromRecent", C3630R.string.DeleteFromRecent), C3630R.C3632drawable.msg_delete);
            actionBarMenuSubItem2.setMinimumWidth(160);
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C593937.this.lambda$onRecentChatLongClick$2(dialogId, view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem2);
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, false);
            actionBarMenuSubItem3.setIconColor(DialogsActivity.this.getThemedColor(i));
            actionBarMenuSubItem3.setTextColor(DialogsActivity.this.getThemedColor(i2));
            actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("ClearRecentHistory", C3630R.string.ClearRecentHistory), C3630R.C3632drawable.msg_clear);
            actionBarMenuSubItem3.setMinimumWidth(160);
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C593937.this.lambda$onRecentChatLongClick$3(view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem3);
            FrameLayout frameLayout = new FrameLayout(DialogsActivity.this.getParentActivity());
            frameLayout.setBackgroundColor(DialogsActivity.this.getThemedColor(Theme.key_actionBarDefaultSubmenuSeparator));
            actionBarPopupWindowLayoutArr[0].addView((View) frameLayout, LayoutHelper.createLinear(-1, 8));
            ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, false);
            actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString("Settings", C3630R.string.Settings), C3630R.C3632drawable.msg_settings);
            actionBarMenuSubItem4.setMinimumWidth(160);
            actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C593937.this.lambda$onRecentChatLongClick$5(view2);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem4);
            ActionBarMenuSubItem actionBarMenuSubItem5 = new ActionBarMenuSubItem(DialogsActivity.this.getParentActivity(), false, true);
            actionBarMenuSubItem5.setTextAndIcon(LocaleController.getString("Disable", C3630R.string.Disable), C3630R.C3632drawable.msg_disable);
            actionBarMenuSubItem5.setMinimumWidth(160);
            actionBarMenuSubItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.C593937.this.lambda$onRecentChatLongClick$8(view2);
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
            DialogsActivity.this.recentChatsBar.scrollToFirstCell();
            DialogsActivity.this.finishPreviewFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$2(long j, View view) {
            DialogsActivity.this.getRecentChatsController().removeRecentChat(j);
            DialogsActivity.this.finishPreviewFragment();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C593937.this.lambda$onRecentChatLongClick$1();
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C593937.this.lambda$onRecentChatLongClick$4();
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C593937.this.lambda$onRecentChatLongClick$7();
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRecentChatLongClick$7() {
            DialogsActivity.this.updateRecentChatsBar();
            UndoView undoView = DialogsActivity.this.getUndoView();
            if (undoView != null) {
                undoView.showInfo(LocaleController.getInternalString(C3630R.string.undo_recent_chats_disabled), new Runnable() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C593937.this.lambda$onRecentChatLongClick$6();
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

        @Override // com.iMe.p030ui.recent_chats.RecentChatsBar.Delegate
        public void onLongClickRelease() {
            DialogsActivity.this.finishPreviewFragment();
        }

        @Override // com.iMe.p030ui.recent_chats.RecentChatsBar.Delegate
        public void onMove(float f) {
            DialogsActivity.this.movePreviewFragment(f);
        }

        private void showDeleteAlert() {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            int i = C3630R.string.ClearHistory;
            builder.setTitle(LocaleController.getString("ClearHistory", i));
            builder.setMessage(LocaleController.getInternalString(C3630R.string.recent_chats_clear_history));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    DialogsActivity.C593937.this.lambda$showDeleteAlert$9(dialogInterface, i2);
                }
            });
            builder.setPositiveButton(LocaleController.getString("ClearHistory", i), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    DialogsActivity.C593937.this.lambda$showDeleteAlert$11(dialogInterface, i2);
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$37$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C593937.this.lambda$showDeleteAlert$10();
                }
            }, 150L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showDeleteAlert$10() {
            DialogsActivity.this.updateRecentChatsBar();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$38 */
    /* loaded from: classes5.dex */
    public class C594038 implements TopicsBar.Delegate {
        C594038() {
        }

        @Override // com.iMe.p030ui.topics.TopicsBar.Delegate
        public boolean canPerformActions() {
            return ((DialogsActivity.this.filterTabsView != null && DialogsActivity.this.filterTabsView.isEditing()) || DialogsActivity.this.searching || ((BaseFragment) DialogsActivity.this).actionBar.isActionModeShowed()) ? false : true;
        }

        @Override // com.iMe.p030ui.topics.TopicsBar.Delegate
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
            ItemOptions scrimViewBackground = ItemOptions.makeOptions(dialogsActivity, topicView).setScrimViewBackground(Theme.createRoundRectDrawable(AndroidUtilities.m102dp(4), Theme.getColor(Theme.key_windowBackgroundWhite)));
            if (DialogsActivity.this.topicsBar.allowReorder() && !z2) {
                z = true;
            }
            int i = C3630R.C3632drawable.tabs_reorder;
            ItemOptions addIf = scrimViewBackground.addIf(z, i, LocaleController.getString("FilterReorder", C3630R.string.FilterReorder), new Runnable() { // from class: org.telegram.ui.DialogsActivity$38$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C594038.this.lambda$onTopicLongClick$0();
                }
            }).add(C3630R.C3632drawable.msg_settings, LocaleController.getString("Settings", C3630R.string.Settings), new Runnable() { // from class: org.telegram.ui.DialogsActivity$38$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C594038.this.lambda$onTopicLongClick$1();
                }
            }).addIf(!z2, C3630R.C3632drawable.msg_edit, LocaleController.getInternalString(C3630R.string.topic_edit), new Runnable() { // from class: org.telegram.ui.DialogsActivity$38$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C594038.this.lambda$onTopicLongClick$2(topic);
                }
            }).addIf(!z2, C3630R.C3632drawable.msg_stories_stealth, LocaleController.getString("HideOnTop", C3630R.string.HideOnTop), new Runnable() { // from class: org.telegram.ui.DialogsActivity$38$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C594038.this.lambda$onTopicLongClick$4(topic);
                }
            }).addIf(!z2, C3630R.C3632drawable.msg_delete, LocaleController.getString("Delete", C3630R.string.Delete), new Runnable() { // from class: org.telegram.ui.DialogsActivity$38$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C594038.this.lambda$onTopicLongClick$5(topic);
                }
            });
            if (!DialogsActivity.this.getTopicsController().isNoTopicFirstEnabled()) {
                i = C3630R.C3632drawable.fork_move_to_beginning;
            }
            dialogsActivity.filterOptions = addIf.addIf(z2, i, LocaleController.getInternalString(DialogsActivity.this.getTopicsController().isNoTopicFirstEnabled() ? C3630R.string.topics_move_no_topic_to_end : C3630R.string.topics_move_no_topic_to_beginning), new Runnable() { // from class: org.telegram.ui.DialogsActivity$38$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C594038.this.lambda$onTopicLongClick$7();
                }
            }).setGravity(3).translate(AndroidUtilities.m102dp(-8), AndroidUtilities.m102dp(DialogsActivity.this.getTopicsController().isTopicsBarAtBottomEnabled() ? 10 : -10)).show();
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
        public /* synthetic */ void lambda$onTopicLongClick$4(final TopicModel topicModel) {
            DialogsActivity.this.getTopicsController().setHidden(topicModel.getTopicId(), true);
            UndoView undoView = DialogsActivity.this.getUndoView();
            if (undoView != null) {
                undoView.showInfo(LocaleController.getInternalString(C3630R.string.undo_topic_hide_info), new Runnable() { // from class: org.telegram.ui.DialogsActivity$38$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C594038.this.lambda$onTopicLongClick$3(topicModel);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTopicLongClick$3(TopicModel topicModel) {
            DialogsActivity.this.getTopicsController().setHidden(topicModel.getTopicId(), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTopicLongClick$7() {
            DialogsActivity.this.getTopicsController().setNoTopicFirstEnabled(!DialogsActivity.this.getTopicsController().isNoTopicFirstEnabled());
            DialogsActivity.this.getTopicsController().saveConfig();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$38$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C594038.this.lambda$onTopicLongClick$6();
                }
            }, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTopicLongClick$6() {
            DialogsActivity.this.updateTopicsBar();
        }

        @Override // com.iMe.p030ui.topics.TopicsBar.Delegate
        public void onTopicClick(long j) {
            if (j != -1) {
                DialogsActivity.this.hideFloatingButton(true);
                if (DialogsActivity.this.selectedFilterIdToRestore == -1) {
                    int currentTabId = DialogsActivity.this.filterTabsView.getCurrentTabId();
                    if (SortingFilter.isSortingFilter(DialogsActivity.this.isArchive(), currentTabId)) {
                        DialogsActivity.this.selectedFilterIdToRestore = currentTabId;
                    } else if (currentTabId >= 0 && currentTabId < DialogsActivity.this.getMessagesController().dialogFilters.size()) {
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        dialogsActivity.selectedFilterIdToRestore = dialogsActivity.getMessagesController().dialogFilters.get(currentTabId).f1537id;
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
            DialogsActivity.this.switchToCurrentSelectedMode(false);
        }

        @Override // com.iMe.p030ui.topics.TopicsBar.Delegate
        public boolean isTabMenuVisible() {
            return DialogsActivity.this.filterOptions != null && DialogsActivity.this.filterOptions.isShown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: showDeleteAlert */
        public void lambda$onTopicLongClick$5(final TopicModel topicModel) {
            if (topicModel == null || !AndroidUtilities.isActivityRunning(DialogsActivity.this.getParentActivity())) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogsActivity.this.getParentActivity());
            builder.setTitle(LocaleController.getInternalString(C3630R.string.topics_remove));
            builder.setMessage(LocaleController.getInternalString(C3630R.string.topics_remove_alert));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("Delete", C3630R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$38$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.C594038.this.lambda$showDeleteAlert$8(topicModel, dialogInterface, i);
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
        public /* synthetic */ void lambda$showDeleteAlert$8(TopicModel topicModel, DialogInterface dialogInterface, int i) {
            DialogsActivity.this.getTopicsController().removeTopicFilterDialogs(topicModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$56(View view) {
        if (this.delegate == null || this.selectedDialogs.isEmpty()) {
            return;
        }
        ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
        for (int i = 0; i < this.selectedDialogs.size(); i++) {
            arrayList.add(MessagesStorage.TopicKey.m94of(this.selectedDialogs.get(i).longValue(), 0));
        }
        this.delegate.didSelectDialogs(this, arrayList, this.commentView.getFieldText(), false, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$57(FrameLayout frameLayout, View view) {
        if (this.isNextButton) {
            return false;
        }
        onSendLongClick(frameLayout);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$58(View view) {
        openForwardingPreview();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$45 */
    /* loaded from: classes5.dex */
    public class C594945 extends DialogStoriesCell {
        C594945(Context context, BaseFragment baseFragment, int i, int i2) {
            super(context, baseFragment, i, i2);
        }

        @Override // org.telegram.p042ui.Stories.DialogStoriesCell
        public void onUserLongPressed(View view, final long j) {
            DialogsActivity dialogsActivity = DialogsActivity.this;
            dialogsActivity.filterOptions = ItemOptions.makeOptions(dialogsActivity, view).setViewAdditionalOffsets(0, AndroidUtilities.m102dp(8), 0, 0).setScrimViewBackground(Theme.createRoundRectDrawable(AndroidUtilities.m102dp(6), DialogsActivity.this.canShowFilterTabsView ? AndroidUtilities.m102dp(6) : 0, Theme.getColor(DialogsActivity.this.isArchive() ? Theme.key_actionBarDefaultArchived : Theme.key_actionBarDefault)));
            if (UserObject.isService(j)) {
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                return;
            }
            view.performHapticFeedback(0);
            if (j == UserConfig.getInstance(((BaseFragment) DialogsActivity.this).currentAccount).getClientUserId()) {
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                if (dialogsActivity2.storiesEnabled) {
                    ItemOptions itemOptions = dialogsActivity2.filterOptions;
                    int i = C3630R.C3632drawable.msg_stories_add;
                    String string = LocaleController.getString("AddStory", C3630R.string.AddStory);
                    int i2 = Theme.key_actionBarDefaultSubmenuItemIcon;
                    int i3 = Theme.key_actionBarDefaultSubmenuItem;
                    itemOptions.add(i, string, i2, i3, new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C594945.this.lambda$onUserLongPressed$0();
                        }
                    });
                    DialogsActivity.this.filterOptions.add(C3630R.C3632drawable.msg_stories_archive, LocaleController.getString("ArchivedStories", C3630R.string.ArchivedStories), i2, i3, new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C594945.this.lambda$onUserLongPressed$1();
                        }
                    });
                    DialogsActivity.this.filterOptions.add(C3630R.C3632drawable.msg_stories_saved, LocaleController.getString("SavedStories", C3630R.string.SavedStories), i2, i3, new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C594945.this.lambda$onUserLongPressed$2();
                        }
                    });
                    DialogsActivity.this.filterOptions.addGap().add(C3630R.C3632drawable.msg_settings, LocaleController.getString("Settings", C3630R.string.Settings), new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.C594945.this.lambda$onUserLongPressed$3();
                        }
                    });
                } else {
                    DialogStoriesCell dialogStoriesCell = dialogsActivity2.dialogStoriesCell;
                    if (dialogStoriesCell != null) {
                        dialogStoriesCell.showPremiumHint();
                        return;
                    }
                    return;
                }
            } else {
                final String sharedPrefKey = NotificationsController.getSharedPrefKey(j, 0);
                boolean z = !NotificationsCustomSettingsActivity.areStoriesNotMuted(((BaseFragment) DialogsActivity.this).currentAccount, j);
                int i4 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                DialogsActivity.this.filterOptions.addIf(i4 > 0, C3630R.C3632drawable.msg_discussion, LocaleController.getString("SendMessage", C3630R.string.SendMessage), new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C594945.this.lambda$onUserLongPressed$4(j);
                    }
                }).addIf(i4 > 0, C3630R.C3632drawable.msg_openprofile, LocaleController.getString("OpenProfile", C3630R.string.OpenProfile), new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C594945.this.lambda$onUserLongPressed$5(j);
                    }
                }).addIf(i4 < 0, C3630R.C3632drawable.msg_channel, LocaleController.getString("OpenChannel2", C3630R.string.OpenChannel2), new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C594945.this.lambda$onUserLongPressed$6(j);
                    }
                }).addIf(!z && i4 > 0, C3630R.C3632drawable.msg_mute, LocaleController.getString("NotificationsStoryMute2", C3630R.string.NotificationsStoryMute2), new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C594945.this.lambda$onUserLongPressed$7(sharedPrefKey, j);
                    }
                }).makeMultiline(false).addIf(z && i4 > 0, C3630R.C3632drawable.msg_unmute, LocaleController.getString("NotificationsStoryUnmute2", C3630R.string.NotificationsStoryUnmute2), new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C594945.this.lambda$onUserLongPressed$8(sharedPrefKey, j);
                    }
                }).makeMultiline(false).addIf(!DialogsActivity.this.isArchive(), C3630R.C3632drawable.msg_archive, LocaleController.getString("ArchivePeerStories", C3630R.string.ArchivePeerStories), new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C594945.this.lambda$onUserLongPressed$9(j);
                    }
                }).makeMultiline(false).addIf(DialogsActivity.this.isArchive(), C3630R.C3632drawable.msg_unarchive, LocaleController.getString("UnarchiveStories", C3630R.string.UnarchiveStories), new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C594945.this.lambda$onUserLongPressed$10(j);
                    }
                }).makeMultiline(false).addGap().add(C3630R.C3632drawable.msg_settings, LocaleController.getString("Settings", C3630R.string.Settings), new Runnable() { // from class: org.telegram.ui.DialogsActivity$45$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.C594945.this.lambda$onUserLongPressed$11();
                    }
                });
            }
            DialogsActivity.this.filterOptions.setGravity(3).translate(AndroidUtilities.m102dp(-8), AndroidUtilities.m102dp(-10)).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$0() {
            DialogsActivity.this.dialogStoriesCell.openStoryRecorder();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$1() {
            Bundle bundle = new Bundle();
            bundle.putLong("dialog_id", UserConfig.getInstance(((BaseFragment) DialogsActivity.this).currentAccount).getClientUserId());
            bundle.putInt(SessionDescription.ATTR_TYPE, 1);
            bundle.putInt("start_from", 9);
            DialogsActivity.this.presentFragment(new MediaActivity(bundle, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$2() {
            Bundle bundle = new Bundle();
            bundle.putLong("dialog_id", UserConfig.getInstance(((BaseFragment) DialogsActivity.this).currentAccount).getClientUserId());
            bundle.putInt(SessionDescription.ATTR_TYPE, 1);
            DialogsActivity.this.presentFragment(new MediaActivity(bundle, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$3() {
            DialogsActivity.this.openStoriesSettings();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$4(long j) {
            DialogsActivity.this.presentFragment(ChatActivity.m64of(j));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$5(long j) {
            DialogsActivity.this.presentFragment(ProfileActivity.m54of(j));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$6(long j) {
            DialogsActivity.this.presentFragment(ChatActivity.m64of(j));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$7(String str, long j) {
            SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(((BaseFragment) DialogsActivity.this).currentAccount).edit();
            edit.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + str, false).apply();
            DialogsActivity.this.getNotificationsController().updateServerNotificationsSettings(j, 0);
            TLRPC$User user = MessagesController.getInstance(((BaseFragment) DialogsActivity.this).currentAccount).getUser(Long.valueOf(j));
            String trim = user == null ? "" : user.first_name.trim();
            int indexOf = trim.indexOf(" ");
            if (indexOf > 0) {
                trim = trim.substring(0, indexOf);
            }
            BulletinFactory.m61of(DialogsActivity.this).createUsersBulletin(Arrays.asList(user), AndroidUtilities.replaceTags(LocaleController.formatString("NotificationsStoryMutedHint", C3630R.string.NotificationsStoryMutedHint, trim))).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$8(String str, long j) {
            SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(((BaseFragment) DialogsActivity.this).currentAccount).edit();
            edit.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + str, true).apply();
            DialogsActivity.this.getNotificationsController().updateServerNotificationsSettings(j, 0);
            TLRPC$User user = MessagesController.getInstance(((BaseFragment) DialogsActivity.this).currentAccount).getUser(Long.valueOf(j));
            String trim = user == null ? "" : user.first_name.trim();
            int indexOf = trim.indexOf(" ");
            if (indexOf > 0) {
                trim = trim.substring(0, indexOf);
            }
            BulletinFactory.m61of(DialogsActivity.this).createUsersBulletin(Arrays.asList(user), AndroidUtilities.replaceTags(LocaleController.formatString("NotificationsStoryUnmutedHint", C3630R.string.NotificationsStoryUnmutedHint, trim))).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$9(long j) {
            DialogsActivity.this.toggleArciveForStory(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$10(long j) {
            DialogsActivity.this.toggleArciveForStory(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserLongPressed$11() {
            DialogsActivity.this.openStoriesSettings();
        }

        @Override // org.telegram.p042ui.Stories.DialogStoriesCell
        public void onMiniListClicked() {
            DialogsActivity dialogsActivity = DialogsActivity.this;
            if (dialogsActivity.hasOnlySlefStories && dialogsActivity.getStoriesController().hasOnlySelfStories()) {
                DialogsActivity.this.dialogStoriesCell.openSelfStories();
            } else {
                DialogsActivity.this.scrollToTop(true, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$59(View view) {
        if (SharedConfig.isAppUpdateAvailable()) {
            File httpFilePath = ImageLoader.getHttpFilePath(SharedConfig.pendingAppUpdate.url, "apk");
            AndroidUtilities.openForView(httpFilePath, httpFilePath.getName(), "apk", getParentActivity(), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$60(View view) {
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStoriesOvercroll(ViewPage viewPage, float f) {
        if (this.storiesOverscroll == f) {
            return;
        }
        this.storiesOverscroll = f;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            this.storiesOverscrollCalled = false;
        }
        this.dialogStoriesCell.setOverscoll(f);
        viewPage.listView.setViewsOffset(f);
        viewPage.listView.setOverScrollMode(f != BitmapDescriptorFactory.HUE_RED ? 2 : 0);
        this.fragmentView.invalidate();
        if (f <= AndroidUtilities.m102dp(90) || this.storiesOverscrollCalled) {
            return;
        }
        this.storiesOverscrollCalled = true;
        getOrCreateStoryViewer().doOnAnimationReady(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda80
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$setStoriesOvercroll$61();
            }
        });
        this.dialogStoriesCell.openOverscrollSelectedStory();
        this.dialogStoriesCell.performHapticFeedback(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStoriesOvercroll$61() {
        this.fragmentView.dispatchTouchEvent(AndroidUtilities.emptyMotionEvent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleArciveForStory(final long j) {
        final boolean z = !isArchive();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda109
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$toggleArciveForStory$64(j, z);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleArciveForStory$64(final long j, final boolean z) {
        String str;
        TLRPC$Chat tLRPC$Chat;
        getMessagesController().getStoriesController().toggleHidden(j, z, false, true);
        BulletinFactory.UndoObject undoObject = new BulletinFactory.UndoObject();
        undoObject.onUndo = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda108
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$toggleArciveForStory$62(j, z);
            }
        };
        undoObject.onAction = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda107
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$toggleArciveForStory$63(j, z);
            }
        };
        if (j >= 0) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(j));
            str = ContactsController.formatName(user.first_name, null, 15);
            tLRPC$Chat = user;
        } else {
            TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-j));
            str = chat.title;
            tLRPC$Chat = chat;
        }
        this.storiesBulletin = BulletinFactory.global().createUsersBulletin(Collections.singletonList(tLRPC$Chat), isArchive() ? AndroidUtilities.replaceTags(LocaleController.formatString("StoriesMovedToDialogs", C3630R.string.StoriesMovedToDialogs, str)) : AndroidUtilities.replaceTags(LocaleController.formatString("StoriesMovedToContacts", C3630R.string.StoriesMovedToContacts, ContactsController.formatName(str, null, 15))), null, undoObject).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleArciveForStory$62(long j, boolean z) {
        getMessagesController().getStoriesController().toggleHidden(j, !z, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleArciveForStory$63(long j, boolean z) {
        getMessagesController().getStoriesController().toggleHidden(j, z, true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkAutoscrollToStories(ViewPage viewPage) {
        FilterTabsView filterTabsView;
        if ((this.hasStories || !((filterTabsView = this.filterTabsView) == null || filterTabsView.getVisibility() != 0 || isFilterTabsAtBottom())) && !this.rightSlidingDialogContainer.hasFragment()) {
            int i = (int) (-this.scrollYOffset);
            int maxScrollYOffset = getMaxScrollYOffset();
            if (i == 0 || i == maxScrollYOffset) {
                return false;
            }
            if (i < maxScrollYOffset / 2) {
                if (viewPage.listView.canScrollVertically(-1)) {
                    viewPage.scroller.smoothScrollBy(-i);
                    return true;
                }
                return false;
            } else if (viewPage.listView.canScrollVertically(1)) {
                viewPage.scroller.smoothScrollBy(maxScrollYOffset - i);
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getActionBarMoveFrom(boolean z) {
        boolean z2 = this.hasStories;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            f = BitmapDescriptorFactory.HUE_RED + AndroidUtilities.m102dp(81);
        }
        if (z) {
            f += AndroidUtilities.m102dp(44);
        }
        float topicsBarHeight = f + getTopicsBarHeight(true) + getRecentChatsBarHeight();
        DialogsHintCell dialogsHintCell = this.dialogsHintCell;
        if (dialogsHintCell != null && dialogsHintCell.getVisibility() == 0) {
            topicsBarHeight += this.dialogsHintCell.getMeasuredHeight();
        }
        UnconfirmedAuthHintCell unconfirmedAuthHintCell = this.authHintCell;
        return (unconfirmedAuthHintCell == null || !this.authHintCellVisible) ? topicsBarHeight : topicsBarHeight + unconfirmedAuthHintCell.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMaxScrollYOffset() {
        if (this.hasStories) {
            return AndroidUtilities.m102dp(81);
        }
        return C3702ActionBar.getCurrentActionBarHeight();
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
        if (getMessagesController().getStoriesController().isBarEnabled() && this.hasStories && !this.dialogStoriesCell.isExpanded()) {
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
            int m102dp = (-(this.actionBar.getHeight() - rect.centerY())) - AndroidUtilities.m102dp(16);
            i = rect.centerX() - AndroidUtilities.m102dp(16);
            DrawerProfileCell.AnimatedStatusView animatedStatusView = this.animatedStatusView;
            if (animatedStatusView != null) {
                animatedStatusView.translate(rect.centerX(), rect.centerY());
            }
            i2 = m102dp;
        }
        int i3 = i2;
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(this, getContext(), true, Integer.valueOf(i), 0, getResourceProvider()) { // from class: org.telegram.ui.DialogsActivity.49
            @Override // org.telegram.p042ui.SelectAnimatedEmojiDialog
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
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, -2, -2) { // from class: org.telegram.ui.DialogsActivity.50
            @Override // org.telegram.p042ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                DialogsActivity.this.selectAnimatedEmojiDialog = null;
            }
        };
        this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(this.actionBar, AndroidUtilities.m102dp(16), i3, 48);
        selectAnimatedEmojiDialogWindowArr[0].dimBehind();
    }

    private void updateAuthHintCellVisibility(final boolean z) {
        if (this.authHintCellVisible != z) {
            this.authHintCellVisible = z;
            if (this.authHintCell == null) {
                return;
            }
            ValueAnimator valueAnimator = this.authHintCellAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.authHintCellAnimator = null;
            }
            if (z) {
                this.authHintCell.setVisibility(0);
            }
            this.authHintCell.setAlpha(1.0f);
            this.viewPages[0].listView.requestLayout();
            this.fragmentView.requestLayout();
            this.notificationsLocker.lock();
            this.authHintCellAnimating = true;
            float[] fArr = new float[2];
            fArr[0] = this.authHintCellProgress;
            fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            final ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            final int findFirstVisibleItemPosition = this.viewPages[0].layoutManager.findFirstVisibleItemPosition();
            if (findFirstVisibleItemPosition != -1) {
                r0 = (z ? 0 : -this.authHintCell.getMeasuredHeight()) + this.viewPages[0].layoutManager.findViewByPosition(findFirstVisibleItemPosition).getTop();
            }
            final int i = r0;
            AndroidUtilities.doOnLayout(this.fragmentView, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda124
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$updateAuthHintCellVisibility$67(z, findFirstVisibleItemPosition, i, ofFloat);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAuthHintCellVisibility$67(final boolean z, int i, int i2, ValueAnimator valueAnimator) {
        View findViewByPosition;
        final float measuredHeight = this.authHintCell.getMeasuredHeight();
        if (!z && (findViewByPosition = this.viewPages[0].layoutManager.findViewByPosition(i)) != null) {
            measuredHeight += i2 - findViewByPosition.getTop();
        }
        this.viewPages[0].listView.setTranslationY(this.authHintCellProgress * measuredHeight);
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DialogsActivity.this.lambda$updateAuthHintCellVisibility$66(measuredHeight, valueAnimator2);
            }
        });
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.51
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DialogsActivity.this.notificationsLocker.unlock();
                DialogsActivity.this.authHintCellAnimating = false;
                DialogsActivity.this.authHintCellProgress = z ? 1.0f : 0.0f;
                ((BaseFragment) DialogsActivity.this).fragmentView.requestLayout();
                DialogsActivity.this.viewPages[0].listView.requestLayout();
                DialogsActivity.this.viewPages[0].listView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                if (z) {
                    return;
                }
                DialogsActivity.this.authHintCell.setVisibility(8);
            }
        });
        valueAnimator.setDuration(250L);
        valueAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAuthHintCellVisibility$66(float f, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.authHintCellProgress = floatValue;
        this.viewPages[0].listView.setTranslationY(f * floatValue);
        updateContextViewPosition();
    }

    private void updateDialogsHint() {
        if (this.dialogsHintCell == null || this.fragmentView == null || getContext() == null) {
            return;
        }
        if (!getMessagesController().getUnconfirmedAuthController().auths.isEmpty() && this.folderId == 0 && this.initialDialogsType == 0) {
            this.dialogsHintCellVisible = false;
            this.dialogsHintCell.setVisibility(8);
            if (this.authHintCell == null) {
                UnconfirmedAuthHintCell unconfirmedAuthHintCell = new UnconfirmedAuthHintCell(getContext());
                this.authHintCell = unconfirmedAuthHintCell;
                ((ContentView) this.fragmentView).addView(unconfirmedAuthHintCell);
            }
            this.authHintCell.set(this, this.currentAccount);
            updateAuthHintCellVisibility(true);
        } else if (isPremiumRestoreHintVisible()) {
            this.dialogsHintCellVisible = true;
            this.dialogsHintCell.setVisibility(0);
            this.dialogsHintCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda40
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateDialogsHint$69(view);
                }
            });
            this.dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString(C3630R.string.RestorePremiumHintTitle, MediaDataController.getInstance(this.currentAccount).getPremiumHintAnnualDiscount(false)), Theme.key_windowBackgroundWhiteValueText, 0, null), LocaleController.getString(C3630R.string.RestorePremiumHintMessage));
            updateAuthHintCellVisibility(false);
        } else if (isPremiumHintVisible()) {
            this.dialogsHintCellVisible = true;
            this.dialogsHintCell.setVisibility(0);
            this.dialogsHintCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda32
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateDialogsHint$71(view);
                }
            });
            this.dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString(this.isPremiumHintUpgrade ? C3630R.string.SaveOnAnnualPremiumTitle : C3630R.string.UpgradePremiumTitle, MediaDataController.getInstance(this.currentAccount).getPremiumHintAnnualDiscount(false)), Theme.key_windowBackgroundWhiteValueText, 0, null), LocaleController.getString(this.isPremiumHintUpgrade ? C3630R.string.UpgradePremiumMessage : C3630R.string.SaveOnAnnualPremiumMessage));
            updateAuthHintCellVisibility(false);
        } else if (isCacheHintVisible()) {
            this.dialogsHintCellVisible = true;
            this.dialogsHintCell.setVisibility(0);
            this.dialogsHintCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda37
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$updateDialogsHint$73(view);
                }
            });
            this.dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatString(C3630R.string.ClearStorageHintTitle, AndroidUtilities.formatFileSize(this.cacheSize.longValue())), Theme.key_windowBackgroundWhiteValueText, 0, null), LocaleController.getString(C3630R.string.ClearStorageHintMessage));
            updateAuthHintCellVisibility(false);
        } else {
            this.dialogsHintCellVisible = false;
            this.dialogsHintCell.setVisibility(8);
            updateAuthHintCellVisibility(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$69(View view) {
        presentFragment(new PremiumPreviewFragment("dialogs_hint").setSelectAnnualByDefault());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda92
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$updateDialogsHint$68();
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$68() {
        MessagesController.getInstance(this.currentAccount).removeSuggestion(0L, "PREMIUM_RESTORE");
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$71(View view) {
        presentFragment(new PremiumPreviewFragment("dialogs_hint").setSelectAnnualByDefault());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$updateDialogsHint$70();
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$70() {
        MessagesController.getInstance(this.currentAccount).removeSuggestion(0L, this.isPremiumHintUpgrade ? "PREMIUM_UPGRADE" : "PREMIUM_ANNUAL");
        updateDialogsHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$73(View view) {
        presentFragment(new CacheControlActivity());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$updateDialogsHint$72();
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsHint$72() {
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
            channelCreateActivity.setOnFinishListener(new Utilities.Callback2() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda140
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    DialogsActivity.this.lambda$createGroupForThis$83(channelCreateActivity, alertDialog, (BaseFragment) obj, (Long) obj2);
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
            groupCreateFinalActivity.setDelegate(new C595952(alertDialog));
            presentFragment(groupCreateFinalActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$83(final ChannelCreateActivity channelCreateActivity, final AlertDialog alertDialog, final BaseFragment baseFragment, final Long l) {
        Utilities.doCallbacks(new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda146
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$75(l, channelCreateActivity, baseFragment, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda147
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$77(alertDialog, l, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda145
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$79(l, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda144
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$81(l, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda148
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DialogsActivity.this.lambda$createGroupForThis$82(alertDialog, l, channelCreateActivity, baseFragment, (Runnable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$75(Long l, final ChannelCreateActivity channelCreateActivity, final BaseFragment baseFragment, Runnable runnable) {
        showSendToBotAlert(getMessagesController().getChat(l), runnable, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda120
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$createGroupForThis$74(channelCreateActivity, baseFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$74(ChannelCreateActivity channelCreateActivity, BaseFragment baseFragment) {
        removeSelfFromStack();
        channelCreateActivity.removeSelfFromStack();
        baseFragment.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$77(AlertDialog alertDialog, Long l, final Runnable runnable) {
        alertDialog.showDelayed(150L);
        Boolean bool = this.requestPeerType.bot_participant;
        if (bool != null && bool.booleanValue()) {
            getMessagesController().addUserToChat(l.longValue(), getMessagesController().getUser(Long.valueOf(this.requestPeerBotId)), 0, null, this, false, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda132
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean lambda$createGroupForThis$76;
                    lambda$createGroupForThis$76 = DialogsActivity.lambda$createGroupForThis$76(runnable, tLRPC$TL_error);
                    return lambda$createGroupForThis$76;
                }
            });
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createGroupForThis$76(Runnable runnable, TLRPC$TL_error tLRPC$TL_error) {
        runnable.run();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$79(Long l, final Runnable runnable) {
        if (this.requestPeerType.bot_admin_rights != null) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.requestPeerBotId));
            MessagesController messagesController = getMessagesController();
            long longValue = l.longValue();
            TLRPC$RequestPeerType tLRPC$RequestPeerType = this.requestPeerType;
            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = tLRPC$RequestPeerType.bot_admin_rights;
            Boolean bool = tLRPC$RequestPeerType.bot_participant;
            messagesController.setUserAdminRole(longValue, user, tLRPC$TL_chatAdminRights, null, false, this, bool == null || !bool.booleanValue(), true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda135
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean lambda$createGroupForThis$78;
                    lambda$createGroupForThis$78 = DialogsActivity.lambda$createGroupForThis$78(runnable, tLRPC$TL_error);
                    return lambda$createGroupForThis$78;
                }
            });
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createGroupForThis$78(Runnable runnable, TLRPC$TL_error tLRPC$TL_error) {
        runnable.run();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$81(Long l, final Runnable runnable) {
        if (this.requestPeerType.user_admin_rights != null) {
            getMessagesController().setUserAdminRole(l.longValue(), getAccountInstance().getUserConfig().getCurrentUser(), ChatRightsEditActivity.rightsOR(getMessagesController().getChat(l).admin_rights, this.requestPeerType.user_admin_rights), null, true, this, false, true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda134
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean lambda$createGroupForThis$80;
                    lambda$createGroupForThis$80 = DialogsActivity.lambda$createGroupForThis$80(runnable, tLRPC$TL_error);
                    return lambda$createGroupForThis$80;
                }
            });
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createGroupForThis$80(Runnable runnable, TLRPC$TL_error tLRPC$TL_error) {
        runnable.run();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupForThis$82(AlertDialog alertDialog, Long l, ChannelCreateActivity channelCreateActivity, BaseFragment baseFragment, Runnable runnable) {
        alertDialog.dismiss();
        getMessagesController().loadChannelParticipants(l);
        DialogsActivityDelegate dialogsActivityDelegate = this.delegate;
        removeSelfFromStack();
        channelCreateActivity.removeSelfFromStack();
        baseFragment.finishFragment();
        if (dialogsActivityDelegate != null) {
            ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
            arrayList.add(MessagesStorage.TopicKey.m94of(-l.longValue(), 0));
            dialogsActivityDelegate.didSelectDialogs(this, arrayList, null, false, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$52 */
    /* loaded from: classes5.dex */
    public class C595952 implements GroupCreateFinalActivity.GroupCreateFinalActivityDelegate {
        final /* synthetic */ AlertDialog val$progress;

        @Override // org.telegram.p042ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
        public void didFailChatCreation() {
        }

        @Override // org.telegram.p042ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
        public void didStartChatCreation() {
        }

        C595952(AlertDialog alertDialog) {
            this.val$progress = alertDialog;
        }

        @Override // org.telegram.p042ui.GroupCreateFinalActivity.GroupCreateFinalActivityDelegate
        public void didFinishChatCreation(GroupCreateFinalActivity groupCreateFinalActivity, final long j) {
            final BaseFragment[] baseFragmentArr = {groupCreateFinalActivity, null};
            final AlertDialog alertDialog = this.val$progress;
            final AlertDialog alertDialog2 = this.val$progress;
            Utilities.doCallbacks(new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C595952.this.lambda$didFinishChatCreation$1(j, baseFragmentArr, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C595952.this.lambda$didFinishChatCreation$3(j, baseFragmentArr, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C595952.this.lambda$didFinishChatCreation$5(alertDialog, j, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C595952.this.lambda$didFinishChatCreation$7(j, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C595952.this.lambda$didFinishChatCreation$9(j, (Runnable) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    DialogsActivity.C595952.this.lambda$didFinishChatCreation$10(alertDialog2, j, baseFragmentArr, (Runnable) obj);
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
                channelCreateActivity.setOnFinishListener(new Utilities.Callback2() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda4
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
            DialogsActivity.this.showSendToBotAlert(DialogsActivity.this.getMessagesController().getChat(Long.valueOf(j)), runnable, new Runnable() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.C595952.this.lambda$didFinishChatCreation$2(baseFragmentArr);
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
                DialogsActivity.this.getMessagesController().addUserToChat(j, DialogsActivity.this.getMessagesController().getUser(Long.valueOf(DialogsActivity.this.requestPeerBotId)), 0, null, DialogsActivity.this, false, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                    public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                        boolean lambda$didFinishChatCreation$4;
                        lambda$didFinishChatCreation$4 = DialogsActivity.C595952.lambda$didFinishChatCreation$4(runnable, tLRPC$TL_error);
                        return lambda$didFinishChatCreation$4;
                    }
                });
                return;
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$didFinishChatCreation$4(Runnable runnable, TLRPC$TL_error tLRPC$TL_error) {
            runnable.run();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishChatCreation$7(long j, final Runnable runnable) {
            if (DialogsActivity.this.requestPeerType.bot_admin_rights != null) {
                TLRPC$User user = DialogsActivity.this.getMessagesController().getUser(Long.valueOf(DialogsActivity.this.requestPeerBotId));
                MessagesController messagesController = DialogsActivity.this.getMessagesController();
                TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = DialogsActivity.this.requestPeerType.bot_admin_rights;
                DialogsActivity dialogsActivity = DialogsActivity.this;
                messagesController.setUserAdminRole(j, user, tLRPC$TL_chatAdminRights, null, false, dialogsActivity, dialogsActivity.requestPeerType.bot_participant == null || !DialogsActivity.this.requestPeerType.bot_participant.booleanValue(), true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                    public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                        boolean lambda$didFinishChatCreation$6;
                        lambda$didFinishChatCreation$6 = DialogsActivity.C595952.lambda$didFinishChatCreation$6(runnable, tLRPC$TL_error);
                        return lambda$didFinishChatCreation$6;
                    }
                });
                return;
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$didFinishChatCreation$6(Runnable runnable, TLRPC$TL_error tLRPC$TL_error) {
            runnable.run();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishChatCreation$9(long j, final Runnable runnable) {
            if (DialogsActivity.this.requestPeerType.user_admin_rights != null) {
                DialogsActivity.this.getMessagesController().setUserAdminRole(j, DialogsActivity.this.getAccountInstance().getUserConfig().getCurrentUser(), ChatRightsEditActivity.rightsOR(DialogsActivity.this.getMessagesController().getChat(Long.valueOf(j)).admin_rights, DialogsActivity.this.requestPeerType.user_admin_rights), null, false, DialogsActivity.this, false, true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$52$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                    public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                        boolean lambda$didFinishChatCreation$8;
                        lambda$didFinishChatCreation$8 = DialogsActivity.C595952.lambda$didFinishChatCreation$8(runnable, tLRPC$TL_error);
                        return lambda$didFinishChatCreation$8;
                    }
                });
                return;
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$didFinishChatCreation$8(Runnable runnable, TLRPC$TL_error tLRPC$TL_error) {
            runnable.run();
            return true;
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
                arrayList.add(MessagesStorage.TopicKey.m94of(-j, 0));
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
            z2 = ImageLoader.getHttpFilePath(SharedConfig.pendingAppUpdate.url, "apk").exists();
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
                this.updateLayoutAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.53
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
                this.updateLayoutAnimator.playTogether(ObjectAnimator.ofFloat(this.updateLayout, View.TRANSLATION_Y, AndroidUtilities.m102dp(48)));
                this.updateLayoutAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.54
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
            this.updateLayout.setTranslationY(AndroidUtilities.m102dp(48));
            this.updateLayout.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContextViewPosition() {
        float f;
        FilterTabsView filterTabsView;
        boolean isFilterTabsAtBottom = isFilterTabsAtBottom();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float measuredHeight = (isFilterTabsAtBottom || (filterTabsView = this.filterTabsView) == null || filterTabsView.getVisibility() == 8) ? 0.0f : this.filterTabsView.getMeasuredHeight();
        ViewPagerFixed.TabsView tabsView = this.searchTabsView;
        float measuredHeight2 = (tabsView == null || tabsView.getVisibility() == 8) ? 0.0f : this.searchTabsView.getMeasuredHeight();
        float m102dp = this.hasStories ? AndroidUtilities.m102dp(81) : 0.0f;
        if (this.hasStories) {
            float f3 = this.scrollYOffset;
            float f4 = this.searchAnimationProgress;
            f = (f3 * (1.0f - f4)) + (m102dp * (1.0f - f4)) + (measuredHeight * (1.0f - f4)) + (measuredHeight2 * f4) + this.tabsYOffset;
        } else {
            float f5 = this.scrollYOffset;
            float f6 = this.searchAnimationProgress;
            f = f5 + (measuredHeight * (1.0f - f6)) + (measuredHeight2 * f6) + this.tabsYOffset;
        }
        float f7 = f + this.storiesOverscroll;
        if (this.topicsBar != null && !getTopicsController().isTopicsBarAtBottomEnabled()) {
            this.topicsBar.setTranslationY(f7);
            f7 += getTopicsBarHeight(true);
        }
        RecentChatsBar recentChatsBar = this.recentChatsBar;
        if (recentChatsBar != null) {
            recentChatsBar.setTranslationY(f7);
            f7 += getRecentChatsBarHeight();
        }
        DialogsHintCell dialogsHintCell = this.dialogsHintCell;
        if (dialogsHintCell != null && dialogsHintCell.getVisibility() == 0) {
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) {
                f7 -= this.dialogsHintCell.getMeasuredHeight() * this.rightSlidingDialogContainer.openedProgress;
            }
            this.dialogsHintCell.setTranslationY(f7);
            f7 += this.dialogsHintCell.getMeasuredHeight();
        }
        UnconfirmedAuthHintCell unconfirmedAuthHintCell = this.authHintCell;
        if (unconfirmedAuthHintCell != null && unconfirmedAuthHintCell.getVisibility() == 0) {
            RightSlidingDialogContainer rightSlidingDialogContainer2 = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer2 != null && rightSlidingDialogContainer2.hasFragment()) {
                f7 -= this.authHintCell.getMeasuredHeight() * this.rightSlidingDialogContainer.openedProgress;
            }
            float measuredHeight3 = this.authHintCell.getMeasuredHeight() * (1.0f - this.authHintCellProgress);
            this.authHintCell.setTranslationY((-measuredHeight3) + f7);
            f7 += this.authHintCell.getMeasuredHeight() - measuredHeight3;
        }
        if (this.fragmentContextView != null) {
            FragmentContextView fragmentContextView = this.fragmentLocationContextView;
            float m102dp2 = (fragmentContextView == null || fragmentContextView.getVisibility() != 0) ? 0.0f : AndroidUtilities.m102dp(36) + BitmapDescriptorFactory.HUE_RED;
            FragmentContextView fragmentContextView2 = this.fragmentContextView;
            fragmentContextView2.setTranslationY(m102dp2 + fragmentContextView2.getTopPadding() + f7);
        }
        if (this.fragmentLocationContextView != null) {
            FragmentContextView fragmentContextView3 = this.fragmentContextView;
            if (fragmentContextView3 != null && fragmentContextView3.getVisibility() == 0) {
                f2 = BitmapDescriptorFactory.HUE_RED + AndroidUtilities.m102dp(this.fragmentContextView.getStyleHeight()) + this.fragmentContextView.getTopPadding();
            }
            FragmentContextView fragmentContextView4 = this.fragmentLocationContextView;
            fragmentContextView4.setTranslationY(f2 + fragmentContextView4.getTopPadding() + f7);
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
    public void updateFiltersView(boolean r11, java.util.ArrayList<java.lang.Object> r12, java.util.ArrayList<org.telegram.p042ui.Adapters.FiltersView.DateData> r13, boolean r14, boolean r15) {
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
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p042ui.Adapters.FiltersView.MediaFilterData) r7
            boolean r7 = r7.isMedia()
            if (r7 == 0) goto L2b
            r4 = r8
            goto L51
        L2b:
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p042ui.Adapters.FiltersView.MediaFilterData) r7
            int r7 = r7.filterType
            r9 = 4
            if (r7 != r9) goto L38
            r5 = r8
            goto L51
        L38:
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p042ui.Adapters.FiltersView.MediaFilterData) r7
            int r7 = r7.filterType
            r9 = 6
            if (r7 != r9) goto L45
            r6 = r8
            goto L51
        L45:
            java.lang.Object r7 = r0.get(r2)
            org.telegram.ui.Adapters.FiltersView$MediaFilterData r7 = (org.telegram.p042ui.Adapters.FiltersView.MediaFilterData) r7
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.updateFiltersView(boolean, java.util.ArrayList, java.util.ArrayList, boolean, boolean):void");
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
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.55
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
        this.selectedDialogsCountTextView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda60
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$createActionMode$84;
                lambda$createActionMode$84 = DialogsActivity.lambda$createActionMode$84(view, motionEvent);
                return lambda$createActionMode$84;
            }
        });
        int i = C3630R.C3632drawable.msg_pin;
        this.pinItem = createActionMode.addItemWithWidth(100, i, AndroidUtilities.m102dp(54));
        this.muteItem = createActionMode.addItemWithWidth(104, C3630R.C3632drawable.msg_mute, AndroidUtilities.m102dp(54));
        int i2 = C3630R.C3632drawable.msg_archive;
        this.archive2Item = createActionMode.addItemWithWidth(107, i2, AndroidUtilities.m102dp(54));
        this.deleteItem = createActionMode.addItemWithWidth(102, C3630R.C3632drawable.msg_delete, AndroidUtilities.m102dp(54), LocaleController.getString("Delete", C3630R.string.Delete));
        ActionBarMenuItem addItemWithWidth = createActionMode.addItemWithWidth(0, C3630R.C3632drawable.ic_ab_other, AndroidUtilities.m102dp(54), LocaleController.getString("AccDescrMoreOptions", C3630R.string.AccDescrMoreOptions));
        this.archiveItem = addItemWithWidth.addSubItem(105, i2, LocaleController.getString("Archive", C3630R.string.Archive));
        this.pin2Item = addItemWithWidth.addSubItem(108, i, LocaleController.getString("DialogPin", C3630R.string.DialogPin));
        this.addToFolderItem = addItemWithWidth.addSubItem(109, C3630R.C3632drawable.msg_addfolder, LocaleController.getString("FilterAddTo", C3630R.string.FilterAddTo));
        this.removeFromFolderItem = addItemWithWidth.addSubItem(110, C3630R.C3632drawable.msg_removefolder, LocaleController.getString("FilterRemoveFrom", C3630R.string.FilterRemoveFrom));
        this.moveToFolderItem = addItemWithWidth.addSubItem(IdFabric$Menu.DIALOGS_MOVE_TO_FOLDER, C3630R.C3632drawable.fork_ic_replace_24, LocaleController.getInternalString(C3630R.string.dialogs_activity_move_to_folder));
        this.readItem = addItemWithWidth.addSubItem(101, C3630R.C3632drawable.msg_markread, LocaleController.getString("MarkAsRead", C3630R.string.MarkAsRead));
        this.clearItem = addItemWithWidth.addSubItem(103, C3630R.C3632drawable.msg_clear, LocaleController.getString("ClearHistory", C3630R.string.ClearHistory));
        this.blockItem = addItemWithWidth.addSubItem(106, C3630R.C3632drawable.msg_block, LocaleController.getString("BlockUser", C3630R.string.BlockUser));
        this.actionModeMenuGap = addItemWithWidth.addColoredGap();
        this.hiddenChatsItem = addItemWithWidth.addSubItem(IdFabric$Menu.TOGGLE_HIDDEN_CHATS, C3630R.C3632drawable.fork_filter_icon_mask, LocaleController.getInternalString(isHiddenChats() ? C3630R.string.hidden_chats_unhide_chats : C3630R.string.hidden_chats_hide_chats));
        this.selectTopicItem = addItemWithWidth.addSubItem(IdFabric$Menu.DIALOGS_SELECT_TOPIC, C3630R.C3632drawable.fork_topic_select_26, LocaleController.getInternalString(C3630R.string.topics_select));
        if (isHiddenChats()) {
            this.pin2Item.setVisibility(8);
            this.moveToFolderItem.setVisibility(8);
            this.blockItem.setVisibility(8);
            this.removeFromFolderItem.setVisibility(8);
            this.addToFolderItem.setVisibility(8);
            this.archiveItem.setVisibility(8);
            this.clearItem.setVisibility(8);
        }
        this.muteItem.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda57
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean lambda$createActionMode$85;
                lambda$createActionMode$85 = DialogsActivity.this.lambda$createActionMode$85(view);
                return lambda$createActionMode$85;
            }
        });
        this.actionModeViews.add(this.pinItem);
        this.actionModeViews.add(this.archive2Item);
        this.actionModeViews.add(this.muteItem);
        this.actionModeViews.add(this.deleteItem);
        this.actionModeViews.add(addItemWithWidth);
        if (str == null) {
            this.actionBar.setActionBarMenuOnItemClick(new C596356());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createActionMode$85(View view) {
        performSelectedDialogsAction(this.selectedDialogs, 104, true, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$56 */
    /* loaded from: classes5.dex */
    public class C596356 extends C3702ActionBar.ActionBarMenuOnItemClick {
        C596356() {
        }

        @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == IdFabric$Menu.MESSAGE_SAVE_CLOUD) {
                DialogsActivity.this.searchViewPager.onActionBarItemClick(i);
            } else if ((i == 201 || i == 200 || i == 202 || i == 203) && DialogsActivity.this.searchViewPager != null) {
                DialogsActivity.this.searchViewPager.onActionBarItemClick(i);
            } else if (i == IdFabric$Menu.DIALOGS_ARCHIVE_LOCK) {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.presentFragment(PasscodeActivity.determineOpenFragment(dialogsActivity.getLockedSection()));
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
                } else {
                    if (i == IdFabric$Menu.DIALOGS_CHAT_SETTINGS) {
                        DialogsActivity.this.presentFragment(new ThemeActivity(0));
                    } else if (i == IdFabric$Menu.DIALOGS_CLEAR_CACHE) {
                        DialogsActivity.this.showClearCacheBottomSheet();
                    } else if (i == IdFabric$Menu.DIALOGS_SCROLL_TO_START || i == IdFabric$Menu.DIALOGS_SCROLL_TO_END) {
                        DialogsActivity.this.scrollToTop(false, false, i == IdFabric$Menu.DIALOGS_SCROLL_TO_END);
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
                        DialogsActivity dialogsActivity2 = DialogsActivity.this;
                        DialogsActivity dialogsActivity3 = DialogsActivity.this;
                        dialogsActivity2.showDialog(new TopicsAlert(dialogsActivity3, dialogsActivity3.selectedDialogs, new Callbacks$Callback2() { // from class: org.telegram.ui.DialogsActivity$56$$ExternalSyntheticLambda0
                            @Override // com.iMe.fork.utils.Callbacks$Callback2
                            public final void invoke(Object obj, Object obj2) {
                                DialogsActivity.C596356.this.lambda$onItemClick$0((Boolean) obj, (TopicModel) obj2);
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
                        ((LaunchActivity) DialogsActivity.this.getParentActivity()).showPasscodeActivity(false, true, iArr[0] + (DialogsActivity.this.passcodeItem.getMeasuredWidth() / 2), iArr[1] + (DialogsActivity.this.passcodeItem.getMeasuredHeight() / 2), new Runnable() { // from class: org.telegram.ui.DialogsActivity$56$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.C596356.this.lambda$onItemClick$1();
                            }
                        }, new Runnable() { // from class: org.telegram.ui.DialogsActivity$56$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.C596356.this.lambda$onItemClick$2();
                            }
                        });
                        DialogsActivity.this.getNotificationsController().showNotifications();
                        DialogsActivity.this.updatePasscodeButton();
                    } else if (i == 2) {
                        DialogsActivity.this.presentFragment(new ProxyListActivity());
                    } else if (i == 3) {
                        DialogsActivity.this.showSearch(true, true, true);
                        ((BaseFragment) DialogsActivity.this).actionBar.openSearchField(true);
                    } else if (i == 5) {
                        DialogsActivity.this.presentFragment(new ArchiveSettingsActivity());
                    } else if (i == 6) {
                        DialogsActivity.this.showArchiveHelp();
                    } else if (i >= 10 && i < 15) {
                        if (DialogsActivity.this.getParentActivity() != null && (DialogsActivity.this.getParentActivity() instanceof LaunchActivity)) {
                            boolean isMainNoFolderDialogList = DialogsActivity.this.isMainNoFolderDialogList();
                            DialogsActivityDelegate dialogsActivityDelegate = DialogsActivity.this.delegate;
                            LaunchActivity launchActivity = (LaunchActivity) DialogsActivity.this.getParentActivity();
                            launchActivity.switchToAccount(i - 10, true);
                            if (isMainNoFolderDialogList) {
                                return;
                            }
                            DialogsActivity dialogsActivity4 = new DialogsActivity(((BaseFragment) DialogsActivity.this).arguments);
                            dialogsActivity4.setDelegate(dialogsActivityDelegate);
                            launchActivity.presentFragment(dialogsActivity4, false, true);
                        }
                    } else if (i == 109) {
                        DialogsActivity dialogsActivity5 = DialogsActivity.this;
                        FiltersListBottomSheet filtersListBottomSheet = new FiltersListBottomSheet(dialogsActivity5, dialogsActivity5.selectedDialogs);
                        filtersListBottomSheet.setDelegate(new FiltersListBottomSheet.FiltersListBottomSheetDelegate() { // from class: org.telegram.ui.DialogsActivity$56$$ExternalSyntheticLambda3
                            @Override // org.telegram.p042ui.Components.FiltersListBottomSheet.FiltersListBottomSheetDelegate
                            public final void didSelectFilter(MessagesController.DialogFilter dialogFilter) {
                                DialogsActivity.C596356.this.lambda$onItemClick$3(dialogFilter);
                            }
                        });
                        DialogsActivity.this.showDialog(filtersListBottomSheet);
                    } else if (i == 110) {
                        DialogsActivity dialogsActivity6 = DialogsActivity.this;
                        MessagesController.DialogFilter filterById = dialogsActivity6.getFilterById(dialogsActivity6.viewPages[0].selectedType);
                        if (filterById == null) {
                            return;
                        }
                        DialogsActivity dialogsActivity7 = DialogsActivity.this;
                        ArrayList<Long> dialogsCount = FiltersListBottomSheet.getDialogsCount(dialogsActivity7, filterById, dialogsActivity7.selectedDialogs, false, false);
                        if (filterById.neverShow.size() + dialogsCount.size() > 100) {
                            DialogsActivity dialogsActivity8 = DialogsActivity.this;
                            dialogsActivity8.showDialog(AlertsCreator.createSimpleAlert(dialogsActivity8.getParentActivity(), LocaleController.getString("FilterAddToAlertFullTitle", C3630R.string.FilterAddToAlertFullTitle), LocaleController.getString("FilterAddToAlertFullText", C3630R.string.FilterAddToAlertFullText)).create());
                            return;
                        }
                        if (!dialogsCount.isEmpty()) {
                            filterById.neverShow.addAll(dialogsCount);
                            for (int i3 = 0; i3 < dialogsCount.size(); i3++) {
                                Long l = dialogsCount.get(i3);
                                filterById.alwaysShow.remove(l);
                                filterById.pinnedDialogs.delete(l.longValue());
                            }
                            if (filterById.isChatlist()) {
                                filterById.neverShow.clear();
                            }
                            FilterCreateActivity.saveFilterToServer(filterById, filterById.flags, filterById.name, filterById.alwaysShow, filterById.neverShow, filterById.pinnedDialogs, false, false, true, false, false, DialogsActivity.this, null);
                        }
                        long longValue = dialogsCount.size() == 1 ? dialogsCount.get(0).longValue() : 0L;
                        UndoView undoView = DialogsActivity.this.getUndoView();
                        if (undoView != null) {
                            undoView.showWithAction(longValue, 21, Integer.valueOf(dialogsCount.size()), filterById, (Runnable) null, (Runnable) null);
                        }
                        DialogsActivity.this.hideActionMode(false);
                    } else if (i == 100 || i == 101 || i == 102 || i == 103 || i == 104 || i == 105 || i == 106 || i == 107 || i == 108 || i == IdFabric$Menu.TOGGLE_HIDDEN_CHATS) {
                        DialogsActivity dialogsActivity9 = DialogsActivity.this;
                        dialogsActivity9.performSelectedDialogsAction(dialogsActivity9.selectedDialogs, i, true, false);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(Boolean bool, TopicModel topicModel) {
            if (DialogsActivity.this.getParentActivity() == null) {
                return;
            }
            UndoView undoView = DialogsActivity.this.getUndoView();
            if (undoView != null) {
                undoView.showWithAction(DialogsActivity.this.selectedDialogs.size() == 1 ? ((Long) DialogsActivity.this.selectedDialogs.get(0)).longValue() : 0L, bool.booleanValue() ? 20 : 21, Integer.valueOf(DialogsActivity.this.selectedDialogs.size()), topicModel, (Runnable) null, (Runnable) null);
            }
            DialogsActivity.this.hideActionMode(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1() {
            DialogsActivity.this.passcodeItem.setAlpha(1.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2() {
            DialogsActivity.this.passcodeItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$3(MessagesController.DialogFilter dialogFilter) {
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
                    dialogsActivity2.showDialog(new LimitReachedBottomSheet(dialogsActivity3, dialogsActivity3.getParentActivity(), 3, ((BaseFragment) DialogsActivity.this).currentAccount, null));
                } else {
                    DialogsActivity.this.presentFragment(new FilterCreateActivity(null, dialogsCount));
                }
                DialogsActivity.this.hideActionMode(true);
                return;
            }
            DialogsActivity dialogsActivity4 = DialogsActivity.this;
            DialogsActivity dialogsActivity5 = DialogsActivity.this;
            dialogsActivity4.showDialog(new LimitReachedBottomSheet(dialogsActivity5, ((BaseFragment) dialogsActivity5).fragmentView.getContext(), 4, ((BaseFragment) DialogsActivity.this).currentAccount, null));
        }
    }

    public void closeSearching() {
        C3702ActionBar c3702ActionBar = this.actionBar;
        if (c3702ActionBar == null || !c3702ActionBar.isSearchFieldVisible()) {
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
            } else if (dialogFilters.get(i2).f1537id == i) {
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
        Object[] objArr = (isAlbumsDialogsType(i3) || i3 == DIALOGS_TYPE_DRAFTS) ? 1 : null;
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
                getMessagesController().selectDialogFilter(filterById, this.viewPages[z ? 1 : 0].dialogsType == 8 ? 1 : 0, getMessagesController().getSelectedDialogFilter(isForward(), isArchive()));
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
        linearLayoutManager.scrollToPositionWithOffset(i, (int) this.scrollYOffset);
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
    /* JADX WARN: Code restructure failed: missing block: B:120:0x029c, code lost:
        if (((getFiltersController().isFoldersHidden() ? 0 : (r2.size() - r6) - getFiltersController().getHiddenFiltersCount()) + r3.size()) == r6) goto L172;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateFilterTabs(boolean r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 1316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.updateFilterTabs(boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFilterTabs$86(int i) {
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

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void finishFragment() {
        super.finishFragment();
        ItemOptions itemOptions = this.filterOptions;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    public void onResume() {
        int i;
        View view;
        super.onResume();
        updateAlbumsMenu();
        DialogStoriesCell dialogStoriesCell = this.dialogStoriesCell;
        if (dialogStoriesCell != null) {
            dialogStoriesCell.onResume();
        }
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
                boolean z = parentActivity.checkSelfPermission("android.permission.READ_CONTACTS") != 0;
                final boolean z2 = (i <= 28 || BuildVars.NO_SCOPED_STORAGE) && parentActivity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0;
                boolean z3 = i >= 33 && parentActivity.checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0;
                final boolean z4 = z3;
                final boolean z5 = z;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda125
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsActivity.this.lambda$onResume$89(z4, z5, z2, parentActivity);
                    }
                }, (this.afterSignup && (z || z3)) ? 4000L : 0L);
            }
        } else if (!this.onlySelect && XiaomiUtilities.isMIUI() && Build.VERSION.SDK_INT >= 19 && !XiaomiUtilities.isCustomPermissionGranted(XiaomiUtilities.OP_SHOW_WHEN_LOCKED)) {
            if (getParentActivity() == null || MessagesController.getGlobalNotificationsSettings().getBoolean("askedAboutMiuiLockscreen", false)) {
                return;
            }
            showDialog(new AlertDialog.Builder(getParentActivity()).setTopAnimation(C3630R.raw.permission_request_apk, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(LocaleController.getString("PermissionXiaomiLockscreen", C3630R.string.PermissionXiaomiLockscreen)).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3630R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda17
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    DialogsActivity.this.lambda$onResume$90(dialogInterface, i3);
                }
            }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3630R.string.ContactsPermissionAlertNotNow), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda24
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    DialogsActivity.lambda$onResume$91(dialogInterface, i3);
                }
            }).create());
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
                    this.viewPages[i3].layoutManager.scrollToPositionWithOffset(1, (int) this.scrollYOffset);
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
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.DialogsActivity.57
            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i4) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i4);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ int getBottomOffset(int i4) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i4);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
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

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public void onShow(Bulletin bulletin) {
                if (DialogsActivity.this.undoView[0] == null || DialogsActivity.this.undoView[0].getVisibility() != 0) {
                    return;
                }
                DialogsActivity.this.undoView[0].hide(true, 2);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public int getTopOffset(int i4) {
                int i5 = 0;
                int topicsBarHeight = DialogsActivity.this.getTopicsBarHeight(true) + DialogsActivity.this.getRecentChatsBarHeight() + (((BaseFragment) DialogsActivity.this).actionBar != null ? ((BaseFragment) DialogsActivity.this).actionBar.getMeasuredHeight() : 0) + ((DialogsActivity.this.filterTabsView == null || DialogsActivity.this.filterTabsView.getVisibility() != 0 || DialogsActivity.this.isFilterTabsAtBottom()) ? 0 : DialogsActivity.this.filterTabsView.getMeasuredHeight()) + ((DialogsActivity.this.fragmentContextView == null || !DialogsActivity.this.fragmentContextView.isCallTypeVisible()) ? 0 : AndroidUtilities.m102dp(DialogsActivity.this.fragmentContextView.getStyleHeight())) + ((DialogsActivity.this.dialogsHintCell == null || DialogsActivity.this.dialogsHintCell.getVisibility() != 0) ? 0 : DialogsActivity.this.dialogsHintCell.getHeight()) + ((DialogsActivity.this.authHintCell == null || !DialogsActivity.this.authHintCellVisible) ? 0 : DialogsActivity.this.authHintCell.getHeight());
                DialogsActivity dialogsActivity = DialogsActivity.this;
                DialogStoriesCell dialogStoriesCell2 = dialogsActivity.dialogStoriesCell;
                if (dialogStoriesCell2 != null && dialogsActivity.dialogStoriesCellVisible) {
                    i5 = (int) ((1.0f - dialogStoriesCell2.getCollapsedProgress()) * AndroidUtilities.m102dp(81));
                }
                return topicsBarHeight + i5;
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
        updateStoriesVisibility(false);
        checkSuggestClearDatabase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$89(boolean z, boolean z2, boolean z3, final Activity activity) {
        if (getParentActivity() == null) {
            return;
        }
        this.afterSignup = false;
        if (z || z2 || z3) {
            this.askingForPermissions = true;
            if (z && NotificationPermissionDialog.shouldAsk(activity)) {
                Dialog notificationPermissionDialog = new NotificationPermissionDialog(activity, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda141
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        DialogsActivity.lambda$onResume$87(activity, (Boolean) obj);
                    }
                });
                if (showDialog(notificationPermissionDialog) == null) {
                    try {
                        notificationPermissionDialog.show();
                    } catch (Throwable th) {
                        FileLog.m97e(th);
                    }
                }
            } else if (z2 && this.askAboutContacts && getUserConfig().syncContacts && activity.shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS")) {
                AlertDialog create = AlertsCreator.createContactsPermissionDialog(activity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda137
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i) {
                        DialogsActivity.this.lambda$onResume$88(i);
                    }
                }).create();
                this.permissionDialog = create;
                showDialog(create);
            } else if (z3 && activity.shouldShowRequestPermissionRationale("android.permission.WRITE_EXTERNAL_STORAGE")) {
                if (activity instanceof BasePermissionsActivity) {
                    AlertDialog createPermissionErrorAlert = ((BasePermissionsActivity) activity).createPermissionErrorAlert(C3630R.raw.permission_request_folder, LocaleController.getString(C3630R.string.PermissionStorageWithHint));
                    this.permissionDialog = createPermissionErrorAlert;
                    showDialog(createPermissionErrorAlert);
                }
            } else {
                askForPermissons(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onResume$87(Activity activity, Boolean bool) {
        if (bool.booleanValue()) {
            activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$88(int i) {
        this.askAboutContacts = i != 0;
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askAboutContacts", this.askAboutContacts).apply();
        askForPermissons(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$90(DialogInterface dialogInterface, int i) {
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
                FileLog.m97e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onResume$91(DialogInterface dialogInterface, int i) {
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askedAboutMiuiLockscreen", true).commit();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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
        HintView2 hintView2 = this.storyHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        Bulletin.hideVisible();
        return presentFragment;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        int i = 0;
        expandMultiFab(false);
        Bulletin bulletin = this.storiesBulletin;
        if (bulletin != null) {
            bulletin.hide();
            this.storiesBulletin = null;
        }
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

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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
            } else if (closeStoryViewer()) {
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
                C3702ActionBar c3702ActionBar = this.actionBar;
                if (c3702ActionBar != null && c3702ActionBar.isActionModeShowed()) {
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
                    if (this.filterTabsView.getCurrentPosition() == 0 || isForward()) {
                        return super.onBackPressed();
                    }
                    this.filterTabsView.selectFirstTab();
                    return false;
                }
                ChatActivityEnterView chatActivityEnterView = this.commentView;
                if (chatActivityEnterView != null && chatActivityEnterView.isPopupShowing()) {
                    this.commentView.hidePopup(true);
                    return false;
                } else if (this.dialogStoriesCell.isFullExpanded() && this.dialogStoriesCell.scrollToFirst()) {
                    return false;
                } else {
                    return super.onBackPressed();
                }
            }
        }
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        FilterTabsView filterTabsView;
        if (this.closeSearchFieldOnHide) {
            C3702ActionBar c3702ActionBar = this.actionBar;
            if (c3702ActionBar != null) {
                c3702ActionBar.closeSearchField();
            }
            TLObject tLObject = this.searchObject;
            if (tLObject != null) {
                this.searchViewPager.dialogsSearchAdapter.putRecentSearch(this.searchDialogId, tLObject);
                this.searchObject = null;
            }
            this.closeSearchFieldOnHide = false;
        }
        if (!this.hasStories && (filterTabsView = this.filterTabsView) != null && filterTabsView.getVisibility() == 0 && this.filterTabsViewIsVisible) {
            int i = (int) (-this.scrollYOffset);
            int currentActionBarHeight = C3702ActionBar.getCurrentActionBarHeight();
            if (i != 0 && i != currentActionBarHeight) {
                if (i < currentActionBarHeight / 2) {
                    setScrollY(BitmapDescriptorFactory.HUE_RED);
                } else if (this.viewPages[0].listView.canScrollVertically(1)) {
                    setScrollY(-currentActionBarHeight);
                }
            }
        }
        UndoView[] undoViewArr = this.undoView;
        if (undoViewArr[0] != null) {
            undoViewArr[0].hide(true, 0);
        }
        super.onBecomeFullyHidden();
        this.canShowStoryHint = true;
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        HintView2 hintView2;
        super.onBecomeFullyVisible();
        if (isArchive() && !isAlbums()) {
            SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
            boolean z = globalMainSettings.getBoolean("archivehint", true);
            boolean isEmpty = getDialogsArray(this.currentAccount, this.initialDialogsType, this.folderId, false).isEmpty();
            if (z && isEmpty) {
                MessagesController.getGlobalMainSettings().edit().putBoolean("archivehint", false).commit();
                z = false;
            }
            if (z) {
                globalMainSettings.edit().putBoolean("archivehint", false).commit();
                showArchiveHelp();
            }
            ActionBarMenuItem actionBarMenuItem = this.optionsItem;
            if (actionBarMenuItem != null) {
                if (isEmpty) {
                    actionBarMenuItem.hideSubItem(6);
                } else {
                    actionBarMenuItem.showSubItem(6);
                }
            }
        }
        updateFloatingButtonOffset();
        if (!this.canShowStoryHint || this.storyHintShown || (hintView2 = this.storyHint) == null || !this.storiesEnabled) {
            return;
        }
        this.storyHintShown = true;
        this.canShowStoryHint = false;
        hintView2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showArchiveHelp() {
        getContactsController().loadGlobalPrivacySetting();
        final BottomSheet[] bottomSheetArr = {new BottomSheet.Builder(getContext(), false, getResourceProvider()).setCustomView(new ArchiveHelp(getContext(), this.currentAccount, getResourceProvider(), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda127
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showArchiveHelp$93(bottomSheetArr);
            }
        }, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda129
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.lambda$showArchiveHelp$94(bottomSheetArr);
            }
        }), 49).show()};
        bottomSheetArr[0].fixNavigationBar(Theme.getColor(Theme.key_dialogBackground));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showArchiveHelp$93(BottomSheet[] bottomSheetArr) {
        if (bottomSheetArr[0] != null) {
            bottomSheetArr[0].dismiss();
            bottomSheetArr[0] = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showArchiveHelp$92();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showArchiveHelp$92() {
        presentFragment(new ArchiveSettingsActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showArchiveHelp$94(BottomSheet[] bottomSheetArr) {
        if (bottomSheetArr[0] != null) {
            bottomSheetArr[0].dismiss();
            bottomSheetArr[0] = null;
        }
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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
        updateStoriesVisibility(true);
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
                groupCreateSpan.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda34
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        DialogsActivity.this.lambda$addOrRemoveSelectedDialog$95(view2);
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
    public /* synthetic */ void lambda$addOrRemoveSelectedDialog$95(View view) {
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
        DialogStoriesCell dialogStoriesCell;
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
            boolean z5 = !onlyDialogsAdapter || this.hasStories;
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
                addSearchFilter(new FiltersView.MediaFilterData(C3630R.C3632drawable.chats_archive, C3630R.string.ArchiveSearchFilter, (TLRPC$MessagesFilter) null, 7));
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
        if (!z && (dialogStoriesCell = this.dialogStoriesCell) != null && this.dialogStoriesCellVisible) {
            dialogStoriesCell.setVisibility(0);
        }
        boolean z6 = SharedConfig.getDevicePerformanceClass() == 0 || !LiteMode.isEnabled(LiteMode.FLAG_CHAT_SCALE);
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z4) {
            if (z) {
                this.searchViewPager.setVisibility(0);
                this.searchViewPager.reset();
                updateFiltersView(true, null, null, false, false);
                ViewPagerFixed.TabsView tabsView2 = this.searchTabsView;
                if (tabsView2 != null) {
                    tabsView2.hide(false, false);
                    this.searchTabsView.setVisibility(0);
                }
            } else {
                this.viewPages[0].listView.setVisibility(0);
                this.viewPages[0].setVisibility(0);
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
            if (this.hasStories) {
                float m102dp = AndroidUtilities.m102dp(81) + this.scrollYOffset;
                SearchViewPager searchViewPager3 = this.searchViewPager;
                Property<View, Float> property6 = this.SEARCH_TRANSLATION_Y;
                float[] fArr6 = new float[1];
                if (z) {
                    m102dp = 0.0f;
                }
                fArr6[0] = m102dp;
                arrayList.add(ObjectAnimator.ofFloat(searchViewPager3, (Property<SearchViewPager, Float>) property6, fArr6));
            }
            if (!z6) {
                SearchViewPager searchViewPager4 = this.searchViewPager;
                Property property7 = View.SCALE_X;
                float[] fArr7 = new float[1];
                fArr7[0] = z ? 1.0f : 1.05f;
                arrayList.add(ObjectAnimator.ofFloat(searchViewPager4, property7, fArr7));
                SearchViewPager searchViewPager5 = this.searchViewPager;
                Property property8 = View.SCALE_Y;
                float[] fArr8 = new float[1];
                fArr8[0] = z ? 1.0f : 1.05f;
                arrayList.add(ObjectAnimator.ofFloat(searchViewPager5, property8, fArr8));
            } else {
                this.searchViewPager.setScaleX(1.0f);
                this.searchViewPager.setScaleY(1.0f);
            }
            ActionBarMenuItem actionBarMenuItem = this.passcodeItem;
            if (actionBarMenuItem != null) {
                RLottieImageView iconView = actionBarMenuItem.getIconView();
                Property property9 = View.ALPHA;
                float[] fArr9 = new float[1];
                fArr9[0] = z ? 0.0f : 1.0f;
                arrayList.add(ObjectAnimator.ofFloat(iconView, property9, fArr9));
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
                Property property10 = View.ALPHA;
                float[] fArr10 = new float[1];
                fArr10[0] = z ? 0.0f : 1.0f;
                ObjectAnimator duration = ObjectAnimator.ofFloat(topicsBar3, property10, fArr10).setDuration(100L);
                this.topicsBarAlphaAnimator = duration;
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.58
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator4) {
                        DialogsActivity.this.topicsBarAlphaAnimator = null;
                    }
                });
            }
            RecentChatsBar recentChatsBar2 = this.recentChatsBar;
            if (recentChatsBar2 != null && recentChatsBar2.getVisibility() == 0) {
                RecentChatsBar recentChatsBar3 = this.recentChatsBar;
                Property property11 = View.ALPHA;
                float[] fArr11 = new float[1];
                fArr11[0] = z ? 0.0f : 1.0f;
                ObjectAnimator duration2 = ObjectAnimator.ofFloat(recentChatsBar3, property11, fArr11).setDuration(100L);
                this.recentChatsAlphaAnimator = duration2;
                duration2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.59
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
                    Property property12 = View.TRANSLATION_Y;
                    float[] fArr12 = new float[1];
                    fArr12[0] = z ? -AndroidUtilities.m102dp(44) : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(scrollView, property12, fArr12));
                    FilterTabsView filterTabsView3 = this.filterTabsView;
                    Property property13 = View.TRANSLATION_Y;
                    float[] fArr13 = new float[1];
                    fArr13[0] = z ? -AndroidUtilities.m102dp(44) : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(filterTabsView3, property13, fArr13));
                    ActionBarMenuItem actionBarMenuItem3 = this.forwardSwitchArchiveItem;
                    Property property14 = View.ALPHA;
                    float[] fArr14 = new float[1];
                    fArr14[0] = z ? 0.0f : 1.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem3, property14, fArr14));
                    ActionBarMenuItem actionBarMenuItem4 = this.switchItem;
                    Property property15 = View.ALPHA;
                    float[] fArr15 = new float[1];
                    fArr15[0] = z ? 0.0f : 1.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem4, property15, fArr15));
                    this.forwardSwitchArchiveItem.setEnabled(!z);
                    this.switchItem.setEnabled(!z);
                } else if (isFilterTabsAtBottom()) {
                    FilterTabsView filterTabsView4 = this.filterTabsView;
                    Property property16 = View.TRANSLATION_Y;
                    float[] fArr16 = new float[1];
                    fArr16[0] = z ? AndroidUtilities.m102dp(44) : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(filterTabsView4, property16, fArr16));
                }
                RecyclerListView tabsContainer = this.filterTabsView.getTabsContainer();
                Property property17 = View.ALPHA;
                float[] fArr17 = new float[1];
                fArr17[0] = z ? 0.0f : 1.0f;
                ObjectAnimator duration3 = ObjectAnimator.ofFloat(tabsContainer, property17, fArr17).setDuration(100L);
                this.tabsAlphaAnimator = duration3;
                duration3.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.60
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator4) {
                        DialogsActivity.this.tabsAlphaAnimator = null;
                    }
                });
            }
            float[] fArr18 = new float[2];
            fArr18[0] = this.searchAnimationProgress;
            if (z) {
                f = 1.0f;
            }
            fArr18[1] = f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr18);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DialogsActivity.this.lambda$showSearch$96(valueAnimator);
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
            this.searchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.61
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator7) {
                    DialogsActivity.this.notificationsLocker.unlock();
                    if (DialogsActivity.this.searchAnimator != animator7) {
                        return;
                    }
                    DialogsActivity.this.setDialogsListFrozen(false);
                    if (z) {
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
                        DialogStoriesCell dialogStoriesCell2 = DialogsActivity.this.dialogStoriesCell;
                        if (dialogStoriesCell2 != null) {
                            dialogStoriesCell2.setVisibility(8);
                        }
                        DialogsActivity.this.searchWasFullyShowed = true;
                        AndroidUtilities.requestAdjustResize(DialogsActivity.this.getParentActivity(), ((BaseFragment) DialogsActivity.this).classGuid);
                        DialogsActivity.this.searchItem.setVisibility(8);
                        RightSlidingDialogContainer rightSlidingDialogContainer4 = DialogsActivity.this.rightSlidingDialogContainer;
                        if (rightSlidingDialogContainer4 != null) {
                            rightSlidingDialogContainer4.setVisibility(8);
                        }
                    } else {
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
                        RightSlidingDialogContainer rightSlidingDialogContainer5 = DialogsActivity.this.rightSlidingDialogContainer;
                        if (rightSlidingDialogContainer5 != null) {
                            rightSlidingDialogContainer5.setVisibility(0);
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
                    this.filterTabsView.setTranslationY(z ? AndroidUtilities.m102dp(44) : 0.0f);
                } else {
                    this.filterTabsView.setTranslationY(z ? -AndroidUtilities.m102dp(44) : 0.0f);
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
            DialogStoriesCell dialogStoriesCell2 = this.dialogStoriesCell;
            if (dialogStoriesCell2 != null) {
                if (this.dialogStoriesCellVisible && !z) {
                    dialogStoriesCell2.setVisibility(0);
                } else {
                    dialogStoriesCell2.setVisibility(8);
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
            SearchViewPager searchViewPager6 = this.searchViewPager;
            searchViewPager6.setPosition(searchViewPager6.getPositionForType(i5));
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
    public /* synthetic */ void lambda$showSearch$96(ValueAnimator valueAnimator) {
        setSearchAnimationProgress(((Float) valueAnimator.getAnimatedValue()).floatValue(), false);
    }

    public boolean onlyDialogsAdapter() {
        return this.onlySelect || !this.searchViewPager.dialogsSearchAdapter.hasRecentSearch() || (getMessagesController().getTotalDialogsCount() <= 10 && !this.hasStories);
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
                } else {
                    this.filtersTabAnimator = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
                }
                this.filterTabsMoveFrom = getActionBarMoveFrom(true);
                final float f = this.scrollYOffset;
                this.filtersTabAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.62
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ViewPage[] viewPageArr;
                        DialogsActivity.this.filtersTabAnimator = null;
                        DialogsActivity.this.scrollAdditionalOffset = BitmapDescriptorFactory.HUE_RED;
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
                this.filtersTabAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda10
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        DialogsActivity.this.lambda$updateFilterTabsVisibility$97(z3, f, valueAnimator3);
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
            float translationY = this.actionBar.getTranslationY();
            if (!z3) {
                setScrollY(this.filterTabsProgress * translationY);
            }
            if (z3) {
                this.scrollAdditionalOffset = BitmapDescriptorFactory.HUE_RED;
            } else {
                int m102dp = AndroidUtilities.m102dp(44);
                if (translationY < (-m102dp)) {
                    translationY = m102dp;
                }
                this.scrollAdditionalOffset = translationY;
            }
            this.filterTabsView.setVisibility(z3 ? 0 : 8);
            View view2 = this.fragmentView;
            if (view2 != null) {
                view2.requestLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFilterTabsVisibility$97(boolean z, float f, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.filterTabsProgress = floatValue;
        if (!z && !this.hasStories) {
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
            C3702ActionBar c3702ActionBar = this.actionBar;
            int i = Theme.key_actionBarActionModeDefaultIcon;
            c3702ActionBar.setItemsColor(ColorUtils.blendARGB(color, Theme.getColor(i), this.searchAnimationProgress), false);
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
            if (this.dialogsHintCellVisible) {
                if (this.dialogsHintCell.getAlpha() == BitmapDescriptorFactory.HUE_RED) {
                    this.dialogsHintCell.setVisibility(4);
                } else {
                    this.dialogsHintCell.setVisibility(0);
                }
            }
        }
        UnconfirmedAuthHintCell unconfirmedAuthHintCell = this.authHintCell;
        if (unconfirmedAuthHintCell != null) {
            unconfirmedAuthHintCell.setAlpha(1.0f - f);
            if (this.authHintCellVisible) {
                if (this.authHintCell.getAlpha() == BitmapDescriptorFactory.HUE_RED) {
                    this.authHintCell.setVisibility(4);
                } else {
                    this.authHintCell.setVisibility(0);
                }
            }
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
        checkListLoad(viewPage, viewPage.layoutManager.findFirstVisibleItemPosition(), viewPage.layoutManager.findLastVisibleItemPosition());
    }

    private void checkListLoad(ViewPage viewPage, int i, int i2) {
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
        int abs = Math.abs(i2 - i) + 1;
        if (i2 != -1) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = viewPage.listView.findViewHolderForAdapterPosition(i2);
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
                if (dialogFilter != null && (dialogFilter.flags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED) == 0 && ((abs > 0 && i2 >= getDialogsArray(this.currentAccount, viewPage.dialogsType, 1, this.dialogsListFrozen).size() - 10) || !getMessagesController().isDialogsEndReached(1))) {
                    boolean z6 = !getMessagesController().isDialogsEndReached(1);
                    if (z6 || !getMessagesController().isServerDialogsEndReached(1)) {
                        z = true;
                        z2 = z6;
                    } else {
                        z2 = z6;
                        z = false;
                    }
                    if ((abs > 0 || i2 < getDialogsArray(this.currentAccount, viewPage.dialogsType, this.folderId, this.dialogsListFrozen).size() - 10) && (!(viewPage.dialogsType == 7 || viewPage.dialogsType == 8 || isAlbumsDialogsType(viewPage.dialogsType)) || getMessagesController().isDialogsEndReached(this.folderId))) {
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
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda126
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.this.lambda$checkListLoad$98(z3, z4, z, z2);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda126
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$checkListLoad$98(z3, z4, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkListLoad$98(boolean z, boolean z2, boolean z3, boolean z4) {
        if (z) {
            getMessagesController().loadDialogs(this.folderId, -1, 100, z2);
        }
        if (z3) {
            getMessagesController().loadDialogs(1, -1, 100, z4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0264 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0265  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onItemClick(android.view.View r17, int r18, androidx.recyclerview.widget.RecyclerView.Adapter r19) {
        /*
            Method dump skipped, instructions count: 1355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.onItemClick(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Adapter):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$99(Long l) {
        presentFragment(ProfileActivity.newInstanceForDialogId(l.longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$100(String str) {
        getUndoView().showError(str);
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
        boolean z;
        if (getParentActivity() != null && !(view instanceof DialogsHintCell) && !this.inPreviewMode) {
            if (!this.actionBar.isActionModeShowed() && !AndroidUtilities.isTablet() && !this.onlySelect && (((((z = view instanceof ProfileSearchCell)) && !getMessagesController().isForum(((ProfileSearchCell) view).getDialogId())) || ((view instanceof DialogCell) && !getMessagesController().isForum(((DialogCell) view).getDialogId()))) && !this.rightSlidingDialogContainer.hasFragment())) {
                if (z) {
                    ProfileSearchCell profileSearchCell = (ProfileSearchCell) view;
                    if (profileSearchCell.isPointInsideAvatar(f, f2)) {
                        return showChatPreview(null, profileSearchCell);
                    }
                }
                DialogCell dialogCell = !(view instanceof DialogCell) ? null : (DialogCell) view;
                if (dialogCell != null && dialogCell.isPointInsideAvatar(f, f2)) {
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
                            makeEncryptedDialogId2 = -tLRPC$Chat.f1600id;
                        } else if (item instanceof TLRPC$User) {
                            makeEncryptedDialogId2 = ((TLRPC$User) item).f1762id;
                        } else {
                            if (item instanceof TLRPC$EncryptedChat) {
                                makeEncryptedDialogId2 = DialogObject.makeEncryptedDialogId(((TLRPC$EncryptedChat) item).f1612id);
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
                        builder.setTitle(LocaleController.getString("ClearSearchSingleAlertTitle", C3630R.string.ClearSearchSingleAlertTitle));
                        if (item instanceof TLRPC$Chat) {
                            TLRPC$Chat tLRPC$Chat2 = (TLRPC$Chat) item;
                            builder.setMessage(LocaleController.formatString("ClearSearchSingleChatAlertText", C3630R.string.ClearSearchSingleChatAlertText, tLRPC$Chat2.title));
                            makeEncryptedDialogId = -tLRPC$Chat2.f1600id;
                        } else if (item instanceof TLRPC$User) {
                            TLRPC$User tLRPC$User = (TLRPC$User) item;
                            if (tLRPC$User.f1762id == getUserConfig().clientUserId) {
                                builder.setMessage(LocaleController.formatString("ClearSearchSingleChatAlertText", C3630R.string.ClearSearchSingleChatAlertText, LocaleController.getString("SavedMessages", C3630R.string.SavedMessages)));
                            } else {
                                builder.setMessage(LocaleController.formatString("ClearSearchSingleUserAlertText", C3630R.string.ClearSearchSingleUserAlertText, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name)));
                            }
                            makeEncryptedDialogId = tLRPC$User.f1762id;
                        } else if (!(item instanceof TLRPC$EncryptedChat)) {
                            return false;
                        } else {
                            TLRPC$User user = getMessagesController().getUser(Long.valueOf(((TLRPC$EncryptedChat) item).user_id));
                            builder.setMessage(LocaleController.formatString("ClearSearchSingleUserAlertText", C3630R.string.ClearSearchSingleUserAlertText, ContactsController.formatName(user.first_name, user.last_name)));
                            makeEncryptedDialogId = DialogObject.makeEncryptedDialogId(tLRPC$EncryptedChat.f1612id);
                        }
                        builder.setPositiveButton(LocaleController.getString("ClearSearchRemove", C3630R.string.ClearSearchRemove), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda20
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                DialogsActivity.this.lambda$onItemLongClick$101(makeEncryptedDialogId, dialogInterface, i3);
                            }
                        });
                        builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
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
                if (this.onlySelect) {
                    if (getMessagesController().isForum(tLRPC$Dialog.f1606id)) {
                        return false;
                    }
                    int i3 = this.initialDialogsType;
                    if ((i3 == 3 || i3 == 10) && validateSlowModeDialog(tLRPC$Dialog.f1606id)) {
                        addOrRemoveSelectedDialog(tLRPC$Dialog.f1606id, view);
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
                    showOrUpdateActionMode(tLRPC$Dialog.f1606id, view);
                    if (this.viewPages != null && (adapter instanceof DialogsAdapter) && (view instanceof DialogCell) && !isDialogPinned(tLRPC$Dialog) && (currentViewPage = getCurrentViewPage()) != null && currentViewPage.listView != null) {
                        final boolean z2 = !this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog.f1606id));
                        final ArrayList arrayList = new ArrayList(this.selectedDialogs);
                        currentViewPage.listView.hideSelector(true);
                        currentViewPage.listView.startMultiselect(fixPosition, false, new RecyclerListView.onMultiSelectionChanged() { // from class: org.telegram.ui.DialogsActivity.63
                            @Override // org.telegram.p042ui.Components.RecyclerListView.onMultiSelectionChanged
                            public int checkPosition(int i4, boolean z3) {
                                return i4;
                            }

                            @Override // org.telegram.p042ui.Components.RecyclerListView.onMultiSelectionChanged
                            public boolean limitReached() {
                                return false;
                            }

                            @Override // org.telegram.p042ui.Components.RecyclerListView.onMultiSelectionChanged
                            public void onSelectionChanged(int i4, boolean z3, float f3, float f4) {
                                TLRPC$Dialog tLRPC$Dialog2;
                                DialogsActivity dialogsActivity = DialogsActivity.this;
                                ArrayList<TLRPC$Dialog> dialogsArray2 = dialogsActivity.getDialogsArray(((BaseFragment) dialogsActivity).currentAccount, i2, DialogsActivity.this.folderId, DialogsActivity.this.dialogsListFrozen);
                                int fixPosition2 = ((DialogsAdapter) adapter).fixPosition(i4);
                                if (z2) {
                                    z3 = !z3;
                                }
                                if (fixPosition2 < 0 || fixPosition2 >= dialogsArray2.size() || (tLRPC$Dialog2 = dialogsArray2.get(fixPosition2)) == null || (tLRPC$Dialog2 instanceof TLRPC$TL_dialogFolder)) {
                                    return;
                                }
                                if (z3 && DialogsActivity.this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog2.f1606id))) {
                                    return;
                                }
                                if (z3 || DialogsActivity.this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog2.f1606id))) {
                                    DialogsActivity.this.showOrUpdateActionMode(tLRPC$Dialog2.f1606id, null);
                                    DialogsActivity dialogsActivity2 = DialogsActivity.this;
                                    dialogsActivity2.findAndUpdateCheckBox(tLRPC$Dialog2.f1606id, dialogsActivity2.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog2.f1606id)));
                                }
                            }

                            @Override // org.telegram.p042ui.Components.RecyclerListView.onMultiSelectionChanged
                            public boolean canSelect(int i4) {
                                TLRPC$Dialog tLRPC$Dialog2;
                                DialogsActivity dialogsActivity = DialogsActivity.this;
                                ArrayList<TLRPC$Dialog> dialogsArray2 = dialogsActivity.getDialogsArray(((BaseFragment) dialogsActivity).currentAccount, i2, DialogsActivity.this.folderId, DialogsActivity.this.dialogsListFrozen);
                                int fixPosition2 = ((DialogsAdapter) adapter).fixPosition(i4);
                                if (fixPosition2 < 0 || fixPosition2 >= dialogsArray2.size() || (tLRPC$Dialog2 = dialogsArray2.get(fixPosition2)) == null) {
                                    return false;
                                }
                                if (z2 || arrayList.contains(Long.valueOf(tLRPC$Dialog2.f1606id))) {
                                    return z2 && arrayList.contains(Long.valueOf(tLRPC$Dialog2.f1606id));
                                }
                                return true;
                            }

                            @Override // org.telegram.p042ui.Components.RecyclerListView.onMultiSelectionChanged
                            public void getPaddings(int[] iArr) {
                                iArr[1] = 0;
                                iArr[0] = 0;
                            }

                            @Override // org.telegram.p042ui.Components.RecyclerListView.onMultiSelectionChanged
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
    public /* synthetic */ void lambda$onItemLongClick$101(long j, DialogInterface dialogInterface, int i) {
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
        iArr[0] = z ? C3630R.C3632drawable.msg_markread : 0;
        iArr[1] = (!isArchive() ? SharedConfig.archiveHidden : getHiddenChatsController().isHiddenChatsHidden()) ? C3630R.C3632drawable.chats_unpin : C3630R.C3632drawable.chats_pin;
        iArr[2] = (SharedConfig.isShowDrawerHeaderArchiveEnabled || isArchive()) ? 0 : C3630R.C3632drawable.attach_arrow_left;
        CharSequence[] charSequenceArr = new CharSequence[3];
        String str2 = null;
        charSequenceArr[0] = z ? LocaleController.getString("MarkAllAsRead", C3630R.string.MarkAllAsRead) : null;
        if (!isArchive() ? SharedConfig.archiveHidden : getHiddenChatsController().isHiddenChatsHidden()) {
            i = C3630R.string.HideAboveTheList;
            str = "HideAboveTheList";
        } else {
            i = C3630R.string.PinInTheList;
            str = "PinInTheList";
        }
        charSequenceArr[1] = LocaleController.getString(str, i);
        if (!SharedConfig.isShowDrawerHeaderArchiveEnabled && !isArchive()) {
            str2 = LocaleController.getInternalString(C3630R.string.drawer_enable_archive_button);
        }
        charSequenceArr[2] = str2;
        builder.setItems(charSequenceArr, iArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda18
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                DialogsActivity.this.lambda$onArchiveLongPress$102(dialogInterface, i2);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onArchiveLongPress$102(DialogInterface dialogInterface, int i) {
        int i2 = 0;
        if (i == 2) {
            SharedConfig.setShowDrawerHeaderArchiveEnabled(true);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        } else if (i == 0) {
            getMessagesStorage().readAllDialogs(1);
        } else if (i != 1 || this.viewPages == null) {
        } else {
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i2 >= viewPageArr.length) {
                    return;
                }
                if (viewPageArr[i2].dialogsType == 0 && this.viewPages[i2].getVisibility() == 0) {
                    this.viewPages[i2].listView.toggleArchiveHidden(true, findArchiveDialogCell(this.viewPages[i2]));
                }
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DialogCell findArchiveDialogCell(ViewPage viewPage) {
        DialogsRecyclerView dialogsRecyclerView = viewPage.listView;
        for (int i = 0; i < dialogsRecyclerView.getChildCount(); i++) {
            View childAt = dialogsRecyclerView.getChildAt(i);
            if (childAt instanceof DialogCell) {
                DialogCell dialogCell = (DialogCell) childAt;
                if (dialogCell.isFolderCell()) {
                    return dialogCell;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v91 */
    public boolean showChatPreview(final DialogCell dialogCell, ProfileSearchCell profileSearchCell) {
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
        if (dialogCell == null && profileSearchCell == null) {
            return false;
        }
        if (dialogCell != null && dialogCell.isDialogFolder()) {
            if (dialogCell.getCurrentDialogFolderId() == 1) {
                onArchiveLongPress(dialogCell);
            }
            return false;
        }
        final long dialogId = profileSearchCell != null ? profileSearchCell.getDialogId() : dialogCell.getDialogId();
        final Bundle bundle2 = new Bundle();
        int messageId = profileSearchCell != null ? 0 : dialogCell.getMessageId();
        if (DialogObject.isFolderDialogId(dialogId) || DialogObject.isEncryptedDialog(dialogId)) {
            return false;
        }
        if (DialogObject.isUserDialog(dialogId)) {
            LockedSectionsController.SectionPasscodeData sectionsPasscodeData = getLockedSectionsController().getSectionsPasscodeData(LockedSection.CLOUD);
            if (UserObject.isUserSelf(getMessagesController().getUser(Long.valueOf(dialogId))) && sectionsPasscodeData != null && !sectionsPasscodeData.getPasscodeHash().isEmpty()) {
                showToast(LocaleController.getInternalString(C3630R.string.section_is_locked));
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
        final ActionBarPopupWindow.ActionBarPopupWindowLayout[] actionBarPopupWindowLayoutArr = {new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity(), C3630R.C3632drawable.popup_fixed_alert2, getResourceProvider(), 2)};
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getParentActivity(), true, false);
        if (dialogCell != null && dialogCell.getHasUnread()) {
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("MarkAsRead", C3630R.string.MarkAsRead), C3630R.C3632drawable.msg_markread);
        } else {
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("MarkAsUnread", C3630R.string.MarkAsUnread), C3630R.C3632drawable.msg_markunread);
        }
        actionBarMenuSubItem.setMinimumWidth(160);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda49
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$103(dialogCell, dialogId, view);
            }
        });
        if (profileSearchCell == null) {
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem);
        }
        boolean[] zArr = new boolean[1];
        zArr[0] = true;
        final TLRPC$Dialog tLRPC$Dialog = getMessagesController().dialogs_dict.get(dialogId);
        boolean z4 = (this.viewPages[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8) && (!this.actionBar.isActionModeShowed() || this.actionBar.isActionModeShowed(null));
        if (z4) {
            dialogFilter = getMessagesController().getSelectedDialogFilter(isForward(), isArchive())[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
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
                    if (DialogObject.isEncryptedDialog(tLRPC$Dialog2.f1606id)) {
                        i8++;
                    } else {
                        i7++;
                    }
                } else {
                    arrayList = dialogs;
                    i5 = size;
                    chatActivityArr = chatActivityArr2;
                    if (!getMessagesController().isPromoDialog(tLRPC$Dialog2.f1606id, false)) {
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
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("UnpinMessage", C3630R.string.UnpinMessage), C3630R.C3632drawable.msg_unpin);
            } else {
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("PinMessage", C3630R.string.PinMessage), C3630R.C3632drawable.msg_pin);
            }
            actionBarMenuSubItem2.setMinimumWidth(160);
            bundle = null;
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda48
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$showChatPreview$105(dialogFilter, tLRPC$Dialog, dialogId, view);
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
                actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("Mute", C3630R.string.Mute), C3630R.C3632drawable.msg_mute);
            } else {
                actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("Unmute", C3630R.string.Unmute), C3630R.C3632drawable.msg_unmute);
            }
            actionBarMenuSubItem3.setMinimumWidth(160);
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda45
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogsActivity.this.lambda$showChatPreview$106(dialogId, view);
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
        actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString("Delete", C3630R.string.Delete), C3630R.C3632drawable.msg_delete);
        actionBarMenuSubItem4.setMinimumWidth(160);
        actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogsActivity.this.lambda$showChatPreview$107(arrayList2, view);
            }
        });
        actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem4);
        if (getMessagesController().checkCanOpenChat(bundle2, this)) {
            if (this.searchString != null) {
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
            }
            prepareBlurBitmap();
            this.parentLayout.setHighlightActionButtons(true);
            Point point = AndroidUtilities.displaySize;
            if (point.x > point.y) {
                ChatActivity chatActivity = new ChatActivity(bundle2);
                chatActivityArr[0] = chatActivity;
                presentFragmentAsPreview(chatActivity);
                return true;
            }
            final ChatActivity[] chatActivityArr3 = chatActivityArr;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda128
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$showChatPreview$108(chatActivityArr3, bundle2, actionBarPopupWindowLayoutArr);
                }
            };
            if (chatActivityArr3[0] != null) {
                chatActivityArr3[0].allowExpandPreviewByClick = true;
                chatActivityArr3[0].allowExpandPreviewByClick = false;
                try {
                    chatActivityArr3[0].getAvatarContainer().getAvatarImageView().performAccessibilityAction(64, bundle);
                } catch (Exception unused) {
                }
            }
            if (getParentActivity().getCurrentFocus() != null) {
                AndroidUtilities.hideKeyboard(getParentActivity().getCurrentFocus());
                AndroidUtilities.runOnUIThread(runnable, 250L);
                return true;
            }
            runnable.run();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$103(DialogCell dialogCell, long j, View view) {
        if (dialogCell.getHasUnread()) {
            markAsRead(j);
        } else {
            markAsUnread(j);
        }
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$105(final MessagesController.DialogFilter dialogFilter, final TLRPC$Dialog tLRPC$Dialog, final long j, View view) {
        finishPreviewFragment();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda114
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showChatPreview$104(dialogFilter, tLRPC$Dialog, j);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$104(MessagesController.DialogFilter dialogFilter, TLRPC$Dialog tLRPC$Dialog, long j) {
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
    public /* synthetic */ void lambda$showChatPreview$106(long j, View view) {
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
    public /* synthetic */ void lambda$showChatPreview$107(ArrayList arrayList, View view) {
        performSelectedDialogsAction(arrayList, 102, false, false);
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$108(ChatActivity[] chatActivityArr, Bundle bundle, ActionBarPopupWindow.ActionBarPopupWindowLayout[] actionBarPopupWindowLayoutArr) {
        ChatActivity chatActivity = new ChatActivity(bundle);
        chatActivityArr[0] = chatActivity;
        FragmentPreviewMenu fragmentPreviewMenu = new FragmentPreviewMenu(this, chatActivityArr[0], null);
        actionBarPopupWindowLayoutArr[0] = fragmentPreviewMenu;
        presentFragmentAsPreviewWithMenu(chatActivity, fragmentPreviewMenu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFloatingButtonOffset() {
        FrameLayout frameLayout = this.floatingButtonContainer;
        if (frameLayout != null) {
            float f = this.floatingButtonHideProgress;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            frameLayout.setTranslationZ(f == BitmapDescriptorFactory.HUE_RED ? AndroidUtilities.m102dp(2) : 0.0f);
            if (isMainDialogList()) {
                FilterTabsView filterTabsView = this.filterTabsView;
                if (filterTabsView != null && filterTabsView.getVisibility() == 0 && isFilterTabsAtBottom()) {
                    f2 = (AndroidUtilities.m102dp(44) - this.filterTabsView.getTranslationY()) + BitmapDescriptorFactory.HUE_RED;
                }
                if (getTopicsController().isTopicsBarAtBottomEnabled()) {
                    f2 += getTopicsBarHeight(false);
                }
            }
            this.floatingButtonContainer.setTranslationY((this.floatingButtonTranslation - this.floatingButtonPanOffset) - (((this.additionalFloatingTranslation + this.additionalFloatingTranslation2) + f2) * (1.0f - this.floatingButtonHideProgress)));
            HintView2 hintView2 = this.storyHint;
            if (hintView2 != null) {
                hintView2.setTranslationY(this.floatingButtonContainer.getTranslationY());
            }
        }
        FrameLayout frameLayout2 = this.floatingButton2Container;
        if (frameLayout2 != null) {
            frameLayout2.setTranslationY(((this.floatingButtonTranslation - this.floatingButtonPanOffset) - (Math.max(this.additionalFloatingTranslation, this.additionalFloatingTranslation2) * (1.0f - this.floatingButtonHideProgress))) + (AndroidUtilities.m102dp(44) * this.floatingButtonHideProgress));
        }
    }

    private void updateStoriesPosting() {
        HintView2 hintView2;
        ActionBarMenuItem actionBarMenuItem;
        boolean storiesEnabled = getMessagesController().storiesEnabled();
        if (this.storiesEnabled != storiesEnabled) {
            FrameLayout frameLayout = this.floatingButton2Container;
            if (frameLayout != null) {
                frameLayout.setVisibility(((!this.onlySelect || this.initialDialogsType == 10) && this.folderId == 0 && storiesEnabled && ((actionBarMenuItem = this.searchItem) == null || !actionBarMenuItem.isSearchFieldVisible())) ? 0 : 8);
            }
            updateFloatingButtonOffset();
            if (!this.storiesEnabled && storiesEnabled && (hintView2 = this.storyHint) != null) {
                hintView2.show();
            }
            this.storiesEnabled = storiesEnabled;
        }
        if (this.floatingButton == null || this.floatingButtonContainer == null) {
            return;
        }
        if (isAlbums()) {
            FilterFabExtKt.bindBig(FilterFab.CREATE_ALBUM, this.floatingButton);
        } else if (this.initialDialogsType == 10) {
            this.floatingButton.setImageResource(C3630R.C3632drawable.floating_check);
            this.floatingButtonContainer.setContentDescription(LocaleController.getString("Done", C3630R.string.Done));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasHiddenArchive() {
        return !this.onlySelect && this.initialDialogsType == 0 && (this.folderId == 0 || isArchive()) && getMessagesController().hasHiddenArchive(isArchive());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean waitingForDialogsAnimationEnd(ViewPage viewPage) {
        return viewPage.dialogsItemAnimator.isRunning();
    }

    private void checkAnimationFinished(final boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda122
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$checkAnimationFinished$109(z);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAnimationFinished$109(boolean z) {
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
            if (z) {
                finishFragment();
            }
        }
        setDialogsListFrozen(false);
        updateDialogIndices();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollY(float f) {
        ViewPage[] viewPageArr;
        int i = 0;
        if ((f == BitmapDescriptorFactory.HUE_RED || !isFilterTabsAtBottom()) && (viewPageArr = this.viewPages) != null) {
            int paddingTop = viewPageArr[0].listView.getPaddingTop() + ((int) f);
            while (true) {
                ViewPage[] viewPageArr2 = this.viewPages;
                if (i >= viewPageArr2.length) {
                    break;
                }
                viewPageArr2[i].listView.setTopGlowOffset(paddingTop);
                i++;
            }
        }
        if (this.fragmentView == null || f == this.scrollYOffset) {
            return;
        }
        this.scrollYOffset = f;
        Bulletin bulletin = this.topBulletin;
        if (bulletin != null) {
            bulletin.updatePosition();
        }
        DrawerProfileCell.AnimatedStatusView animatedStatusView = this.animatedStatusView;
        if (animatedStatusView != null) {
            animatedStatusView.translateY2((int) f);
            this.animatedStatusView.setAlpha(1.0f - ((-f) / C3702ActionBar.getCurrentActionBarHeight()));
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
        int m102dp = (getPinnedPlayerView() == null || getPinnedPlayerView().getVisibility() != 0) ? 0 : AndroidUtilities.m102dp(PinnedPlayerView.getPlayerHeight());
        int measuredWidth = (int) (this.fragmentView.getMeasuredWidth() / 6.0f);
        int measuredHeight = (int) ((m102dp + this.fragmentView.getMeasuredHeight()) / 6.0f);
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

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        View view;
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
        if (this.scrollYOffset == BitmapDescriptorFactory.HUE_RED || this.hasStories) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, this.SCROLL_Y, BitmapDescriptorFactory.HUE_RED));
        animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
        animatorSet.setDuration(250L);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void hideActionMode(boolean z) {
        final float f;
        boolean z2;
        this.actionBar.hideActionMode();
        if (this.menuDrawable != null) {
            this.actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrOpenMenu", C3630R.string.AccDescrOpenMenu));
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
            this.actionBarColorAnimator = null;
        }
        if (this.progressToActionMode == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        boolean z3 = false;
        if (this.hasStories) {
            setScrollY(-getMaxScrollYOffset());
            int i = 0;
            while (true) {
                ViewPage[] viewPageArr = this.viewPages;
                if (i >= viewPageArr.length) {
                    break;
                }
                if (viewPageArr[i] != null) {
                    viewPageArr[i].listView.cancelClickRunnables(true);
                }
                i++;
            }
            f = Math.max((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m102dp(81) + this.scrollYOffset);
        } else {
            f = 0.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.progressToActionMode, BitmapDescriptorFactory.HUE_RED);
        this.actionBarColorAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DialogsActivity.this.lambda$hideActionMode$110(f, valueAnimator2);
            }
        });
        this.actionBarColorAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.64
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                DialogsActivity.this.actionBarColorAnimator = null;
                DialogsActivity.this.actionModeFullyShowed = false;
                DialogsActivity dialogsActivity = DialogsActivity.this;
                if (dialogsActivity.hasStories) {
                    dialogsActivity.invalidateScrollY = true;
                    DialogsActivity.this.fixScrollYAfterArchiveOpened = true;
                    ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                    DialogsActivity.this.scrollAdditionalOffset = -(AndroidUtilities.m102dp(81) - f);
                    DialogsActivity.this.viewPages[0].setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    for (int i2 = 0; i2 < DialogsActivity.this.viewPages.length; i2++) {
                        if (DialogsActivity.this.viewPages[i2] != null) {
                            DialogsActivity.this.viewPages[i2].listView.requestLayout();
                        }
                    }
                    ((BaseFragment) DialogsActivity.this).fragmentView.requestLayout();
                }
            }
        });
        this.actionBarColorAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.actionBarColorAnimator.setDuration(200L);
        this.actionBarColorAnimator.start();
        this.allowMoving = false;
        if (this.movingDialogFilters.isEmpty()) {
            z2 = false;
        } else {
            int i2 = 0;
            for (int size = this.movingDialogFilters.size(); i2 < size; size = size) {
                MessagesController.DialogFilter dialogFilter = this.movingDialogFilters.get(i2);
                FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, false, false, true, true, false, this, null);
                i2++;
                z3 = z3;
            }
            z2 = z3;
            this.movingDialogFilters.clear();
        }
        if (this.movingWas) {
            getMessagesController().reorderPinnedDialogs(this.folderId, null, 0L);
            this.movingWas = z2;
        }
        updateCounters(true);
        if (this.viewPages != null) {
            int i3 = z2;
            while (true) {
                ViewPage[] viewPageArr2 = this.viewPages;
                if (i3 >= viewPageArr2.length) {
                    break;
                }
                viewPageArr2[i3].dialogsAdapter.onReorderStateChanged(z2);
                i3++;
            }
        }
        updateVisibleRows(MessagesController.UPDATE_MASK_REORDER | MessagesController.UPDATE_MASK_CHECK | (z ? MessagesController.UPDATE_MASK_CHAT : z2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideActionMode$110(float f, ValueAnimator valueAnimator) {
        if (this.hasStories) {
            this.viewPages[0].setTranslationY(f * (1.0f - this.progressToActionMode));
        }
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
                } else if (!getMessagesController().isPromoDialog(tLRPC$Dialog.f1606id, false)) {
                    break;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDialogPinned(TLRPC$Dialog tLRPC$Dialog) {
        if (tLRPC$Dialog == null || getHiddenChatsController().isChatHidden(tLRPC$Dialog.f1606id)) {
            return false;
        }
        MessagesController.DialogFilter dialogFilter = null;
        if ((this.viewPages[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8) && (!this.actionBar.isActionModeShowed() || this.actionBar.isActionModeShowed(null))) {
            dialogFilter = getMessagesController().getSelectedDialogFilter(isForward(), isArchive())[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
        }
        if (dialogFilter != null) {
            return dialogFilter.pinnedDialogs.indexOfKey(tLRPC$Dialog.f1606id) >= 0;
        }
        return tLRPC$Dialog.pinned;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:162:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0798  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x07fa  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x029f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v121 */
    /* JADX WARN: Type inference failed for: r0v122 */
    /* JADX WARN: Type inference failed for: r0v146 */
    /* JADX WARN: Type inference failed for: r0v162 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v147 */
    /* JADX WARN: Type inference failed for: r1v148 */
    /* JADX WARN: Type inference failed for: r1v150 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r34v0, types: [org.telegram.ui.DialogsActivity, org.telegram.ui.ActionBar.BaseFragment] */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v48 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r5v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v22, types: [org.telegram.ui.ActionBar.AlertDialog$Builder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void performSelectedDialogsAction(final java.util.ArrayList<java.lang.Long> r35, final int r36, boolean r37, boolean r38, boolean r39) {
        /*
            Method dump skipped, instructions count: 2461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.performSelectedDialogsAction(java.util.ArrayList, int, boolean, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$111(List list, DialogInterface dialogInterface, int i) {
        hideOrUnhideChats(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$112(ArrayList arrayList) {
        getMessagesController().addDialogToFolder(arrayList, this.folderId == 0 ? 0 : 1, -1, null, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$113(ArrayList arrayList) {
        getMessagesController().addDialogToFolder(arrayList, 1, -1, null, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$performSelectedDialogsAction$114(boolean[] zArr, CheckBoxCell checkBoxCell, CheckBoxCell checkBoxCell2, View view) {
        zArr[0] = !zArr[0];
        checkBoxCell.setVisibility(checkBoxCell.getVisibility() == 0 ? 8 : 0);
        checkBoxCell2.toggle(zArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$performSelectedDialogsAction$115(boolean[] zArr, CheckBoxCell checkBoxCell, View view) {
        zArr[0] = !zArr[0];
        checkBoxCell.toggle(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$117(ArrayList arrayList, final boolean[] zArr, boolean[] zArr2, final int i, DialogInterface dialogInterface, int i2) {
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
            undoView.showWithAction(arrayList2, i == 102 ? 27 : 26, (Object) null, (Object) null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda104
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$performSelectedDialogsAction$116(i, arrayList2, zArr);
                }
            }, (Runnable) null);
        }
        hideActionMode(i == 103);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$116(int i, ArrayList arrayList, boolean[] zArr) {
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
    public /* synthetic */ void lambda$performSelectedDialogsAction$118(AlertDialog alertDialog) {
        showDialog(alertDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$119(ArrayList arrayList, boolean z, boolean z2) {
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
    public /* synthetic */ void lambda$performSelectedDialogsAction$120(DialogInterface dialogInterface, int i) {
        getMessagesController().hidePromoDialog();
        hideActionMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$122(final int i, final TLRPC$Chat tLRPC$Chat, final long j, final boolean z, final boolean z2) {
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
                    if (this.frozenDialogsList.get(i6).f1606id == j) {
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
            undoView.showWithAction(j, i == 103 ? 0 : 1, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda103
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$performSelectedDialogsAction$121(i, j, tLRPC$Chat, z, z2);
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
            } else if (((TLRPC$Dialog) arrayList2.get(i7)).f1606id == j) {
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
    public /* synthetic */ void lambda$performSelectedDialogsAction$123(DialogInterface dialogInterface) {
        hideActionMode(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSelectedDialogsAction$124(DialogInterface dialogInterface) {
        hideActionMode(true);
    }

    private void markAsRead(long j) {
        TLRPC$Dialog tLRPC$Dialog = getMessagesController().dialogs_dict.get(j);
        MessagesController.DialogFilter dialogFilter = null;
        if ((this.viewPages[0].dialogsType == 7 || this.viewPages[0].dialogsType == 8) && (!this.actionBar.isActionModeShowed() || this.actionBar.isActionModeShowed(null))) {
            dialogFilter = getMessagesController().getSelectedDialogFilter(isForward(), isArchive())[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
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
                    } else if (this.frozenDialogsList.get(i2).f1606id == j) {
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
            long j = arrayList.get(i).f1606id;
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
    public void lambda$performSelectedDialogsAction$121(int i, long j, TLRPC$Chat tLRPC$Chat, boolean z, boolean z2) {
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
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, Long.valueOf(j));
        }
        getMessagesController().checkIfFolderEmpty(this.folderId);
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void pinDialog(long r17, boolean r19, org.telegram.messenger.MessagesController.DialogFilter r20, int r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.pinDialog(long, boolean, org.telegram.messenger.MessagesController$DialogFilter, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pinDialog$125() {
        setDialogsListFrozen(false);
    }

    public void scrollToTop(boolean z, boolean z2, boolean z3) {
        int i;
        int itemCount = this.viewPages[0].dialogsAdapter.getItemCount();
        if (z3 && itemCount == 0) {
            return;
        }
        if (z3) {
            i = itemCount - 1;
        } else {
            i = (this.viewPages[0].dialogsType == 0 && hasHiddenArchive() && this.viewPages[0].archivePullViewState == 2) ? 1 : 0;
        }
        int i2 = (z3 || !this.hasStories || z2 || this.dialogStoriesCell.isExpanded()) ? 0 : -AndroidUtilities.m102dp(81);
        if (z) {
            this.viewPages[0].scrollHelper.setScrollDirection(!z3 ? 1 : 0);
            this.viewPages[0].scrollHelper.scrollToPosition(i, i2, z3, true);
            resetScroll();
        } else {
            this.viewPages[0].layoutManager.scrollToPositionWithOffset(i, i2);
            resetScroll();
        }
        if (z3) {
            hideFloatingButton(true);
        } else if (this.recentChatsBar == null || !getRecentChatsController().isRecentChatsEnabled()) {
        } else {
            this.recentChatsBar.scrollToFirstCell();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00fc, code lost:
        if (org.telegram.messenger.MessagesController.isSupportUser(r2) == false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateCounters(boolean r23) {
        /*
            Method dump skipped, instructions count: 1341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.updateCounters(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean validateSlowModeDialog(long j) {
        TLRPC$Chat chat;
        ChatActivityEnterView chatActivityEnterView;
        if ((this.messagesCount > 1 || !((chatActivityEnterView = this.commentView) == null || chatActivityEnterView.getVisibility() != 0 || TextUtils.isEmpty(this.commentView.getFieldText()))) && DialogObject.isChatDialog(j) && (chat = getMessagesController().getChat(Long.valueOf(-j))) != null && !ChatObject.hasAdminRights(chat) && chat.slowmode_enabled) {
            AlertsCreator.showSimpleAlert(this, LocaleController.getString("Slowmode", C3630R.string.Slowmode), LocaleController.getString("SlowmodeSendError", C3630R.string.SlowmodeSendError));
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
            if (!this.hasStories) {
                resetScroll();
            }
            if (this.menuDrawable != null) {
                this.actionBar.setBackButtonContentDescription(LocaleController.getString("AccDescrGoBack", C3630R.string.AccDescrGoBack));
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
                    view2.setPivotY(C3702ActionBar.getCurrentActionBarHeight() / 2);
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
            this.actionBarColorAnimator = ValueAnimator.ofFloat(this.progressToActionMode, 1.0f);
            boolean z2 = this.hasStories;
            final float f = BitmapDescriptorFactory.HUE_RED;
            if (z2) {
                int i3 = 0;
                while (true) {
                    ViewPage[] viewPageArr2 = this.viewPages;
                    if (i3 >= viewPageArr2.length) {
                        break;
                    }
                    if (viewPageArr2[i3] != null) {
                        viewPageArr2[i3].listView.cancelClickRunnables(true);
                    }
                    i3++;
                }
                float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m102dp(81) + this.scrollYOffset);
                if (max != BitmapDescriptorFactory.HUE_RED) {
                    this.actionModeAdditionalHeight = (int) max;
                    this.fragmentView.requestLayout();
                }
                f = max;
            }
            this.actionBarColorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    DialogsActivity.this.lambda$showOrUpdateActionMode$126(f, valueAnimator2);
                }
            });
            this.actionBarColorAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.67
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    DialogsActivity.this.actionBarColorAnimator = null;
                    DialogsActivity.this.actionModeAdditionalHeight = 0;
                    DialogsActivity.this.actionModeFullyShowed = true;
                    DialogsActivity dialogsActivity = DialogsActivity.this;
                    if (dialogsActivity.hasStories) {
                        dialogsActivity.scrollAdditionalOffset = AndroidUtilities.m102dp(81) - f;
                        DialogsActivity.this.viewPages[0].setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        for (int i4 = 0; i4 < DialogsActivity.this.viewPages.length; i4++) {
                            if (DialogsActivity.this.viewPages[i4] != null) {
                                DialogsActivity.this.viewPages[i4].listView.requestLayout();
                            }
                        }
                        DialogsActivity.this.dialogStoriesCell.setProgressToCollapse(1.0f, false);
                        ((BaseFragment) DialogsActivity.this).fragmentView.requestLayout();
                    }
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
    public /* synthetic */ void lambda$showOrUpdateActionMode$126(float f, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.progressToActionMode = floatValue;
        if (this.hasStories) {
            this.viewPages[0].setTranslationY((-f) * floatValue);
        }
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
            C3702ActionBar c3702ActionBar = this.actionBar;
            if (c3702ActionBar != null) {
                c3702ActionBar.closeSearchField();
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
                this.undoView[i] = new C597668(context);
                UndoView undoView = this.undoView[i];
                int i2 = this.undoViewIndex + 1;
                this.undoViewIndex = i2;
                ((ContentView) this.fragmentView).addView(undoView, i2, LayoutHelper.createFrame(-1, -2, 83, 8, 0, 8, 8));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.DialogsActivity$68 */
    /* loaded from: classes5.dex */
    public class C597668 extends UndoView {
        C597668(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            if (this == DialogsActivity.this.undoView[0]) {
                if (DialogsActivity.this.undoView[1] == null || DialogsActivity.this.undoView[1].getVisibility() != 0) {
                    DialogsActivity.this.additionalFloatingTranslation = (getMeasuredHeight() + AndroidUtilities.m102dp(8)) - f;
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

        @Override // org.telegram.p042ui.Components.UndoView
        protected boolean canUndo() {
            for (int i = 0; i < DialogsActivity.this.viewPages.length; i++) {
                if (DialogsActivity.this.viewPages[i].dialogsItemAnimator.isRunning()) {
                    return false;
                }
            }
            return true;
        }

        @Override // org.telegram.p042ui.Components.UndoView
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
                        } else if (((TLRPC$Dialog) DialogsActivity.this.frozenDialogsList.get(i3)).f1606id == j) {
                            i2 = i3;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (i2 >= 0) {
                        final TLRPC$Dialog tLRPC$Dialog = (TLRPC$Dialog) DialogsActivity.this.frozenDialogsList.remove(i2);
                        DialogsActivity.this.viewPages[0].dialogsAdapter.notifyDataSetChanged();
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$68$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogsActivity.C597668.this.lambda$onRemoveDialogAction$0(i2, tLRPC$Dialog);
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
            updateOptionsItemVisibility(true);
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
        ActionBarMenuItem actionBarMenuItem5 = this.optionsItem;
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
        this.doneItemAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.69
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DialogsActivity.this.doneItemAnimator = null;
                if (z) {
                    DialogsActivity.this.updateOptionsItemVisibility(false);
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
                    this.actionBar.setTitle(LocaleController.getString("ForwardTo", C3630R.string.ForwardTo));
                } else {
                    this.actionBar.setTitle(LocaleController.getString("SelectChat", C3630R.string.SelectChat));
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
                    this.commentViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.70
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
                    animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.71
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
                    this.commentViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.72
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
        final Activity parentActivity = getParentActivity();
        if (parentActivity == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 && NotificationPermissionDialog.shouldAsk(parentActivity)) {
            if (z) {
                showDialog(new NotificationPermissionDialog(parentActivity, new Utilities.Callback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda142
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        DialogsActivity.lambda$askForPermissons$127(parentActivity, (Boolean) obj);
                    }
                }));
                return;
            }
            arrayList.add("android.permission.POST_NOTIFICATIONS");
        }
        if (getUserConfig().syncContacts && this.askAboutContacts && parentActivity.checkSelfPermission("android.permission.READ_CONTACTS") != 0) {
            if (z) {
                AlertDialog create = AlertsCreator.createContactsPermissionDialog(parentActivity, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda138
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i2) {
                        DialogsActivity.this.lambda$askForPermissons$128(i2);
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
        if (i >= 33) {
            if (parentActivity.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") != 0) {
                arrayList.add("android.permission.READ_MEDIA_IMAGES");
            }
            if (parentActivity.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") != 0) {
                arrayList.add("android.permission.READ_MEDIA_VIDEO");
            }
            if (parentActivity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
            }
        } else if ((i <= 28 || BuildVars.NO_SCOPED_STORAGE) && parentActivity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
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
    public static /* synthetic */ void lambda$askForPermissons$127(Activity activity, Boolean bool) {
        if (bool.booleanValue()) {
            activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$askForPermissons$128(int i) {
        this.askAboutContacts = i != 0;
        MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askAboutContacts", this.askAboutContacts).commit();
        askForPermissons(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        super.onDialogDismiss(dialog);
        AlertDialog alertDialog = this.permissionDialog;
        if (alertDialog == null || dialog != alertDialog || getParentActivity() == null) {
            return;
        }
        askForPermissons(false);
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ItemOptions itemOptions = this.filterOptions;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
        if ((this.onlySelect || this.floatingButtonContainer == null) && (!isAlbums() || this.floatingButtonContainer == null)) {
            return;
        }
        this.floatingButtonContainer.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.telegram.ui.DialogsActivity.73
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.floatingButtonTranslation = dialogsActivity.floatingHidden ? AndroidUtilities.m102dp(100) : BitmapDescriptorFactory.HUE_RED;
                DialogsActivity.this.updateFloatingButtonOffset();
                DialogsActivity.this.floatingButtonContainer.setClickable(!DialogsActivity.this.floatingHidden);
                if (DialogsActivity.this.floatingButtonContainer != null) {
                    DialogsActivity.this.floatingButtonContainer.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        });
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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
                char c = 65535;
                switch (str.hashCode()) {
                    case -1925850455:
                        if (str.equals("android.permission.POST_NOTIFICATIONS")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 1365911975:
                        if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1977429404:
                        if (str.equals("android.permission.READ_CONTACTS")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        if (iArr[i3] == 0) {
                            NotificationsController.getInstance(this.currentAccount).showNotifications();
                            break;
                        } else {
                            NotificationPermissionDialog.askLater();
                            continue;
                        }
                    case 1:
                        if (iArr[i3] == 0) {
                            ImageLoader.getInstance().checkMediaPaths();
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        if (iArr[i3] == 0) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda77
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogsActivity.this.lambda$onRequestPermissionsResultFragment$129();
                                }
                            });
                            getContactsController().forceImportContacts();
                            continue;
                        } else {
                            SharedPreferences.Editor edit = MessagesController.getGlobalNotificationsSettings().edit();
                            this.askAboutContacts = false;
                            edit.putBoolean("askAboutContacts", false).commit();
                            break;
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
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$129() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.forceImportContactsStart, new Object[0]);
    }

    private void reloadViewPageDialogs(ViewPage viewPage, boolean z) {
        int i;
        int i2;
        if (viewPage.getVisibility() != 0) {
            return;
        }
        int currentCount = viewPage.dialogsAdapter.getCurrentCount();
        if (viewPage.dialogsType == 0 && hasHiddenArchive() && viewPage.listView.getChildCount() == 0 && viewPage.archivePullViewState == 2) {
            ((LinearLayoutManager) viewPage.listView.getLayoutManager()).scrollToPositionWithOffset(1, (int) this.scrollYOffset);
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
            FileLog.m97e(e);
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
        int i3 = 0;
        r9 = false;
        boolean z2 = false;
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
            updateOptionsItemVisibility(SharedConfig.isMainActionBarMenuEnabled);
        } else if (i == NotificationCenter.mainUserInfoChanged) {
            updateAccountSwitchItems();
        } else if (i == NotificationCenter.notificationsCountUpdated) {
            updateAccountSwitchUnreadCounters();
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
            if (objArr.length > 0 && ((Boolean) objArr[0]).booleanValue()) {
                z2 = true;
            }
            RecentChatsBar recentChatsBar = this.recentChatsBar;
            if (recentChatsBar != null && z2) {
                recentChatsBar.getLayoutParams().height = AndroidUtilities.m102dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : 60);
                this.recentChatsBar.notifyDataSetChanged();
                updateRecentChatsBar();
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda83
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.updateRecentChatsBar();
                }
            }, 100L);
            View view2 = this.fragmentView;
            if (view2 != null) {
                view2.invalidate();
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
                    dialogFilter2 = getMessagesController().getSelectedDialogFilter(isForward(), isArchive())[this.viewPages[0].dialogsType == 8 ? (char) 1 : (char) 0];
                } else {
                    dialogFilter2 = null;
                }
                boolean z3 = (dialogFilter2 == null || (dialogFilter2.flags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ) == 0) ? false : true;
                if (this.slowedReloadAfterDialogClick && z3) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda121
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.this.lambda$didReceivedNotification$130(viewPage, objArr);
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
                int i6 = 0;
                while (true) {
                    ViewPage[] viewPageArr2 = this.viewPages;
                    if (i6 >= viewPageArr2.length) {
                        break;
                    }
                    DialogsRecyclerView dialogsRecyclerView = viewPageArr2[i6].listView;
                    if (dialogsRecyclerView != null) {
                        for (int i7 = 0; i7 < dialogsRecyclerView.getChildCount(); i7++) {
                            View childAt = dialogsRecyclerView.getChildAt(i7);
                            if (childAt != null) {
                                childAt.invalidate();
                            }
                        }
                    }
                    i6++;
                }
            }
            FilterTabsView filterTabsView5 = this.filterTabsView;
            if (filterTabsView5 != null) {
                filterTabsView5.getTabsContainer().invalidateViews();
            }
        } else if (i == NotificationCenter.closeSearchByActiveAction) {
            C3702ActionBar c3702ActionBar = this.actionBar;
            if (c3702ActionBar != null) {
                c3702ActionBar.closeSearchField();
            }
        } else if (i == NotificationCenter.proxySettingsChanged) {
            updateProxyButton(false, false);
        } else if (i == NotificationCenter.updateInterfaces) {
            Integer num = (Integer) objArr[0];
            RecentChatsBar recentChatsBar2 = this.recentChatsBar;
            if (recentChatsBar2 != null) {
                recentChatsBar2.notifyDataSetChanged();
            }
            updateVisibleRows(num.intValue());
            FilterTabsView filterTabsView6 = this.filterTabsView;
            if (filterTabsView6 != null && filterTabsView6.getVisibility() == 0 && (num.intValue() & MessagesController.UPDATE_MASK_READ_DIALOG_MESSAGE) != 0) {
                this.filterTabsView.checkTabsCounter();
            }
            if (this.viewPages != null) {
                for (int i8 = 0; i8 < this.viewPages.length; i8++) {
                    if ((num.intValue() & MessagesController.UPDATE_MASK_STATUS) != 0) {
                        this.viewPages[i8].dialogsAdapter.sortOnlineContacts(true);
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
            boolean z4 = this.floatingProgressVisible;
            setFloatingProgressVisible(false, true);
            for (ViewPage viewPage2 : this.viewPages) {
                viewPage2.dialogsAdapter.setForceUpdatingContacts(false);
            }
            if (z4) {
                setContactsAlpha(BitmapDescriptorFactory.HUE_RED);
                animateContactsAlpha(1.0f);
            }
            int i9 = 0;
            boolean z5 = false;
            while (true) {
                ViewPage[] viewPageArr3 = this.viewPages;
                if (i9 >= viewPageArr3.length) {
                    break;
                }
                if (!viewPageArr3[i9].isDefaultDialogType() || getMessagesController().getAllFoldersDialogsCount() > 10) {
                    z5 = true;
                } else {
                    this.viewPages[i9].dialogsAdapter.notifyDataSetChanged();
                }
                i9++;
                z5 = z5;
            }
            if (z5) {
                updateVisibleRows(0);
            }
        } else if (i == NotificationCenter.openedChatChanged) {
            if (this.viewPages == null) {
                return;
            }
            int i10 = 0;
            while (true) {
                ViewPage[] viewPageArr4 = this.viewPages;
                if (i10 < viewPageArr4.length) {
                    if (viewPageArr4[i10].isDefaultDialogType() && AndroidUtilities.isTablet()) {
                        boolean booleanValue2 = ((Boolean) objArr[2]).booleanValue();
                        long longValue = ((Long) objArr[0]).longValue();
                        int intValue = ((Integer) objArr[1]).intValue();
                        if (booleanValue2) {
                            MessagesStorage.TopicKey topicKey = this.openedDialogId;
                            if (longValue == topicKey.dialogId && intValue == topicKey.topicId) {
                                topicKey.dialogId = 0L;
                                topicKey.topicId = 0;
                            }
                        } else {
                            MessagesStorage.TopicKey topicKey2 = this.openedDialogId;
                            topicKey2.dialogId = longValue;
                            topicKey2.topicId = intValue;
                        }
                        this.viewPages[i10].dialogsAdapter.setOpenedDialogId(this.openedDialogId.dialogId);
                    }
                    i10++;
                } else {
                    updateVisibleRows(MessagesController.UPDATE_MASK_SELECT_DIALOG);
                    return;
                }
            }
        } else if (i == NotificationCenter.notificationsSettingsUpdated) {
            updateVisibleRows(0);
        } else if (i == NotificationCenter.messageReceivedByAck || i == NotificationCenter.messageReceivedByServer || i == NotificationCenter.messageSendError) {
            updateVisibleRows(MessagesController.UPDATE_MASK_SEND_STATE);
        } else if (i == NotificationCenter.didSetPasscode) {
            updatePasscodeButton();
            ViewPage[] viewPageArr5 = this.viewPages;
            if (viewPageArr5 != null) {
                for (ViewPage viewPage3 : viewPageArr5) {
                    if (viewPage3 != null && viewPage3.listView != null) {
                        for (int i11 = 0; i11 < viewPage3.listView.getChildCount(); i11++) {
                            View childAt2 = viewPage3.listView.getChildAt(i11);
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
            final long longValue2 = ((Long) objArr[0]).longValue();
            final TLRPC$User tLRPC$User = (TLRPC$User) objArr[1];
            final TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) objArr[2];
            if (tLRPC$User != null && tLRPC$User.bot) {
                z = ((Boolean) objArr[3]).booleanValue();
                booleanValue = false;
            } else {
                booleanValue = ((Boolean) objArr[3]).booleanValue();
                z = false;
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda115
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$didReceivedNotification$131(tLRPC$Chat, longValue2, booleanValue, tLRPC$User, z);
                }
            };
            createUndoView();
            if (this.undoView[0] != null) {
                if (!ChatObject.isForum(tLRPC$Chat)) {
                    UndoView undoView = getUndoView();
                    if (undoView != null) {
                        undoView.showWithAction(longValue2, 1, runnable);
                        return;
                    }
                    return;
                }
                runnable.run();
                return;
            }
            runnable.run();
        } else if (i == NotificationCenter.folderBecomeEmpty) {
            int intValue2 = ((Integer) objArr[0]).intValue();
            int i12 = this.folderId;
            if (i12 != intValue2 || i12 == 0) {
                return;
            }
            removeSelfFromStack();
        } else {
            int i13 = NotificationCenter.dialogFiltersUpdated;
            if (i == i13) {
                updateFilterTabs(true, true);
                if (isForward()) {
                    getNotificationCenter().removeObserver(this, i13);
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
            } else if (i == NotificationCenter.fileLoaded || i == NotificationCenter.fileLoadFailed || i == NotificationCenter.fileLoadProgressChanged || i == NotificationCenter.httpFileDidLoad || i == NotificationCenter.httpFileDidFailedLoad) {
                String str = (String) objArr[0];
                if (SharedConfig.isAppUpdateAvailable() && SharedConfig.pendingAppUpdate.url.equals(str)) {
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
                    view4.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.74
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
                updateStoriesPosting();
            } else if (i == NotificationCenter.onDatabaseReset) {
                dialogsLoaded[this.currentAccount] = false;
                loadDialogs(getAccountInstance());
                getMessagesController().loadPinnedDialogs(this.folderId, 0L, null);
            } else if (i == NotificationCenter.chatlistFolderUpdate) {
                int intValue3 = ((Integer) objArr[0]).intValue();
                while (true) {
                    ViewPage[] viewPageArr8 = this.viewPages;
                    if (i3 >= viewPageArr8.length) {
                        return;
                    }
                    ViewPage viewPage5 = viewPageArr8[i3];
                    if (viewPage5 != null && ((viewPage5.dialogsType == 7 || viewPage5.dialogsType == 8) && (dialogFilter = getMessagesController().getSelectedDialogFilter(isForward(), isArchive())[viewPage5.dialogsType - 7]) != null && intValue3 == dialogFilter.f1537id)) {
                        viewPage5.updateList(true);
                        return;
                    }
                    i3++;
                }
            } else if (i == NotificationCenter.dialogTranslate) {
                long longValue3 = ((Long) objArr[0]).longValue();
                int i14 = 0;
                while (true) {
                    ViewPage[] viewPageArr9 = this.viewPages;
                    if (i14 >= viewPageArr9.length) {
                        return;
                    }
                    ViewPage viewPage6 = viewPageArr9[i14];
                    if (viewPage6.listView != null) {
                        int i15 = 0;
                        while (true) {
                            if (i15 < viewPage6.listView.getChildCount()) {
                                View childAt3 = viewPage6.listView.getChildAt(i15);
                                if (childAt3 instanceof DialogCell) {
                                    DialogCell dialogCell = (DialogCell) childAt3;
                                    if (longValue3 == dialogCell.getDialogId()) {
                                        dialogCell.buildLayout();
                                        break;
                                    }
                                }
                                i15++;
                            }
                        }
                    }
                    i14++;
                }
            } else if (i == NotificationCenter.storiesUpdated) {
                updateStoriesVisibility(this.wasDrawn);
            } else if (i == NotificationCenter.storiesEnabledUpdate) {
                updateStoriesPosting();
            } else if (i == NotificationCenter.unconfirmedAuthUpdate) {
                updateDialogsHint();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$130(ViewPage viewPage, Object[] objArr) {
        reloadViewPageDialogs(viewPage, objArr.length > 0);
        FilterTabsView filterTabsView = this.filterTabsView;
        if (filterTabsView == null || filterTabsView.getVisibility() != 0) {
            return;
        }
        this.filterTabsView.checkTabsCounter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$131(TLRPC$Chat tLRPC$Chat, long j, boolean z, TLRPC$User tLRPC$User, boolean z2) {
        if (tLRPC$Chat != null) {
            if (ChatObject.isNotInChat(tLRPC$Chat)) {
                getMessagesController().deleteDialog(j, 0, z);
            } else {
                getMessagesController().deleteParticipantFromChat(-j, getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId())), null, z, z);
            }
        } else {
            getMessagesController().deleteDialog(j, 0, z);
            if (tLRPC$User != null && tLRPC$User.bot && z2) {
                getMessagesController().blockPeer(tLRPC$User.f1762id);
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
            String str = SharedConfig.pendingAppUpdate.url;
            if (ApplicationLoader.isCheckForUpdateInProgress) {
                i = MenuDrawable.TYPE_UDPATE_DOWNLOADING;
                f = 0.5f;
            } else if (ImageLoader.getInstance().isLoadingHttpFile(str)) {
                int i2 = MenuDrawable.TYPE_UDPATE_DOWNLOADING;
                Float fileProgress = ImageLoader.getInstance().getFileProgress(str);
                if (fileProgress != null) {
                    f = fileProgress.floatValue();
                }
                i = i2;
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
            builder.setTitle(LocaleController.getString("HideNewChatsAlertTitle", C3630R.string.HideNewChatsAlertTitle));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("HideNewChatsAlertText", C3630R.string.HideNewChatsAlertText)));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("GoToSettings", C3630R.string.GoToSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda16
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DialogsActivity.this.lambda$showSuggestion$132(dialogInterface, i);
                }
            });
            showDialog(builder.create(), new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda27
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    DialogsActivity.this.lambda$showSuggestion$133(dialogInterface);
                }
            });
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSuggestion$132(DialogInterface dialogInterface, int i) {
        presentFragment(new PrivacySettingsActivity());
        AndroidUtilities.scrollToFragmentRow(this.parentLayout, "newChatsRow");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSuggestion$133(DialogInterface dialogInterface) {
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$showFiltersHint$135();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersHint$135() {
        UndoView undoView = getUndoView();
        if (undoView != null) {
            undoView.showWithAction(0L, 15, null, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda99
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$showFiltersHint$134();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersHint$134() {
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
        if (!this.viewPages[0].listView.isComputingLayout()) {
            this.viewPages[0].dialogsAdapter.notifyDataSetChanged();
        } else {
            this.viewPages[0].listView.post(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda84
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$setDialogsListFrozen$136();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogsListFrozen$136() {
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
        boolean z2;
        ArrayList<TLRPC$Dialog> arrayList;
        if (!z || (arrayList = this.frozenDialogsList) == null) {
            final MessagesController messagesController = AccountInstance.getInstance(i).getMessagesController();
            if (isAlbumsDialogsType(i2)) {
                Collections.sort(messagesController.dialogsAlbumsOnly, new Comparator() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda130
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$getDialogsArray$137;
                        lambda$getDialogsArray$137 = DialogsActivity.this.lambda$getDialogsArray$137(messagesController, (TLRPC$Dialog) obj, (TLRPC$Dialog) obj2);
                        return lambda$getDialogsArray$137;
                    }
                });
                return messagesController.dialogsAlbumsOnly;
            } else if (i2 == DIALOGS_TYPE_DRAFTS) {
                return messagesController.draftDialogsOnly;
            } else {
                if (isHiddenChats()) {
                    return messagesController.hiddenDialogsOnly;
                }
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
                            if ((this.allowChannels && ChatObject.isChannelAndNotMegaGroup(-tLRPC$Dialog.f1606id, i)) || (this.allowGroups && (ChatObject.isMegagroup(i, -tLRPC$Dialog.f1606id) || !ChatObject.isChannel(-tLRPC$Dialog.f1606id, i)))) {
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
                    if (i3 == 1) {
                        return messagesController.archivedDialogsForward;
                    }
                    return messagesController.dialogsForward;
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
                        MessagesController.DialogFilter dialogFilter = messagesController.getSelectedDialogFilter(isForward(), isArchive())[i2 != 7 ? (char) 1 : (char) 0];
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
                                    TLRPC$User user = messagesController.getUser(Long.valueOf(next.f1606id));
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
                                    TLRPC$Chat chat = messagesController.getChat(Long.valueOf(-next2.f1606id));
                                    if (chat != null && !ChatObject.isChannelAndNotMegaGroup(chat) && messagesController.canAddToForward(next2)) {
                                        this.botShareDialogs.add(next2);
                                    }
                                }
                            } else if (z2 || this.allowMegagroups) {
                                Iterator<TLRPC$Dialog> it3 = messagesController.dialogsGroupsOnly.iterator();
                                while (it3.hasNext()) {
                                    TLRPC$Dialog next3 = it3.next();
                                    TLRPC$Chat chat2 = messagesController.getChat(Long.valueOf(-next3.f1606id));
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
                                    if (meetRequestPeerRequirements(getMessagesController().getUser(Long.valueOf(next5.f1606id)))) {
                                        arrayList4.add(next5);
                                    }
                                }
                                for (TLRPC$User tLRPC$User : users.values()) {
                                    if (tLRPC$User != null && !messagesController.dialogs_dict.containsKey(tLRPC$User.f1762id) && meetRequestPeerRequirements(tLRPC$User)) {
                                        TLRPC$TL_dialog tLRPC$TL_dialog = new TLRPC$TL_dialog();
                                        TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
                                        tLRPC$TL_dialog.peer = tLRPC$TL_peerUser;
                                        long j = tLRPC$User.f1762id;
                                        tLRPC$TL_peerUser.user_id = j;
                                        tLRPC$TL_dialog.f1606id = j;
                                        arrayList4.add(tLRPC$TL_dialog);
                                    }
                                }
                            } else if ((tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeChat) || (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeBroadcast)) {
                                ConcurrentHashMap<Long, TLRPC$Chat> chats = messagesController.getChats();
                                Iterator<TLRPC$Dialog> it6 = (this.requestPeerType instanceof TLRPC$TL_requestPeerTypeChat ? messagesController.dialogsGroupsOnly : messagesController.dialogsChannelsOnly).iterator();
                                while (it6.hasNext()) {
                                    TLRPC$Dialog next6 = it6.next();
                                    if (meetRequestPeerRequirements(user2, getMessagesController().getChat(Long.valueOf(-next6.f1606id)))) {
                                        arrayList4.add(next6);
                                    }
                                }
                                for (TLRPC$Chat tLRPC$Chat : chats.values()) {
                                    if (tLRPC$Chat != null && !messagesController.dialogs_dict.containsKey(-tLRPC$Chat.f1600id) && meetRequestPeerRequirements(user2, tLRPC$Chat)) {
                                        TLRPC$TL_dialog tLRPC$TL_dialog2 = new TLRPC$TL_dialog();
                                        if (ChatObject.isChannel(tLRPC$Chat)) {
                                            TLRPC$TL_peerChannel tLRPC$TL_peerChannel = new TLRPC$TL_peerChannel();
                                            tLRPC$TL_dialog2.peer = tLRPC$TL_peerChannel;
                                            tLRPC$TL_peerChannel.channel_id = tLRPC$Chat.f1600id;
                                        } else {
                                            TLRPC$TL_peerChat tLRPC$TL_peerChat = new TLRPC$TL_peerChat();
                                            tLRPC$TL_dialog2.peer = tLRPC$TL_peerChat;
                                            tLRPC$TL_peerChat.chat_id = tLRPC$Chat.f1600id;
                                        }
                                        tLRPC$TL_dialog2.f1606id = -tLRPC$Chat.f1600id;
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
    public /* synthetic */ int lambda$getDialogsArray$137(MessagesController messagesController, TLRPC$Dialog tLRPC$Dialog, TLRPC$Dialog tLRPC$Dialog2) {
        TLRPC$Chat chat = messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1606id));
        TLRPC$Chat chat2 = messagesController.getChat(Long.valueOf(-tLRPC$Dialog2.f1606id));
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.meetRequestPeerRequirements(org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Chat):boolean");
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
        if (this.floatingButton2 == null || this.floating2ProgressView == null) {
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
            RLottieImageView rLottieImageView = this.floatingButton2;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 0.0f : 1.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(rLottieImageView, property, fArr);
            RLottieImageView rLottieImageView2 = this.floatingButton2;
            Property property2 = View.SCALE_X;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 0.1f : 1.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(rLottieImageView2, property2, fArr2);
            RLottieImageView rLottieImageView3 = this.floatingButton2;
            Property property3 = View.SCALE_Y;
            float[] fArr3 = new float[1];
            fArr3[0] = z ? 0.1f : 1.0f;
            animatorArr[2] = ObjectAnimator.ofFloat(rLottieImageView3, property3, fArr3);
            RadialProgressView radialProgressView = this.floating2ProgressView;
            Property property4 = View.ALPHA;
            float[] fArr4 = new float[1];
            if (z) {
                f = 1.0f;
            }
            fArr4[0] = f;
            animatorArr[3] = ObjectAnimator.ofFloat(radialProgressView, property4, fArr4);
            RadialProgressView radialProgressView2 = this.floating2ProgressView;
            Property property5 = View.SCALE_X;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? 1.0f : 0.1f;
            animatorArr[4] = ObjectAnimator.ofFloat(radialProgressView2, property5, fArr5);
            RadialProgressView radialProgressView3 = this.floating2ProgressView;
            Property property6 = View.SCALE_Y;
            float[] fArr6 = new float[1];
            fArr6[0] = z ? 1.0f : 0.1f;
            animatorArr[5] = ObjectAnimator.ofFloat(radialProgressView3, property6, fArr6);
            animatorSet2.playTogether(animatorArr);
            this.floatingProgressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.75
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    DialogsActivity.this.floating2ProgressView.setVisibility(0);
                    DialogsActivity.this.floatingButton2.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator == DialogsActivity.this.floatingProgressAnimator) {
                        if (z) {
                            if (DialogsActivity.this.floatingButton2 != null) {
                                DialogsActivity.this.floatingButton2.setVisibility(8);
                            }
                        } else if (DialogsActivity.this.floatingButton2 != null) {
                            DialogsActivity.this.floating2ProgressView.setVisibility(8);
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
            this.floatingButton2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.floatingButton2.setScaleX(0.1f);
            this.floatingButton2.setScaleY(0.1f);
            this.floatingButton2.setVisibility(8);
            this.floating2ProgressView.setAlpha(1.0f);
            this.floating2ProgressView.setScaleX(1.0f);
            this.floating2ProgressView.setScaleY(1.0f);
            this.floating2ProgressView.setVisibility(0);
            return;
        }
        this.floatingButton2.setAlpha(1.0f);
        this.floatingButton2.setScaleX(1.0f);
        this.floatingButton2.setScaleY(1.0f);
        this.floatingButton2.setVisibility(0);
        this.floating2ProgressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.floating2ProgressView.setScaleX(0.1f);
        this.floating2ProgressView.setScaleY(0.1f);
        this.floating2ProgressView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFloatingButton(boolean z) {
        HintView2 hintView2;
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
                    DialogsActivity.this.lambda$hideFloatingButton$138(valueAnimator);
                }
            });
            animatorSet.playTogether(ofFloat);
            animatorSet.setDuration(300L);
            animatorSet.setInterpolator(this.floatingInterpolator);
            this.floatingButtonContainer.setClickable(!z);
            animatorSet.start();
            if (!z || (hintView2 = this.storyHint) == null) {
                return;
            }
            hintView2.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideFloatingButton$138(ValueAnimator valueAnimator) {
        this.floatingButtonHideProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.floatingButtonTranslation = AndroidUtilities.m102dp(100) * this.floatingButtonHideProgress;
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
        this.contactsAlphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DialogsActivity.this.lambda$animateContactsAlpha$139(valueAnimator2);
            }
        });
        this.contactsAlphaAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateContactsAlpha$139(ValueAnimator valueAnimator) {
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
            if (i2 == 3) {
                recyclerListView = recentChatsBar.getListView();
            } else if (i2 == 2) {
                SearchViewPager searchViewPager = this.searchViewPager;
                recyclerListView = searchViewPager != null ? searchViewPager.searchListView : null;
            } else {
                ViewPage[] viewPageArr = this.viewPages;
                if (viewPageArr != null) {
                    DialogsRecyclerView dialogsRecyclerView = i2 < viewPageArr.length ? viewPageArr[i2].listView : null;
                    if (dialogsRecyclerView == null || viewPageArr[i2].getVisibility() == 0) {
                        r4 = dialogsRecyclerView != null ? this.viewPages[i2] : null;
                        recyclerListView = dialogsRecyclerView;
                    }
                }
                i2++;
            }
            if (recyclerListView != null && recyclerListView.getAdapter() != null) {
                if (((MessagesController.UPDATE_MASK_NEW_MESSAGE & i) != 0 || i == 0) && r4 != null) {
                    r4.updateList(false);
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
                                        r4.updateList(false);
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
            dialogsActivityDelegate.didSelectDialogs(null, null, null, false, null, new Callbacks$Callback1() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda67
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DialogsActivity.this.lambda$setDelegate$140((ArrayList) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDelegate$140(ArrayList arrayList) {
        this.forwardingMessages = arrayList;
    }

    public void setSearchString(String str) {
        this.searchString = str;
    }

    public void setInitialSearchString(String str) {
        this.initialSearchString = str;
    }

    public boolean isMainDialogList() {
        return this.delegate == null && this.searchString == null && !isHiddenChats();
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
                    builder.setTitle(LocaleController.getString("SendMessageTitle", C3630R.string.SendMessageTitle));
                    if (this.hasPoll == 2) {
                        builder.setMessage(LocaleController.getString("PublicPollCantForward", C3630R.string.PublicPollCantForward));
                    } else {
                        builder.setMessage(LocaleController.getString("ChannelCantSendMessage", C3630R.string.ChannelCantSendMessage));
                    }
                    builder.setNegativeButton(LocaleController.getString("OK", C3630R.string.OK), null);
                    showDialog(builder.create());
                    return false;
                }
                return true;
            } else if (DialogObject.isEncryptedDialog(j)) {
                if (this.hasPoll != 0 || this.hasInvoice) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
                    builder2.setTitle(LocaleController.getString("SendMessageTitle", C3630R.string.SendMessageTitle));
                    if (this.hasPoll != 0) {
                        builder2.setMessage(LocaleController.getString("PollCantForwardSecretChat", C3630R.string.PollCantForwardSecretChat));
                    } else {
                        builder2.setMessage(LocaleController.getString("InvoiceCantForwardSecretChat", C3630R.string.InvoiceCantForwardSecretChat));
                    }
                    builder2.setNegativeButton(LocaleController.getString("OK", C3630R.string.OK), null);
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
                getConnectionsManager().sendRequest(tLRPC$TL_messages_checkHistoryImportPeer, new RequestDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda150
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        DialogsActivity.this.lambda$didSelectResult$143(alertDialog, tLRPC$User, tLRPC$Chat, j, z2, tLRPC$TL_messages_checkHistoryImportPeer, tLObject, tLRPC$TL_error);
                    }
                });
                try {
                    alertDialog.showDelayed(300L);
                } catch (Exception unused) {
                }
            } else if (!z || ((this.selectAlertString == null || this.selectAlertStringGroup == null) && this.addToGroupAlertString == null)) {
                if (i2 == 15) {
                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda105
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.this.lambda$didSelectResult$145(j, i, z2, topicsFragment);
                        }
                    };
                    Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda106
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogsActivity.this.lambda$didSelectResult$147(j, runnable);
                        }
                    };
                    if (j < 0) {
                        showSendToBotAlert(getMessagesController().getChat(Long.valueOf(-j)), runnable2, (Runnable) null);
                    } else {
                        showSendToBotAlert(getMessagesController().getUser(Long.valueOf(j)), runnable2, (Runnable) null);
                    }
                } else if (this.delegate != null) {
                    ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                    arrayList.add(MessagesStorage.TopicKey.m94of(j, i));
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
                    string = LocaleController.getString("SendMessageTitle", C3630R.string.SendMessageTitle);
                    formatStringSimple = LocaleController.formatStringSimple(this.selectAlertString, UserObject.getUserName(user2));
                    string2 = LocaleController.getString("Send", C3630R.string.Send);
                } else if (DialogObject.isUserDialog(j)) {
                    if (j == getUserConfig().getClientUserId()) {
                        string = LocaleController.getString("SendMessageTitle", C3630R.string.SendMessageTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.selectAlertStringGroup, LocaleController.getString("SavedMessages", C3630R.string.SavedMessages));
                        string2 = LocaleController.getString("Send", C3630R.string.Send);
                    } else {
                        TLRPC$User user3 = getMessagesController().getUser(Long.valueOf(j));
                        if (user3 == null || this.selectAlertString == null) {
                            return;
                        }
                        string = LocaleController.getString("SendMessageTitle", C3630R.string.SendMessageTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.selectAlertString, UserObject.getUserName(user3));
                        string2 = LocaleController.getString("Send", C3630R.string.Send);
                    }
                } else {
                    TLRPC$Chat chat2 = getMessagesController().getChat(Long.valueOf(-j));
                    if (chat2 == null) {
                        return;
                    }
                    String str = chat2.title;
                    if (i != 0 && (findTopic = getMessagesController().getTopicsController().findTopic(chat2.f1600id, i)) != null) {
                        str = ((Object) str) + " " + findTopic.title;
                    }
                    if (this.addToGroupAlertString != null) {
                        string = LocaleController.getString("AddToTheGroupAlertTitle", C3630R.string.AddToTheGroupAlertTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.addToGroupAlertString, str);
                        string2 = LocaleController.getString("Add", C3630R.string.Add);
                    } else {
                        string = LocaleController.getString("SendMessageTitle", C3630R.string.SendMessageTitle);
                        formatStringSimple = LocaleController.formatStringSimple(this.selectAlertStringGroup, str);
                        string2 = LocaleController.getString("Send", C3630R.string.Send);
                    }
                }
                String str2 = string2;
                builder.setTitle(string);
                builder.setMessage(AndroidUtilities.replaceTags(formatStringSimple));
                builder.setPositiveButton(str2, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda21
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        DialogsActivity.this.lambda$didSelectResult$144(j, i, topicsFragment, dialogInterface, i3);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
                AlertDialog create = builder.create();
                if (showDialog(create) == null) {
                    create.show();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$143(final AlertDialog alertDialog, final TLRPC$User tLRPC$User, final TLRPC$Chat tLRPC$Chat, final long j, final boolean z, final TLRPC$TL_messages_checkHistoryImportPeer tLRPC$TL_messages_checkHistoryImportPeer, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda119
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$didSelectResult$142(alertDialog, tLObject, tLRPC$User, tLRPC$Chat, j, z, tLRPC$TL_error, tLRPC$TL_messages_checkHistoryImportPeer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$142(AlertDialog alertDialog, TLObject tLObject, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, final long j, final boolean z, TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_messages_checkHistoryImportPeer tLRPC$TL_messages_checkHistoryImportPeer) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m97e(e);
        }
        this.checkingImportDialog = false;
        if (tLObject != null) {
            AlertsCreator.createImportDialogAlert(this, this.arguments.getString("importTitle"), ((TLRPC$TL_messages_checkedHistoryImportPeer) tLObject).confirm_text, tLRPC$User, tLRPC$Chat, new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda110
                @Override // java.lang.Runnable
                public final void run() {
                    DialogsActivity.this.lambda$didSelectResult$141(j, z);
                }
            });
            return;
        }
        AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, this, tLRPC$TL_messages_checkHistoryImportPeer, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(j), tLRPC$TL_messages_checkHistoryImportPeer, tLRPC$TL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$141(long j, boolean z) {
        setDialogsListFrozen(true);
        ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
        arrayList.add(MessagesStorage.TopicKey.m94of(j, 0));
        this.delegate.didSelectDialogs(this, arrayList, null, z, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$144(long j, int i, TopicsFragment topicsFragment, DialogInterface dialogInterface, int i2) {
        didSelectResult(j, i, false, false, topicsFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didSelectResult$145(long j, int i, boolean z, TopicsFragment topicsFragment) {
        if (this.delegate != null) {
            ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
            arrayList.add(MessagesStorage.TopicKey.m94of(j, i));
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
    public /* synthetic */ void lambda$didSelectResult$147(long j, final Runnable runnable) {
        if (this.requestPeerType.bot_admin_rights != null) {
            getMessagesController().setUserAdminRole(-j, getMessagesController().getUser(Long.valueOf(this.requestPeerBotId)), this.requestPeerType.bot_admin_rights, null, false, this, true, true, null, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda133
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean lambda$didSelectResult$146;
                    lambda$didSelectResult$146 = DialogsActivity.lambda$didSelectResult$146(runnable, tLRPC$TL_error);
                    return lambda$didSelectResult$146;
                }
            });
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$didSelectResult$146(Runnable runnable, TLRPC$TL_error tLRPC$TL_error) {
        runnable.run();
        return true;
    }

    private void showSendToBotAlert(TLRPC$User tLRPC$User, final Runnable runnable, final Runnable runnable2) {
        TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.requestPeerBotId));
        showDialog(new AlertDialog.Builder(getContext()).setTitle(LocaleController.formatString(C3630R.string.AreYouSureSendChatToBotTitle, UserObject.getFirstName(tLRPC$User), UserObject.getFirstName(user))).setMessage(TextUtils.concat(AndroidUtilities.replaceTags(LocaleController.formatString(C3630R.string.AreYouSureSendChatToBotMessage, UserObject.getFirstName(tLRPC$User), UserObject.getFirstName(user))))).setPositiveButton(LocaleController.formatString("Send", C3630R.string.Send, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        }).setNegativeButton(LocaleController.formatString("Cancel", C3630R.string.Cancel, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda14
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogsActivity.lambda$showSendToBotAlert$149(runnable2, dialogInterface, i);
            }
        }).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSendToBotAlert$149(Runnable runnable, DialogInterface dialogInterface, int i) {
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
        AlertDialog.Builder title = new AlertDialog.Builder(getContext()).setTitle(LocaleController.formatString(C3630R.string.AreYouSureSendChatToBotTitle, tLRPC$Chat.title, UserObject.getFirstName(user)));
        CharSequence[] charSequenceArr = new CharSequence[2];
        charSequenceArr[0] = AndroidUtilities.replaceTags(LocaleController.formatString(C3630R.string.AreYouSureSendChatToBotMessage, tLRPC$Chat.title, UserObject.getFirstName(user)));
        Boolean bool = this.requestPeerType.bot_participant;
        if ((bool == null || !bool.booleanValue() || getMessagesController().isInChatCached(tLRPC$Chat, user)) && this.requestPeerType.bot_admin_rights == null) {
            charSequence = "";
        } else {
            CharSequence[] charSequenceArr2 = new CharSequence[2];
            charSequenceArr2[0] = "\n\n";
            if (this.requestPeerType.bot_admin_rights == null) {
                formatString = LocaleController.formatString(C3630R.string.AreYouSureSendChatToBotAdd, UserObject.getFirstName(user), tLRPC$Chat.title);
            } else {
                formatString = LocaleController.formatString(C3630R.string.AreYouSureSendChatToBotAddRights, UserObject.getFirstName(user), tLRPC$Chat.title, RequestPeerRequirementsCell.rightsToString(this.requestPeerType.bot_admin_rights, isChannelAndNotMegaGroup));
            }
            charSequenceArr2[1] = AndroidUtilities.replaceTags(formatString);
            charSequence = TextUtils.concat(charSequenceArr2);
        }
        charSequenceArr[1] = charSequence;
        showDialog(title.setMessage(TextUtils.concat(charSequenceArr)).setPositiveButton(LocaleController.formatString("Send", C3630R.string.Send, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        }).setNegativeButton(LocaleController.formatString("Cancel", C3630R.string.Cancel, new Object[0]), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DialogsActivity.lambda$showSendToBotAlert$151(runnable2, dialogInterface, i);
            }
        }).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showSendToBotAlert$151(Runnable runnable, DialogInterface dialogInterface, int i) {
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
        actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.DialogsActivity.76
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
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda151
            @Override // org.telegram.p042ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                DialogsActivity.this.lambda$onSendLongClick$152(keyEvent);
            }
        });
        actionBarPopupWindowLayout.setShownFromBottom(false);
        actionBarPopupWindowLayout.setupRadialSelectors(getThemedColor(Theme.key_dialogButtonSelector));
        long clientUserId = getUserConfig().getClientUserId();
        boolean z = this.selectedDialogs.size() == 1 && this.selectedDialogs.get(0).longValue() == clientUserId;
        if (z || !this.selectedDialogs.contains(Long.valueOf(clientUserId))) {
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem((Context) parentActivity, true, true, resourceProvider);
            if (z) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("SetReminder", C3630R.string.SetReminder), C3630R.C3632drawable.msg_calendar2);
            } else {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("ScheduleMessage", C3630R.string.ScheduleMessage), C3630R.C3632drawable.msg_calendar2);
            }
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m102dp(196));
            actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda46
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogsActivity.this.lambda$onSendLongClick$153(parentActivity, view2);
                }
            });
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem((Context) parentActivity, true, true, resourceProvider);
        if (getToolsController().isSilentSendingEnabled()) {
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3630R.string.send_with_sound), C3630R.C3632drawable.input_notify_on);
        } else {
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("SendWithoutSound", C3630R.string.SendWithoutSound), C3630R.C3632drawable.input_notify_off);
        }
        actionBarMenuSubItem2.setMinimumWidth(AndroidUtilities.m102dp(196));
        actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem2, LayoutHelper.createLinear(-1, 48));
        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DialogsActivity.this.lambda$onSendLongClick$154(view2);
            }
        });
        linearLayout.addView(actionBarPopupWindowLayout, LayoutHelper.createLinear(-1, -2));
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(linearLayout, -2, -2);
        this.sendPopupWindow = actionBarPopupWindow;
        actionBarPopupWindow.setAnimationEnabled(false);
        this.sendPopupWindow.setAnimationStyle(C3630R.style.PopupContextAnimation2);
        this.sendPopupWindow.setOutsideTouchable(true);
        this.sendPopupWindow.setClippingEnabled(true);
        this.sendPopupWindow.setInputMethodMode(2);
        this.sendPopupWindow.setSoftInputMode(0);
        this.sendPopupWindow.getContentView().setFocusableInTouchMode(true);
        SharedConfig.removeScheduledOrNoSoundHint();
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(1000), Integer.MIN_VALUE));
        this.sendPopupWindow.setFocusable(true);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        this.sendPopupWindow.showAtLocation(view, 51, ((iArr[0] + view.getMeasuredWidth()) - linearLayout.getMeasuredWidth()) + AndroidUtilities.m102dp(8), (iArr[1] - linearLayout.getMeasuredHeight()) - AndroidUtilities.m102dp(2));
        this.sendPopupWindow.dimBehind();
        view.performHapticFeedback(3, 2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$152(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$153(Activity activity, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        AlertsCreator.createScheduleDatePickerDialog(activity, 0L, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.DialogsActivity.77
            @Override // org.telegram.p042ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public ArrayList<Long> getSelectedDialogs() {
                return DialogsActivity.this.selectedDialogs;
            }

            @Override // org.telegram.p042ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public void didSelectDate(boolean z, int i, String str) {
                DialogsActivity dialogsActivity = DialogsActivity.this;
                dialogsActivity.scheduleDate = i;
                if (dialogsActivity.delegate == null || DialogsActivity.this.selectedDialogs.isEmpty()) {
                    return;
                }
                ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < DialogsActivity.this.selectedDialogs.size(); i2++) {
                    arrayList.add(MessagesStorage.TopicKey.m94of(((Long) DialogsActivity.this.selectedDialogs.get(i2)).longValue(), 0));
                }
                DialogsActivityDelegate dialogsActivityDelegate = DialogsActivity.this.delegate;
                DialogsActivity dialogsActivity2 = DialogsActivity.this;
                dialogsActivityDelegate.didSelectDialogs(dialogsActivity2, arrayList, dialogsActivity2.commentView.getFieldText(), false, null, null);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSendLongClick$154(View view) {
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
            arrayList.add(MessagesStorage.TopicKey.m94of(this.selectedDialogs.get(i).longValue(), 0));
        }
        this.delegate.didSelectDialogs(this, arrayList, this.commentView.getFieldText(), false, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x0aa3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0681  */
    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<org.telegram.p042ui.ActionBar.ThemeDescription> getThemeDescriptions() {
        /*
            Method dump skipped, instructions count: 7422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.getThemeDescriptions():java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:123:0x008f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getThemeDescriptions$155() {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.DialogsActivity.lambda$getThemeDescriptions$155():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$156() {
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
    public /* synthetic */ void lambda$getThemeDescriptions$157() {
        this.speedItem.getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon), PorterDuff.Mode.SRC_IN));
        this.speedItem.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector)));
    }

    private void updateFloatingButtonColor() {
        if (getParentActivity() == null) {
            return;
        }
        if (this.floatingButtonContainer != null) {
            Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m102dp(56), Theme.getColor(Theme.key_chats_actionBackground), Theme.getColor(Theme.key_chats_actionPressedBackground));
            if (Build.VERSION.SDK_INT < 21) {
                Drawable mutate = ContextCompat.getDrawable(getParentActivity(), C3630R.C3632drawable.floating_shadow).mutate();
                mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
                CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, createSimpleSelectorCircleDrawable, 0, 0);
                combinedDrawable.setIconSize(AndroidUtilities.m102dp(56), AndroidUtilities.m102dp(56));
                createSimpleSelectorCircleDrawable = combinedDrawable;
            }
            this.floatingButtonContainer.setBackground(createSimpleSelectorCircleDrawable);
        }
        if (this.floatingButton2Container != null) {
            int m102dp = AndroidUtilities.m102dp(36);
            int i = Theme.key_windowBackgroundWhite;
            Drawable createSimpleSelectorCircleDrawable2 = Theme.createSimpleSelectorCircleDrawable(m102dp, ColorUtils.blendARGB(Theme.getColor(i), -1, 0.1f), Theme.blendOver(Theme.getColor(i), Theme.getColor(Theme.key_listSelector)));
            if (Build.VERSION.SDK_INT < 21) {
                Drawable mutate2 = ContextCompat.getDrawable(getParentActivity(), C3630R.C3632drawable.floating_shadow).mutate();
                mutate2.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
                CombinedDrawable combinedDrawable2 = new CombinedDrawable(mutate2, createSimpleSelectorCircleDrawable2, 0, 0);
                combinedDrawable2.setIconSize(AndroidUtilities.m102dp(36), AndroidUtilities.m102dp(36));
                createSimpleSelectorCircleDrawable2 = combinedDrawable2;
            }
            this.floatingButton2Container.setBackground(createSimpleSelectorCircleDrawable2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogsActivity.this.lambda$getCustomSlideTransition$158(valueAnimator);
            }
        });
        this.slideBackTransitionAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.slideBackTransitionAnimator.setDuration(i);
        this.slideBackTransitionAnimator.start();
        return this.slideBackTransitionAnimator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCustomSlideTransition$158(ValueAnimator valueAnimator) {
        setSlideTransitionProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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
            C3702ActionBar c3702ActionBar = this.actionBar;
            if (c3702ActionBar != null) {
                c3702ActionBar.setLayerType(2, null);
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
        C3702ActionBar c3702ActionBar2 = this.actionBar;
        if (c3702ActionBar2 != null) {
            c3702ActionBar2.setLayerType(0, null);
        }
        FilterTabsView filterTabsView2 = this.filterTabsView;
        if (filterTabsView2 != null) {
            filterTabsView2.getListView().setLayerType(0, null);
        }
        DialogStoriesCell dialogStoriesCell = this.dialogStoriesCell;
        if (dialogStoriesCell != null) {
            dialogStoriesCell.setLayerType(0, null);
        }
        View view2 = this.fragmentView;
        if (view2 != null) {
            ((ViewGroup) view2).setClipChildren(true);
            this.fragmentView.requestLayout();
        }
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public void onSlideProgress(boolean z, float f) {
        if (SharedConfig.getDevicePerformanceClass() > 0 && this.isSlideBackTransition && this.slideBackTransitionAnimator == null) {
            setSlideTransitionProgress(f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setSlideTransitionProgress(float f) {
        DialogStoriesCell dialogStoriesCell;
        View rootContainer;
        PinnedPlayerView pinnedPlayerView;
        PinnedPlayerView pinnedPlayerView2;
        View rootContainer2;
        PinnedPlayerView pinnedPlayerView3;
        PinnedPlayerView pinnedPlayerView4;
        if (SharedConfig.getDevicePerformanceClass() <= 0 || this.slideFragmentProgress == f) {
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
                filterTabsView.getListView().setTranslationX((this.isDrawerTransition ? 1 : -1) * AndroidUtilities.m102dp(40) * (1.0f - this.slideFragmentProgress));
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
            DialogStoriesCell dialogStoriesCell2 = this.dialogStoriesCell;
            if (dialogStoriesCell2 != null) {
                dialogStoriesCell2.setTranslationX((this.isDrawerTransition ? 1 : -1) * AndroidUtilities.m102dp(40) * (1.0f - this.slideFragmentProgress));
            }
            RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
            if (rightSlidingDialogContainer == null || rightSlidingDialogContainer.getFragmentView() == null || this.rightFragmentTransitionInProgress) {
                return;
            }
            this.rightSlidingDialogContainer.getFragmentView().setTranslationX((this.isDrawerTransition ? 1 : -1) * AndroidUtilities.m102dp(40) * (1.0f - this.slideFragmentProgress));
            return;
        }
        float f2 = 1.0f - ((1.0f - this.slideFragmentProgress) * 0.05f);
        FilterTabsView filterTabsView2 = this.filterTabsView;
        if (filterTabsView2 != null) {
            filterTabsView2.getListView().setScaleX(f2);
            this.filterTabsView.getListView().setScaleY(f2);
            this.filterTabsView.getListView().setTranslationX((this.isDrawerTransition ? AndroidUtilities.m102dp(4) : -AndroidUtilities.m102dp(4)) * (1.0f - this.slideFragmentProgress));
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
        DialogStoriesCell dialogStoriesCell3 = this.dialogStoriesCell;
        if (dialogStoriesCell3 != null) {
            dialogStoriesCell3.setScaleX(f2);
            this.dialogStoriesCell.setScaleY(f2);
            this.dialogStoriesCell.setTranslationX((this.isDrawerTransition ? AndroidUtilities.m102dp(4) : -AndroidUtilities.m102dp(4)) * (1.0f - this.slideFragmentProgress));
            this.dialogStoriesCell.setPivotX(this.isDrawerTransition ? dialogStoriesCell.getMeasuredWidth() : 0.0f);
            this.dialogStoriesCell.setPivotY(BitmapDescriptorFactory.HUE_RED);
        }
        RightSlidingDialogContainer rightSlidingDialogContainer2 = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer2 == null || rightSlidingDialogContainer2.getFragmentView() == null) {
            return;
        }
        if (!this.rightFragmentTransitionInProgress) {
            this.rightSlidingDialogContainer.getFragmentView().setScaleX(f2);
            this.rightSlidingDialogContainer.getFragmentView().setScaleY(f2);
            this.rightSlidingDialogContainer.getFragmentView().setTranslationX((this.isDrawerTransition ? AndroidUtilities.m102dp(4) : -AndroidUtilities.m102dp(4)) * (1.0f - this.slideFragmentProgress));
        }
        this.rightSlidingDialogContainer.getFragmentView().setPivotX(this.isDrawerTransition ? this.rightSlidingDialogContainer.getMeasuredWidth() : 0.0f);
        this.rightSlidingDialogContainer.getFragmentView().setPivotY(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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

    @Override // org.telegram.p042ui.Components.FloatingDebug.FloatingDebugProvider
    public List<FloatingDebugController.DebugItem> onGetDebugItems() {
        return Arrays.asList(new FloatingDebugController.DebugItem(LocaleController.getString(C3630R.string.DebugDialogsActivity)), new FloatingDebugController.DebugItem(LocaleController.getString(C3630R.string.ClearLocalDatabase), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda101
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$onGetDebugItems$159();
            }
        }), new FloatingDebugController.DebugItem(LocaleController.getString(C3630R.string.DebugClearSendMessageAsPeers), new Runnable() { // from class: org.telegram.ui.DialogsActivity$$ExternalSyntheticLambda85
            @Override // java.lang.Runnable
            public final void run() {
                DialogsActivity.this.lambda$onGetDebugItems$160();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGetDebugItems$159() {
        getMessagesStorage().clearLocalDatabase();
        Toast.makeText(getContext(), LocaleController.getString(C3630R.string.DebugClearLocalDatabaseSuccess), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGetDebugItems$160() {
        getMessagesController().clearSendAsPeers();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
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

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        FilterTabsView filterTabsView;
        if (this.isForwardToArchive) {
            return false;
        }
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if (rightSlidingDialogContainer == null || !rightSlidingDialogContainer.hasFragment()) {
            if ((isArchive() || this.initialDialogsType == 3) && (filterTabsView = this.filterTabsView) != null && filterTabsView.getVisibility() == 0) {
                return this.filterTabsView.isFirstTab();
            }
            return true;
        }
        return false;
    }

    public void updateStoriesVisibility(boolean z) {
        final boolean z2;
        StoryViewer storyViewer;
        if (this.dialogStoriesCell == null || this.storiesVisibilityAnimator != null) {
            return;
        }
        RightSlidingDialogContainer rightSlidingDialogContainer = this.rightSlidingDialogContainer;
        if ((rightSlidingDialogContainer != null && rightSlidingDialogContainer.hasFragment()) || this.searchIsShowed || this.actionBar.isActionModeShowed() || this.onlySelect || isHiddenChats() || isAlbums()) {
            return;
        }
        int i = 0;
        if (StoryRecorder.isVisible() || ((storyViewer = this.storyViewer) != null && storyViewer.isFullyVisible())) {
            z = false;
        }
        boolean z3 = !isArchive() && getStoriesController().hasOnlySelfStories();
        if (!getStoriesController().isBarEnabled() || isInPreviewMode()) {
            z3 = false;
            z2 = false;
        } else if (isArchive()) {
            z2 = !getStoriesController().getHiddenList().isEmpty();
        } else {
            z2 = !z3 && getStoriesController().hasStories();
            z3 = getStoriesController().hasOnlySelfStories();
        }
        this.hasOnlySlefStories = z3;
        boolean z4 = this.dialogStoriesCellVisible;
        boolean z5 = z3 || z2;
        this.dialogStoriesCellVisible = z5;
        if (z2 || z5) {
            this.dialogStoriesCell.updateItems(z, z5 != z4);
        }
        boolean z6 = this.dialogStoriesCellVisible;
        int i2 = 8;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z6 != z4) {
            if (z) {
                ValueAnimator valueAnimator = this.storiesVisibilityAnimator2;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                if (this.dialogStoriesCellVisible) {
                    this.dialogStoriesCell.setVisibility(0);
                }
                float[] fArr = new float[2];
                fArr[0] = this.progressToDialogStoriesCell;
                fArr[1] = this.dialogStoriesCellVisible ? 1.0f : 0.0f;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                this.storiesVisibilityAnimator2 = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DialogsActivity.78
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        DialogsActivity.this.progressToDialogStoriesCell = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                            ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                        }
                    }
                });
                this.storiesVisibilityAnimator2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.79
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        boolean z7 = dialogsActivity.dialogStoriesCellVisible;
                        dialogsActivity.progressToDialogStoriesCell = z7 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                        if (!z7) {
                            dialogsActivity.dialogStoriesCell.setVisibility(8);
                        }
                        if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                            ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                        }
                    }
                });
                this.storiesVisibilityAnimator2.setDuration(200L);
                this.storiesVisibilityAnimator2.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.storiesVisibilityAnimator2.start();
            } else {
                this.dialogStoriesCell.setVisibility(z6 ? 0 : 8);
                this.progressToDialogStoriesCell = this.dialogStoriesCellVisible ? 1.0f : 0.0f;
                View view = this.fragmentView;
                if (view != null) {
                    view.invalidate();
                }
            }
        }
        if (z2 == this.animateToHasStories) {
            return;
        }
        this.animateToHasStories = z2;
        if (z2) {
            this.dialogStoriesCell.setProgressToCollapse(1.0f, false);
        }
        if (z) {
            this.dialogStoriesCell.setVisibility(0);
            float f2 = -this.scrollYOffset;
            if (!z2) {
                f = getMaxScrollYOffset();
            }
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.storiesVisibilityAnimator = ofFloat2;
            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(f2, z2, f) { // from class: org.telegram.ui.DialogsActivity.80
                int currentValue;
                final /* synthetic */ float val$fromScrollY;
                final /* synthetic */ boolean val$newVisibility;
                final /* synthetic */ float val$toScrollY;

                {
                    this.val$fromScrollY = f2;
                    this.val$newVisibility = z2;
                    this.val$toScrollY = f;
                    this.currentValue = (int) f2;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    DialogsActivity.this.progressToShowStories = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    if (!this.val$newVisibility) {
                        DialogsActivity dialogsActivity = DialogsActivity.this;
                        dialogsActivity.progressToShowStories = 1.0f - dialogsActivity.progressToShowStories;
                    }
                    int lerp = (int) AndroidUtilities.lerp(this.val$fromScrollY, this.val$toScrollY, ((Float) valueAnimator2.getAnimatedValue()).floatValue());
                    int i3 = lerp - this.currentValue;
                    this.currentValue = lerp;
                    DialogsActivity.this.viewPages[0].listView.scrollBy(0, i3);
                    if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                        ((BaseFragment) DialogsActivity.this).fragmentView.invalidate();
                    }
                }
            });
            this.storiesVisibilityAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DialogsActivity.81
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    DialogsActivity dialogsActivity = DialogsActivity.this;
                    dialogsActivity.storiesVisibilityAnimator = null;
                    boolean z7 = z2;
                    dialogsActivity.hasStories = z7;
                    if (!z7 && !dialogsActivity.hasOnlySlefStories) {
                        dialogsActivity.dialogStoriesCell.setVisibility(8);
                    }
                    if (!z2) {
                        DialogsActivity.this.setScrollY(BitmapDescriptorFactory.HUE_RED);
                        DialogsActivity.this.scrollAdditionalOffset = AndroidUtilities.m102dp(81);
                    } else {
                        DialogsActivity.this.scrollAdditionalOffset = -AndroidUtilities.m102dp(81);
                        DialogsActivity dialogsActivity2 = DialogsActivity.this;
                        dialogsActivity2.setScrollY(-dialogsActivity2.getMaxScrollYOffset());
                    }
                    for (int i3 = 0; i3 < DialogsActivity.this.viewPages.length; i3++) {
                        if (DialogsActivity.this.viewPages[i3] != null) {
                            DialogsActivity.this.viewPages[i3].listView.requestLayout();
                        }
                    }
                    if (((BaseFragment) DialogsActivity.this).fragmentView != null) {
                        ((BaseFragment) DialogsActivity.this).fragmentView.requestLayout();
                    }
                }
            });
            this.storiesVisibilityAnimator.setDuration(200L);
            this.storiesVisibilityAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.storiesVisibilityAnimator.start();
            return;
        }
        this.progressToShowStories = z2 ? 1.0f : 0.0f;
        this.hasStories = z2;
        DialogStoriesCell dialogStoriesCell = this.dialogStoriesCell;
        if (z2 || this.hasOnlySlefStories) {
            i2 = 0;
        }
        dialogStoriesCell.setVisibility(i2);
        if (!z2) {
            setScrollY(BitmapDescriptorFactory.HUE_RED);
        } else {
            this.scrollAdditionalOffset = -AndroidUtilities.m102dp(81);
            setScrollY(-getMaxScrollYOffset());
        }
        while (true) {
            ViewPage[] viewPageArr = this.viewPages;
            if (i >= viewPageArr.length) {
                break;
            }
            if (viewPageArr[i] != null) {
                viewPageArr[i].listView.requestLayout();
            }
            i++;
        }
        View view2 = this.fragmentView;
        if (view2 != null) {
            view2.requestLayout();
            this.fragmentView.invalidate();
        }
    }
}
